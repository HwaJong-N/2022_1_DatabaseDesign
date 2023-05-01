CREATE TABLE 일반회원 (
일반회원_id     VARCHAR2(10),
pw              VARCHAR2(10)    NOT NULL,
이름            VARCHAR2(20)    NOT NULL,
전화번호        CHAR(13)        NOT NULL,
보유포인트      NUMBER(6)   DEFAULT 0,
요리수준        VARCHAR2(10) CHECK(요리수준 IN('초보자', '중급자', '상급자')),
CONSTRAINT  일반회원_pk  PRIMARY KEY (일반회원_id));

INSERT INTO 일반회원 VALUES ('hyejin12', '1234', '윤해진', '010-1234-1111', 100, '상급자');
INSERT INTO 일반회원 VALUES ('dagyeong13', '1235', '김다경', '010-1235-1112', 594, '중급자');
INSERT INTO 일반회원 VALUES ('junsu14', '1236', '김준수', '010-1236-1113', 10000, '초보자');
INSERT INTO 일반회원 VALUES ('hwajong15', '1237', '노화종', '010-1237-1114', 1232, '상급자');
INSERT INTO 일반회원 VALUES ('gun16', '1238', '위건', '010-1238-1115', 234823, '중급자');
INSERT INTO 일반회원 VALUES ('guns17', '1239', '국건', '010-1239-1116', 0, '상급자');
INSERT INTO 일반회원 VALUES ('sangjin18', '1240', '김상진', '010-1240-1117', 5, '중급자');
INSERT INTO 일반회원 VALUES ('changmin19', '1241', '유창민', '010-1241-1118', 10000, '초보자');
INSERT INTO 일반회원 VALUES ('sunghyun20', '1242', '한성현', '010-1242-1119', 0, '상급자');
INSERT INTO 일반회원 VALUES ('jaeyong21', '1243', '김재용', '010-1243-1120', 0, '초보자');
INSERT INTO 일반회원 VALUES ('seungmin22', '1244', '양승민', '010-1244-1121', 0, '상급자');
INSERT INTO 일반회원 VALUES ('sanghyun23', '1245', '이상현', '010-1245-1122', 5, '중급자');
INSERT INTO 일반회원 VALUES ('sua24', '1246', '김수아', '010-1246-1123', 10000, '초보자');
INSERT INTO 일반회원 VALUES ('culsu25', '1247', '김철수', '010-1247-1124', 0, '상급자');
INSERT INTO 일반회원 VALUES ('eunji26', '1248', '최은지', '010-1248-1125', 0, '초보자');
INSERT INTO 일반회원 VALUES ('chang27', '1249', '조창영', '010-1249-1126', 0, '상급자');
INSERT INTO 일반회원 VALUES ('minseok28', '1250', '김민석', '010-1250-1127', 5, '중급자');
INSERT INTO 일반회원 VALUES ('minjae29', '1251', '김민재', '010-1251-1128', 10000, '초보자');
INSERT INTO 일반회원 VALUES ('jun30', '1252', '김준', '010-1252-1129', 0, '상급자');
INSERT INTO 일반회원 VALUES ('uengjin31', '1253', '박응진', '010-1253-1130', 0, '초보자');



CREATE  TABLE  일반회원_요리카테고리 (
일반회원_id	        VARCHAR2(10),
요리종류	        VARCHAR2(5),
CONSTRAINT 일반회원_요리카테고리_pk PRIMARY KEY(일반회원_id,요리종류),
CONSTRAINT    일반회원_요리카테고리_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id));

INSERT INTO 일반회원_요리카테고리 VALUES ('hyejin12', 'KF');
INSERT INTO 일반회원_요리카테고리 VALUES ('hyejin12', 'MF');
INSERT INTO 일반회원_요리카테고리 VALUES ('dagyeong13', 'JPF');
INSERT INTO 일반회원_요리카테고리 VALUES ('junsu14', 'CF');
INSERT INTO 일반회원_요리카테고리 VALUES ('hwajong15', 'BK');
INSERT INTO 일반회원_요리카테고리 VALUES ('hwajong15', 'AMF');
INSERT INTO 일반회원_요리카테고리 VALUES ('gun16', 'SN');
INSERT INTO 일반회원_요리카테고리 VALUES ('gun16', 'KF');
INSERT INTO 일반회원_요리카테고리 VALUES ('guns17', 'BV');
INSERT INTO 일반회원_요리카테고리 VALUES ('sangjin18', 'IDF');
INSERT INTO 일반회원_요리카테고리 VALUES ('changmin19', 'VF');
INSERT INTO 일반회원_요리카테고리 VALUES ('sunghyun20', 'MF');
INSERT INTO 일반회원_요리카테고리 VALUES ('jaeyong21', 'ITF');
INSERT INTO 일반회원_요리카테고리 VALUES ('seungmin22', 'AMF');
INSERT INTO 일반회원_요리카테고리 VALUES ('sanghyun23', ' AMF');
INSERT INTO 일반회원_요리카테고리 VALUES ('sua24', 'ITF');
INSERT INTO 일반회원_요리카테고리 VALUES ('sua24', 'VF');
INSERT INTO 일반회원_요리카테고리 VALUES ('culsu25', 'MF');
INSERT INTO 일반회원_요리카테고리 VALUES ('culsu25', 'BV');
INSERT INTO 일반회원_요리카테고리 VALUES ('eunji26', 'VF');
INSERT INTO 일반회원_요리카테고리 VALUES ('chang27', 'IDF');
INSERT INTO 일반회원_요리카테고리 VALUES ('minseok28', 'BV');
INSERT INTO 일반회원_요리카테고리 VALUES ('minjae29', 'SN');
INSERT INTO 일반회원_요리카테고리 VALUES ('minjae29', 'KF');
INSERT INTO 일반회원_요리카테고리 VALUES ('jun30', 'BK');
INSERT INTO 일반회원_요리카테고리 VALUES ('uengjin31', 'JPF');


CREATE  TABLE  일반회원_주소 (
일반회원_id	        VARCHAR2(10),
주소종류	        VARCHAR2(100),
CONSTRAINT 일반회원_주소_pk PRIMARY KEY(일반회원_id,주소종류),
CONSTRAINT    일반회원_주소_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id));

INSERT INTO 일반회원_주소 VALUES ('hyejin12', '충청북도 청주시 청원구 사뜸로 106');
INSERT INTO 일반회원_주소 VALUES ('dagyeong13', '대구광역시 동구 금광로 21길 30');
INSERT INTO 일반회원_주소 VALUES ('dagyeong13', '충청남도 천안시 동남구 병천면 충절로 1628-4');
INSERT INTO 일반회원_주소 VALUES ('junsu14', '충청남도 천안시 동남구 청당동');
INSERT INTO 일반회원_주소 VALUES ('junsu14', '대전광역시 중구 복동로 30번길 16');
INSERT INTO 일반회원_주소 VALUES ('hwajong15',  '대전광역시 중구 목동로 22번길 16');
INSERT INTO 일반회원_주소 VALUES ('gun16',  '경기도 용인시 수지구 정평로 13번길');
INSERT INTO 일반회원_주소 VALUES ('guns17', '경기도 평택시 안현로서 6길 61');
INSERT INTO 일반회원_주소 VALUES ('sangjin18', '대전광역시 서구 도산로 324');
INSERT INTO 일반회원_주소 VALUES ('changmin19','창원시 의창구 태복산로 3번길 22');
INSERT INTO 일반회원_주소 VALUES ('sunghyun20', '충청남도 천안시 서북구 백석동');
INSERT INTO 일반회원_주소 VALUES ('jaeyong21', '충청남도 천안시 동남구 신방동');
INSERT INTO 일반회원_주소 VALUES ('seungmin22', '충청남도 천안시 동남구 용곡동');
INSERT INTO 일반회원_주소 VALUES ('sanghyun23', '경기도 성남시 분당구 불정로 379');
INSERT INTO 일반회원_주소 VALUES ('sua24', '경기도 오산시 경기대로 651');
INSERT INTO 일반회원_주소 VALUES ('sua24', '경기도 화성시 복행로 1620');
INSERT INTO 일반회원_주소 VALUES ('culsu25', '경기도 화성시 효행로 1260');
INSERT INTO 일반회원_주소 VALUES ('eunji26', '충청북도 청주시 흥덕구 2순환로 1076');
INSERT INTO 일반회원_주소 VALUES ('chang27', '대전광역시 유성구 계룡로87번길 3');
INSERT INTO 일반회원_주소 VALUES ('minseok28', '경상남도 진주시 진양호로 280');
INSERT INTO 일반회원_주소 VALUES ('minjae29', '전라북도 전주시 덕진구 백제대로 692');
INSERT INTO 일반회원_주소 VALUES ('jun30', '대전광역시 서구 계백로 1124');
INSERT INTO 일반회원_주소 VALUES ('uengjin31', '부산광역시 기장군 기장읍 기장대로 500');
INSERT INTO 일반회원_주소 VALUES ('uengjin31', '부산광역시 기장군 기장읍 복장대로 500');





CREATE TABLE 강사회원 (
강사회원_id     VARCHAR2(10),
pw              VARCHAR2(10)    NOT NULL,
이름            VARCHAR2(20)    NOT NULL,
프로필사진      VARCHAR2(4000),
전화번호        CHAR(13)        NOT NULL,
CONSTRAINT  강사회원_pk  PRIMARY KEY (강사회원_id));


INSERT INTO 강사회원 VALUES('jimin54', '11101', '김지민', 'C:\Users\jimin54\Desktop', '010-9887-4621');
INSERT INTO 강사회원 VALUES('jnda41', '11102', '김준다', 'C:\Users\jnda41\Desktop', '010-8754-6221');
INSERT INTO 강사회원 VALUES('joonsu22','11103', '김준수', 'C:\Users\joonsu22\Desktop', '010-4532-2116');
INSERT INTO 강사회원 VALUES('hwahwa22', '11104', '노화종', 'C:\Users\hwahwa22\Desktop', '010-1241-5423');
INSERT INTO 강사회원 VALUES('dada12', '11105', '김다경', 'C:\Users\dada12\Desktop', '010-8225-1323');
INSERT INTO 강사회원 VALUES('haejin46', '11106','윤해진', 'C:\Users\haejin46\Desktop', '010-9228-4610');
INSERT INTO 강사회원 VALUES('gun77', '11107', '국건', 'C:\Users\gun77\Desktop', '010-1165-0421');
INSERT INTO 강사회원 VALUES('hrin58', '11108', '라해린', 'C:\Users\hrin58\Desktop', '010-5080-4610');
INSERT INTO 강사회원 VALUES('daeeun21', '11109', '이다은', 'C:\Users\daeeun21\Desktop', '010-3228-8521');
INSERT INTO 강사회원 VALUES('kimda23', '11110', '김다선', 'C:\Users\kimda23\Desktop', '010-7746-9632'); 
INSERT INTO 강사회원 VALUES('jwon20', '11111', '이정원', 'C:\Users\jwon20\Desktop', '010-2253-1234');
INSERT INTO 강사회원 VALUES('sixone98', '11112', '이육원', 'C:\Users\sixone98\Desktop', '010-8596-1346');
INSERT INTO 강사회원 VALUES('ssdf4', '11113', '박성태', 'C:\Users\ssdf4\Desktop', '010-7193-4686');
INSERT INTO 강사회원 VALUES('poidw6', '11114', '김두태', 'C:\Users\poidw6\Desktop', '010-4533-4672');
INSERT INTO 강사회원 VALUES('sfjnw24', '11115', '김하연', 'C:\Users\sfjw24\Desktop', '010-9215-4682');
INSERT INTO 강사회원 VALUES('sfjnw34', '11116', '강진우', 'C:\Users\sfjnw34\Desktop', '010-5624-1982');
INSERT INTO 강사회원 VALUES('hajin88', '11117', '김하진', 'C:\Users\hajin88\Desktop', '010-7193-9682');
INSERT INTO 강사회원 VALUES('fire99', '11118', '김덕화', 'C:\Users\fire99\Desktop', '010-0300-4852');
INSERT INTO 강사회원 VALUES('lucky84', '11119', '주용복', 'C:\Users\lucky84\Desktop', '010-5651-3382');
INSERT INTO 강사회원 VALUES('yaenso20', '11120', '여연수', 'C:\Users\yaenso20\Desktop', '010-5442-7682');



CREATE TABLE 강사회원_요리카테고리 (
강사회원_id         VARCHAR2(10),
요리종류            VARCHAR2(5),
CONSTRAINT  강사회원_요리카테고리  PRIMARY KEY (강사회원_id, 요리종류),
CONSTRAINT    강사회원_요리카테고리_강사회원_id_fk      FOREIGN KEY(강사회원_id) REFERENCES    강사회원(강사회원_id));

INSERT INTO 강사회원_요리카테고리 VALUES('jimin54', 'KF');
INSERT INTO 강사회원_요리카테고리 VALUES('jimin54', 'JPF');
INSERT INTO 강사회원_요리카테고리 VALUES('jimin54', 'CF');
INSERT INTO 강사회원_요리카테고리 VALUES('jnda41', 'SN');
INSERT INTO 강사회원_요리카테고리 VALUES('jnda41', 'BK');
INSERT INTO 강사회원_요리카테고리 VALUES('joonsu22', 'IDF');
INSERT INTO 강사회원_요리카테고리 VALUES('hwahwa22', 'MF');
INSERT INTO 강사회원_요리카테고리 VALUES('dada12', 'AMF');
INSERT INTO 강사회원_요리카테고리 VALUES('haejin46', 'BV');
INSERT INTO 강사회원_요리카테고리 VALUES('gun77', 'AMF');
INSERT INTO 강사회원_요리카테고리 VALUES('hrin58', 'ITF');
INSERT INTO 강사회원_요리카테고리 VALUES('daeeun21', 'ITF');
INSERT INTO 강사회원_요리카테고리 VALUES('kimda23', 'CF');
INSERT INTO 강사회원_요리카테고리 VALUES('jwon20', 'KF');
INSERT INTO 강사회원_요리카테고리 VALUES('sixone98', 'JPF');
INSERT INTO 강사회원_요리카테고리 VALUES('ssdf4', 'SN');
INSERT INTO 강사회원_요리카테고리 VALUES('poidw6', 'BV');
INSERT INTO 강사회원_요리카테고리 VALUES('sfjnw24', 'MF');
INSERT INTO 강사회원_요리카테고리 VALUES('sfjnw34', 'BK');
INSERT INTO 강사회원_요리카테고리 VALUES('hajin88', 'CF');
INSERT INTO 강사회원_요리카테고리 VALUES('fire99', 'JPF');
INSERT INTO 강사회원_요리카테고리 VALUES('lucky84', 'KF');
INSERT INTO 강사회원_요리카테고리 VALUES('yaenso20', 'IDF');



CREATE TABLE 강사회원_자격증 (
강사회원_id         VARCHAR2(10),
자격증종류          VARCHAR2(40),
CONSTRAINT  자격증  PRIMARY KEY (강사회원_id, 자격증종류),
CONSTRAINT  자격증_강사회원_id_fk      FOREIGN KEY(강사회원_id) REFERENCES    강사회원(강사회원_id));



INSERT INTO 강사회원_자격증 VALUES('jimin54', '한식자격증');
INSERT INTO 강사회원_자격증 VALUES('jimin54', '양식자격증');
INSERT INTO 강사회원_자격증 VALUES('jnda41', '일식자격증');
INSERT INTO 강사회원_자격증 VALUES('jnda41', '제빵자격증');
INSERT INTO 강사회원_자격증 VALUES('joonsu22', '중식자격증');
INSERT INTO 강사회원_자격증 VALUES('hwahwa22', '제빵자격증');
INSERT INTO 강사회원_자격증 VALUES('dada12', '바리스타자격증');
INSERT INTO 강사회원_자격증 VALUES('haejin46', '중식자격증');
INSERT INTO 강사회원_자격증 VALUES('gun77', '양식자격증');
INSERT INTO 강사회원_자격증 VALUES('hrin58', '일식자격증');
INSERT INTO 강사회원_자격증 VALUES('daeeun21', '중식자격증');
INSERT INTO 강사회원_자격증 VALUES('kimda23', '양식자격증');
INSERT INTO 강사회원_자격증 VALUES('jwon20', '일식자격증');
INSERT INTO 강사회원_자격증 VALUES('sixone98', '바리스타자격증');
INSERT INTO 강사회원_자격증 VALUES('ssdf4', '제빵자격증');
INSERT INTO 강사회원_자격증 VALUES('poidw6', '일식자격증');
INSERT INTO 강사회원_자격증 VALUES('sfjnw24', '중식자격증');
INSERT INTO 강사회원_자격증 VALUES('sfjnw34', '양식자격증');
INSERT INTO 강사회원_자격증 VALUES('hajin88', '일식자격증');
INSERT INTO 강사회원_자격증 VALUES('fire99', '바리스타자격증');
INSERT INTO 강사회원_자격증 VALUES('lucky84', '한식자격증');
INSERT INTO 강사회원_자격증 VALUES('yaenso20', '양식자격증');




CREATE  TABLE 강사회원_주소 (
강사회원_id	        VARCHAR2(10),
주소종류	        VARCHAR2(100),
CONSTRAINT 강사회원_주소_pk PRIMARY KEY(강사회원_id,주소종류),
CONSTRAINT    강사회원_주소_강사회원_id_fk      FOREIGN KEY(강사회원_id) REFERENCES    강사회원(강사회원_id));



INSERT INTO 강사회원_주소 VALUES('jimin54', '충청북도 청주시 청원구 사뜸로 106');
INSERT INTO 강사회원_주소 VALUES('jimin54', '충청남도 천안시 동남구 만남로 6542');
INSERT INTO 강사회원_주소 VALUES('jnda41', '충청북도 청주시 청원구 사뜸로 1201');
INSERT INTO 강사회원_주소 VALUES('jnda41', '서울특별시 노원구 공정로 3123');
INSERT INTO 강사회원_주소 VALUES('joonsu22', '충청북도 청주시 청원구 사뜸로 6512');
INSERT INTO 강사회원_주소 VALUES('hwahwa22', '충청북도 청주시 청원구 율봉로 351');
INSERT INTO 강사회원_주소 VALUES('dada12', '대전광역시 동구 충정로 21');
INSERT INTO 강사회원_주소 VALUES('haejin46', '대전광역시 동구 충정로 15');
INSERT INTO 강사회원_주소 VALUES('gun77', '대전광역시 동구 충정로 84');
INSERT INTO 강사회원_주소 VALUES('hrin58', '대전광역시 동구 충정로 2331');
INSERT INTO 강사회원_주소 VALUES('daeeun21', '서울특별시 노원구 공릉로 232');
INSERT INTO 강사회원_주소 VALUES('kimda23', '서울특별시 노원구 공릉로 862');
INSERT INTO 강사회원_주소 VALUES('jwon20', '서울특별시 노원구 공릉로 625');
INSERT INTO 강사회원_주소 VALUES('sixone98', '서울특별시 노원구 공릉로 789');
INSERT INTO 강사회원_주소 VALUES('ssdf4', '서울특별시 노원구 공정로 3215');
INSERT INTO 강사회원_주소 VALUES('poidw6', '서울특별시 마포구 공항로 654');
INSERT INTO 강사회원_주소 VALUES('sfjnw24', '서울특별시 마포구 공항로 124');
INSERT INTO 강사회원_주소 VALUES('sfjnw34', '서울특별시 마포구 공항로 678');
INSERT INTO 강사회원_주소 VALUES('hajin88', '충청남도 천안시 동남구 만남로 421');
INSERT INTO 강사회원_주소 VALUES('fire99', '충청남도 천안시 동남구 만남로 211');
INSERT INTO 강사회원_주소 VALUES('lucky84', '충청남도 천안시 동남구 만남로 79');
INSERT INTO 강사회원_주소 VALUES('yaenso20', '충청남도 천안시 동남구 만남로 9321');




