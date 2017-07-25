CREATE TABLE eventlog
(
    "id" serial,
    "signature" varchar(64),
    "events" text,
    "timestamp" timestamp NOT NULL DEFAULT now(),
    PRIMARY KEY ("id")
)

CREATE TABLE questions
(
    "id" serial,
    "number" smallint NOT NULL,
    "text" text NOT NULL,
    "image" varchar(250) NOT NULL,
    "option_a" varchar(200) NOT NULL,
    "option_b" varchar(200) NOT NULL,
    "option_c" varchar(200) NOT NULL,
    "option_d" varchar(200) NOT NULL,
    "answer" varchar(200) NOT NULL,
    PRIMARY KEY ("id")
)

INSERT INTO 'questions' ('id', 'number', 'text', 'image', 'option_a', 'option_b', 'option_c', 'option_d', 'answer') VALUES
(1, 1, 'Apa hasil yang benar dari kode berikut ini?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219056/1_rgnadm.png', '4', '3', '5', '"0"', '4'),
(2, 2, 'Apa output kode berikut ini?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219057/2_f3d4tz.png', '1,2,3,4,5,6,7,8,9', '1,2,3,4,5,6,78,9,10', '2,3,4,5,8,9', '1,1,1,1,1,1,1,1,1,1', '1,1,1,1,1,1,1,1,1,1'),
(3, 3, 'Mana output yang benar?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486221114/3_ginlhe.png', '''a'' found', '''a'' not found', '', '', '''a'' not found'),
(4, 4, 'Apa hasil yang benar dari kode berikut ini?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486222467/4_n5ai4k.png', 'PHP 5.3', '5.3PHP 3', 'PHP', 'PH', '5.3PHP 3'),
(5, 5, 'Mana output yang benar?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219057/5_ngpkk0.png', 'Undefined variable', '6', '2', '10', 'Undefined variable'),
(6, 6, 'Apa hasil yang benar dari kode berikut ini?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219057/6_ltdqow.png', '2', '4', '3', 'Error', '2'),
(7, 7, 'Mana output yang benar?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219057/7_z6elyq.png', '5 with warning', '3', 'Error', '10', '5 with warning'),
(8, 8, 'Ouput apa yang keluar dari kode berikut ini?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219057/8_t9qjop.png', '5', 'output kosong', '8', '20', 'output kosong'),
(9, 9, 'Mana output yang benar?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219057/9_sqoycr.png', '226', '246', '123', 'Undefined variable', 'Undefined variable'),
(10, 10, 'Apa hasil yang benar dari kode berikut ini?', 'https://res.cloudinary.com/db9zavtws/image/upload/v1486219056/10_zrcuiy.png', '2', '1', '3', 'Error', '2');

CREATE TABLE users
(
    "id" serial,
    "user_id" varchar(100) NOT NULL,
    "display_name" varchar(100) NOT NULL,
    "score" double NOT NULL DEFAULT '0',
    "line_id" varchar(50) NULL,
    "number" smallint NOT NULL DEFAULT '0',
    PRIMARY KEY ("id")
)
