-- 삽입 / 삭제 시 수강인원 변경
CREATE OR REPLACE TRIGGER 대면레슨_승인인원변경
	AFTER INSERT OR DELETE ON 대면레슨_수강하다
	FOR EACH ROW
BEGIN
	IF INSERTING THEN
		UPDATE 대면레슨 SET 수강승인인원 = (수강승인인원+1)
		WHERE :new.강의개설번호 = 대면레슨.강의개설번호;
	ELSIF DELETING THEN
		UPDATE 대면레슨 SET 수강승인인원 = (수강승인인원-1)
		WHERE :OLD.강의개설번호 = 대면레슨.강의개설번호;
	END IF;
END;


CREATE OR REPLACE TRIGGER 포인트_수량변경
	AFTER INSERT ON 일반회원_제품구매하다
	FOR EACH ROW
BEGIN
	IF INSERTING THEN
		UPDATE 일반회원 SET 보유포인트 = (보유포인트 - :new.사용포인트 + (:new.결제금액*0.01))
		WHERE :new.일반회원_id = 일반회원.일반회원_id;

		UPDATE 제품 SET 재고수량 = (재고수량 - :new.구매수량)
		WHERE :new.제품번호 = 제품.제품번호;

		UPDATE 제품 SET 누적판매수량 = (누적판매수량 + :new.구매수량)
		WHERE :new.제품번호 = 제품.제품번호;

	END IF;
END;


CREATE OR REPLACE TRIGGER 공동구매_잔여수량변경
	AFTER INSERT ON 일반회원_공동구매참여하다
	FOR EACH ROW
BEGIN
	IF INSERTING THEN
		UPDATE 공동구매 SET 잔여수량 = (잔여수량 - :new.구매수량)
		WHERE :new.공동구매번호 = 공동구매.공동구매번호;
	END IF;
END;


CREATE OR REPLACE TRIGGER 맛집방문_참여인원변경
	AFTER INSERT ON 일반회원_맛집방문참여하다
	FOR EACH ROW
BEGIN
	IF INSERTING THEN
		UPDATE 맛집방문모임 SET 참여인원수 = (참여인원수 + 1)
		WHERE :new.모임번호 = 맛집방문모임.모임번호;
	END IF;

	ELSIF DELETING THEN
		UPDATE 맛집방문모임 SET 참여인원수 = (참여인원수-1)
		WHERE :OLD.모임번호 = 맛집방문모임.모임번호;
	END IF;
END;


CREATE OR REPLACE TRIGGER 대회_참여인원변경
	AFTER INSERT ON 대회_참가하다
	FOR EACH ROW
BEGIN
	IF INSERTING THEN
		UPDATE 대회 SET 참가인원수 = (참가인원수 + 1)
		WHERE :new.대회번호 = 대회.대회번호;
	END IF;
END;