CREATE TABLE 강사회원_등급 (
강사회원_id     VARCHAR2(10),
년월            DATE DEFAULT SYSDATE,
별점평균        NUMBER(2,1),
측정등급        CHAR(1)  CHECK(측정등급 IN('A', 'B', 'C', 'D')),
CONSTRAINT  등급_pk  PRIMARY KEY (년월,강사회원_id),
CONSTRAINT  등급_강사회원_id_fk  FOREIGN KEY (강사회원_id) REFERENCES 강사회원(강사회원_id));

INSERT INTO 강사회원_등급 VALUES('jimin54', TO_DATE('2022/04','YYYY/MM') , 4.3,'B');
INSERT INTO 강사회원_등급 VALUES('jnda41', TO_DATE('2022/04','YYYY/MM') , 3.8,'B');
INSERT INTO 강사회원_등급 VALUES('joonsu22',TO_DATE('2022/04','YYYY/MM') ,3.7,'B');
INSERT INTO 강사회원_등급 VALUES('hwahwa22', TO_DATE('2022/04','YYYY/MM') ,4.6,'A');
INSERT INTO 강사회원_등급 VALUES('dada12',  TO_DATE('2022/04','YYYY/MM') ,2.4,'D');
INSERT INTO 강사회원_등급 VALUES('haejin46', TO_DATE('2022/04','YYYY/MM') ,2.6,'C');
INSERT INTO 강사회원_등급 VALUES('gun77', TO_DATE('2022/04','YYYY/MM') ,3.1,'C');
INSERT INTO 강사회원_등급 VALUES('hrin58', TO_DATE('2022/04','YYYY/MM') ,3.3,'C');
INSERT INTO 강사회원_등급 VALUES('daeeun21',  TO_DATE('2022/04','YYYY/MM') ,3.6,'B');
INSERT INTO 강사회원_등급 VALUES('kimda23', TO_DATE('2022/04','YYYY/MM') ,3.5,'B');
INSERT INTO 강사회원_등급 VALUES('jwon20', TO_DATE('2022/04','YYYY/MM') ,4.1,'B');
INSERT INTO 강사회원_등급 VALUES('sixone98', TO_DATE('2022/04','YYYY/MM') ,4.7,'A');
INSERT INTO 강사회원_등급 VALUES('ssdf4', TO_DATE('2022/04','YYYY/MM') ,4.7,'A');
INSERT INTO 강사회원_등급 VALUES('poidw6', TO_DATE('2022/04','YYYY/MM') ,4.4,'B');
INSERT INTO 강사회원_등급 VALUES('sfjnw24',  TO_DATE('2022/04','YYYY/MM') ,4.3,'B');
INSERT INTO 강사회원_등급 VALUES('sfjnw34', TO_DATE('2022/04','YYYY/MM') ,2.2,'D');
INSERT INTO 강사회원_등급 VALUES('hajin88', TO_DATE('2022/04','YYYY/MM') ,3.2,'C');
INSERT INTO 강사회원_등급 VALUES('fire99', TO_DATE('2022/04','YYYY/MM') ,4.9,'A');
INSERT INTO 강사회원_등급 VALUES('lucky84', TO_DATE('2022/04','YYYY/MM') ,3.7,'B');
INSERT INTO 강사회원_등급 VALUES('yaenso20', TO_DATE('2022/04','YYYY/MM') ,2.5,'C');



CREATE TABLE 기업회원 (
기업회원_id     VARCHAR2(10),
pw              VARCHAR2(10)    NOT NULL,
사업자번호      VARCHAR2(12)    NOT NULL,
기업명          VARCHAR2(30)    NOT NULL,
전화번호        CHAR(13)        NOT NULL,
주소            VARCHAR2(100),
CONSTRAINT 기업회원_pk PRIMARY KEY (기업회원_id),
CONSTRAINT 기업회원_uq UNIQUE(기업명));

INSERT INTO 기업회원 VALUES ('i1', '1234', '123-345-5678', '굿푸드', '010-9876-5432', '충청남도 천안시 동남구 성남면 대흥리 472');
INSERT INTO 기업회원 VALUES ('i2', '1235', '123-345-5679', '엑설런트푸드', '010-9867-5423', '충청남도 천안시 동남구 성남면 대흥리 434');
INSERT INTO 기업회원 VALUES ('i3', '2134', '123-345-5778', '언빌리버블푸드', '010-9976-4532', '충청남도 천안시 동남구 성남면 대흥리 580');
INSERT INTO 기업회원 VALUES ('i4', '4321', '123-355-5678', '딜리셔스푸드', '010-9867-3245', '충청남도 천안시 동남구 성남면 대흥리 806');
INSERT INTO 기업회원 VALUES ('i5', '5643', '423-345-5678', '해피푸드', '010-2346-8432', '충청남도 천안시 동남구 성남면 대흥리 102');
INSERT INTO 기업회원 VALUES ('i6', '9243', '323-345-5678', '담백푸드', '010-9876-5432', '충청남도 천안시 서북구 백석공단1로');
INSERT INTO 기업회원 VALUES ('i7', '5486', '132-345-5678', '바이오푸드', '010-9843-5462', '충청남도 천안시 동남구 성남면 대흥리 472');
INSERT INTO 기업회원 VALUES ('i8', '9452', '123-354-5678', '대상', '010-9236-5232', '서울특별시 동대문구 천호대로 26');
INSERT INTO 기업회원 VALUES ('i9', '8452', '123-345-6578', 'cj제일제당', '010-9236-5232', '서울특별시 중구');
INSERT INTO 기업회원 VALUES ('i10', '9472', '123-535-5678', '하이식품', '010-9926-5292', '서울특별시 동대문구 천호대로 80');
INSERT INTO 기업회원 VALUES ('i11', '1472', '321-345-5678', '신선식품', '010-1926-2292', '충청남도 천안시 동남구 광덕면 행정리 50-3번지');
INSERT INTO 기업회원 VALUES ('i12', '1172', '123-543-5678', '만나식품', '010-1915-2696', '충청남도 천안시 동남구 광덕면 행정리 52-7번지');
INSERT INTO 기업회원 VALUES ('i13', '1413', '123-345-7658', '신전식품', '010-1296-2922', '충청남도 천안시 동남구 광덕면 행정리 50-9번지');
INSERT INTO 기업회원 VALUES ('i14', '2384', '123-657-5678', '우리식품', '010-7561-6548', '충청남도 천안시 동남구 광덕면 행정리 59-3번지');
INSERT INTO 기업회원 VALUES ('i15', '15684', '123-345-8765', '미래식품', '010-7514-6898', '충청남도 천안시 동남구 광덕면 행정리 70-3번지');
INSERT INTO 기업회원 VALUES ('i16', '45218', '874-345-5238', '우수식품', '010-7561-6548', '충청남도 천안시 동남구 광덕면 행정리 10-3번지');
INSERT INTO 기업회원 VALUES ('i17', '23584', '921-345-5678', '착한식품', '010-1261-6128', '충청남도 천안시 동남구 광덕면 행정리 59-6번지');
INSERT INTO 기업회원 VALUES ('i18', '23849', '659-215-5678', '성실식품', '010-1657-6548', '충청남도 천안시 동남구 광덕면 행정리 23-3번지');
INSERT INTO 기업회원 VALUES ('i19', '92384', '320-745-5678', '순자식품', '010-6571-4568', '광주광역시 광산구 장덕동 하남산단3번로 133-8');
INSERT INTO 기업회원 VALUES ('i20', '98324', '123-345-8428', '춘자식품', '010-1298-8921', '광주광역시 광산구 장덕동 하남산단5번로 133-8');


CREATE TABLE 요리코드 (
코드            VARCHAR2(5),
카테고리        VARCHAR2(30),
CONSTRAINT 요리코드 PRIMARY KEY (코드));

INSERT INTO 요리코드 VALUES ('KF', '한국 요리');
INSERT INTO 요리코드 VALUES ('CF', '중국 요리');
INSERT INTO 요리코드 VALUES ('JPF', '일본 요리');
INSERT INTO 요리코드 VALUES ('BK', '제과제빵');
INSERT INTO 요리코드 VALUES ('SN', '분식');
INSERT INTO 요리코드 VALUES ('BV', '음료');
INSERT INTO 요리코드 VALUES ('IDF', '인도 요리');
INSERT INTO 요리코드 VALUES ('VF', '베트남 요리');
INSERT INTO 요리코드 VALUES ('MF', '멕시코 요리');
INSERT INTO 요리코드 VALUES ('ITF', '이탈리아 요리');
INSERT INTO 요리코드 VALUES ('AMF', '미국 요리');


CREATE TABLE 대면레슨 (
강의개설번호      NUMBER(10),
레슨명            VARCHAR2(100)    NOT NULL,
레슨일시          DATE            NOT NULL,
장소              VARCHAR2(100)    NOT NULL,
수강료            NUMBER(6)       NOT NULL,
신청기간          DATE            NOT NULL,
최소수강인원      NUMBER(2),
최대수강인원      NUMBER(2),
수강승인인원      NUMBER(2)       DEFAULT 0,
난이도            VARCHAR2(5)      CHECK(난이도 IN('상', '중', '하')),
공개범위          VARCHAR2(20)    NOT NULL  CHECK(공개범위 IN('기업회원공개', '전체공개')),
대면레슨등록_강사회원_id       VARCHAR2(10),
CONSTRAINT  대면레슨_pk  PRIMARY KEY (강의개설번호),
CONSTRAINT  대면레슨_강사회원_id_fk  FOREIGN KEY (대면레슨등록_강사회원_id) REFERENCES 강사회원(강사회원_id));

CREATE INDEX 대면레슨_레슨명_idx ON 대면레슨(레슨명);

CREATE  SEQUENCE  SEQ_대면레슨
        INCREMENT BY 1
        START  WITH  1375;

INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '초콜릿 쿠키 만들기', TO_DATE('2022/06/15 12:00','YYYY/MM/DD HH24:MI'), '경기도 평택시 평택5로34번길 43-7', 25000, TO_DATE('2022/06/12 12:00','YYYY/MM/DD HH24:MI'), 10, 30, DEFAULT, '중', '전체공개', 'jnda41');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '고등어김치찜 만들기', TO_DATE('2022/06/19 15:00','YYYY/MM/DD HH24:MI'), '충청남도 공주시 반포면 동학사1로 474', 37000, TO_DATE('2022/06/16 15:00','YYYY/MM/DD HH24:MI'), 12, 35, DEFAULT, '상', '전체공개', 'jwon20');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '간단하게 만드는 차돌박이찜', TO_DATE('2022/06/24 14:00','YYYY/MM/DD HH24:MI'), '대구광역시 동구 동대구로 422', 45000, TO_DATE('2022/06/21 14:00','YYYY/MM/DD HH24:MI'), 15, 40, DEFAULT, '중', '기업회원공개', 'lucky84');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '집들이용으로 좋은 새우 부추전', TO_DATE('2022/06/16 11:00','YYYY/MM/DD HH24:MI'), '전라남도 여수시 무선로 55', 28000, TO_DATE('2022/06/13 11:00','YYYY/MM/DD HH24:MI'), 5, 20, DEFAULT, '하', '전체공개', 'jimin54');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '유산슬 느낌의 청경채부추새우덮밥', TO_DATE('2022/06/23 10:30','YYYY/MM/DD HH24:MI'), '광주광역시 서구 치평로 20', 39000, TO_DATE('2022/06/20 10:30','YYYY/MM/DD HH24:MI'), 10, 25, DEFAULT, '상', '기업회원공개', 'jwon20');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '간단한 반찬 5가지', TO_DATE('2022/06/19 17:00','YYYY/MM/DD HH24:MI'), '대구광역시 동구 동대구로 422', 55000, TO_DATE('2022/06/16 17:00','YYYY/MM/DD HH24:MI'), 20, 50, DEFAULT, '하', '전체공개', 'jimin54');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '목살된장구이 만들기', TO_DATE('2022/06/29 12:00','YYYY/MM/DD HH24:MI'), '광주광역시 서구 치평로 20', 37000, TO_DATE('2022/06/26 12:00','YYYY/MM/DD HH24:MI'), 15, 35, DEFAULT, '중', '기업회원공개', 'lucky84');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '깐풍소스를 이용해 삼겹깐풍덮밥 만들기', TO_DATE('2022/06/17 14:30','YYYY/MM/DD HH24:MI'), '충청남도 천안시 서북구 불당3길 7-1', 47000, TO_DATE('2022/06/14 14:30','YYYY/MM/DD HH24:MI'), 5, 15, DEFAULT, '중', '전체공개', 'hajin88');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '이탈리아 치즈로 오픈치즈샌드위치 만들기', TO_DATE('2022/06/30 16:00','YYYY/MM/DD HH24:MI'), '강원도 강릉시 경강로 2033', 28000, TO_DATE('2022/06/27 16:00','YYYY/MM/DD HH24:MI'), 10, 30, DEFAULT, '상', '기업회원공개', 'daeeun21');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '일본식 비빔면 마제소바', TO_DATE('2022/06/28 18:00','YYYY/MM/DD HH24:MI'), '대전광역시 서구 문정로 78', 27000, TO_DATE('2022/06/25 18:00','YYYY/MM/DD HH24:MI'), 20, 45, DEFAULT, '중', '기업회원공개', 'sixone98');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '얼큰하게 맛있는 장칼국수 만들기', TO_DATE('2022/07/02 10:00','YYYY/MM/DD HH24:MI'), '충청남도 공주시 반포면 동학사1로 474', 39000, TO_DATE('2022/06/30 10:00','YYYY/MM/DD HH24:MI'), 15, 40, DEFAULT, '중', '기업회원공개', 'jimin54');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '당근을 갈아서 만드는 당근카레', TO_DATE('2022/07/14 13:30','YYYY/MM/DD HH24:MI'), '대구광역시 동구 동대구로 422', 33000, TO_DATE('2022/07/11 13:30','YYYY/MM/DD HH24:MI'), 10, 30, DEFAULT, '하', '기업회원공개', 'joonsu22');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '삼겹살에 로제소스! 삼겹살크림파스타', TO_DATE('2022/06/18 09:00','YYYY/MM/DD HH24:MI'), '대전광역시 서구 문정로 78', 53000, TO_DATE('2022/06/15 09:00','YYYY/MM/DD HH24:MI'), 8, 20, DEFAULT, '중', '전체공개', 'hrin58');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '정갈한 한끼 케일쌈밥&참치강된장', TO_DATE('2022/07/04 15:30','YYYY/MM/DD HH24:MI'), '충청남도 천안시 서북구 불당3길 7-1', 64000, TO_DATE('2022/07/01 15:30','YYYY/MM/DD HH24:MI'), 20, 40, DEFAULT, '상', '기업회원공개', 'jwon20');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '향긋한 참나물을 활용한 참나물파스타', TO_DATE('2022/06/27 14:00','YYYY/MM/DD HH24:MI'), '강원도 강릉시 경강로 2033', 38000, TO_DATE('2022/06/24 14:00','YYYY/MM/DD HH24:MI'), 5, 20, DEFAULT, '중', '기업회원공개', 'jimin54');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '반찬 없이도 풍족한 고등어시래기무솥밥', TO_DATE('2022/06/12 11:30','YYYY/MM/DD HH24:MI'), '대구광역시 동구 동대구로 422', 47000, TO_DATE('2022/06/09 11:30','YYYY/MM/DD HH24:MI'), 15, 30, DEFAULT, '중', '전체공개', 'lucky84');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '목살채소바비큐, 근사한 파티 메뉴', TO_DATE('2022/07/08 17:30','YYYY/MM/DD HH24:MI'), '광주광역시 서구 치평로 20', 67000, TO_DATE('2022/07/05 17:30','YYYY/MM/DD HH24:MI'), 20, 35, DEFAULT, '상', '기업회원공개', 'gun77');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '꾸덕한 투움바치킨떡볶이', TO_DATE('2022/06/10 15:00','YYYY/MM/DD HH24:MI'), '충청남도 천안시 서북구 불당3길 7-1', 42000, TO_DATE('2022/06/07 15:00','YYYY/MM/DD HH24:MI'), 15, 35, DEFAULT, '중', '전체공개', 'ssdf4');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '초복에 챙겨 먹어야 할 닭곰탕 & 닭무침', TO_DATE('2022/07/17 16:30','YYYY/MM/DD HH24:MI'), '대전광역시 서구 문정로 78', 76000, TO_DATE('2022/07/14 16:30','YYYY/MM/DD HH24:MI'), 15, 50, DEFAULT, '상', '기업회원공개', 'jimin54');
INSERT INTO 대면레슨 VALUES (SEQ_대면레슨.NEXTVAL, '베트남 길거리 피자! 반짱느엉', TO_DATE('2022/06/25 18:00','YYYY/MM/DD HH24:MI'), '전라남도 여수시 무선로 55', 24000, TO_DATE('2022/06/22 18:00','YYYY/MM/DD HH24:MI'), 20, 50, DEFAULT, '하', '기업회원공개', 'fire99');


CREATE TABLE 동영상레슨 (
영상등록번호         NUMBER(10),
레슨명        VARCHAR2(100)    NOT NULL,
레슨시간     VARCHAR2(10),
수강료        NUMBER(6)       NOT NULL,
난이도        VARCHAR2(5)      CHECK(난이도 IN ('상', '중', '하')),
강사회원_id         VARCHAR2(10),
CONSTRAINT  동영상레슨_pk  PRIMARY KEY (영상등록번호),
CONSTRAINT  동영상레슨_강사회원_id_fk  FOREIGN KEY (강사회원_id) REFERENCES 강사회원(강사회원_id));

CREATE INDEX 동영상레슨_레슨명_idx ON 동영상레슨(레슨명);

CREATE  SEQUENCE  SEQ_동영상레슨
        INCREMENT BY 1
        START  WITH  5045;

INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '집에서 만드는 소세지빵', '10분', 14000, '중', 'sfjnw34');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '든든한 혼밥 돈까스김치나베', '20분', 26000, '중', 'jimin54');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '간단하게 만드는 일본식 돼지고기 덮밥 부타동', '20분', 22000, '중', 'fire99');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '노오븐 베이킹 간단한 간식 만들기', '15분', 18000, '중', 'jnda41');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '에어프라이어로 하는 요리 3가지', '20분', 18000, '하', 'haejin46');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '10분이면 완성! 초간단 애호박덮밥', '10분', 19000, '하', 'lucky84');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '노릇노릇한 쭈꾸미 파전', '12분', 13000, '중', 'jwon20');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '면 대신 계란으로 국수 만들기', '10분', 10000, '중', 'joonsu22');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '간장말고 매콤하게 불까스덮밥', '18분', 23000, '상', 'sixone98');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '집에서 만드는 색다른 라면, 똠양꿍라면', '8분', 9000, '중', 'kimda23');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '간단하게 만드는 간장비빔국수', '10분', 12000, '하', 'jimin54');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '만두피로 만드는 간식!', '9분', 10000, '하', 'jnda41');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '쌀쌀한 날씨엔 얼큰한 김치우동', '11분', 16000, '중', 'fire99');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '보들보들 담백한 순두부계란찜', '16분', 21000, '중', 'jwon20');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '파스타면 대신 군만두! 군만두라자냐', '10분', 13000, '상', 'hrin58');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '콩 스프, 매일 아침 뜨끈하고 든든하게', '8분', 9000, '중', 'dada12');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '가슴 속까지 뻥 뚫리는 초간단 동치미', '14분', 27000, '하', 'poidw6');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '특별한 3단피자토스트', '15분', 15000, '중', 'daeeun21');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '기름진 음식에서 탈출, 골뱅이쌀국수샐러드', '12분', 18000, '중', 'gun77');
INSERT INTO 동영상레슨 VALUES (SEQ_동영상레슨.NEXTVAL, '간단하게 즐기는 한끼, 유부덮밥&유부우동', '15분', 25000, '중', 'jimin54');


CREATE TABLE 제품 (
제품번호        NUMBER(10),
제품명       VARCHAR2(30)    NOT NULL,
금액       NUMBER(6)       NOT NULL,
재고수량      NUMBER(6)       CHECK (재고수량 >= 0),
누적판매수량 NUMBER(10)      DEFAULT 0,
기업회원_id         VARCHAR2(10),
CONSTRAINT  제품_pk  PRIMARY KEY (제품번호),
CONSTRAINT  제품_기업회원_id_fk  FOREIGN KEY (기업회원_id) REFERENCES 기업회원(기업회원_id));

CREATE INDEX 제품_제품명_idx ON 제품(제품명);

CREATE  SEQUENCE  SEQ_제품
        INCREMENT BY 1
        START  WITH  7354;

INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '닭가슴살 만두', 2450, 78, 35, 'i7');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '훈제오리 150g', 2980, 130, 49, 'i8');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '블루베리 100g', 8990, 358, 196, 'i3');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '와규 함박 스테이크', 13000, 127, 34, 'i1');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '통밀 식빵', 3500, 246, 94, 'i1');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '아이스박스 14L', 39800, 60, 9, 'i4');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '진공 텀블러', 32000, 104, 37, 'i5');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '고무장갑', 2380, 607, 206, 'i10');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '주방세제', 2800, 460, 257, 'i15');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '실리콘 조리도구 5종', 9200, 140, 28, 'i9');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '키친타올 130매 X 4롤', 5500, 106, 83, 'i1');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '주방가위', 2880, 139, 30, 'i4');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '수세미', 1400, 249, 143, 'i19');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '후라이팬', 89000, 110, 29, 'i8');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '수저세트', 5900, 340, 196, 'i17');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '샤브샤브 냄비', 49900, 104, 28, 'i5');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '뚝배기', 17500, 178, 85, 'i8');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '스리라차 소스', 4000, 597, 285, 'i14');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '국수 소면 900g', 3150, 896, 475, 'i20');
INSERT INTO 제품 VALUES (SEQ_제품.NEXTVAL, '고추장 1kg', 18000, 173, 59, 'i9');


CREATE TABLE 이벤트 (
이벤트번호              NUMBER(10),
이벤트명             VARCHAR2(100)   NOT NULL,
시작일시       DATE           NOT NULL,
종료일시         DATE           NOT NULL,
추첨일시      DATE           NOT NULL,
추첨방법    VARCHAR2(10)   NOT NULL,
기업회원_id                VARCHAR2(10),
CONSTRAINT    이벤트_pk    PRIMARY KEY(이벤트번호),
CONSTRAINT    이벤트_uq   UNIQUE(이벤트명),
CONSTRAINT    이벤트_기업회원_id_fk      FOREIGN KEY(기업회원_id) REFERENCES    기업회원(기업회원_id));

CREATE  SEQUENCE  SEQ_이벤트
        INCREMENT BY 1
        START  WITH  3882;

INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, 'N행시로 취향저격하기!', TO_DATE('2022/06/05 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/15 16:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/16 16:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i13');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '숨어있는 두더지 5마리 잡기!', TO_DATE('2022/06/08 12:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/20 18:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/24 14:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i1');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '행운존 이벤트', TO_DATE('2022/06/12 14:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/20 19:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/20 20:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i12');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '후라이팬으로 4행시', TO_DATE('2022/06/06 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/25 16:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/27 18:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i8');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '제품 리뷰작성 EVENT', TO_DATE('2022/06/01 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/30 22:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/01 15:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i11');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '블로그 홍보하고 아이스크림 받자!', TO_DATE('2022/06/15 12:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/18 12:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/20 12:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i18');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '태양을 피하는 방법 공유하고 선글라스 받자!', TO_DATE('2022/06/20 10:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/10 18:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/15 14:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i20');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '숨은 그림 찾기', TO_DATE('2022/06/08 10:00','YYYY/MM/DD HH24:MI'),  TO_DATE('2022/06/10 12:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/10 15:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i7');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '꿀조합 추천!', TO_DATE('2022/07/02 13:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/16 17:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/18 11:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i2');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '블루베리 이용한 레시피 공유 EVENT', TO_DATE('2022/06/30 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/13 22:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/15 09:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i3');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '틀린 그림 찾기', TO_DATE('2022/08/10 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/08/15 13:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/08/16 15:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i16');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, 'ㄱㅁㅈㄱ 초성 퀴즈', TO_DATE('2022/05/18 10:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/05/20 12:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/05/22 14:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i10');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '신제품 SNS에 홍보하고 신제품 먼저 받아가자~', TO_DATE('2022/06/01 12:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/10 22:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/11 09:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i5');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '시원하게 여름나기 프로젝트!', TO_DATE('2022/06/15 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/14 17:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/15 12:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i15');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '해피푸드와 함께하는 캠핑 EVENT', TO_DATE('2022/04/01 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/04/20 19:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/04/23 10:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i4');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '1년 365일 몸 관리 EVENT', TO_DATE('2022/08/01 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/08/10 15:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/08/15 09:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i7');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, 'HOT한 겨울간식 EVENT', TO_DATE('2021/12/01 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2021/12/31 17:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/01/02 10:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i9');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '퀴즈 풀고 선물 받자!', TO_DATE('2022/05/25 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/15 15:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/06/17 13:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i11');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '미래식품에서 선물을 드립니다!', TO_DATE('2022/04/20 12:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/05/10 14:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/05/13 16:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i15');
INSERT INTO 이벤트 VALUES (SEQ_이벤트.NEXTVAL, '인스타 팔로우하고 선물받자!', TO_DATE('2022/06/03 00:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/07 23:00','YYYY/MM/DD HH24:MI'), TO_DATE('2022/07/10 13:00','YYYY/MM/DD HH24:MI'), '랜덤', 'i17');


CREATE TABLE 추첨계획 (
이벤트번호    NUMBER(10),
추첨부문     VARCHAR2(10),
추첨인원      NUMBER(3)    CHECK (추첨인원 >= 1),
상품    VARCHAR2(50),
CONSTRAINT    추첨계획_pk    PRIMARY KEY(이벤트번호, 추첨부문),
CONSTRAINT    추첨계획_이벤트번호_fk   FOREIGN KEY(이벤트번호) REFERENCES    이벤트(이벤트번호));

INSERT INTO 추첨계획 VALUES (3882, '1등', 1, '에어팟 맥스');
INSERT INTO 추첨계획 VALUES (3882, '2등', 1, '블루투스 스피커');
INSERT INTO 추첨계획 VALUES (3882, '3등', 3, '치킨 기프티콘');
INSERT INTO 추첨계획 VALUES (3883, '1등', 1, '필름 카메라');
INSERT INTO 추첨계획 VALUES (3883, '2등', 5, '키친타올 130매 X 4롤');
INSERT INTO 추첨계획 VALUES (3884, '1등', 1, '식기세척기');
INSERT INTO 추첨계획 VALUES (3884, '2등', 1, '인덕션');
INSERT INTO 추첨계획 VALUES (3884, '3등', 3, '냄비');
INSERT INTO 추첨계획 VALUES (3885, '당첨', 10, '스타벅스 아메리카노 기프티콘');
INSERT INTO 추첨계획 VALUES (3886, '당첨', 5, '스타벅스 텀블러');
INSERT INTO 추첨계획 VALUES (3887, '당첨', 100, '아이스크림');
INSERT INTO 추첨계획 VALUES (3888, '1등', 1, '선글라스');
INSERT INTO 추첨계획 VALUES (3888, '2등', 2, '선크림');
INSERT INTO 추첨계획 VALUES (3888, '3등', 5, '모자');
INSERT INTO 추첨계획 VALUES (3889, '당첨', 10, '실리콘 조리도구 5종');
INSERT INTO 추첨계획 VALUES (3890, '1등', 1, '에어프라이어');
INSERT INTO 추첨계획 VALUES (3890, '2등', 10, '꿀');
INSERT INTO 추첨계획 VALUES (3891, '1등', 1, '블루베리 100g X 10개');
INSERT INTO 추첨계획 VALUES (3891, '2등', 3, '블루베리 100g X 5개');
INSERT INTO 추첨계획 VALUES (3891, '3등', 5, '블루베리 100g X 1개');
INSERT INTO 추첨계획 VALUES (3892, '당첨', 20, '종합 과자 세트');
INSERT INTO 추첨계획 VALUES (3893, '당첨', 7, '주방세제 & 수세미');
INSERT INTO 추첨계획 VALUES (3894, '당첨', 5, '샤브샤브 냄비');
INSERT INTO 추첨계획 VALUES (3895, '1등', 1, '에어컨');
INSERT INTO 추첨계획 VALUES (3895, '2등', 3, '선풍기');
INSERT INTO 추첨계획 VALUES (3895, '3등', 5, '미니 선풍기');
INSERT INTO 추첨계획 VALUES (3896, '1등', 3, '아이스박스');
INSERT INTO 추첨계획 VALUES (3896, '2등', 10, '돗자리');
INSERT INTO 추첨계획 VALUES (3897, '당첨', 15, '닭가슴살 만두');
INSERT INTO 추첨계획 VALUES (3898, '당첨', 10, '호빵 5종 세트');
INSERT INTO 추첨계획 VALUES (3899, '당첨', 150, '감귤주스');
INSERT INTO 추첨계획 VALUES (3900, '당첨', 50, '주방세제');
INSERT INTO 추첨계획 VALUES (3901, '당첨', 15, '수저세트');


CREATE TABLE 레시피 (
레시피번호      NUMBER(10),
작성일시        DATE              DEFAULT SYSDATE,
제목            VARCHAR2(100)      NOT NULL,
내용            VARCHAR2(4000)    NOT NULL,
과정사진        VARCHAR2(4000),
요리재료        VARCHAR2(1000)    NOT NULL,
조리시간        NUMBER(6),
난이도          VARCHAR2(5)    CHECK(난이도 IN('상', '중', '하')),
요리카테고리    VARCHAR2(5),
레시피등록_일반회원_id     VARCHAR2(10),
CONSTRAINT    레시피_pk    PRIMARY KEY(레시피번호),
CONSTRAINT    레시피_일반회원_id_fk    FOREIGN KEY(레시피등록_일반회원_id) REFERENCES    일반회원(일반회원_id));

CREATE INDEX 레시피_요리카테고리_idx ON 레시피(요리카테고리);

CREATE  SEQUENCE  SEQ_레시피
        INCREMENT BY 1
        START  WITH  1000;

INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '한끼뚝딱 간장계란밥', '간단하게 한끼 만들어봐요', 'C:\recipe\soy_sauce_egg_rice.jpg', '밥, 달걀, 간장', 5, '하', 'KF', 'hyejin12');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '집에서 찰떡과 조청으로 쉽게 만든 꿀떡', '매우 쉬운 꿀떡꿀떡', 'C:\recipe\honey_rice_cake.jpg', '찹쌀, 설탕, 천일염', 120, '중', 'KF', 'dagyeong13');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '간단하고 맛있는 참치마요덥밥', '한번 시도해봐요!', 'C:\recipe\tuna_mayo_rice.jpg', '캔참치, 밥, 달걀, 마요네즈, 김가루', 30, '하', 'KF', 'junsu14');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '밥도둑 반찬 고추장 달걀조림 만들기', '달걀 조림 만들어요', 'C:\recipe\hot_egg.jpg', '달걀, 고추장, 양파, 멸치육수', 20, '하', 'KF', 'hwajong15');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '치킨너겟으로 만드는 초간편 간장치킨', '집에서 손쉽게 만들 수 있어요!', 'C:\recipe\soy_chicken.jpg', '치킨너겟, 견과류, 진간장, 설탕', 15, '하', 'KF', 'gun16');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '비엔나 만두 강정', '아이들이 좋아해요', 'C:\recipe\vienna_dumplings', '만두, 비엔나소세지, 간장, 고추장, 케찹', 15, '하', 'KF', 'guns17');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '오렌지 주스 만들기', '자세한 내용은 사진을 참고해주세요!', 'C:\recipe\orange_juice.jpg', '오렌지, 트루스위트 알룰로스, 물', 10, '하', 'BV', 'sangjin18');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '초콜릿쿠기 만들기', '초코쿠키는 사랑입니다.', 'C:\recipe\chocolate_cookie.jpg', '버터, 우유, 설탕, 밀가루 박력분, 초콜릿, 달걀 노른자', 120, '하', 'BK', 'changmin19');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '단짠단짠 치즈갈릭브레드', '오늘도 간편한 레시피로 간식을 만들어봐요', 'C:\recipe\cheese_garlic_bread.jpg', '식빵, 체다치즈, 커터, 설탕, 우유', 15, '하', 'BK', 'sunghyun20');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '짜장면', '평범하지만 색다른 짜장면 만들기 도전해봐요~', 'C:\recipe\jjajangmyeon.jpg', '중화면, 양파, 감자, 춘장, 돼지목살, 계란, 오리, 전분', 40, '중', 'CF', 'jaeyong21');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '크림 닭가슴살 스테이크', '맛있게 만드는 스테이크, 사진 참고해주세요~!', 'C:\recipe\cream_chicken_steak.jpg', '닭가슴살, 생크림, 우유, 버터', 30, '중', 'AMF', 'seungmin22');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '비빔국수 황금레시피', '몰래 공유하는 황금레시피 다들 만들어봐요', 'C:\recipe\bibim_noodles.jpg', '국수, 깻잎, 열무 김치, 고추장, 참기름, 다진마늘', 30, '하', 'KF', 'sanghyun23');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '백종원 분식점 떡볶이 황금 레시피', '맛있으면 살찌지 않는 떡볶이 만들어봐요', 'C:\recipe\tteokbokki.jpg', '떡볶이떡, 물, 대파, 통깨, 고추장, 간장, 설탕', 15, '하', 'SN', 'sua24');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '전자렌지 계란찜', '너무 간단하게 계란찜을 만들 수 있어요!', 'C:\recipe\egg_custard.jpg', '계란, 소금, 물, 야채', 10, '하', 'KF', 'culsu25');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '초간단 규카츠!', '집에서도 쉽게 만들어봐요~', 'C:\recipe\gyukatsu.jpg', '소고기 채끝살, 빵가루, 밀가루, 양배추, 달걀', 10, '하', 'JPF', 'eunji26');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '일본식 소고기크로켓', '집에서 만드는 일본식 소고기크로켓 어렵지 않아요!', 'C:\recipe\beef_croquette.jpg', '감자, 소고기다짐육, 밀가루, 계란, 빵가루, 설탕, 튀김용 기름', 5, '하', 'JPF', 'chang27');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '홀릭되는 맛 부대찌개 양념', '나가서 사먹을 필요 없어요~', 'C:\recipe\budaejjigae.jpg', '김치, 비엔나, 스팸, 두부, 떡, 대파, 사골곰탕, 국간장, 물, 마늘', 30, '하', 'KF', 'minseok28');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '백종원 오뎅볶음레시피', '검증된 레시피는 인정이죠!', 'C:\recipe\fish_cake.jpg', '오뎅, 양파, 대파, 간장, 설탕, 물, 참기름', 10, '하', 'KF', 'minjae29');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '차돌박이야끼소바', '차돌박이 맛있어요! 다같이 도전해봐요', 'C:\recipe\marbled_yakisoba.jpg', '일식면, 진간장, 돈까스소스, 숙주, 계란', 20, '중', 'JPF', 'jun30');
INSERT INTO 레시피 VALUES(SEQ_레시피.NEXTVAL, DEFAULT, '초간단 생딸기 우유', '간편하게 마실 수 있는 음료수 만들어봐요!', 'C:\recipe\straw_milk.jpg', '딸기, 설탕, 우유', 10, '하', 'BV', 'uengjin31');


CREATE TABLE 요리재료 (
레시피번호         NUMBER(10),
요리재료           VARCHAR2(30),
CONSTRAINT  요리재료_PK  PRIMARY KEY (레시피번호, 요리재료),
CONSTRAINT    요리재료_레시피번호_fk      FOREIGN KEY(레시피번호) REFERENCES    레시피(레시피번호));

