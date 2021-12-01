DROP TABLE IF EXISTS ic_authority;
DROP TABLE IF EXISTS ic_java;
DROP TABLE IF EXISTS ic_member;

CREATE TABLE ic_member
(
   m_uid int NOT NULL AUTO_INCREMENT,
   m_id varchar(50) NOT NULL,
   m_password varchar(2000) NOT NULL,
   m_name varchar(20) NOT NULL,
   m_mail varchar(50) NOT NULL,
   m_phone varchar(30) NOT NULL,
   m_addr varchar(300) NOT NULL,
   m_gender varchar(20) NOT NULL,
   m_birth date NOT NULL,
   m_joindate DATETIME DEFAULT CURRENT_TIMESTAMP,
   enabled char(1) DEFAULT '1',
   PRIMARY KEY (m_uid),
   UNIQUE (m_id)
);

CREATE TABLE ic_authority (
   m_id varchar(50) ,
   m_auth varchar(50) NOT NULL,        -- 시큐리티의 authority
   FOREIGN KEY (m_id) REFERENCES ic_member(m_id)  ON DELETE CASCADE,
   PRIMARY KEY (m_id, m_auth)
);

CREATE TABLE ic_java
(
   j_uid int NOT NULL AUTO_INCREMENT,
   j_content varchar(200),
   j_img varchar(200),
   j_date datetime NOT NULL DEFAULT now(),
   j_title varchar(50) NOT NULL,
   PRIMARY KEY (j_uid),
   m_uid int NOT NULL,
   FOREIGN KEY (m_uid) REFERENCES ic_member(m_uid)  ON DELETE CASCADE
);


SELECT * FROM ic_member;
SELECT * FROM ic_authority;
SELECT * FROM ic_java;