INSERT INTO 요리재료 VALUES(1000, '밥');
INSERT INTO 요리재료 VALUES(1000, '달걀');
INSERT INTO 요리재료 VALUES(1000, '간장');
INSERT INTO 요리재료 VALUES(1001, '찹쌀');
INSERT INTO 요리재료 VALUES(1001, '설탕');
INSERT INTO 요리재료 VALUES(1001, '천일염');
INSERT INTO 요리재료 VALUES(1002, '캔참치');
INSERT INTO 요리재료 VALUES(1002, '밥');
INSERT INTO 요리재료 VALUES(1002, '달걀');
INSERT INTO 요리재료 VALUES(1002, '마요네즈');
INSERT INTO 요리재료 VALUES(1002, '김가루');
INSERT INTO 요리재료 VALUES(1003, '달걀');
INSERT INTO 요리재료 VALUES(1003, '고추장');
INSERT INTO 요리재료 VALUES(1003, '양파');
INSERT INTO 요리재료 VALUES(1003, '멸치육수');
INSERT INTO 요리재료 VALUES(1004, '치킨너겟');
INSERT INTO 요리재료 VALUES(1004, '견과류');
INSERT INTO 요리재료 VALUES(1004, '진간장');
INSERT INTO 요리재료 VALUES(1004, '설탕');
INSERT INTO 요리재료 VALUES(1005, '만두');
INSERT INTO 요리재료 VALUES(1005, '비엔나소세지');
INSERT INTO 요리재료 VALUES(1005, '간장');
INSERT INTO 요리재료 VALUES(1005, '고추장');
INSERT INTO 요리재료 VALUES(1005, '케찹');
INSERT INTO 요리재료 VALUES(1006, '오렌지');
INSERT INTO 요리재료 VALUES(1006, '트루스위트 알룰로스');
INSERT INTO 요리재료 VALUES(1006, '물');
INSERT INTO 요리재료 VALUES(1007, '버터');
INSERT INTO 요리재료 VALUES(1007, '우유');
INSERT INTO 요리재료 VALUES(1007, '설탕');
INSERT INTO 요리재료 VALUES(1007, '밀가루 박력분');
INSERT INTO 요리재료 VALUES(1007, '초콜릿');
INSERT INTO 요리재료 VALUES(1007, '달걀 노른자');
INSERT INTO 요리재료 VALUES(1008, '식빵');
INSERT INTO 요리재료 VALUES(1008, '체다치즈');
INSERT INTO 요리재료 VALUES(1008, '커터');
INSERT INTO 요리재료 VALUES(1008, '설탕');
INSERT INTO 요리재료 VALUES(1008, '우유');
INSERT INTO 요리재료 VALUES(1009, '중화면');
INSERT INTO 요리재료 VALUES(1009, '양파');
INSERT INTO 요리재료 VALUES(1009, '감자');
INSERT INTO 요리재료 VALUES(1009, '춘장');
INSERT INTO 요리재료 VALUES(1009, '돼지목살');
INSERT INTO 요리재료 VALUES(1009, '계란');
INSERT INTO 요리재료 VALUES(1009, '오리');
INSERT INTO 요리재료 VALUES(1009, '전분');
INSERT INTO 요리재료 VALUES(1010, '닭가슴살');
INSERT INTO 요리재료 VALUES(1010, '생크림');
INSERT INTO 요리재료 VALUES(1010, '우유');
INSERT INTO 요리재료 VALUES(1010, '버터');
INSERT INTO 요리재료 VALUES(1011, '국수');
INSERT INTO 요리재료 VALUES(1011, '깻잎');
INSERT INTO 요리재료 VALUES(1011, '열무 김치');
INSERT INTO 요리재료 VALUES(1011, '고추장');
INSERT INTO 요리재료 VALUES(1011, '참기름');
INSERT INTO 요리재료 VALUES(1011, '다진마늘');
INSERT INTO 요리재료 VALUES(1012, '떡볶이떡');
INSERT INTO 요리재료 VALUES(1012, '물');
INSERT INTO 요리재료 VALUES(1012, '대파');
INSERT INTO 요리재료 VALUES(1012, '통깨');
INSERT INTO 요리재료 VALUES(1012, '고추장');
INSERT INTO 요리재료 VALUES(1012, '간장');
INSERT INTO 요리재료 VALUES(1012, '설탕');
INSERT INTO 요리재료 VALUES(1013, '계란');
INSERT INTO 요리재료 VALUES(1013, '소금');
INSERT INTO 요리재료 VALUES(1013, '물');
INSERT INTO 요리재료 VALUES(1013, '야채');
INSERT INTO 요리재료 VALUES(1014, '소고기 채끝살');
INSERT INTO 요리재료 VALUES(1014, '빵가루');
INSERT INTO 요리재료 VALUES(1014, '밀가루');
INSERT INTO 요리재료 VALUES(1014, '양배추');
INSERT INTO 요리재료 VALUES(1014, '달걀');
INSERT INTO 요리재료 VALUES(1015, '감자');
INSERT INTO 요리재료 VALUES(1015, '소고기다짐육');
INSERT INTO 요리재료 VALUES(1015, '밀가루');
INSERT INTO 요리재료 VALUES(1015, '계란');
INSERT INTO 요리재료 VALUES(1015, '빵가루');
INSERT INTO 요리재료 VALUES(1015, '설탕');
INSERT INTO 요리재료 VALUES(1015, '튀김용 기름');
INSERT INTO 요리재료 VALUES(1016, '김치');
INSERT INTO 요리재료 VALUES(1016, '비엔나');
INSERT INTO 요리재료 VALUES(1016, '스팸');
INSERT INTO 요리재료 VALUES(1016, '두부');
INSERT INTO 요리재료 VALUES(1016, '떡');
INSERT INTO 요리재료 VALUES(1016, '대파');
INSERT INTO 요리재료 VALUES(1016, '사골곰탕');
INSERT INTO 요리재료 VALUES(1016, '국간장');
INSERT INTO 요리재료 VALUES(1016, '물');
INSERT INTO 요리재료 VALUES(1016, '마늘');
INSERT INTO 요리재료 VALUES(1017, '오뎅');
INSERT INTO 요리재료 VALUES(1017, '양파');
INSERT INTO 요리재료 VALUES(1017, '대파');
INSERT INTO 요리재료 VALUES(1017, '간장');
INSERT INTO 요리재료 VALUES(1017, '설탕');
INSERT INTO 요리재료 VALUES(1017, '물');
INSERT INTO 요리재료 VALUES(1017, '참기름');
INSERT INTO 요리재료 VALUES(1018, '일식면');
INSERT INTO 요리재료 VALUES(1018, '진간장');
INSERT INTO 요리재료 VALUES(1018, '돈까스소스');
INSERT INTO 요리재료 VALUES(1018, '숙주');
INSERT INTO 요리재료 VALUES(1018, '계란');
INSERT INTO 요리재료 VALUES(1019, '딸기');
INSERT INTO 요리재료 VALUES(1019, '설탕');
INSERT INTO 요리재료 VALUES(1019, '우유');


CREATE TABLE 중고거래 (
게시글번호        NUMBER(10),
게시글제목        VARCHAR2(100),
작성일시          DATE            DEFAULT SYSDATE,
제품사진          VARCHAR2(4000),
제품상태          VARCHAR2(20),
정가              NUMBER(6),
판매금액          NUMBER(6)       NOT NULL,
거래방법          VARCHAR2(10)    NOT NULL CHECK(거래방법 IN('직거래', '택배')),
거래상태          VARCHAR2(20)     NOT NULL CHECK(거래상태 IN('판매중', '예약중', '판매완료')),
중고거래등록_일반회원_id       VARCHAR2(10),
CONSTRAINT    중고거래_pk    PRIMARY KEY(게시글번호),
CONSTRAINT    중고거래_일반회원_id_fk       FOREIGN KEY(중고거래등록_일반회원_id) REFERENCES    일반회원(일반회원_id));

CREATE  SEQUENCE  SEQ_중고거래
        INCREMENT BY 1
        START  WITH  100;

INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '미개봉 주전자', TO_DATE('2022/03/08 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\frying_pan.jpg', '미개봉', 15900, 13000, '택배', '판매중', 'hyejin12');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '에어프라이기 팝니다', TO_DATE('2022/03/08 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\air_fryer.jpg', '좋음', 89900, 65000, '직거래', '판매중', 'dagyeong13');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '오븐 팔아요', TO_DATE('2022/03/08 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\oven.jpg', '좋음', 159000, 120000, '택배', '예약중', 'junsu14');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '미개봉 반찬용기', TO_DATE('2022/03/08 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\bowl.jpg', '미개봉', 12900, 10000, '직거래', '판매완료', 'hwajong15');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '미개봉 젓가락 싸게 팝니다', TO_DATE('2022/03/08 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\chopstick.jpg', '미개봉', 15900, 13000, '택배', '예약중', 'gun16');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '믹서기 팔아요', TO_DATE('2022/03/09 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\blender.jpg', '보통', 34900, 20000, '택배', '판매중', 'guns17');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '상태좋은 주전자', TO_DATE('2022/03/09 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\teakettle.jpg', '좋음', 20000, 15000, '택배', '판매중', 'sangjin18');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '도마 판매합니다', TO_DATE('2022/03/09 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\cutting_board.jpg', '보통', 8000, 5000, '직거래', '판매중', 'changmin19');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '국자 팝니다!', TO_DATE('2022/03/09 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\ladle.jpg', '좋음', 4900, 3000, '직거래', '판매완료', 'sunghyun20');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '미개봉 주걱 급처!', TO_DATE('2022/03/10 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\spatula.jpg', '미개봉', 9900, 5000, '직거래', '판매완료', 'jaeyong21');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '앞치마 팔아요', TO_DATE('2022/03/10 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\apron.jpg', '좋음', 8900, 5000, '택배', '판매완료', 'seungmin22');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '거품기', TO_DATE('2022/03/10 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\whisk.jpg', '좋음', 11000, 8000, '직거래', '판매중', 'sanghyun23');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '오븐장갑 팝니다요', TO_DATE('2022/03/10 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\oven_gloves.jpg', '보통', 12900, 6000, '직거래', '판매중', 'sua24');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '주전자 판매합니다^^', TO_DATE('2022/03/10 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\kettle.jpg', '보통', 30000, 15000, '택배', '판매완료', 'culsu25');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '미개봉 뒤집개', TO_DATE('2022/03/11 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\flipper.jpg', '미개봉', 10900, 8000, '직거래', '예약중', 'eunji26');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '롤링핀 밀대 팔아요', TO_DATE('2022/03/11 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\rolling_pin.jpg', '보통', 7900, 4000, '직거래', '판매완료', 'chang27');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '식칼세트', TO_DATE('2022/03/11 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\knife.jpg', '좋음', 25000, 15000, '택배', '판매완료', 'minseok28');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '온도계 팝니당~', TO_DATE('2022/03/12 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\thermometer.jpg', '좋음', 9000, 6000, '택배', '판매중', 'minjae29');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '반죽 스크레이퍼', TO_DATE('2022/03/12 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\scrapper.jpg', '좋음', 15000, 12000, '직거래', '판매중', 'jun30');
INSERT INTO 중고거래 VALUES(SEQ_중고거래.NEXTVAL, '식기건조대 싸게 팝니다~', TO_DATE('2022/03/12 18:23:34','YYYY/MM/DD HH24:MI:SS'), 'C:\used_trade\dish_rack.jpg', '보통', 20000, 13000, '직거래', '판매완료', 'uengjin31');


CREATE TABLE 공동구매 (
공동구매번호    NUMBER(10),
등록일시            DATE            DEFAULT SYSDATE,
물품이름           VARCHAR2(60)    NOT NULL,
사진               VARCHAR2(4000),
금액                NUMBER(6)       NOT NULL,
계좌번호          VARCHAR2(20)    NOT NULL,
신청마감일시            DATE            NOT NULL,
목표수량           NUMBER(6)       NOT NULL,
잔여수량          NUMBER(6)       NOT NULL,
공동구매등록_강사회원_id             VARCHAR2(10),
CONSTRAINT    공동구매_pk        PRIMARY KEY(공동구매번호),
CONSTRAINT    공동구매_강사회원_id_fk          FOREIGN KEY(공동구매등록_강사회원_id) REFERENCES    강사회원(강사회원_id));

CREATE  SEQUENCE  SEQ_공동구매
        INCREMENT BY 1
        START  WITH  10;

INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/01 00:00:00','YYYY/MM/DD HH24:MI:SS'), '거품기', 'C:\group_buy\whisk.jpg', 10000, '112211-11-111111', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 50, 40, 'jimin54');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/01 12:00:00','YYYY/MM/DD HH24:MI:SS'), '식칼세트', 'C:\group_buy\knife.jpg', 23000, '123456-11-789010', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 45, 22, 'jnda41');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/01 18:00:00','YYYY/MM/DD HH24:MI:SS'), '반죽 스크레이퍼', 'C:\group_buy\scrapper.jpg', 12000, '114213-21-182411', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 35, 30, 'joonsu22');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/02 12:00:00','YYYY/MM/DD HH24:MI:SS'), '온도계', 'C:\group_buy\thermometer.jpg', 10000, '128403-39-393946', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 50, 44, 'hwahwa22');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/02 14:00:00','YYYY/MM/DD HH24:MI:SS'), '오븐장갑', 'C:\group_buy\oven_gloves.jpg', 8000, '283948-20-458739', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 30, 10, 'dada12');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/02 16:00:00','YYYY/MM/DD HH24:MI:SS'), '주전자', 'C:\group_buy\teakettle.jpg', 16000, '274954-29-938593', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 35, 25, 'haejin46');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/02 19:00:00','YYYY/MM/DD HH24:MI:SS'), '식기건조대', 'C:\group_buy\dish_rack.jpg', 14000, '273849-41-958573', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 10, 5, 'gun77');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/03 11:00:00','YYYY/MM/DD HH24:MI:SS'), '믹서기', 'C:\group_buy\blender.jpg', 32000, '849583-14-348572', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 12, 'hrin58');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/03 12:00:00','YYYY/MM/DD HH24:MI:SS'), '프라이팬', 'C:\group_buy\frying_pan.jpg', 15000, '584993-24-589530', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 30, 14, 'daeeun21');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/03 12:30:00','YYYY/MM/DD HH24:MI:SS'), '에어프라이기', 'C:\group_buy\air_fryer.jpg', 55000, '385937-58-574830', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 10, 'kimda23');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/03 15:00:00','YYYY/MM/DD HH24:MI:SS'), '오븐', 'C:\group_buy\oven.jpg', 70000, '459386-65-138295', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 25, 20, 'jwon20');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/03 15:00:00','YYYY/MM/DD HH24:MI:SS'), '반찬 용기', 'C:\group_buy\bowl.jpg', 15000, '374859-68-785938', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 50, 15, 'sixone98');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/03 17:00:00','YYYY/MM/DD HH24:MI:SS'), '모밀 소스', 'C:\group_buy\wheat_sauce.jpg', 8000, '849506-64-283405', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 100, 55, 'ssdf4');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/03 17:30:00','YYYY/MM/DD HH24:MI:SS'), '수박', 'C:\group_buy\watermelon.jpg', 12000, '758493-38-638492', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 40, 24, 'poidw6');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/04 16:00:00','YYYY/MM/DD HH24:MI:SS'), '딸기', 'C:\group_buy\strawberry.jpg', 10000, '162847-21-628394', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 35, 17, 'sfjnw24');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/04 17:00:00','YYYY/MM/DD HH24:MI:SS'), '맛조림 간장', 'C:\group_buy\seasoning_sauce.jpg', 10000, '537423-26-638492', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 70, 40, 'sfjnw34');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/04 18:00:00','YYYY/MM/DD HH24:MI:SS'), '유기농 김치', 'C:\group_buy\kimchi.jpg', 13000, '253748-18-152738', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 60, 20, 'hajin88');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/04 18:20:00','YYYY/MM/DD HH24:MI:SS'), '꼬막', 'C:\group_buy\cockle.jpg', 21000, '192938-93-268395', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 100, 45, 'fire99');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/05 15:00:00','YYYY/MM/DD HH24:MI:SS'), '홍감자', 'C:\group_buy\potato.jpg', 17000, '684932-01-019287', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 120, 30, 'lucky84');
INSERT INTO 공동구매 VALUES(SEQ_공동구매.NEXTVAL, TO_DATE('2022/04/05 15:40:00','YYYY/MM/DD HH24:MI:SS'), '양파', 'C:\group_buy\onion.jpg', 20000, '527384-12-828395', TO_DATE('2022/04/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 150, 50, 'yaenso20');


CREATE TABLE 맛집방문모임 (
모임번호            NUMBER(10),
모임이름           VARCHAR2(100)    NOT NULL,
참여인원수            NUMBER(3)       DEFAULT 0,
맛집주소          VARCHAR2(100)    NOT NULL,
맛집이름          VARCHAR2(100)    NOT NULL,
신청마감일시            DATE            NOT NULL,
최대모집인원             NUMBER(2)       NOT NULL,
일인당예상비용     NUMBER(6),
맛집방문일시    DATE            NOT NULL,
모임등록_일반회원_id             VARCHAR2(10),
CONSTRAINT    맛집방문모임_pk         PRIMARY KEY(모임번호),
CONSTRAINT    맛집방문모임_uq    UNIQUE(모임이름),
CONSTRAINT    맛집방문모임_일반회원_id_fk      FOREIGN KEY(모임등록_일반회원_id) REFERENCES    일반회원(일반회원_id));

CREATE  SEQUENCE  SEQ_맛집방문
        INCREMENT BY 1
        START  WITH  0
        MINVALUE 0;

INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '맛잘알이 가는 딸기 디저트집', 6, '충청남도 논산시 강경읍', '베리베리딸기', TO_DATE('2022/05/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 15, 12000, TO_DATE('2022/05/09 13:00:00','YYYY/MM/DD HH24:MI:SS'), 'hyejin12');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '이 뷔페의 음식은 이제 저희 겁니다', 10, '경기도 용인시 수지구 정평로 13', '중전마마 뷔페', TO_DATE('2022/05/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 15, 20000, TO_DATE('2022/05/09 12:00:00','YYYY/MM/DD HH24:MI:SS'), 'dagyeong13');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '중국집 탐방 모임', 5, '충정남도 천안시 동남구 병천면 가전리', '만리장성 중국집', TO_DATE('2022/05/08 00:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 15000, TO_DATE('2022/05/09 12:30:00','YYYY/MM/DD HH24:MI:SS'), 'junsu14');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '레스토랑 지금 만나러 갑니다', 4, '충청남도 천안시 동남구 수신면 신풍리', '라시도레스토랑', TO_DATE('2022/05/08 18:00:00','YYYY/MM/DD HH24:MI:SS'), 10, 25000, TO_DATE('2022/05/09 13:00:00','YYYY/MM/DD HH24:MI:SS'), 'hwajong15');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '치킨 맛집 너만 오면 고', 14, '서울특별시 강남구 신사동', '호돌이 치킨집', TO_DATE('2022/05/08 17:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 23000, TO_DATE('2022/05/09 12:20:00','YYYY/MM/DD HH24:MI:SS'), 'gun16');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '뭐? 그렇게 맛있는 닭발집이 있다고?', 21, '경기도 성남시 서현동', '후리닭발', TO_DATE('2022/05/09 00:00:00','YYYY/MM/DD HH24:MI:SS'), 35, 14000, TO_DATE('2022/05/10 12:00:00','YYYY/MM/DD HH24:MI:SS'), 'guns17');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '된장국 국물이 끝내줘요', 25, '충청북도 청주시 사운로', '홍길동의 된장국집', TO_DATE('2022/05/09 10:00:00','YYYY/MM/DD HH24:MI:SS'), 30, 10000, TO_DATE('2022/05/11 13:00:00','YYYY/MM/DD HH24:MI:SS'), 'sangjin18');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '마라탕 너도 한입 나도 한입', 3, '전라북도 전주시 덕진구', '마라탕탕탕', TO_DATE('2022/05/09 12:00:00','YYYY/MM/DD HH24:MI:SS'), 10, 13000, TO_DATE('2022/05/10 13:10:00','YYYY/MM/DD HH24:MI:SS'), 'changmin19');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '햄버거 한입에 주님 곁으로', 7, '강원도 원주시 개운동', '염라대왕 햄버거', TO_DATE('2022/05/10 00:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 10000, TO_DATE('2022/05/12 12:00:00','YYYY/MM/DD HH24:MI:SS'), 'sunghyun20');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '빠빠빨간맛 치킨', 16, '서울특별시 금천구 가산동', '빨간통닭', TO_DATE('2022/05/10 00:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 22000, TO_DATE('2022/05/11 13:20:00','YYYY/MM/DD HH24:MI:SS'), 'jaeyong21');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '이 삼겹살집을 몰랐다니', 14, '제주특별자치도 제주시 가령로', '최강돼지고기', TO_DATE('2022/05/10 20:00:00','YYYY/MM/DD HH24:MI:SS'), 15, 25000, TO_DATE('2022/05/11 12:10:00','YYYY/MM/DD HH24:MI:SS'), 'seungmin22');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '모르면 인생 절반 손해보는 돈까스집', 8, '대구광역시 중구 명륜로', '두근두근돈까스', TO_DATE('2022/05/12 00:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 15000, TO_DATE('2022/05/13 12:00:00','YYYY/MM/DD HH24:MI:SS'), 'sanghyun23');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '기가막히는 순대집', 19, '충청남도 천안시 병천면', '코막히는 순대', TO_DATE('2022/05/09 16:00:00','YYYY/MM/DD HH24:MI:SS'), 30, 10000, TO_DATE('2022/05/10 12:30:00','YYYY/MM/DD HH24:MI:SS'), 'sua24');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '더워도 추워도 냉면사랑', 23, '전라북도 군산시 구영6길', '머리띵냉면', TO_DATE('2022/05/12 18:00:00','YYYY/MM/DD HH24:MI:SS'), 35, 12000, TO_DATE('2022/05/14 13:00:00','YYYY/MM/DD HH24:MI:SS'), 'culsu25');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '소바집 가실분', 9, '전라북도 전주시 완산구 서신동', '대바중바소바', TO_DATE('2022/05/11 00:00:00','YYYY/MM/DD HH24:MI:SS'), 15, 8000, TO_DATE('2022/05/12 12:15:00','YYYY/MM/DD HH24:MI:SS'), 'eunji26');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '만두집 가고싶을 만두하지', 30, '서울특별시 중랑구 상봉동', '이 만두만', TO_DATE('2022/05/14 00:00:00','YYYY/MM/DD HH24:MI:SS'), 40, 10000, TO_DATE('2022/05/16 12:30:00','YYYY/MM/DD HH24:MI:SS'), 'chang27');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '대게가 대게 맛있는집', 32, '서울특별시 서대문구 연희동', '호주머니대게', TO_DATE('2022/05/15 16:00:00','YYYY/MM/DD HH24:MI:SS'), 35, 35000, TO_DATE('2022/05/16 11:30:00','YYYY/MM/DD HH24:MI:SS'), 'minseok28');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '카레와 인도인도 사이다', 17, '서울특별시 금천구 시흥동', '카레랑노라조', TO_DATE('2022/05/15 00:00:00','YYYY/MM/DD HH24:MI:SS'), 25, 12000, TO_DATE('2022/05/17 12:20:00','YYYY/MM/DD HH24:MI:SS'), 'minjae29');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '피자는 못참지', 15, '대전 유성구 어은동', '원모어피자', TO_DATE('2022/05/17 10:00:00','YYYY/MM/DD HH24:MI:SS'), 20, 25000, TO_DATE('2022/05/18 12:00:00','YYYY/MM/DD HH24:MI:SS'), 'jun30');
INSERT INTO 맛집방문모임 VALUES(SEQ_맛집방문.NEXTVAL, '마성의 음료수 카페', 16, '경기도 양평군 강상면 송학리', '블랙홀카페', TO_DATE('2022/05/17 00:00:00','YYYY/MM/DD HH24:MI:SS'), 25, 10000, TO_DATE('2022/05/19 12:30:00','YYYY/MM/DD HH24:MI:SS'), 'uengjin31');


CREATE TABLE 대회 (
대회번호      NUMBER(10),
대회명     VARCHAR2(100)    NOT NULL,
대회일시     DATE            NOT NULL,
대회장소      VARCHAR2(100)    NOT NULL,
요리카테고리    VARCHAR2(5),
접수기간     DATE            NOT NULL,
참가비          NUMBER(6)       NOT NULL,
참가인원수      NUMBER(3)       DEFAULT 0,
정원       NUMBER(3)       NOT NULL,
CONSTRAINT    대회_pk    PRIMARY KEY(대회번호));

CREATE  SEQUENCE  SEQ_대회
        INCREMENT BY 1
        START  WITH  20222101;

INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '가족이 함께하는 우리 농산물 요리 경연대회', TO_DATE('07/13/2022', 'MM/DD/YYYY'), '경기도 파주 화유당 스튜디오', 'KF', TO_DATE('07/01/2022', 'MM/DD/YYYY'), 50000, DEFAULT, 100); 
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '성주참외디저트푸드경연대회', TO_DATE('06/22/2022', 'MM/DD/YYYY'), '성주 명인고등학교 명장관(조리실습동)', 'KF', TO_DATE('06/10/2022', 'MM/DD/YYYY'), 20000, DEFAULT, 150);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '대한민국 국제요리 & 제과 경연대회', TO_DATE('06/04/2022', 'MM/DD/YYYY'), '서울특별시 금천구 서부샛길 (606, 대성디폴리스지식산업센터)', 'BK', TO_DATE('05/20/2022', 'MM/DD/YYYY'), 0, DEFAULT, 100);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '2022 한우요리 경연대회', TO_DATE('07/11/2022', 'MM/DD/YYYY'), '대전 컨벤션센터 제1 전시장', 'KF', TO_DATE('06/20/2022', 'MM/DD/YYYY'), 5000, DEFAULT, 250);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '2022 월드푸드 챔피언십', TO_DATE('08/30/2022', 'MM/DD/YYYY'), '서울 양재동 aT센터 제2 전시장', NULL, TO_DATE('08/15/2022', 'MM/DD/YYYY'), 10000, DEFAULT, 130);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '괴산고추축제 전국 고추요리 경연대회', TO_DATE('07/20/2022', 'MM/DD/YYYY'), '괴산고추축제 행사장 내(야외 잔디밭)', 'KF', TO_DATE('07/07/2022', 'MM/DD/YYYY'), 12000, DEFAULT, 60);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '제1회 원주 대표음식 개발 전국요리경연대회 안내', TO_DATE('09/10/2022', 'MM/DD/YYYY'), '원주시 치악실내체육관', 'KF', TO_DATE('09/01/2022', 'MM/DD/YYYY'), 0, DEFAULT, 40);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '대한민국 전통음식 경연대회', TO_DATE('08/16/2022', 'MM/DD/YYYY'), '상주시 태평성대 경삼감영 공원', 'KF', TO_DATE('07/30/2022', 'MM/DD/YYYY'), 7000, DEFAULT, 80);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '세계한식 요리경연대회', TO_DATE('07/24/2022', 'MM/DD/YYYY'), '서울 영등포구 영등포동 2가 139번지', 'KF', TO_DATE('07/10/2022', 'MM/DD/YYYY'), 20000, DEFAULT, 100);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '건강한빵 요리경연대회', TO_DATE('09/18/2022', 'MM/DD/YYYY'), '한식문화관', 'BK', TO_DATE('08/30/2022', 'MM/DD/YYYY'), 6000, DEFAULT, 50);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '제주음식박람회 음식경연대회', TO_DATE('09/04/2022', 'MM/DD/YYYY'), '제주시민복지타운광장', 'KF', TO_DATE('08/10/2022', 'MM/DD/YYYY'), 0, DEFAULT, 80);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '전국 떡볶이 요리경연대회', TO_DATE('09/01/2022', 'MM/DD/YYYY'), '백세건강공원일원(청양군 청양읍)', 'SN', TO_DATE('08/09/2022', 'MM/DD/YYYY'), 0, DEFAULT, 100);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '대한민국챌린지컵국제요리경연대회', TO_DATE('08/11/2022', 'MM/DD/YYYY'), '대전 컨벤션센터 제1 전시장', NULL, TO_DATE('07/21/2022', 'MM/DD/YYYY'), 12000, DEFAULT, 150);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '이마트와 함께하는 JIBS 청년창업 요리대회', TO_DATE('07/16/2022', 'MM/DD/YYYY'), '서울(추후 개별공지 예정)', NULL, TO_DATE('07/07/2022', 'MM/DD/YYYY'), 0, DEFAULT, 300);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '창업드림 요리대회', TO_DATE('06/18/2022', 'MM/DD/YYYY'), '고양 원마운트 이벤트광장', 'KF', TO_DATE('06/02/2022', 'MM/DD/YYYY'), 15000, DEFAULT, 100);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '서울국제마스터셰프 요리대회', TO_DATE('06/28/2022', 'MM/DD/YYYY'), '서울 양재동 aT센터 3층 제2 전시장', NULL, TO_DATE('05/17/2022', 'MM/DD/YYYY'), 22000, DEFAULT, 120);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '양평 부추요리 경연대회', TO_DATE('08/01/2022', 'MM/DD/YYYY'), '경기도 중앙선 양동역광장 시골장터', 'KF', TO_DATE('07/10/2022', 'MM/DD/YYYY'), 0, DEFAULT, 50);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '파주 DMZ세계음식문화레시피대회', TO_DATE('07/25/2022', 'MM/DD/YYYY'), '파주시 임진각 광장 일대', 'KF', TO_DATE('07/01/2022', 'MM/DD/YYYY'), 0, DEFAULT, 40);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, 'WACS 국제요리경연대회', TO_DATE('08/15/2022', 'MM/DD/YYYY'), '한국호텔관광실용전문학교', NULL, TO_DATE('07/26/2022', 'MM/DD/YYYY'), 20000, DEFAULT, 150);
INSERT INTO 대회 VALUES (SEQ_대회.NEXTVAL, '수원전국요리경연대회', TO_DATE('06/30/2022', 'MM/DD/YYYY'), '화성행궁 주차장(음식문화축제장)', 'KF', TO_DATE('06/02/2022', 'MM/DD/YYYY'), 10000, DEFAULT, 150);


CREATE TABLE 심사기준 (
대회번호            NUMBER(10),
심사기준종류       VARCHAR2(20),
CONSTRAINT  심사기준_PK  PRIMARY KEY (대회번호, 심사기준종류),
CONSTRAINT    심사기준_대회번호_fk      FOREIGN KEY(대회번호) REFERENCES    대회(대회번호));

INSERT INTO 심사기준 VALUES (20222101, '위생');
INSERT INTO 심사기준 VALUES (20222101, '창의성');
INSERT INTO 심사기준 VALUES (20222102, '전문성');
INSERT INTO 심사기준 VALUES (20222102, '상품성');
INSERT INTO 심사기준 VALUES (20222103, '전문성');
INSERT INTO 심사기준 VALUES (20222103, '작품성');
INSERT INTO 심사기준 VALUES (20222103, '맛의 조화');
INSERT INTO 심사기준 VALUES (20222104, '위생 및 청결');
INSERT INTO 심사기준 VALUES (20222104, '플레이팅');
INSERT INTO 심사기준 VALUES (20222105, '전문성');
INSERT INTO 심사기준 VALUES (20222105, '작품성');
INSERT INTO 심사기준 VALUES (20222105, '독창성');
INSERT INTO 심사기준 VALUES (20222105, '프레젠테이션');
INSERT INTO 심사기준 VALUES (20222105, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222106, '위생');
INSERT INTO 심사기준 VALUES (20222106, '창의성');
INSERT INTO 심사기준 VALUES (20222106, '독창성');
INSERT INTO 심사기준 VALUES (20222107, '창의성');
INSERT INTO 심사기준 VALUES (20222107, '상품성');
INSERT INTO 심사기준 VALUES (20222108, '전통성');
INSERT INTO 심사기준 VALUES (20222108, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222108, '재료 활용도');
INSERT INTO 심사기준 VALUES (20222109, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222109, '전문성');
INSERT INTO 심사기준 VALUES (20222110, '재료 활용도');
INSERT INTO 심사기준 VALUES (20222110, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222110, '조리 태도');
INSERT INTO 심사기준 VALUES (20222110, '발표 태도');
INSERT INTO 심사기준 VALUES (20222111, '상품성');
INSERT INTO 심사기준 VALUES (20222111, '독창성');
INSERT INTO 심사기준 VALUES (20222111, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222112, '친밀성');
INSERT INTO 심사기준 VALUES (20222112, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222113, '전문성');
INSERT INTO 심사기준 VALUES (20222113, '플레이팅');
INSERT INTO 심사기준 VALUES (20222113, '프레젠테이션');
INSERT INTO 심사기준 VALUES (20222113, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222114, '독창성');
INSERT INTO 심사기준 VALUES (20222114, '프레젠테이션');
INSERT INTO 심사기준 VALUES (20222114, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222115, '독창성');
INSERT INTO 심사기준 VALUES (20222115, '가능성');
INSERT INTO 심사기준 VALUES (20222115, '프레젠테이션');
INSERT INTO 심사기준 VALUES (20222116, '전문성');
INSERT INTO 심사기준 VALUES (20222116, '플레이팅');
INSERT INTO 심사기준 VALUES (20222116, '위생 및 청결');
INSERT INTO 심사기준 VALUES (20222116, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222116, '조리 태도');
INSERT INTO 심사기준 VALUES (20222116, '주방 활용도');
INSERT INTO 심사기준 VALUES (20222117, '재료 활용도');
INSERT INTO 심사기준 VALUES (20222117, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222118, '전통성');
INSERT INTO 심사기준 VALUES (20222118, '상품성');
INSERT INTO 심사기준 VALUES (20222118, '독창성');
INSERT INTO 심사기준 VALUES (20222119, '독창성');
INSERT INTO 심사기준 VALUES (20222119, '테이스팅 심사');
INSERT INTO 심사기준 VALUES (20222119, '조리 태도');
INSERT INTO 심사기준 VALUES (20222119, '주방 활용도');
INSERT INTO 심사기준 VALUES (20222120, '상품성');
INSERT INTO 심사기준 VALUES (20222120, '전문성');


CREATE TABLE 접수방법 (
대회번호        NUMBER(10),
접수방법종류     VARCHAR2(20),
CONSTRAINT  접수방법_pk  PRIMARY KEY (대회번호, 접수방법종류),
CONSTRAINT    접수방법_대회번호_fk      FOREIGN KEY(대회번호) REFERENCES    대회(대회번호));

INSERT INTO 접수방법 VALUES (20222101, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222101, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222102, '전화 접수');
INSERT INTO 접수방법 VALUES (20222102, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222103, '전화 접수');
INSERT INTO 접수방법 VALUES (20222103, '방문 접수');
INSERT INTO 접수방법 VALUES (20222104, '전화 접수');
INSERT INTO 접수방법 VALUES (20222104, '방문 접수');
INSERT INTO 접수방법 VALUES (20222104, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222105, '우편 접수');
INSERT INTO 접수방법 VALUES (20222105, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222106, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222106, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222107, '전화 접수');
INSERT INTO 접수방법 VALUES (20222107, '방문 접수');
INSERT INTO 접수방법 VALUES (20222108, '우편접수');
INSERT INTO 접수방법 VALUES (20222108, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222109, '전화 접수');
INSERT INTO 접수방법 VALUES (20222109, '우편 접수');
INSERT INTO 접수방법 VALUES (20222109, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222110, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222110, '방문 접수');
INSERT INTO 접수방법 VALUES (20222110, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222111, '우편 접수');
INSERT INTO 접수방법 VALUES (20222111, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222112, '전화 접수');
INSERT INTO 접수방법 VALUES (20222112, '방문 접수');
INSERT INTO 접수방법 VALUES (20222113, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222113, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222114, '전화 접수');
INSERT INTO 접수방법 VALUES (20222114, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222115, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222115, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222115, '우편 접수');
INSERT INTO 접수방법 VALUES (20222116, '방문 접수');
INSERT INTO 접수방법 VALUES (20222116, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222117, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222117, '전화 접수');
INSERT INTO 접수방법 VALUES (20222118, '우편 접수');
INSERT INTO 접수방법 VALUES (20222118, '이메일 접수');
INSERT INTO 접수방법 VALUES (20222119, '전화 접수');
INSERT INTO 접수방법 VALUES (20222119, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222120, '홈페이지 접수');
INSERT INTO 접수방법 VALUES (20222120, '우편 접수');
INSERT INTO 접수방법 VALUES (20222120, '방문 접수');



CREATE TABLE 시상계획 (
대회번호       NUMBER(10),
시상부문       VARCHAR2(10),
시상인원     NUMBER(2)       CHECK (시상인원 >= 0),
상금    NUMBER(7),
CONSTRAINT    시상계획_pk    PRIMARY KEY(대회번호, 시상부문));

INSERT INTO 시상계획 VALUES (20222101, '금상', 1, 1500000);
INSERT INTO 시상계획 VALUES (20222101, '은상', 3, 1000000);
INSERT INTO 시상계획 VALUES (20222101, '동상', 5, 500000);
INSERT INTO 시상계획 VALUES (20222102, '대상', 1, 2000000);
INSERT INTO 시상계획 VALUES (20222102, '금상', 2, 1000000);
INSERT INTO 시상계획 VALUES (20222102, '은상', 2, 500000);
INSERT INTO 시상계획 VALUES (20222102, '동상', 4, 400000);
INSERT INTO 시상계획 VALUES (20222102, '장려상', 4, 300000);
INSERT INTO 시상계획 VALUES (20222103, '1등', 1, 3000000);
INSERT INTO 시상계획 VALUES (20222103, '2등', 1, 2500000);
INSERT INTO 시상계획 VALUES (20222103, '3등', 2, 2000000);
INSERT INTO 시상계획 VALUES (20222104, '대상', 1, 1000000);
INSERT INTO 시상계획 VALUES (20222104, '금상', 2, 500000);
INSERT INTO 시상계획 VALUES (20222105, '1등', 1, 2000000);
INSERT INTO 시상계획 VALUES (20222105, '2등', 2, 1500000);
INSERT INTO 시상계획 VALUES (20222105, '3등', 2, 1000000);
INSERT INTO 시상계획 VALUES (20222106, '금상', 1, 500000);
INSERT INTO 시상계획 VALUES (20222106, '은상', 2, 300000);
INSERT INTO 시상계획 VALUES (20222106, '동상', 3, 100000);
INSERT INTO 시상계획 VALUES (20222107, '금상', 1, 300000);
INSERT INTO 시상계획 VALUES (20222107, '은상', 1, 200000);
INSERT INTO 시상계획 VALUES (20222107, '동상', 3, 100000);
INSERT INTO 시상계획 VALUES (20222108, '대상', 1, 1500000);
INSERT INTO 시상계획 VALUES (20222108, '금상', 2, 1000000);
INSERT INTO 시상계획 VALUES (20222108, '은상', 3, 800000);
INSERT INTO 시상계획 VALUES (20222108, '동상', 3, 600000);
INSERT INTO 시상계획 VALUES (20222108, '장려상', 2, 300000);
INSERT INTO 시상계획 VALUES (20222109, '1등', 1, 2000000);
INSERT INTO 시상계획 VALUES (20222109, '2등', 1, 1500000);
INSERT INTO 시상계획 VALUES (20222109, '3등', 1, 1000000);
INSERT INTO 시상계획 VALUES (20222110, '금상', 1, 500000);
INSERT INTO 시상계획 VALUES (20222110, '은상', 1, 300000);
INSERT INTO 시상계획 VALUES (20222110, '동상', 3, 200000);
INSERT INTO 시상계획 VALUES (20222111, '대상', 1, 1000000);
INSERT INTO 시상계획 VALUES (20222111, '금상', 1, 900000);
INSERT INTO 시상계획 VALUES (20222111, '은상', 1, 800000);
INSERT INTO 시상계획 VALUES (20222111, '동상', 1, 500000);
INSERT INTO 시상계획 VALUES (20222111, '장려상', 2, 250000);
INSERT INTO 시상계획 VALUES (20222112, '금상', 1, 300000);
INSERT INTO 시상계획 VALUES (20222112, '은상', 1, 200000);
INSERT INTO 시상계획 VALUES (20222112, '동상', 3, 100000);
INSERT INTO 시상계획 VALUES (20222113, '1등', 1, 3000000);
INSERT INTO 시상계획 VALUES (20222113, '2등', 1, 2500000);
INSERT INTO 시상계획 VALUES (20222113, '3등', 2, 2000000);
INSERT INTO 시상계획 VALUES (20222114, '1등', 1, 5000000);
INSERT INTO 시상계획 VALUES (20222114, '2등', 1, 2000000);
INSERT INTO 시상계획 VALUES (20222114, '3등', 2, 1000000);
INSERT INTO 시상계획 VALUES (20222115, '대상', 1, 1500000);
INSERT INTO 시상계획 VALUES (20222115, '금상', 2, 1000000);
INSERT INTO 시상계획 VALUES (20222115, '은상', 2, 900000);
INSERT INTO 시상계획 VALUES (20222115, '동상', 3, 700000);
INSERT INTO 시상계획 VALUES (20222115, '장려상', 3, 500000);
INSERT INTO 시상계획 VALUES (20222116, '1등', 1, 2000000);
INSERT INTO 시상계획 VALUES (20222116, '2등', 1, 1500000);
INSERT INTO 시상계획 VALUES (20222116, '3등', 1, 1000000);
INSERT INTO 시상계획 VALUES (20222117, '금상', 1, 300000);
INSERT INTO 시상계획 VALUES (20222117, '은상', 1, 200000);
INSERT INTO 시상계획 VALUES (20222117, '동상', 1, 100000);
INSERT INTO 시상계획 VALUES (20222118, '금상', 1, 1000000);
INSERT INTO 시상계획 VALUES (20222118, '은상', 2, 700000);
INSERT INTO 시상계획 VALUES (20222118, '동상', 3, 500000);
INSERT INTO 시상계획 VALUES (20222119, '1등', 1, 1000000);
INSERT INTO 시상계획 VALUES (20222119, '2등', 1, 800000);
INSERT INTO 시상계획 VALUES (20222119, '3등', 2, 6000000);
INSERT INTO 시상계획 VALUES (20222120, '금상', 1, 1500000);
INSERT INTO 시상계획 VALUES (20222120, '은상', 2, 1000000);
INSERT INTO 시상계획 VALUES (20222120, '동상', 3, 500000);


CREATE TABLE 대면레슨_수강하다 (
일반회원_id         VARCHAR2(10),
강의개설번호      NUMBER(10),
CONSTRAINT  대면레슨_수강하다  PRIMARY KEY (일반회원_id, 강의개설번호),
CONSTRAINT    대면레슨_수강하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    대면레슨_수강하다_강의개설번호_fk      FOREIGN KEY(강의개설번호) REFERENCES    대면레슨(강의개설번호));

INSERT INTO 대면레슨_수강하다 VALUES ('hyejin12',1377);
INSERT INTO 대면레슨_수강하다 VALUES ('dagyeong13',1378);
INSERT INTO 대면레슨_수강하다 VALUES ('junsu14',1378);
INSERT INTO 대면레슨_수강하다 VALUES ('hwajong15',1378);
INSERT INTO 대면레슨_수강하다 VALUES ('gun16',1378);
INSERT INTO 대면레슨_수강하다 VALUES ('guns17',1378);
INSERT INTO 대면레슨_수강하다 VALUES ('sangjin18',1388);
INSERT INTO 대면레슨_수강하다 VALUES ('changmin19',1388);
INSERT INTO 대면레슨_수강하다 VALUES ('sunghyun20',1389);
INSERT INTO 대면레슨_수강하다 VALUES ('jaeyong21',1389);
INSERT INTO 대면레슨_수강하다 VALUES ('seungmin22',1392);
INSERT INTO 대면레슨_수강하다 VALUES ('sanghyun23',1392);
INSERT INTO 대면레슨_수강하다 VALUES ('sua24',1392);
INSERT INTO 대면레슨_수강하다 VALUES ('culsu25',1390);
INSERT INTO 대면레슨_수강하다 VALUES ('eunji26',1375);
INSERT INTO 대면레슨_수강하다 VALUES ('chang27',1375);
INSERT INTO 대면레슨_수강하다 VALUES ('minseok28',1382);
INSERT INTO 대면레슨_수강하다 VALUES ('minjae29',1383);
INSERT INTO 대면레슨_수강하다 VALUES ('jun30',1385);
INSERT INTO 대면레슨_수강하다 VALUES ('uengjin31',1387);


CREATE TABLE 대면레슨_리뷰작성하다 (
일반회원_id         VARCHAR2(10),
강의개설번호      NUMBER(10),
작성일시     DATE                DEFAULT SYSDATE,
내용         VARCHAR2(4000),
별점           NUMBER(1)           NOT NULL CHECK (별점 BETWEEN 1 AND 5),
CONSTRAINT 대면레슨_리뷰작성하다_pk PRIMARY KEY(일반회원_id, 강의개설번호),
CONSTRAINT    대면레슨_리뷰작성하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    대면레슨_리뷰작성하다_강의개설번호_fk      FOREIGN KEY(강의개설번호) REFERENCES    대면레슨(강의개설번호));

INSERT INTO 대면레슨_리뷰작성하다 VALUES ('hyejin12',1377, DEFAULT, '항상 친절하시고 모든 질문에 자세히 답변해주십니다. 매수업때마다 다양한 준비도 해오시고 학생들입장에서 힘든점을 이해주며 경청해주십니다', 5);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('dagyeong13',1378, DEFAULT, '강사님 엄청 친절하시고 한명한명 디테일하게 잡아주신게 너무 감사했습니다! 열정열정열정!', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('junsu14',1378, DEFAULT, '요리는 거의 처음인데 단순 조리법뿐만이 아니라 사소한것 하나하나 설명해 주셔서 더 많은걸 알아가는거 같아요. 감사합니다.', 5);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('hwajong15',1378, DEFAULT, '완전 초보요리 실력이어서 완전 걱정으로 시작했는데 자세한 설명과 격려로 자신감이 생기고 있어요.', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('gun16',1378, DEFAULT, '요리를 진로로 택하고 나서 학원을 통해 요리를 처음 배우게 되었는데 저의 첫 도전과 시작을 선생님과 함께 하고, 선생님께 배울 수 있어서 너무 좋았고, 재밌었고, 영광이었어요', 5);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('guns17',1378, DEFAULT, '너무 꼼꼼하게 섬세하게 잘 가르쳐 주셔서 즐거운 요리 시간이었습니다. 요리에 자신 없는 저에게 큰 용기와 소망이 되었습니다. 감사합니다.', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('sangjin18',1388, DEFAULT, '진행을 잘 하시는 것 같아요', 5);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('changmin19',1388, DEFAULT, '물어보는 것에 항상 웃는 얼굴로 친절하게 설명해주셔서 감사했습니다. 중간중간 시간이 생기면 하나라도 더 알려주려고 하시는 모습도 너무 좋아요!', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('sunghyun20',1389, DEFAULT, '매번 밝은 톤으로 인사해주시고, 각 메뉴 마다 꿀팁도 알려주셔서 감사드리고. 또한 수업도 많으실텐데 설명끝나시고도 옆에서 하나하나 친절하게 설명해주셔서 너무 감사합니다.', 5);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('jaeyong21',1389, DEFAULT, '요리 강의 장세한 설명과 모르는점 잘 가르쳐 주셨어 제가 잘따라 할수 있었어요 오늘도 화이팅 하세요', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('seungmin22',1392, DEFAULT, '정말 착하시고 영쉐프 그동안 감사했고 수고 많으셨습니다', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('sanghyun23',1392, DEFAULT, '친절하게 알려주시고 꼼꼼히 알려주셔서 많은 도움이 됬어요! 덕분에 많은 지식도 얻고 안전하고 유익하게 실습활동 했던것 같아요 감사합니다!', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('sua24',1392, DEFAULT, '유익하고 즐거운 수업 감사합니다!! 헷갈리지 않게 잘 설명해주셔서 어렵지 않았어요~~', 5);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('culsu25',1390, DEFAULT, '그냥 그래요', 3);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('eunji26',1375, DEFAULT, '강사님이 열정이 없어보여요', 1);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('chang27',1375, DEFAULT, '재미없어요', 2);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('minseok28',1382, DEFAULT, '하나하나 규격 잘 집어주시고 꼼꼼한 설명 감사합니다 !', 3);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('minjae29',1383, DEFAULT, '수업을 하면서 수업공간이 굉장히 깨끗하고, 선생님께서 잘 가르쳐주시고 열정적으로 강의하여 주셔서 재밌게 수업 할 수 있었습니다', 5);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('jun30',1385, DEFAULT, '꼼하시고 모르는 부분은 일일이 도와주시는 부분이 너무 감사했습니다 :) ', 4);
INSERT INTO 대면레슨_리뷰작성하다 VALUES ('uengjin31',1387, DEFAULT, '너무유익하고 재미있는 시간이었습니다 또 다음요리수업도 기대가됩니다~~^', 5);


CREATE TABLE 대면레슨_후원하다 (
강의개설번호          NUMBER(10),
기업회원_id             VARCHAR(10),
후원일시        DATE            NOT NULL  ,
후원내용     VARCHAR2(60)    NOT NULL CHECK (후원내용 IN('장소후원', '제품후원')),
CONSTRAINT 대면레슨_후원하다_pk PRIMARY KEY(강의개설번호),
CONSTRAINT    대면레슨_후원하다_강의개설번호_fk      FOREIGN KEY(강의개설번호) REFERENCES    대면레슨(강의개설번호),
CONSTRAINT    대면레슨_후원하다_기업회원_id_fk      FOREIGN KEY(기업회원_id) REFERENCES    기업회원(기업회원_id));

INSERT INTO 대면레슨_후원하다 VALUES (1375, 'i1', TO_DATE('2022/06/01 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1376, 'i2', TO_DATE('2022/06/02 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1377, 'i3', TO_DATE('2022/06/03 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1378, 'i4', TO_DATE('2022/06/04 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1379, 'i5', TO_DATE('2022/06/05 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1380, 'i6', TO_DATE('2022/06/06 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1381, 'i7', TO_DATE('2022/06/07 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1382, 'i8', TO_DATE('2022/06/08 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1383, 'i9', TO_DATE('2022/06/09 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1384, 'i10', TO_DATE('2022/06/10 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1385, 'i11', TO_DATE('2022/06/11 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1386, 'i12', TO_DATE('2022/06/12 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1387, 'i13', TO_DATE('2022/06/13 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1388, 'i14', TO_DATE('2022/06/14 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1389, 'i15', TO_DATE('2022/06/15 14:00','YYYY/MM/DD HH24:MI'),'장소후원');
INSERT INTO 대면레슨_후원하다 VALUES (1390, 'i16', TO_DATE('2022/06/16 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1391, 'i17', TO_DATE('2022/06/17 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1392, 'i18', TO_DATE('2022/06/18 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1393, 'i19', TO_DATE('2022/06/19 14:00','YYYY/MM/DD HH24:MI'),'제품후원');
INSERT INTO 대면레슨_후원하다 VALUES (1394, 'i20', TO_DATE('2022/06/20 14:00','YYYY/MM/DD HH24:MI'),'제품후원');

CREATE TABLE 이벤트_참여하다 (
일반회원_id         VARCHAR2(10),
이벤트번호       NUMBER(10),
당첨부문    VARCHAR2(10)    DEFAULT 'X',
CONSTRAINT 이벤트_참여하다_pk PRIMARY KEY(일반회원_id, 이벤트번호),
CONSTRAINT    이벤트_참여하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    이벤트_참여하다_이벤트번호_fk      FOREIGN KEY(이벤트번호) REFERENCES    이벤트(이벤트번호));

INSERT INTO 이벤트_참여하다 VALUES ('hyejin12', 3882, '1등');
INSERT INTO 이벤트_참여하다 VALUES ('hyejin12', 3884, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('dagyeong13', 3883, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('dagyeong13', 3884, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('junsu14', 3884, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('junsu14', 3885, '2등');
INSERT INTO 이벤트_참여하다 VALUES ('junsu14', 3890, '1등');
INSERT INTO 이벤트_참여하다 VALUES ('junsu14', 3897, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('hwajong15', 3885, '1등');
INSERT INTO 이벤트_참여하다 VALUES ('hwajong15', 3886, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('gun16', 3886, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('gun16', 3887, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('gun16', 3888, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('guns17', 3887, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('guns17', 3885, '3등');
INSERT INTO 이벤트_참여하다 VALUES ('guns17', 3900, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('sangjin18', 3888, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('sangjin18', 3890, '3등');
INSERT INTO 이벤트_참여하다 VALUES ('changmin19', 3889, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('changmin19', 3891, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('sunghyun20', 3890, '2등');
INSERT INTO 이벤트_참여하다 VALUES ('sunghyun20', 3892, '2등');
INSERT INTO 이벤트_참여하다 VALUES ('sunghyun20', 3895, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('jaeyong21', 3891, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('jaeyong21', 3892, '3등');
INSERT INTO 이벤트_참여하다 VALUES ('jaeyong21', 3893, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('seungmin22', 3892, '1등');
INSERT INTO 이벤트_참여하다 VALUES ('seungmin22', 3889, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('sanghyun23', 3893, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('sanghyun23', 3894, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('sanghyun23', 3900, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('sua24', 3894, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('sua24', 3883, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('sua24', 3896, '2등');
INSERT INTO 이벤트_참여하다 VALUES ('culsu25', 3895, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('culsu25', 3882, '2등');
INSERT INTO 이벤트_참여하다 VALUES ('culsu25', 3896, '1등');
INSERT INTO 이벤트_참여하다 VALUES ('eunji26', 3896, '3등');
INSERT INTO 이벤트_참여하다 VALUES ('eunji26', 3899, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('eunji26', 3901, '1등');
INSERT INTO 이벤트_참여하다 VALUES ('chang27', 3897, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('chang27', 3898, '2등');
INSERT INTO 이벤트_참여하다 VALUES ('minseok28', 3898, '1등');
INSERT INTO 이벤트_참여하다 VALUES ('minseok28', 3882, '3등');
INSERT INTO 이벤트_참여하다 VALUES ('minjae29', 3899, '당첨');
INSERT INTO 이벤트_참여하다 VALUES ('minjae29', 3901, '2등');
INSERT INTO 이벤트_참여하다 VALUES ('jun30', 3900, DEFAULT);
INSERT INTO 이벤트_참여하다 VALUES ('jun30', 3898, '3등');
INSERT INTO 이벤트_참여하다 VALUES ('uengjin31', 3901, '3등');
INSERT INTO 이벤트_참여하다 VALUES ('uengjin31', 3899, DEFAULT);


CREATE TABLE 강사회원_후원하다 (
강사회원_id             VARCHAR2(10),
후원일시        DATE,
기업회원_id             VARCHAR2(10),
후원내용     VARCHAR(60)         NOT NULL  CHECK(후원내용 IN('요리연습실제공', '조리도구제공','요리재료지원')),
CONSTRAINT 강사회원_후원하다_pk PRIMARY KEY(강사회원_id, 후원일시),
CONSTRAINT    강사회원_후원하다_강사회원_id_fk      FOREIGN KEY(강사회원_id) REFERENCES    강사회원(강사회원_id),
CONSTRAINT    강사회원_후원하다_기업회원_id_fk      FOREIGN KEY(기업회원_id) REFERENCES    기업회원(기업회원_id));

INSERT INTO 강사회원_후원하다 VALUES ('jimin54', TO_DATE('2022/06/01 14:00','YYYY/MM/DD HH24:MI'), 'i1','요리연습실제공');
INSERT INTO 강사회원_후원하다 VALUES ('jnda41', TO_DATE('2022/06/02 14:00','YYYY/MM/DD HH24:MI'),'i2', '요리연습실제공');
INSERT INTO 강사회원_후원하다 VALUES ('joonsu22', TO_DATE('2022/06/03 14:00','YYYY/MM/DD HH24:MI'),'i3', '요리연습실제공');
INSERT INTO 강사회원_후원하다 VALUES ('hwahwa22', TO_DATE('2022/06/04 14:00','YYYY/MM/DD HH24:MI'),'i4', '요리연습실제공');
INSERT INTO 강사회원_후원하다 VALUES ('dada12',TO_DATE('2022/06/05 14:00','YYYY/MM/DD HH24:MI'), 'i5', '요리연습실제공');
INSERT INTO 강사회원_후원하다 VALUES ('haejin46',  TO_DATE('2022/06/06 14:00','YYYY/MM/DD HH24:MI'),'i6','조리도구제공');
INSERT INTO 강사회원_후원하다 VALUES ('gun77',TO_DATE('2022/06/07 14:00','YYYY/MM/DD HH24:MI'), 'i7', '조리도구제공');
INSERT INTO 강사회원_후원하다 VALUES ('hrin58',  TO_DATE('2022/06/08 14:00','YYYY/MM/DD HH24:MI'),'i8','조리도구제공');
INSERT INTO 강사회원_후원하다 VALUES ('daeeun21',  TO_DATE('2022/06/09 14:00','YYYY/MM/DD HH24:MI'),'i9','조리도구제공');
INSERT INTO 강사회원_후원하다 VALUES ('kimda23', TO_DATE('2022/06/10 14:00','YYYY/MM/DD HH24:MI'),'i10', '조리도구제공');
INSERT INTO 강사회원_후원하다 VALUES ('jwon20', TO_DATE('2022/06/11 14:00','YYYY/MM/DD HH24:MI'),'i11', '요리재료지원');
INSERT INTO 강사회원_후원하다 VALUES ('sixone98', TO_DATE('2022/06/12 14:00','YYYY/MM/DD HH24:MI'),'i12', '요리재료지원');
INSERT INTO 강사회원_후원하다 VALUES ('ssdf4',  TO_DATE('2022/06/13 14:00','YYYY/MM/DD HH24:MI'),'i13','요리재료지원');
INSERT INTO 강사회원_후원하다 VALUES ('poidw6', TO_DATE('2022/06/14 14:00','YYYY/MM/DD HH24:MI'),'i14', '요리재료지원');
INSERT INTO 강사회원_후원하다 VALUES ('sfjnw24',  TO_DATE('2022/06/15 14:00','YYYY/MM/DD HH24:MI'),'i15','요리재료지원');
INSERT INTO 강사회원_후원하다 VALUES ('sfjnw34', TO_DATE('2022/06/16 14:00','YYYY/MM/DD HH24:MI'),'i16', '요리재료지원');
INSERT INTO 강사회원_후원하다 VALUES ('hajin88', TO_DATE('2022/06/17 14:00','YYYY/MM/DD HH24:MI'), 'i17','조리도구제공');
INSERT INTO 강사회원_후원하다 VALUES ('fire99', TO_DATE('2022/06/18 14:00','YYYY/MM/DD HH24:MI'),'i18', '요리재료지원');
INSERT INTO 강사회원_후원하다 VALUES ('lucky84', TO_DATE('2022/06/19 14:00','YYYY/MM/DD HH24:MI'), 'i19','요리연습실제공');
INSERT INTO 강사회원_후원하다 VALUES ('yaenso20', TO_DATE('2022/06/20 14:00','YYYY/MM/DD HH24:MI'),'i20', '요리재료지원');


CREATE TABLE 일반회원_제품구매하다 (
일반회원_id         VARCHAR2(10),
제품번호        NUMBER(10),
구매일시        DATE            DEFAULT SYSDATE,
적립포인트     NUMBER(3),
사용포인트       NUMBER(6)       CHECK (사용포인트 >= 0),
구매수량       NUMBER(3)       NOT NULL    CHECK (구매수량 >= 1),
결제금액        NUMBER(6)       NOT NULL,
CONSTRAINT 일반회원_제품구매하다_pk PRIMARY KEY(일반회원_id, 제품번호, 구매일시),
CONSTRAINT    일반회원_제품구매하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    일반회원_제품구매하다_제품번호_fk      FOREIGN KEY(제품번호) REFERENCES    제품(제품번호));

INSERT INTO 일반회원_제품구매하다 VALUES('hyejin12', 7368, TO_DATE('2022/02/06 12:31:26','YYYY/MM/DD HH24:MI:SS'), 59, 0, 1, 5900);
INSERT INTO 일반회원_제품구매하다 VALUES('dagyeong13', 7368, TO_DATE('2022/02/06 13:14:24','YYYY/MM/DD HH24:MI:SS'), 118, 0, 2, 11800);
INSERT INTO 일반회원_제품구매하다 VALUES('junsu14', 7362, TO_DATE('2022/02/06 13:42:15','YYYY/MM/DD HH24:MI:SS'), 36, 2000, 2, 3600);
INSERT INTO 일반회원_제품구매하다 VALUES('hwajong15', 7354, TO_DATE('2022/02/06 14:09:13','YYYY/MM/DD HH24:MI:SS'), 24, 0, 1, 2450);
INSERT INTO 일반회원_제품구매하다 VALUES('gun16', 7361, TO_DATE('2022/02/06 14:28:39','YYYY/MM/DD HH24:MI:SS'), 20, 2760, 2, 2000);
INSERT INTO 일반회원_제품구매하다 VALUES('guns17', 7354, TO_DATE('2022/02/06 15:07:17','YYYY/MM/DD HH24:MI:SS'), 98, 0, 4, 9800);
INSERT INTO 일반회원_제품구매하다 VALUES('sangjin18', 7357, TO_DATE('2022/02/06 15:37:59','YYYY/MM/DD HH24:MI:SS'), 650, 0, 5, 65000);
INSERT INTO 일반회원_제품구매하다 VALUES('guns17', 7363, TO_DATE('2022/02/06 16:05:26','YYYY/MM/DD HH24:MI:SS'), 92, 0, 1, 9200);
INSERT INTO 일반회원_제품구매하다 VALUES('changmin19', 7367, TO_DATE('2022/02/06 16:27:16','YYYY/MM/DD HH24:MI:SS'), 840, 5000, 1, 84000);
INSERT INTO 일반회원_제품구매하다 VALUES('sunghyun20', 7370, TO_DATE('2022/02/06 16:31:37','YYYY/MM/DD HH24:MI:SS'), 175, 0, 1, 17500);
INSERT INTO 일반회원_제품구매하다 VALUES('jaeyong21', 7372, TO_DATE('2022/02/06 16:37:09','YYYY/MM/DD HH24:MI:SS'), 63, 0, 2, 6300);
INSERT INTO 일반회원_제품구매하다 VALUES('seungmin22', 7368, TO_DATE('2022/02/06 17:02:49','YYYY/MM/DD HH24:MI:SS'), 177, 0, 3, 17700);
INSERT INTO 일반회원_제품구매하다 VALUES('sanghyun23', 7356, TO_DATE('2022/02/06 17:54:16','YYYY/MM/DD HH24:MI:SS'), 89, 0, 1, 8990);
INSERT INTO 일반회원_제품구매하다 VALUES('sua24', 7358, TO_DATE('2022/02/07 10:54:46','YYYY/MM/DD HH24:MI:SS'), 40, 10000, 4, 4000);
INSERT INTO 일반회원_제품구매하다 VALUES('minseok28', 7355, TO_DATE('2022/02/07 12:31:08','YYYY/MM/DD HH24:MI:SS'), 29, 0, 1, 2980);
INSERT INTO 일반회원_제품구매하다 VALUES('eunji26', 7360, TO_DATE('2022/02/07 12:34:25','YYYY/MM/DD HH24:MI:SS'), 320, 0, 1, 32000);
INSERT INTO 일반회원_제품구매하다 VALUES('culsu25', 7369, TO_DATE('2022/02/07 13:03:17','YYYY/MM/DD HH24:MI:SS'), 499, 0, 1, 49900);
INSERT INTO 일반회원_제품구매하다 VALUES('chang27', 7372, TO_DATE('2022/02/07 13:23:52','YYYY/MM/DD HH24:MI:SS'), 94, 0, 3, 9450);
INSERT INTO 일반회원_제품구매하다 VALUES('minseok28', 7359, TO_DATE('2022/02/07 14:01:36','YYYY/MM/DD HH24:MI:SS'), 398, 0, 1, 39800);
INSERT INTO 일반회원_제품구매하다 VALUES('jun30', 7357, TO_DATE('2022/02/07 14:36:39','YYYY/MM/DD HH24:MI:SS'), 260, 0, 2, 26000);


CREATE TABLE 일반회원_제품리뷰작성하다 (
일반회원_id         VARCHAR2(10),
제품번호        NUMBER(10),
작성일시     DATE            DEFAULT SYSDATE,
구매일시        DATE,
내용         VARCHAR2(4000),
사진           VARCHAR2(4000),
별점           NUMBER(1)       NOT NULL CHECK(별점 BETWEEN 1 AND 5),
CONSTRAINT 일반회원_제품리뷰작성하다_pk PRIMARY KEY(일반회원_id, 제품번호, 작성일시),
CONSTRAINT    일반회원_제품리뷰작성하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    일반회원_제품리뷰작성하다_제품번호_fk      FOREIGN KEY(제품번호) REFERENCES    제품(제품번호));

INSERT INTO 일반회원_제품리뷰작성하다 VALUES('hyejin12', 7368, DEFAULT, TO_DATE('2022/02/06 12:31:26','YYYY/MM/DD HH24:MI:SS'), '잘쓰고 있어요!', 'C:\p_review\spoon_rev1.jpg', 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('dagyeong13', 7368, DEFAULT, TO_DATE('2022/02/06 13:14:24','YYYY/MM/DD HH24:MI:SS'), '가격도 적당하고 제품도 좋아요', NULL, 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('junsu14', 7362, DEFAULT, TO_DATE('2022/02/06 13:42:15','YYYY/MM/DD HH24:MI:SS'), '좋은 주방세제~', NULL, 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('hwajong15', 7354, DEFAULT, TO_DATE('2022/02/06 14:09:13','YYYY/MM/DD HH24:MI:SS'), '맛있네요!', 'C:\p_review\chick_mand_rev1.jpg', 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('gun16', 7361, DEFAULT, TO_DATE('2022/02/06 14:28:39','YYYY/MM/DD HH24:MI:SS'), '베리 굿', NULL, 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('guns17', 7354, DEFAULT, TO_DATE('2022/02/06 15:07:17','YYYY/MM/DD HH24:MI:SS'), '맛있어요 다음에도 또 시켜 먹어야겠어요~', 'C:\p_review\chick_mand_rev2.jpg', 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('sangjin18', 7357, DEFAULT, TO_DATE('2022/02/06 15:37:59','YYYY/MM/DD HH24:MI:SS'), '꽤 맛있어요~', NULL, 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('guns17', 7363, DEFAULT, TO_DATE('2022/02/06 16:05:26','YYYY/MM/DD HH24:MI:SS'), '괜찮은 제품이네요', 'C:\p_review\silicon_c_rev1.jpg', 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('changmin19', 7367, DEFAULT, TO_DATE('2022/02/06 16:27:16','YYYY/MM/DD HH24:MI:SS'), '조금 비싼거 같지만 비싼만큼 좋은 거 같아요~', 'C:\p_review\frying_pan_rev1.jpg', 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('sunghyun20', 7370, DEFAULT, TO_DATE('2022/02/06 16:31:37','YYYY/MM/DD HH24:MI:SS'), NULL, NULL, 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('jaeyong21', 7372, DEFAULT, TO_DATE('2022/02/06 16:37:09','YYYY/MM/DD HH24:MI:SS'), '양은 괜찮은거 같은데 개인적으로 맛이 조금 아쉽네요..', 'C:\p_review\noodle_rev1.jpg', 3);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('seungmin22', 7368, DEFAULT, TO_DATE('2022/02/06 17:02:49','YYYY/MM/DD HH24:MI:SS'), 'good 하나씩 장만해두기 좋네요', NULL, 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('sanghyun23', 7356, DEFAULT, TO_DATE('2022/02/06 17:54:16','YYYY/MM/DD HH24:MI:SS'), '제품 상태가 좀 아쉬운거 같아요', 'C:\p_review\blue_ber_rev1.jpg', 3);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('sua24', 7358, DEFAULT, TO_DATE('2022/02/07 10:54:46','YYYY/MM/DD HH24:MI:SS'), '양도 많고 맛있어요~ 다들 요리할 때 잘 쓰고 있네요', 'C:\p_review\bread_rev1.jpg', 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('minseok28', 7355, DEFAULT, TO_DATE('2022/02/07 12:31:08','YYYY/MM/DD HH24:MI:SS'), 'wow 너무 맛있습니다', NULL, 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('eunji26', 7360, DEFAULT, TO_DATE('2022/02/07 12:34:25','YYYY/MM/DD HH24:MI:SS'), NULL, NULL, 3);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('culsu25', 7369, DEFAULT, TO_DATE('2022/02/07 13:03:17','YYYY/MM/DD HH24:MI:SS'), '샤브샤브용 냄비가 마침 필요했는데 좋은거 잘 산거같아요~', 'C:\p_review\pot_rev1.jpg', 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('chang27', 7372, DEFAULT, TO_DATE('2022/02/07 13:23:52','YYYY/MM/DD HH24:MI:SS'), '가격에 비해 양이 많아서 좋은거 같네요!', 'C:\p_review\noodle_rev2.jpg', 5);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('minseok28', 7359, DEFAULT, TO_DATE('2022/02/07 14:01:36','YYYY/MM/DD HH24:MI:SS'), '겉에 아주 작은 기스가 보이는게 아쉽지만 나머지는 좋네요', 'C:\p_review\ice_box_rev1.jpg', 4);
INSERT INTO 일반회원_제품리뷰작성하다 VALUES('jun30', 7357, DEFAULT, TO_DATE('2022/02/07 14:36:39','YYYY/MM/DD HH24:MI:SS'), '대박 맛있어요 굿굿', NULL, 5);


CREATE TABLE 일반회원_레시피댓글작성하다 (
일반회원_id         VARCHAR2(10),
레시피번호         NUMBER(10),
작성일시         DATE            DEFAULT SYSDATE,
내용         VARCHAR2(1000)  NOT NULL,
CONSTRAINT 일반회원_레시피댓글작성하다_pk PRIMARY KEY(일반회원_id, 레시피번호, 작성일시),
CONSTRAINT    일반회원_레시피댓글작성하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    일반회원_레시피댓글작성하다_레시피번호_fk      FOREIGN KEY(레시피번호) REFERENCES    레시피(레시피번호));

INSERT INTO 일반회원_레시피댓글작성하다 VALUES('hyejin12', 1000, DEFAULT, '간장계란밥 너무 맛있겠어요~');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('dagyeong13', 1001, DEFAULT, '조청을 좀만 더 넣으면 더 맛있을거 같아요.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('junsu14', 1002, DEFAULT, '한입만~~');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('hwajong15', 1003, DEFAULT, '도둑이야~ 밥도둑~');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('gun16', 1004, DEFAULT, '이것은 치킨인가 너겟인가');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('guns17', 1005, DEFAULT, '우리 아이들이 너무 좋아해요.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('sangjin18', 1006, DEFAULT, '제가 한번 먹어보도록 하겠습니다.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('changmin19', 1007, DEFAULT, '달다달아 초콜렛');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('jaeyong21', 1011, DEFAULT, '비빔국수 너무 맛있어보이네요.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('seungmin22', 1008, DEFAULT, '단짠단짠 조합 너무 좋아요~');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('sanghyun23', 1009, DEFAULT, '색다른 짜장면이라길래 기대했는데.... 평범하네요.'); 
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('sua24', 1010, DEFAULT, '크림 닭가슴살 스테이크먹고 득근할 수 있을거 같아요^^');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('culsu25', 1011, DEFAULT, '레시피에 양념장 비율을 좀 더 늘리면 좋을거 같아요');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('eunji26', 1012, DEFAULT, '역시 백종원... 제가 만든거보다 더 맛있어요.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('chang27', 1013, DEFAULT, '저도 애용하는 방법인데 전자렌지 시간을 좀만 줄이면 더 부드러울거에요');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('minseok28', 1014, DEFAULT, '일식은 잘 몰랐었는데 규카츠 간단히 만들어 먹으니 좋네요.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('minseok28', 1015, DEFAULT, '꼴깍꼴깍');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('minjae29', 1016, DEFAULT, '부대찌게 양념에 마늘을 더 추가하면 더 맛있을거 같아요.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('jun30', 1017, DEFAULT, '믿고 만드는 백종원');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('uengjin31', 1018, DEFAULT, '일반 소바도 맛있지만 차돌박이를 넣으니 더 맛있네요.');
INSERT INTO 일반회원_레시피댓글작성하다 VALUES('uengjin31', 1019, DEFAULT, '생딸기우유 사먹기 아까웠는데 만들어먹으니 너무 좋아요');


CREATE TABLE 강사회원_레시피댓글작성하다 (
강사회원_id         VARCHAR(10),
레시피번호         NUMBER(10),
작성일시    DATE            DEFAULT SYSDATE,
내용         VARCHAR2(1000)  NOT NULL,
CONSTRAINT 강사회원_레시피댓글작성하다_pk PRIMARY KEY(강사회원_id, 레시피번호, 작성일시),
CONSTRAINT    강사회원_레시피댓글작성하다_강사회원_id_fk      FOREIGN KEY(강사회원_id) REFERENCES    강사회원(강사회원_id),
CONSTRAINT    강사회원_레시피댓글작성하다_레시피번호_fk      FOREIGN KEY(레시피번호) REFERENCES    레시피(레시피번호));

INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jimin54', 1000, DEFAULT, '정말 맛있어보이네요');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jimin54', 1001, DEFAULT, '요리실력이 참 좋으시네요!');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jimin54', 1002, DEFAULT, '저도 보고 배워야겠어요');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jimin54', 1003, DEFAULT, '나중에 따라해볼게요');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jimin54', 1004, DEFAULT, '허걱링');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jnda41', 1000, DEFAULT, '진짜 간단하네요!');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jnda41', 1001, DEFAULT, '너무 맛있어보여요');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jnda41', 1002, DEFAULT, '음식 데코가 너무 예쁘네요');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jnda41', 1003, DEFAULT, '최고의 레시피');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('jnda41', 1004, DEFAULT, '따라해봤는데 정말 맛있네요');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('joonsu22', 1000, DEFAULT, '자취생 강추 레시피');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('joonsu22', 1001, DEFAULT, '똥손인 나도 백종원 ssap 가능!');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('joonsu22', 1002, DEFAULT, '요리 easy 합니다~!');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('joonsu22', 1003, DEFAULT, '간단하고 좋습니다.');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('joonsu22', 1004, DEFAULT, '요리가 취미가 될것같아요!');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('dada12', 1000, DEFAULT, '맛있습니다.');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('dada12', 1001, DEFAULT, '감사합니다.');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('dada12', 1002, DEFAULT, '나중에 또 따라해보겠습니다.');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('dada12', 1003, DEFAULT, '다음 레시피가 기대됩니다.');
INSERT INTO 강사회원_레시피댓글작성하다 VALUES ('dada12', 1004, DEFAULT, '항상 잘 보고 있습니다.');


CREATE TABLE 동영상레슨_수강하다 (
일반회원_id         VARCHAR2(10),
영상등록번호         NUMBER(10),
CONSTRAINT  동영상레슨_수강하다  PRIMARY KEY (일반회원_id, 영상등록번호),
CONSTRAINT    동영상레슨_수강하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    동영상레슨_수강하다_영상등록번호_fk      FOREIGN KEY(영상등록번호) REFERENCES    동영상레슨(영상등록번호));

INSERT INTO 동영상레슨_수강하다 VALUES ('hyejin12', 5049);
INSERT INTO 동영상레슨_수강하다 VALUES ('hyejin12', 5057);
INSERT INTO 동영상레슨_수강하다 VALUES ('dagyeong13', 5045);
INSERT INTO 동영상레슨_수강하다 VALUES ('changmin19', 5049);
INSERT INTO 동영상레슨_수강하다 VALUES ('sanghyun23', 5050);
INSERT INTO 동영상레슨_수강하다 VALUES ('sanghyun23', 5056);
INSERT INTO 동영상레슨_수강하다 VALUES ('sanghyun23', 5061);
INSERT INTO 동영상레슨_수강하다 VALUES ('hwajong15', 5049);
INSERT INTO 동영상레슨_수강하다 VALUES ('junsu14', 5055);
INSERT INTO 동영상레슨_수강하다 VALUES ('junsu14', 5053);
INSERT INTO 동영상레슨_수강하다 VALUES ('sunghyun20', 5048);
INSERT INTO 동영상레슨_수강하다 VALUES ('gun16', 5049);
INSERT INTO 동영상레슨_수강하다 VALUES ('gun16', 5064);
INSERT INTO 동영상레슨_수강하다 VALUES ('jun30', 5046);
INSERT INTO 동영상레슨_수강하다 VALUES ('guns17', 5049);
INSERT INTO 동영상레슨_수강하다 VALUES ('minjae29', 5058);
INSERT INTO 동영상레슨_수강하다 VALUES ('minjae29', 5064);
INSERT INTO 동영상레슨_수강하다 VALUES ('jaeyong21', 5052);
INSERT INTO 동영상레슨_수강하다 VALUES ('minseok28', 5051);
INSERT INTO 동영상레슨_수강하다 VALUES ('minseok28', 5062);


CREATE  TABLE  동영상레슨_리뷰작성하다 (
일반회원_id 	    VARCHAR2(10),
영상등록번호 	    NUMBER(10),
작성일시 	DATE            DEFAULT SYSDATE,
내용 	    VARCHAR2(4000),
별점	        NUMBER(1)       NOT NULL    CHECK(별점 BETWEEN 1 AND 5),
CONSTRAINT    동영상레슨_리뷰작성하다_pk     PRIMARY KEY (일반회원_id, 영상등록번호),
CONSTRAINT    동영상레슨_리뷰작성하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    동영상레슨_리뷰작성하다_영상등록번호_fk      FOREIGN KEY(영상등록번호) REFERENCES    동영상레슨(영상등록번호));

INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('hyejin12', 5049, DEFAULT, '간단하게 할 수 있는 요리라 쉽게 할 수 있었어요!', 5);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('hyejin12', 5057, DEFAULT, '간단하면서 맛있네요. 잘 먹었습니다~',  4);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('dagyeong13', 5045, DEFAULT, '생각보다 쉽고 재료도 간단해서 한번쯤은 해보셔도 괜찮을 것 같은 요리에요!', 5);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('changmin19', 5049, DEFAULT, NULL, 4);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('sanghyun23', 5050, DEFAULT, '동영상대로 해서 점심으로 먹었는데 너무 맛있었어요~ 좋은 강의 감사합니다^^', 5);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('sanghyun23', 5056, DEFAULT, '만두피가 너무 질기고 딱딱해서 만든 거 다 못 먹게 됐어요ㅠㅠ', 2);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('sanghyun23', 5061, DEFAULT, NULL, 3);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('hwajong15', 5049, DEFAULT, NULL, 3);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('junsu14', 5055, DEFAULT, '덕분에 맛난 저녁 먹었습니다', 5);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('junsu14', 5053, DEFAULT, NULL, 4);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('sunghyun20', 5048, DEFAULT, '오늘 가족들에게 야식으로 만들어 줬는데 맛있다고 하네요~ㅎㅎ 집에서 간단하게 간식으로 먹기 딱인것 같아요^^', 5);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('gun16', 5049, DEFAULT, '가성비 좋은 강의 잘 들었습니다!', 4);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('gun16', 5064, DEFAULT, NULL, 3);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('jun30', 5046, DEFAULT, '모짜렐라 치즈 추가해서 먹엇어요 ㅎㅎㅎ 생각보다 간단하고 넘 쉬워요!', 5);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('guns17', 5049, DEFAULT, '굳이 강의 없이도 할 수 있는 요리들이라 아쉽네요ㅠ', 2);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('minjae29', 5058, DEFAULT, '저는 소금간으로 안하고 새우젓으로 간을 하니 더욱 깊은맛이 났어요~', 4);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('minjae29', 5064, DEFAULT, '간단하게 할 수 있고 맛있어용!', 5);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('jaeyong21', 5052, DEFAULT, '강의 보고 만들었는데 애기가 잘 먹었어요~^^', 4);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('minseok28', 5051, DEFAULT, NULL, 4);
INSERT INTO 동영상레슨_리뷰작성하다 VALUES ('minseok28', 5062, DEFAULT, '강의만 보고 따라했는데 밖에서 사먹는 토스트 같았어여!!', 5);


CREATE  TABLE  일반회원_중고거래댓글작성하다 (
일반회원_id 	        VARCHAR2(10),
게시글번호 	        Number(10),
작성일시 	    Date            DEFAULT SYSDATE,
내용 	        VARCHAR2(1000)  NOT NULL,
CONSTRAINT 일반회원_중고거래댓글작성하다_pk PRIMARY KEY(일반회원_id, 게시글번호, 작성일시),
CONSTRAINT    일반회원_중고거래댓글작성하다_일반회원_id_fk      FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    일반회원_중고거래댓글작성하다_게시글번호_fk      FOREIGN KEY(게시글번호) REFERENCES    중고거래(게시글번호));

INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('hyejin12',100, DEFAULT, '직거래도 가능한가요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('dagyeong13',106, DEFAULT, '얼마나 사용했나요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('junsu14',113, DEFAULT, '언제 구매하셨는지 알 수 있을까요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('hwajong15',101, DEFAULT, '제품 사진 좀 더 볼 수 있나요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('gun16',105, DEFAULT, '제가 구매하겠습니다 010-1238-1115로 연락주세요');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('guns17',104, DEFAULT,'연락처 남겨주세요');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('sangjin18',119, DEFAULT,'크기가 너무 큰데 택배거래도 가능한가요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('changmin19',110, DEFAULT, '앞에 얼룩이 뭍어있는거 아닌가요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('sunghyun20',109, DEFAULT, '어느 회사 제품인가요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('jaeyong21',110, DEFAULT, '사진 더 자세히 볼 수 있나요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('seungmin22',106, DEFAULT, '제가 구매할게요 연락처 남겨주세요');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('sanghyun23',108, DEFAULT, '직거래는 어디서 하나요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('sua24',118, DEFAULT, '010-1246-1123로 연락주세요');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('culsu25',112, DEFAULT, '두께는 어느정도 되나요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('eunji26',114, DEFAULT, '제조사가 어디인가요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('chang27',111, DEFAULT, '사용 기간이 얼마나 됐나요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('minseok28',104, DEFAULT, '제가 구매할게요 예약 부탁드려요');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('minjae29',107, DEFAULT, '어느 부분에 문제가 있어서 상태가 보통인가요?');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('jun30',100, DEFAULT, '연락처 남겨주시면 연락 드리겠습니다');
INSERT INTO 일반회원_중고거래댓글작성하다 VALUES ('uengjin31',100, DEFAULT, '14000원에 살게요 저한테 파세요');


CREATE TABLE 일반회원_공동구매참여하다 (
일반회원_id 	VARCHAR2(10),
공동구매번호 	NUMBER(10),
입금일시 	    DATE            DEFAULT SYSDATE,
구매수량 	    NUMBER(6)       NOT NULL  CHECK (구매수량 >= 1),
환불계좌	    VARCHAR2(20)    NOT NULL,
CONSTRAINT 일반회원_공동구매참여하다_pk PRIMARY KEY(일반회원_id,공동구매번호,입금일시),
CONSTRAINT 일반회원_공동구매참여하다_일반회원_id_fk  FOREIGN KEY(일반회원_id)  REFERENCES   일반회원(일반회원_id),
CONSTRAINT 일반회원_공동구매참여하다_공동구매번호_fk FOREIGN KEY(공동구매번호) REFERENCES   공동구매(공동구매번호));

INSERT INTO 일반회원_공동구매참여하다 VALUES ('hyejin12', 10, DEFAULT, 1, '111-111111-11111');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('hyejin12', 29, DEFAULT, 3, '111-111111-11111');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('dagyeong13', 11, DEFAULT, 1, '111-222222-11111');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('dagyeong13', 28, DEFAULT, 9, '111-222222-11111');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('junsu14', 12, DEFAULT, 2, '222-222222-22222');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('junsu14', 27, DEFAULT, 1, '222-222222-22222');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('hwajong15', 13, DEFAULT, 8, '222-111111-21212');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('hwajong15', 26, DEFAULT, 5, '222-111111-21212');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('gun16', 14, DEFAULT, 3, '111-222222-12121');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('gun16', 25, DEFAULT, 2, '111-222222-12121');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('guns17', 15, DEFAULT, 300, '122-212121-14141');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('guns17', 24, DEFAULT, 7, '122-212121-14141');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sangjin18', 16, DEFAULT, 200, '333-212121-33333');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sangjin18', 23, DEFAULT, 79, '333-212121-33333');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('changmin19', 17, DEFAULT, 1, '212-333222-11111');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('changmin19', 22, DEFAULT, 7, '212-333222-11111');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sunghyun20', 18, DEFAULT, 2, '999-987654-11112');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sunghyun20', 21, DEFAULT, 300, '999-987654-11112');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('jaeyong21', 19, DEFAULT, 29, '555-444555-44433');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('jaeyong21', 20, DEFAULT, 10, '555-444555-44433');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('seungmin22', 20, DEFAULT, 2, '992-29292-11333');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('seungmin22', 19, DEFAULT, 1, '992-29292-11333');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sanghyun23', 21, DEFAULT, 17, '123-454545-54321');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sanghyun23', 18, DEFAULT, 10, '123-454545-54321');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sua24', 22, DEFAULT, 6, '321-123456-98765');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('sua24', 17, DEFAULT, 10, '321-123456-98765');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('culsu25', 23, DEFAULT, 19, '3643-126234-02945');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('culsu25', 16, DEFAULT, 10, '3643-126234-02945');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('eunji26', 24, DEFAULT, 4, '1032-104394-39183');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('eunji26', 15, DEFAULT, 20, '1032-104394-39183');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('chang27', 25, DEFAULT, 2, '1234-56789-101112');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('chang27', 14, DEFAULT, 10, '1234-56789-101112');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('minseok28', 26, DEFAULT, 5, '12395-45284-21394');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('minseok28', 13, DEFAULT, 10, '12395-45284-21394');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('minjae29', 27, DEFAULT, 10, '2349-23954-32412');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('minjae29', 12, DEFAULT, 10, '2349-23954-32412');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('jun30', 28, DEFAULT, 90, '2384-192345-23841');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('jun30', 11, DEFAULT, 13, '2384-192345-23841');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('uengjin31', 29, DEFAULT, 1, '82141-123456-32124');
INSERT INTO 일반회원_공동구매참여하다 VALUES ('uengjin31', 10, DEFAULT, 1, '82141-123456-32124');


CREATE TABLE 일반회원_맛집방문참여하다 (
일반회원_id         VARCHAR2(10),
모임번호            NUMBER(10),
CONSTRAINT  일반회원_맛집방문참여하다_pk  PRIMARY KEY (일반회원_id, 모임번호),
CONSTRAINT  일반회원_맛집방문참여하다_일반회원_id_fk   FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT  일반회원_맛집방문참여하다_모임번호_fk      FOREIGN KEY(모임번호)    REFERENCES    맛집방문모임(모임번호));

INSERT INTO 일반회원_맛집방문참여하다 VALUES ('hyejin12', 0);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('hyejin12', 19);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('hyejin12', 14);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('dagyeong13', 1);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('dagyeong13', 4);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('junsu14', 2);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('junsu14', 18);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('hwajong15', 3);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('hwajong15', 12);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('gun16', 4);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('gun16', 1);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('guns17', 5);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('guns17', 8);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sangjin18', 6);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sangjin18', 12);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('changmin19', 7);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('changmin19', 14);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sunghyun20', 8);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sunghyun20', 15);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('jaeyong21', 9);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('jaeyong21', 12);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('seungmin22', 10);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('seungmin22', 3);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sanghyun23', 11);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sanghyun23', 16);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sua24', 12);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('sua24', 17);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('culsu25', 13);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('culsu25', 19);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('eunji26', 14);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('eunji26', 13);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('chang27', 15);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('chang27', 2);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('minseok28', 16);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('minseok28', 1);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('minjae29', 17);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('minjae29', 7);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('jun30', 18);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('jun30', 16);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('uengjin31', 19);
INSERT INTO 일반회원_맛집방문참여하다 VALUES ('uengjin31', 8);


CREATE  TABLE  대회_개최하다 (
대회번호 	    NUMBER(10),
기업회원_id	        VARCHAR2(10),
CONSTRAINT 대회_개최하다_pk PRIMARY KEY(대회번호),
CONSTRAINT    대회_개최하다_대회번호_fk      FOREIGN KEY(대회번호) REFERENCES    대회(대회번호),
CONSTRAINT    대회_개최하다_기업회원_id_fk       FOREIGN KEY(기업회원_id) REFERENCES    기업회원(기업회원_id));

INSERT INTO 대회_개최하다 VALUES (20222101, 'i1'); 
INSERT INTO 대회_개최하다 VALUES (20222102, 'i2');
INSERT INTO 대회_개최하다 VALUES (20222103, 'i3'); 
INSERT INTO 대회_개최하다 VALUES (20222104, 'i4');
INSERT INTO 대회_개최하다 VALUES (20222105, 'i5'); 
INSERT INTO 대회_개최하다 VALUES (20222106, 'i6');
INSERT INTO 대회_개최하다 VALUES (20222107, 'i7'); 
INSERT INTO 대회_개최하다 VALUES (20222108, 'i8');
INSERT INTO 대회_개최하다 VALUES (20222109, 'i9'); 
INSERT INTO 대회_개최하다 VALUES (20222110, 'i10');
INSERT INTO 대회_개최하다 VALUES (20222111, 'i11'); 
INSERT INTO 대회_개최하다 VALUES (20222112, 'i12');
INSERT INTO 대회_개최하다 VALUES (20222113, 'i13'); 
INSERT INTO 대회_개최하다 VALUES (20222114, 'i14');
INSERT INTO 대회_개최하다 VALUES (20222115, 'i15'); 
INSERT INTO 대회_개최하다 VALUES (20222116, 'i16');
INSERT INTO 대회_개최하다 VALUES (20222117, 'i17'); 
INSERT INTO 대회_개최하다 VALUES (20222118, 'i18');
INSERT INTO 대회_개최하다 VALUES (20222119, 'i19'); 
INSERT INTO 대회_개최하다 VALUES (20222120, 'i20');


CREATE  TABLE  대회_참가하다 (
일반회원_id	    VARCHAR2(10),
대회번호 	    NUMBER(10),
수상부문	    VARCHAR2(10)    DEFAULT 'X',
CONSTRAINT 대회_참가하다_pk PRIMARY KEY(일반회원_id,대회번호),
CONSTRAINT    대회_참가하다_일반회원_id_fk       FOREIGN KEY(일반회원_id) REFERENCES    일반회원(일반회원_id),
CONSTRAINT    대회_참가하다_대회번호_fk      FOREIGN KEY(대회번호) REFERENCES    대회(대회번호));

INSERT INTO 대회_참가하다 VALUES('hyejin12', 20222101, '은상');
INSERT INTO 대회_참가하다 VALUES('dagyeong13', 20222101, '동상');
INSERT INTO 대회_참가하다 VALUES('junsu14', 20222101, '동상');
INSERT INTO 대회_참가하다 VALUES('hwajong15', 20222102, '장려상');
INSERT INTO 대회_참가하다 VALUES('gun16', 20222103, '2등');
INSERT INTO 대회_참가하다 VALUES('guns17', 20222104, '금상');
INSERT INTO 대회_참가하다 VALUES('sangjin18', 20222101, DEFAULT);
INSERT INTO 대회_참가하다 VALUES('changmin19', 20222103, '3등');
INSERT INTO 대회_참가하다 VALUES('sunghyun20', 20222102, DEFAULT);
INSERT INTO 대회_참가하다 VALUES('jaeyong21', 20222105, DEFAULT);
INSERT INTO 대회_참가하다 VALUES('seungmin22', 20222105, '1등');
INSERT INTO 대회_참가하다 VALUES('sanghyun23', 20222106, '금상');
INSERT INTO 대회_참가하다 VALUES('sua24', 20222107, DEFAULT);
INSERT INTO 대회_참가하다 VALUES('culsu25', 20222105, '2등');
INSERT INTO 대회_참가하다 VALUES('eunji26', 20222106, '동상');
INSERT INTO 대회_참가하다 VALUES('chang27', 20222105, DEFAULT);
INSERT INTO 대회_참가하다 VALUES('minseok28', 20222107, '동상');
INSERT INTO 대회_참가하다 VALUES('minjae29', 20222108, '금상');
INSERT INTO 대회_참가하다 VALUES('jun30', 20222108, DEFAULT);
INSERT INTO 대회_참가하다 VALUES('uengjin31', 20222108, '대상');


CREATE TABLE 심사위원_임명되다 (
강사회원_id         VARCHAR2(10),
대회번호        NUMBER(10),
CONSTRAINT  심사회원_임명하다  PRIMARY KEY (강사회원_id, 대회번호),
CONSTRAINT    심사위원_임명되다_강사회원_id_fk      FOREIGN KEY(강사회원_id) REFERENCES    강사회원(강사회원_id),
CONSTRAINT    심사위원_임명되다_대회번호_fk      FOREIGN KEY(대회번호) REFERENCES    대회(대회번호));

INSERT INTO 심사위원_임명되다 VALUES ('jimin54', 20222102);
INSERT INTO 심사위원_임명되다 VALUES ('jimin54', 20222104);
INSERT INTO 심사위원_임명되다 VALUES ('jimin54', 20222120);
INSERT INTO 심사위원_임명되다 VALUES ('jnda41', 20222103);
INSERT INTO 심사위원_임명되다 VALUES ('jnda41', 20222110);
INSERT INTO 심사위원_임명되다 VALUES ('jnda41', 20222112);
INSERT INTO 심사위원_임명되다 VALUES ('jwon20', 20222104);
INSERT INTO 심사위원_임명되다 VALUES ('jwon20', 20222106);
INSERT INTO 심사위원_임명되다 VALUES ('jwon20', 20222117);
INSERT INTO 심사위원_임명되다 VALUES ('jwon20', 20222118);
INSERT INTO 심사위원_임명되다 VALUES ('ssdf4', 20222112);
INSERT INTO 심사위원_임명되다 VALUES ('sfjnw34', 20222103);
INSERT INTO 심사위원_임명되다 VALUES ('sfjnw34', 20222110);
INSERT INTO 심사위원_임명되다 VALUES ('lucky84', 20222101);
INSERT INTO 심사위원_임명되다 VALUES ('lucky84', 20222104);
INSERT INTO 심사위원_임명되다 VALUES ('lucky84', 20222108);
INSERT INTO 심사위원_임명되다 VALUES ('lucky84', 20222111);
INSERT INTO 심사위원_임명되다 VALUES ('lucky84', 20222120);
INSERT INTO 심사위원_임명되다 VALUES ('kimda23', 20222104);
INSERT INTO 심사위원_임명되다 VALUES ('sixone98', 20222116);