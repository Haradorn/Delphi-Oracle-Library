CREATE TABLE genres
    ( g_id NUMBER(10) NOT NULL,
      g_name NVARCHAR2(150),
      CONSTRAINT PK_genres PRIMARY KEY(g_id),
      CONSTRAINT UQ_genres_g_name UNIQUE(g_name)
    );
CREATE TABLE authors
    ( a_id NUMBER(10) NOT NULL,
      a_name NVARCHAR2(150),
      CONSTRAINT PK_authors PRIMARY KEY(a_id)
    );
CREATE TABLE subscribers
    ( s_id NUMBER(10) NOT NULL,
      s_name NVARCHAR(150),
      CONSTRAINT PK_subscribers PRIMARY KEY(s_id)
    );
CREATE TABLE books
    ( b_id NUMBER(10) NOT NULL,
      b_name NVARCHAR2(150) NOT NULL,
      b_year NUMBER(10),
      b_quantity NUMBER(10),
      CONSTRAINT PK_books PRIMARY KEY(b_id)
    );
CREATE TABLE subscriptions
    ( sb_id NUMBER(10) NOT NULL,
      sb_subscriber NUMBER(10) NOT NULL,
      sb_book NUMBER(10) NOT NULL,
      sb_start DATE NOT NULL,
      sb_finish DATE NOT NULL,
      sb_is_active CHAR(1) NOT NULL,
      CONSTRAINT PK_subscriptions PRIMARY KEY(sb_id),
      CONSTRAINT FK_subscriptions_books FOREIGN KEY(sb_book) REFERENCES books(b_id),
      CONSTRAINT FK_subscriptions_subscribers FOREIGN KEY(sb_subscriber) REFERENCES subscribers(s_id)
    );
CREATE TABLE m2m_books_genres
    ( b_id NUMBER(10) NOT NULL,
      g_id NUMBER(10) NOT NULL,
      CONSTRAINT PK_m2m_books_genres PRIMARY KEY(b_id, g_id),
      CONSTRAINT FK_m2m_books_genres_books FOREIGN KEY(b_id) REFERENCES books(b_id),
      CONSTRAINT FK_m2m_books_genres_genres FOREIGN KEY(g_id) REFERENCES genres(g_id)
    );
CREATE TABLE m2m_books_authors
    ( b_id NUMBER(10) NOT NULL,
      a_id NUMBER(10) NOT NULL,
      CONSTRAINT PK_m2m_books_authors PRIMARY KEY(b_id, a_id),
      CONSTRAINT FK_m2m_books_authors_authors FOREIGN KEY(a_id) REFERENCES authors(a_id),
      CONSTRAINT FK_m2m_books_authors_books FOREIGN KEY(b_id) REFERENCES books(b_id)
    );
INSERT ALL
    INTO books (b_id, b_name, b_year, b_quantity) VALUES(1, 'Евгений Онегин', 1985, 2)
    INTO books (b_id, b_name, b_year, b_quantity) VALUES(2, 'Сказка о рыбаке и рыбке', 1990, 3)
    INTO books (b_id, b_name, b_year, b_quantity) VALUES(3, 'Основание и империя', 2000, 5)
    INTO books (b_id, b_name, b_year, b_quantity) VALUES(4, 'Психология программирования', 1998, 1)
    INTO books (b_id, b_name, b_year, b_quantity) VALUES(5, 'Язык программирования C++', 1996, 3)
    INTO books (b_id, b_name, b_year, b_quantity) VALUES(6, 'Курс теоретической физики', 1981, 12)
    INTO books (b_id, b_name, b_year, b_quantity) VALUES(7, 'Искусство программирования', 1993, 7)
SELECT * FROM dual;
INSERT ALL
    INTO authors (a_id, a_name) VALUES(1, 'Д. Кнут')
    INTO authors (a_id, a_name) VALUES(2, 'А. Азимов')
    INTO authors (a_id, a_name) VALUES(3, 'Д. Карнеги')
    INTO authors (a_id, a_name) VALUES(4, 'Л.Д. Ландау')
    INTO authors (a_id, a_name) VALUES(5, 'Е.М. Лифшиц')
    INTO authors (a_id, a_name) VALUES(6, 'Б. Страуструп')
    INTO authors (a_id, a_name) VALUES(7, 'А.С. Пушкин')
SELECT * FROM dual;
INSERT ALL
    INTO genres (g_id, g_name) VALUES(1, 'Поэзия')
    INTO genres (g_id, g_name) VALUES(2, 'Программирование')
    INTO genres (g_id, g_name) VALUES(3, 'Психология')
    INTO genres (g_id, g_name) VALUES(4, 'Наука')
    INTO genres (g_id, g_name) VALUES(5, 'Классика')
    INTO genres (g_id, g_name) VALUES(6, 'Фантастика')
SELECT * FROM dual;
INSERT ALL
    INTO subscribers (s_id, s_name) VALUES(1, 'Иванов И.И.')
    INTO subscribers (s_id, s_name) VALUES(2, 'Петров П.П.')
    INTO subscribers (s_id, s_name) VALUES(3, 'Сидоров С.С.')
    INTO subscribers (s_id, s_name) VALUES(4, 'Сидоров С.С.')
SELECT * FROM dual;
INSERT ALL
    INTO m2m_books_authors (b_id, a_id) VALUES(1, 7)
    INTO m2m_books_authors (b_id, a_id) VALUES(2, 7)
    INTO m2m_books_authors (b_id, a_id) VALUES(3, 2)
    INTO m2m_books_authors (b_id, a_id) VALUES(4, 3)
    INTO m2m_books_authors (b_id, a_id) VALUES(4, 6)
    INTO m2m_books_authors (b_id, a_id) VALUES(5, 6)
    INTO m2m_books_authors (b_id, a_id) VALUES(6, 5)
    INTO m2m_books_authors (b_id, a_id) VALUES(6, 4)
    INTO m2m_books_authors (b_id, a_id) VALUES(7, 1)
SELECT * FROM dual;
INSERT ALL
    INTO m2m_books_genres (b_id, g_id) VALUES(1, 1)
    INTO m2m_books_genres (b_id, g_id) VALUES(1, 5)
    INTO m2m_books_genres (b_id, g_id) VALUES(2, 1)
    INTO m2m_books_genres (b_id, g_id) VALUES(2, 5)
    INTO m2m_books_genres (b_id, g_id) VALUES(3, 6)
    INTO m2m_books_genres (b_id, g_id) VALUES(4, 2)
    INTO m2m_books_genres (b_id, g_id) VALUES(4, 3)
    INTO m2m_books_genres (b_id, g_id) VALUES(5, 2)
    INTO m2m_books_genres (b_id, g_id) VALUES(6, 5)
    INTO m2m_books_genres (b_id, g_id) VALUES(7, 2)
    INTO m2m_books_genres (b_id, g_id) VALUES(7, 5)
SELECT * FROM dual;
INSERT ALL
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(3, 3, 3, TO_DATE('2012-05-17', 'yyyy/mm/dd'), TO_DATE('2012-07-17', 'yyyy/mm/dd'), 'Y')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(42, 1, 2, TO_DATE('2012-06-11', 'yyyy/mm/dd'), TO_DATE('2012-08-11', 'yyyy/mm/dd'), 'N')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(57, 4, 5, TO_DATE('2012-06-11', 'yyyy/mm/dd'), TO_DATE('2012-08-11', 'yyyy/mm/dd'), 'N')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(61, 1, 7, TO_DATE('2014-08-03', 'yyyy/mm/dd'), TO_DATE('2014-10-03', 'yyyy/mm/dd'), 'N')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(62, 3, 5, TO_DATE('2014-08-03', 'yyyy/mm/dd'), TO_DATE('2014-10-03', 'yyyy/mm/dd'), 'Y')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(86, 3, 1, TO_DATE('2014-08-03', 'yyyy/mm/dd'), TO_DATE('2014-09-03', 'yyyy/mm/dd'), 'Y')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(91, 1, 4, TO_DATE('2015-10-07', 'yyyy/mm/dd'), TO_DATE('2015-03-07', 'yyyy/mm/dd'), 'Y')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(95, 1, 4, TO_DATE('2015-10-07', 'yyyy/mm/dd'), TO_DATE('2015-11-07', 'yyyy/mm/dd'), 'N')
    INTO subscriptions (sb_id, sb_subscriber, sb_book, sb_start, sb_finish, sb_is_active)
    VALUES(99, 4, 4, TO_DATE('2015-10-08', 'yyyy/mm/dd'), TO_DATE('2025-11-08', 'yyyy/mm/dd'), 'Y')
SELECT * FROM dual;    
SELECT  b_name,
        a_name,
        g_name
FROM    books
        JOIN m2m_books_authors
          ON books.b_id = m2m_books_authors.b_id
        JOIN authors
          ON m2m_books_authors.a_id = authors.a_id
        JOIN m2m_books_genres
          ON books.b_id = m2m_books_genres.b_id
        JOIN genres
          ON m2m_books_genres.g_id = genres.g_id
ORDER BY g_name
/*выбор идентификаторов подписчиков
которые брали книги в библиотеке
при этом не повторяющиеся*/
SELECT DISTINCT sb_subscriber
FROM subscriptions

/*выбор всех подписчиков
с указанием количества полных тезок*/
SELECT  s_name,
        COUNT(*) AS people_count
FROM subscribers
GROUP BY s_name
/*показать без повторений идентификаторы книг
которые были взяты читателями*/
select DISTINCT sb_book
FROM subscriptions
ORDER BY sb_book
/*показать по каждой книге, которую читатели
брали в библиотеке, количество выдач этой книги читателям*/
SELECT  sb_book
        COUNT(*) AS books_given
FROM subscriptions
GROUP BY sb_book
--показать, сколько всего разных книг зарегистрировано в библиотеке
SELECT COUNT(1) AS TOTAL_BOOKS FROM books
--показать, сколько всего читателей зарегистрировано в библиотеке
SELECT COUNT(1) AS TOTAL_SUBSCRIBERS FROM subscribers
--показать, сколько всего экземпляров книг выдано читателям
SELECT COUNT(sb_book) AS in_use
FROM subscriptions
WHERE sb_is_active = 'Y'
--показать, сколько всего разных книг выдано читателям
SELECT COUNT(DISTINCT sb_book) AS in_use
FROM subscriptions
WHERE sb_is_active = 'Y'
--показать, сколько всего раз читателям выдавались книги
SELECT COUNT(sb_id) AS total_books_given
FROM subscriptions
--показать, сколько читателей брало книги в библиотеке
SELECT COUNT(DISTINCT sb_subscriber) AS total_subscribers_give_books
FROM subscriptions
--показать общее (сумму), минимальное, максимальное и среднее значение
--количества экземпляров книг в библиотеке
SELECT SUM("b_quantity") AS "sum", MIN("b_quantity") AS "min",
MAX("b_quantity") AS "max", AVG("b_quantity") AS "avg" FROM "books"
--показать первую и последнюю даты выдачи книги читателю
SELECT MIN(sb_start) AS first_date, MAX(sb_start) AS last_date
FROM subscriptions
--показать все книги в библиотеке в порядке возрастания их года издания
SELECT b_name, b_year
FROM books
ORDER BY b_year ASC
--показать все книги в библиотеке в порядке убывания их года издания
SELECT b_name, b_year
FROM books
ORDER BY b_year DESC
--показать список авторов в обратном алфавитном порядке (т.е. «Я > А»)
select a_name
FROM authors
order by a_name DESC
--показать книги, изданные в период 1990-2000 годов,
--представленные в библиотеке в количестве трёх и более экземпляров
--вариант с BETWEEN
SELECT  b_name,
        b_year,
        b_quantity
FROM    books
WHERE   b_year BETWEEN 1990 AND 2000
        AND b_quantity >= 3
--вариант с использованием двойного неравенства
SELECT  b_name,
        b_year,
        b_quantity
FROM    books
WHERE   b_year >= 1990
        AND b_year <= 2000
        AND b_quantity >= 3
--показать идентификаторы и даты выдачи книг за лето 2012-го года
SELECT  sb_id,
        sb_start
FROM    subscriptions
WHERE   sb_start >= TO_DATE('2012-06-01', 'yyyy-mm-dd')
        AND sb_start < TO_DATE('2012-09-01', 'yyyy-mm-dd') 
--показать книги, количество экземпляров которых меньше среднего по библиотеке
SELECT  b_name, b_quantity
FROM    books
WHERE   b_quantity < (SELECT AVG(b_quantity) FROM books)
/*показать идентификаторы и даты выдачи книг за первый год работы библиотеки
(первым годом работы библиотеки считать все даты с первой выдачи книги
по 31-е декабря (включительно) того года, когда библиотека начала работать)*/
SELECT  sb_id,
        sb_start
FROM    subscriptions
WHERE   sb_start >= TO_DATE('2011-01-12', 'yyyy-mm-dd')
        AND sb_start < TO_DATE('2012-01-01', 'yyyy-mm-dd')
--показать просто одну любую книгу, количество экземпляров
--которой максимально (равно максимуму по всем книгам)
SELECT  b_name,
        b_quantity
FROM    (SELECT b_name,
                b_quantity,
                ROW_NUMBER() OVER(ORDER BY b_quantity DESC) AS rn
        FROM books)
WHERE   rn = 1
--показать все книги, количество экземпляров которых максимально
--(и одинаково для всех этих показанных книг)
--вариант с использованием MAX
SELECT  b_name,
        b_quantity
FROM    books
WHERE   b_quantity = (SELECT MAX(b_quantity) FROM books)
--вариант с использованием RANK
SELECT  b_name,
        b_quantity
FROM    (SELECT b_name,
                b_quantity,
                RANK() OVER (ORDER BY b_quantity DESC) AS rn
        FROM    books)
WHERE   rn = 1
--показать книгу (если такая есть), количество экземпляров
--которой больше, чем у любой другой книги
--вариант с испльзованием оператора ALL и подзапроса (коррелирующий)
SELECT  b_name,
        b_quantity
FROM    books ext
WHERE   b_quantity > ALL (SELECT b_quantity
                          FROM books int
                          WHERE ext.b_id != int.b_id)
--использование общего табличного выражения и RANK
WITH    ranked
        AS (SELECT  b_name,
                    b_quantity,
                    RANK()
                        OVER(
                            ORDER BY b_quantity DESC) AS rank
            FROM books),
        counted
        AS (SELECT  rank,
                    COUNT(*) AS competitors
            FROM    ranked
            GROUP BY rank)
SELECT  b_name,
        b_quantity
FROM    ranked
        JOIN counted
          ON ranked.rank = counted.rank
WHERE   counted.rank = 1
        AND counted.competitors = 1
/*показать идентификатор "читателя-рекордсмена"
взявшего в библиотеке больше книг, чем любой другой читатель*/
WITH ranked AS
(SELECT sb_subscriber, COUNT(sb_id) cnt FROM subscriptions GROUP BY sb_subscriber)
SELECT sb_subscriber FROM ranked WHERE cnt = (SELECT MAX(cnt) FROM ranked)
--показать, сколько в среднем экземпляров книг сейчас
--на руках у каждого читателя
SELECT  AVG(books_per_subscriber) AS avg_books
FROM    (SELECT COUNT(sb_book) AS books_per_subscriber
         FROM subscriptions
         WHERE sb_is_active = 'Y'
         GROUP BY sb_subscriber)
--показать, сколько в среднем книг сейчас на руках у
--каждого читателя
SELECT  AVG(books_per_subscriber) AS avg_books
FROM    (SELECT COUNT(DISTINCT sb_book) AS books_per_subscriber
         FROM   subscriptions
         WHERE  sb_is_active = 'Y'
         GROUP BY sb_subscriber) 
--показать, на сколько в среднем дней читатели берут
--книги (узнать только случаи, когда книги были возвращены)
SELECT  AVG(sb_finish - sb_start) AS avg_days
FROM    subscriptions
WHERE   sb_is_active = 'N'
--показать, сколько в среднем дней читатели читают книгу
--(учесть оба случая) - и когда книга была возвращена, и когда
--книга не была возвращена
SELECT  AVG(diff) AS avg_days
FROM    (
         SELECT (sb_finish - sb_start) AS diff
         FROM   subscriptions
         WHERE  (sb_finish <= TRUNC(SYSDATE) AND sb_is_active = 'N')
         OR     (sb_finish > TRUNC(SYSDATE) AND sb_is_active = 'Y')
         UNION ALL
         SELECT (TRUNC(SYSDATE) - sb_start) AS diff
         FROM   subscriptions
         WHERE  (sb_finish <= TRUNC(SYSDATE) AND sb_is_active = 'Y')
         OR     (sb_finish > TRUNC(SYSDATE) AND sb_is_active = 'N')
        )
--показать, сколько в среднем экземпляров книг есть в библиотеке
SELECT AVG(b_quantity) AS sm
FROM books
JOIN subscriptions ON books.b_id = subscriptions.sb_book
WHERE subscriptions.sb_is_active = 'N'
/*показать в днях, сколько в среднем времени читатели уже
зарегистрированы в библиотеке (временем регистрации считать
диапазон от первой даты получения читателем книги до текущей даты*/
WITH t
AS (SELECT s_id, TRUNC(SYSDATE) - sb_start dt
FROM subscribers JOIN subscriptions ON subscribers.s_id = subscriptions.sb_subscriber
ORDER BY s_id),
d AS (SELECT s_id, MAX(dt) dtm FROM t GROUP BY s_id)
SELECT AVG(dtm) FROM d  
--показать по каждому году, сколько раз в этот год читатели брали книги
SELECT  EXTRACT(year FROM sb_start) AS year,
        COUNT(sb_id)                AS books_taken
FROM    subscriptions
GROUP BY EXTRACT(year FROM sb_start)
ORDER BY year
--показать по каждому году, сколько читателей в год воспользовалось услугами библиотеки
SELECT  EXTRACT(year FROM sb_start)   AS year,
        COUNT(DISTINCT sb_subscriber) AS subscribers
FROM    subscriptions
GROUP BY EXTRACT(year FROM sb_start)
ORDER BY year
--показать, сколько книг было возвращено и не возвращено в библиотеку
SELECT (CASE
        WHEN sb_is_active = 'Y' 
        THEN 'Not returned' 
        ELSE 'Returned' END) AS status, 
        COUNT(sb_id) AS books 
FROM subscriptions
GROUP BY (CASE 
            WHEN sb_is_active = 'Y' 
            THEN 'Not returned' 
            ELSE 'Returned' END) 
ORDER BY status DESC
/*переписать решение 2.1.10.c так, 
чтобы при под-счёте возвращённых и невозвращённых 
книг СУБД оперировала исход-ными значениями поля 
sb_is_active (т.е. Y и N), а преобразование 
в «Returned» и «Not returned» происходило 
после подсчёта
*/
WITH R
AS(SELECT sb_is_active AS status, 
        COUNT(sb_id) AS books 
FROM subscriptions
WHERE sb_is_active = 'Y'
GROUP BY sb_is_active),
N
AS(SELECT sb_is_active AS status, 
        COUNT(sb_id) AS books 
FROM subscriptions
WHERE sb_is_active = 'N'
GROUP BY sb_is_active
UNION ALL SELECT * FROM R)
SELECT * FROM N
--показать всю человекочитаемую информацию обо всех книгах (т.е. название, автора, жанр).
SELECT  b_name,
        a_name,
        g_name
FROM    books
        JOIN m2m_books_authors USING(b_id)
        JOIN authors USING(a_id)
        JOIN m2m_books_genres USING(b_id)
        JOIN genres USING(g_id)
--показать всю человекочитаемую информацию обо всех обращениях в библиотеку (т.е. имя читателя, название взятой книги)
SELECT  b_name,
        s_id,
        s_name,
        sb_start,
        sb_finish
FROM    books
        JOIN subscriptions
          ON b_id = sb_book
        JOIN subscribers
          ON sb_subscriber = s_id
--показать список книг, у которых более одного ав-тора
WITH R
AS
(SELECT b_name, COUNT(a_name) AS cnt
FROM books  JOIN m2m_books_authors ON books.b_id = m2m_books_authors.b_id
            JOIN authors ON m2m_books_authors.a_id = authors.a_id
GROUP BY b_name)
SELECT * FROM R
WHERE cnt > 1
--показать список книг, относящихся ровно к одному жанру
WITH R
AS
(select b_name, COUNT(g_name) cnt
FROM books JOIN m2m_books_genres USING(b_id)
            JOIN genres USING(g_id)
GROUP BY b_name )
SELECT * FROM R
WHERE cnt = 1  
--показать все книги с их авторами (дублирование названий книг не допускается)
SELECT b_name AS book,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(a_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY a_name)
        )
        AS authors
FROM    books
        JOIN m2m_books_authors USING(b_id)
        JOIN authors           USING(a_id)
GROUP BY b_id,
         b_name
--показать все книги с их авторами и жанрами (дублирование названий книг и имён авторов не допускается)
SELECT  book, authors,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(g_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY g_name)
        )
        AS genres
FROM
(
        SELECT  b_id, b_name AS book,
                UTL_RAW.CAST_TO_NVARCHAR2
                (
                    LISTAGG
                    (
                        UTL_RAW.CAST_TO_RAW(a_name),
                        UTL_RAW.CAST_TO_RAW(N', ')
                    )
                    WITHIN GROUP(ORDER BY a_name)
                )
                AS authors
        FROM books
        JOIN m2m_books_authors USING(b_id)
        JOIN authors USING(a_id)
        GROUP BY b_id,
                 b_name
) first_level
JOIN m2m_books_genres USING(b_id)
JOIN genres USING(g_id)
GROUP BY b_id, book, authors
--показать все книги с их жанрами (дублирование названий книг не допускается)
SELECT b_name AS book,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(g_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY g_name)
        )
        AS genrs
FROM    books
        JOIN m2m_books_genres  USING(b_id)
        JOIN genres           USING(g_id)
GROUP BY b_id,
         b_name
/*показать всех авторов со всеми написанными ими книгами и всеми жанрами,
в которых они работали (дублирование имён авторов, названий книг и жанров не допускается)*/
SELECT b_name AS book,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(g_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY g_name)
        )
        AS genrs,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(a_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY a_name)
        )
        AS auths
FROM    books
        JOIN m2m_books_genres  USING(b_id)
        JOIN genres           USING(g_id)
        JOIN m2m_books_authors USING(b_id)
        JOIN authors USING(a_id)
GROUP BY b_id,
         b_name
--показать список читателей, когда-либо бравших в биб-лиотеке книги (использовать JOIN)
SELECT DISTINCT s_id, s_name
FROM subscribers
JOIN subscriptions ON s_id = sb_subscriber
--показать список читателей, когда-либо бравших в биб-лиотеке книги (не использовать JOIN)
SELECT  s_id,
        s_name
FROM    subscribers
WHERE   s_id IN(SELECT DISTINCT sb_subscriber
                FROM  subscriptions)        
--показать список читателей, никогда не бравших в биб-лиотеке книги (использовать JOIN)
SELECT  s_id,
        s_name
FROM    subscribers
        LEFT JOIN subscriptions
               ON s_id = sb_subscriber
WHERE   sb_subscriber IS NULL                       
--показать список читателей, никогда не бравших в биб-лиотеке книги (не использовать JOIN)
SELECT  s_id,
        s_name
FROM    subscribers
WHERE   s_id NOT IN(SELECT DISTINCT sb_subscriber
                    FROM subscriptions)      
--показать список книг, которые когда-либо были взяты читателями
SELECT DISTINCT b_id, b_name
FROM  books
JOIN  subscriptions ON b_id = sb_book
--показать список книг, которые никто из читателей никогда не брал
SELECT  b_id,
        b_name
FROM    books
        LEFT JOIN subscriptions
               ON b_id = sb_book
WHERE sb_book IS NULL  
--показать список читателей, у которых сейчас на руках нет книг (использовать JOIN)
SELECT  s_id,
        s_name
FROM    subscribers
        LEFT OUTER JOIN subscriptions
                     ON s_id = sb_subscriber
GROUP BY s_id,
         s_name
HAVING COUNT(CASE
              WHEN sb_is_active = 'Y' THEN sb_is_active
              ELSE NULL
            END) = 0                                     
--показать список читателей, у которых сейчас на руках нет книг (не использовать JOIN)
SELECT  s_id,
        s_name
FROM    subscribers
WHERE   s_id NOT IN(SELECT DISTINCT sb_subscriber
                    FROM subscriptions
                    WHERE sb_is_active = 'Y')    
--показать список книг, ни один экземпляр которых сейчас не находится на руках у читателей
SELECT  b_id,
        b_name
FROM    books
WHERE   b_id NOT IN(SELECT DISTINCT sb_book
                    FROM subscriptions
                    WHERE sb_is_active = 'Y')    
--показать книги из жанров «Программирование» и/или «Классика» (без использования JOIN; идентификаторы жанров известны)                                          
SELECT  b_id,
        b_name
FROM    books
WHERE   b_id IN(SELECT  DISTINCT b_id
                FROM    m2m_books_genres
                WHERE   g_id IN(2, 5))
ORDER BY b_name ASC                        
--показать книги из жанров «Программирование» и/или «Классика» (без использования JOIN; идентификаторы жанров неизвестны)
SELECT  b_id,
        b_name
FROM    books
WHERE   b_id IN(SELECT DISTINCT b_id
                FROM m2m_books_genres
                WHERE g_id IN(SELECT g_id
                              FROM   genres
                              WHERE
                                    g_name IN(N'Программирование',
                                              N'Классика')
                            ))
ORDER BY b_name ASC                                    
--показать книги из жанров «Программирование» и/или «Классика» (с использованием JOIN; идентификаторы жанров известны)
SELECT  DISTINCT b_id,
                 b_name
FROM    books
        JOIN m2m_books_genres USING(b_id)
WHERE g_id IN(2, 5)
ORDER BY b_name ASC                         
--показать книги из жанров «Программирование» и/или «Классика» (с использованием JOIN; идентификаторы жанров неизвестны)
SELECT DISTINCT b_id,
                b_name
FROM    books
        JOIN m2m_books_genres USING(b_id)
WHERE   g_id IN(SELECT  g_id
                FROM    genres
                WHERE   g_name IN(N'Программирование',
                                  N'Классика')
                )
ORDER BY b_name ASC  
--показать книги, написанные Пушкиным и/или Азимовым (индивидуально или в соавторстве — не важно)    
SELECT DISTINCT b_id,
                b_name
FROM    books
        JOIN m2m_books_authors USING(b_id)
WHERE   a_id IN(SELECT  a_id
                FROM    authors
                WHERE   a_name IN(N'А.С. Пушкин',
                                  N'А. Азимов')
                )
ORDER BY b_name ASC     
--показать книги, написанные Карнеги и Страуструпом в соавторстве                                                         
WITH T AS
(SELECT b_name AS book,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(g_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY g_name)
        )
        AS genrs,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(a_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY a_name)
        )
        AS auths
FROM    books
        JOIN m2m_books_genres  USING(b_id)
        JOIN genres           USING(g_id)
        JOIN m2m_books_authors USING(b_id)
        JOIN authors USING(a_id)
GROUP BY b_id,
         b_name)
SELECT book FROM T
WHERE auths LIKE('Б. Страуструп, Б. Страуструп, Д. Карнеги, Д. Карнеги')
--показать книги, у которых более одного автора
SELECT  b_id,
        b_name,
        COUNT(a_id) AS  authos_count
FROM    books
        JOIN m2m_books_authors USING(b_id)
GROUP BY b_id, b_name
HAVING COUNT(a_id) > 1            
--показать, сколько реально экземпляров каждой книги сейчас есть в библиотеке
--вариант 1, использование коррелирующего запроса
SELECT DISTINCT b_id,
                b_name,
                (b_quantity - (SELECT COUNT(int.sb_book)
                               FROM subscriptions int
                               WHERE int.sb_book = ext.sb_book
                               AND int.sb_is_active = 'Y'))
AS
                real_count
FROM books
     LEFT OUTER JOIN subscriptions ext
                  ON books.b_id = ext.sb_book
ORDER BY real_count DESC    
--вариант 2, использование общего табличного выражения
--и коррелирующего подзапроса
WITH books_taken
    AS(SELECT sb_book           AS b_id,
                COUNT(sb_book)  AS books_taken
       FROM subscriptions
       WHERE sb_is_active = 'Y'
       GROUP BY sb_book)
SELECT b_id,
       b_name,
       (b_quantity - NVL((SELECT books_taken
                          FROM books_taken
                          WHERE books.b_id =
                                books_taken.b_id), 0
                        )) AS
        real_count
FROM    books
ORDER BY real_count DESC 
--вариант 3: пошаговое применение общего табличного выражения и подзапроса
WITH books_taken
    AS(SELECT sb_book
       FROM subscriptions
       WHERE sb_is_active = 'Y'),
    real_taken
    AS(SELECT b_id,
              COUNT(sb_book) AS taken
       FROM   books
              LEFT OUTER JOIN books_taken
                           ON b_id = sb_book
       GROUP BY b_id)
SELECT b_id,
       b_name,
       (b_quantity - (SELECT taken
                      FROM real_taken
                      WHERE books.b_id = real_taken.b_id)) AS
        real_count
FROM    books
ORDER BY real_count DESC
--вариант 4: без подзапросов
WITH    books_taken
    AS(SELECT   sb_book,
                COUNT(sb_book) AS taken
       FROM     subscriptions
       WHERE    sb_is_active = 'Y'
       GROUP BY sb_book)
SELECT b_id,
       b_name,
       (b_quantity - NVL(taken, 0)) AS real_count
FROM   books
       LEFT OUTER JOIN books_taken
                    ON b_id = sb_book
ORDER BY real_count DESC       
--показать авторов, написавших более одной книги
SELECT  a_id,
        a_name,
        COUNT(b_id) AS books_count
FROM authors
     JOIN m2m_books_authors USING(a_id)
GROUP BY a_id, a_name
HAVING COUNT(b_id) > 1
--показать книги, относящиеся к более чем одному жанру
SELECT  b_id,
        b_name,
        COUNT(g_id) AS genres_count
FROM    books
        JOIN m2m_books_genres USING(b_id)
GROUP BY b_id, b_name
HAVING COUNT(g_id) > 1
--показать читателей, у которых сейчас на руках больше одной книги
SELECT  s_id,
        s_name,
        COUNT(sb_book) AS books_taken
FROM subscribers
     JOIN subscriptions ON subscribers.s_id = subscriptions.sb_subscriber
WHERE subscriptions.sb_is_active = 'Y'
GROUP BY s_id, s_name
HAVING COUNT(sb_book) > 1
--показать, сколько экземпляров каждой книги сейчас выдано читателям
SELECT  s_id,
        s_name,
        COUNT(sb_book) AS books_taken
FROM subscribers
     JOIN subscriptions ON subscribers.s_id = subscriptions.sb_subscriber
WHERE subscriptions.sb_is_active = 'Y'     
GROUP BY s_id, s_name
--показать всех авторов и количество экземпляров книг по каждому автору
SELECT SUM(b_quantity), a_name
FROM books
JOIN m2m_books_authors USING(b_id)
JOIN authors USING(a_id)
GROUP BY a_name
--показать всех авторов и количество книг (не экземпляров книг, а "книг как изданий) по каждому автору"
SELECT  a_id,
        a_name,
        COUNT(b_id) AS books_count
FROM authors
     JOIN m2m_books_authors USING(a_id)
GROUP BY a_id, a_name
--показать всех читателей, не вернувших книги, и количество невозвращённых книг по каждому такому читателю
SELECT  s_id,
        s_name,
        COUNT(sb_book) AS books_taken
FROM subscribers
     JOIN subscriptions ON subscribers.s_id = subscriptions.sb_subscriber
WHERE subscriptions.sb_is_active = 'Y' AND sb_finish < CURRENT_DATE    
GROUP BY s_id, s_name
--показать читаемость авторов, т.е. всех авторов и то количество раз, которое книги этих авторов были взяты читателями
SELECT  a_id,
        a_name,
        COUNT(sb_book) AS books
FROM    authors
        JOIN m2m_books_authors USING(a_id)
        LEFT OUTER JOIN subscriptions
                     ON m2m_books_authors.b_id = sb_book
GROUP BY        a_id,
                a_name
ORDER BY        books DESC                                     
--показать самого читаемого автора, т.е. автора (или авторов, если их несколько), книги которого читатели брали чаще всего
--вариант 1: на основе функции MAX
WITH    prepared_data
        AS(SELECT       a_id,
                        a_name,
                        COUNT(sb_book) AS books
           FROM         authors
                        JOIN m2m_books_authors USING(a_id)
                        LEFT OUTER JOIN subscriptions
                                     ON m2m_books_authors.b_id = sb_book
           GROUP BY     a_id,
                        a_name)
SELECT  a_id,
        a_name,
        books
FROM    prepared_data
WHERE   books = (SELECT MAX(books)
                 FROM   prepared_data)  
--вариант 2: на основе ранжирования
 WITH prepared_data
        AS(SELECT       a_id,
                        a_name,
                        COUNT(sb_book)                                  AS books,
                        RANK()
                                OVER(
                                        ORDER BY COUNT(sb_book) DESC) AS rank
           FROM         authors
                        JOIN m2m_books_authors USING(a_id)
                        LEFT OUTER JOIN subscriptions
                                     ON m2m_books_authors.b_id = sb_book
           GROUP BY     a_id,
                        a_name)
SELECT  a_id,
        a_name,
        books
FROM prepared_data
WHERE rank = 1                                                              
--показать среднюю читаемость авторов, т.е. среднее значение от того, сколько раз читатели брали книги каждого автора
SELECT  AVG(books) AS avg_reading
FROM    (SELECT COUNT(sb_book) AS books
         FROM authors
              JOIN m2m_books_authors USING(a_id)
              LEFT OUTER JOIN subscriptions
                           ON m2m_books_authors.b_id = sb_book
         GROUP BY a_id) prepared_data
--показать медиану читаемости авторов, т.е. медианное значение от того, сколько раз читатели брали книги каждого автора
WITH popularity
        AS(SELECT COUNT(sb_book) AS books
           FROM authors
                JOIN m2m_books_authors USING(a_id)
                LEFT OUTER JOIN subscriptions
                             ON m2m_books_authors.b_id = sb_book
           GROUP BY a_id)
SELECT MEDIAN(books) AS med_reading FROM popularity           
/*написать запрос, проверяющий, не была ли допущена ошибка в заполнении документов, при которой оказывается,
что на руках сейчас большее количество экземпляров некоторой книги, чем их было в библиотеке.
Вернуть 1, если ошибка есть и 0, если ошибки нет*/
WITH    books_taken
        AS(SELECT sb_book,
                  COUNT(sb_book) AS books_taken
           FROM subscriptions
           WHERE sb_is_active = 'Y'
           GROUP BY sb_book)
SELECT CASE
                WHEN EXISTS(SELECT      b_id
                            FROM        books
                                        LEFT OUTER JOIN books_taken
                                                     ON b_id = sb_book
                            WHERE(b_quantity - NVL(taken, 0)) < 0
                            AND ROWNUM = 1)
                THEN 1
                ELSE 0
       END AS error_exists
FROM books_taken
WHERE ROWNUM = 1
/*показать читаемость жанров, т.е. все жанры и то количество раз,
которое книги этих жанров были взяты читателями*/
SELECT  g_id,
        g_name,
        COUNT(sb_book) AS books
FROM    genres
        JOIN m2m_books_genres USING(g_id)
        LEFT OUTER JOIN subscriptions
                     ON m2m_books_genres.b_id = sb_book
GROUP BY        g_id,
                g_name
ORDER BY        books DESC 
/*показать самый читаемый жанр, т.е. жанр (или жанры, если их несколько),
относящиеся к которому книги читатели брали чаще всего*/
--вариант 1: на основе функции MAX
WITH    prepared_data
        AS(SELECT       g_id,
                        g_name,
                        COUNT(sb_book) AS books
           FROM         genres
                        JOIN m2m_books_genres USING(g_id)
                        LEFT OUTER JOIN subscriptions
                                     ON m2m_books_genres.b_id = sb_book
           GROUP BY     g_id,
                        g_name)
SELECT  g_id,
        g_name,
        books
FROM    prepared_data
WHERE   books = (SELECT MAX(books)
                 FROM   prepared_data)  
--вариант 2: на основе ранжирования
 WITH prepared_data
        AS(SELECT       g_id,
                        g_name,
                        COUNT(sb_book)                                  AS books,
                        RANK()
                                OVER(
                                        ORDER BY COUNT(sb_book) DESC) AS rank
           FROM         genres
                        JOIN m2m_books_genres USING(g_id)
                        LEFT OUTER JOIN subscriptions
                                     ON m2m_books_genres.b_id = sb_book
           GROUP BY     g_id,
                        g_name)
SELECT  g_id,
        g_name,
        books
FROM prepared_data
WHERE rank = 1 
/*показать среднюю читаемость жанров, т.е. среднее значение от того,
сколько раз читатели брали книги каждого автора*/
SELECT  AVG(books) AS avg_reading
FROM    (SELECT COUNT(sb_book) AS books
         FROM genres
              JOIN m2m_books_genres USING(g_id)
              LEFT OUTER JOIN subscriptions
                           ON m2m_books_genres.b_id = sb_book
         GROUP BY g_id) prepared_data
/*показать медиану читаемости жанров, т.е. медианное значение от того,
сколько раз читатели брали книги каждого жанра*/
WITH popularity
        AS(SELECT COUNT(sb_book) AS books
           FROM genres
                JOIN m2m_books_genres USING(g_id)
                LEFT OUTER JOIN subscriptions
                             ON m2m_books_genres.b_id = sb_book
           GROUP BY g_id)
SELECT MEDIAN(books) AS med_reading FROM popularity 
/*показать авторов, одновременно работавших в двух и более жанрах
(т.е. хотя бы одна книга автора должна одновременно относиться к
двум и более жанрам)*/
SELECT  a_id,
        a_name,
        MAX(genres_count) AS genres_count
FROM    (SELECT a_id,
                a_name,
                COUNT(g_id) AS genres_count
        FROM    authors
                JOIN m2m_books_authors USING(a_id)
                JOIN m2m_books_genres USING(b_id)
        GROUP BY a_id,
                 a_name,
                 b_id
        HAVING COUNT(g_id) > 1) prepared_data
GROUP BY a_id,
         a_name                
/*показать авторов, работавших в двух и более жанрах
(даже если каждая отдельная книга автора относится только к одному жанру)*/
SELECT  a_id,
        a_name,
        COUNT(g_id) AS genres_count
FROM    (SELECT DISTINCT a_id,
                         g_id
        FROM m2m_books_genres
             JOIN m2m_books_authors USING(b_id)
        ) prepared_data
        JOIN authors USING(a_id)
GROUP BY a_id,
         a_name
HAVING COUNT(g_id) > 1
/*переписать решения задач 2.2.8.a{127} и 2.2.8.b{129} 
для MS SQL Server и Oracle с использованием общих табличных выражений*/
WITH T
AS
(
        SELECT  a_id,
        a_name,
        MAX(genres_count) AS genres_count
FROM    (SELECT a_id,
                a_name,
                COUNT(g_id) AS genres_count
        FROM    authors
                JOIN m2m_books_authors USING(a_id)
                JOIN m2m_books_genres USING(b_id)
        GROUP BY a_id,
                 a_name,
                 b_id
        HAVING COUNT(g_id) > 1) prepared_data
GROUP BY a_id,
         a_name 
)
SELECT T.a_id, T.a_name, T.genres_count
FROM T
--
WITH T
AS
(
        SELECT  a_id,
        a_name,
        COUNT(g_id) AS genres_count
FROM    (SELECT DISTINCT a_id,
                         g_id
        FROM m2m_books_genres
             JOIN m2m_books_authors USING(b_id)
        ) prepared_data
        JOIN authors USING(a_id)
GROUP BY a_id,
         a_name
HAVING COUNT(g_id) > 1
)
SELECT T.a_id, T.a_name, T.genres_count
FROM T
/*показать читателей, бравших самые разножанровые книги
(т.е. книги, одновременно относящиеся к максимальному количеству жанров)*/
SELECT  sb_subscriber, s_name,
        MAX(genres_count) AS genres_count
FROM    (SELECT sb_subscriber, s_name,
                COUNT(g_id) AS genres_count
        FROM    subscriptions
                JOIN m2m_books_genres ON m2m_books_genres.b_id = subscriptions.sb_book
                JOIN subscribers ON subscriptions.sb_subscriber = subscribers.s_id
        GROUP BY sb_subscriber, s_name
        HAVING COUNT(g_id) > 1) prepared_data
GROUP BY sb_subscriber, s_name 
/*показать читателей наибольшего количества жанров (не важно, брали ли они книги, каждая из которых относится одновре-менно к многим жанрам, или же просто много книг из разных жанров, 
каждая из которых относится к небольшому количеству жанров)*/
SELECT  sb_subscriber, s_name,
        COUNT(g_id) AS genres_count
FROM    (SELECT DISTINCT sb_subscriber, s_name,
                         g_id
        FROM m2m_books_genres
             JOIN subscriptions on m2m_books_genres.b_id = subscriptions.sb_book
             JOIN subscribers ON subscriptions.sb_subscriber = subscribers.s_id
        ) prepared_data
        JOIN genres USING(g_id)
GROUP BY sb_subscriber, s_name
HAVING COUNT(g_id) > 1
/*показать читателя, первым взявшего в библиотеке книгу*/
--Вариант 1: использование функции MIN
SELECT  s_name
FROM    subscribers
WHERE   s_id = (SELECT  sb_subscriber
                FROM    subscriptions
                WHERE   sb_id = (SELECT MIN(sb_id)
                                 FROM   subscriptions))
--Вариант 2: использование сортировки
SELECT  s_name
FROM    subscribers
WHERE   s_id = (SELECT sb_subscriber
                FROM    (SELECT sb_subscriber,
                                ROW_NUMBER()
                                    OVER(
                                        ORDER BY sb_id ASC) AS rn
                        FROM    subscriptions)
                WHERE   rn = 1)                            
/*показать читателя (или читателей, если их окажется несколько),
быстрее всего прочитавшего книгу (учитывать только случаи,
когда книга возвращена)*/
--Вариант 1: использование подзапроса и сортировки
SELECT DISTINCT s_id,
                s_name,
                (sb_finish - sb_start) AS days
FROM    subscribers
        JOIN subscriptions
          ON s_id = sb_subscriber
WHERE   sb_is_active = 'N'
        AND(sb_finish - sb_start) =
        (SELECT min_days
         FROM   (SELECT(sb_finish - sb_start)           AS min_days,
                        ROW_NUMBER()
                            OVER(
                            ORDER BY(sb_finish - sb_start) ASC) AS rn
                FROM    subscriptions
                WHERE   sb_is_active = 'N')
         WHERE rn = 1) 
--Вариант 2: использование общего табличного выражения и функции MIN
WITH    prepared_data
        AS(SELECT DISTINCT  s_id,
                            s_name,
                            (sb_finish - sb_start) AS days
           FROM     subscribers
                    JOIN    subscriptions
                      ON    s_id = sb_subscriber
           WHERE    sb_is_active = 'N')
SELECT  s_id,
        s_name,
        days
FROM    prepared_data
WHERE   days = (SELECT MIN(days)
                FROM    prepared_data)  
--Вариант 3: использование общего табличного выражения и ранжирования
WITH    prepared_data
        AS(SELECT DISTINCT  s_id,
                            s_name,
                            (sb_finish - sb_start)              AS days,
                            RANK()
                            OVER(
                            ORDER BY(sb_finish - sb_start) ASC) AS rank
           FROM subscribers
                JOIN subscriptions
                  ON s_id = sb_subscriber
           WHERE    sb_is_active = 'N')
SELECT  s_id,
        s_name,
        days
FROM    prepared_data
WHERE   rank = 1        
/*показать, какую книгу (или книги, если их несколько)
каждый читатель взял в первый день своей работы с библиотекой*/
WITH    step_1
        AS(SELECT   sb_subscriber,
                    MIN(sb_start) AS min_date
           FROM     subscriptions
           GROUP BY sb_subscriber),
        step_2
        AS(SELECT   subscriptions.sb_subscriber,
                    subscriptions.sb_book
           FROM     subscriptions
                    JOIN step_1
                      ON subscriptions.sb_subscriber =
                                step_1.sb_subscriber
                         AND subscriptions.sb_start = step_1.min_date),
        step_3
        AS(SELECT   s_id,
                    s_name,
                    b_id,
                    b_name
           FROM     subscribers
                    JOIN step_2
                      ON s_id = sb_subscriber
                    JOIN books
                      ON sb_book = b_id)
SELECT  s_id,
        s_name,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(b_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY b_name)
        )
        AS books_list
FROM    step_3
GROUP BY s_id,
         s_name                              
/*показать первую книгу, которую каждый из читателей взял в библиотеке*/
--Варинат 1: решение в четыре шага без использования ранжирования
WITH    step_1
        AS(SELECT   sb_subscriber,
                    MIN(sb_start) AS min_sb_start
           FROM     subscriptions
           GROUP BY sb_subscriber),
        step_2
        AS(SELECT   subscriptions.sb_subscriber,
                    MIN(sb_id) AS min_sb_id
           FROM     subscriptions
                    JOIN step_1
                      ON subscriptions.sb_subscriber =
                                step_1.sb_subscriber
                         AND subscriptions.sb_start  =
                                step_1.min_sb_start
           GROUP BY subscriptions.sb_subscriber,
                    min_sb_start),
        step_3
        AS(SELECT   subscriptions.sb_subscriber,
                    sb_book
           FROM     subscriptions
                    JOIN step_2
                      ON subscriptions.sb_id = step_2.min_sb_id)
SELECT  s_id,
        s_name,
        b_name
FROM    step_3
        JOIN subscribers
          ON sb_subscriber = s_id
        JOIN books
          ON sb_book = b_id
--Вариант 2: решение в два шага с использованием ранжирования
WITH    step_1
        AS(SELECT   sb_subscriber,
                    sb_start,
                    sb_id,
                    sb_book,
                    ROW_NUMBER()
                        OVER(
                            PARTITION BY sb_subscriber
                            ORDER BY sb_subscriber ASC)
                    AS rank_by_subscriber,
                    ROW_NUMBER()
                        OVER(
                            PARTITION BY sb_subscriber, sb_start
                            ORDER BY sb_subscriber, sb_start ASC)
                    AS rank_by_date
           FROM     subscriptions)
SELECT  s_id,
        s_name,
        b_name
FROM    step_1
        JOIN subscribers
          ON sb_subscriber = s_id
        JOIN books
          ON sb_book = b_id
WHERE   rank_by_subscriber = 1 AND rank_by_date = 1 
--Вариант 3: решение в три шага с использованием ранжирования и группировки
WITH    step_1
        AS(SELECT   sb_subscriber,
                    sb_start,
                    MIN(sb_id)                      AS min_sb_id,
                    RANK()
                        OVER(
                            PARTITION BY sb_subscriber
                            ORDER BY sb_start ASC) AS rank
           FROM     subscriptions
           GROUP BY sb_subscriber,
                    sb_start),
        step_2
        AS(SELECT   subscriptions.sb_subscriber,
                    subscriptions.sb_book
           FROM     subscriptions
                    JOIN step_1 
                      ON subscriptions.sb_id = step_1.min_sb_id
           WHERE rank = 1)
SELECT  s_id,
        s_name,
        b_name
FROM    step_2
        JOIN subscribers
          ON sb_subscriber = s_id
        JOIN books
          ON sb_book = b_id    
/*показать читателя, последним взявшего в библио-теке книгу*/                         
SELECT  s_name
FROM    subscribers
WHERE   s_id = (SELECT sb_subscriber
                FROM    (SELECT sb_subscriber,
                                ROW_NUMBER()
                                    OVER(
                                        ORDER BY sb_id ASC) AS rn
                        FROM    subscriptions)
                WHERE   rn = 11) 
/*показать читателя (или читателей, если их окажется несколько),
дольше всего держащего у себя книгу (учитывать только случаи, 
когда книга не возвращена)*/
SELECT DISTINCT s_id,
                s_name,
                (sb_finish - sb_start) AS days
FROM    subscribers
        JOIN subscriptions
          ON s_id = sb_subscriber
WHERE   sb_is_active = 'N'
        AND(sb_finish - sb_start) =
        (SELECT min_days
         FROM   (SELECT(sb_finish - sb_start)           AS min_days,
                        ROW_NUMBER()
                            OVER(
                            ORDER BY(sb_finish - sb_start) ASC) AS rn
                FROM    subscriptions
                WHERE   sb_is_active = 'N')
         WHERE rn = 4) 
--    
WITH    prepared_data
        AS(SELECT DISTINCT  s_id,
                            s_name,
                            (sb_finish - sb_start) AS days
           FROM     subscribers
                    JOIN    subscriptions
                      ON    s_id = sb_subscriber
           WHERE    sb_is_active = 'N')
SELECT  s_id,
        s_name,
        days
FROM    prepared_data
WHERE   days = (SELECT MAX(days)
                FROM    prepared_data)     
/*показать, какую книгу (или книги, если их несколько)
каждый читатель взял в свой последний визит в библиотеку*/
WITH    step_1
        AS(SELECT   sb_subscriber,
                    MAX(sb_start) AS min_date
           FROM     subscriptions
           GROUP BY sb_subscriber),
        step_2
        AS(SELECT   subscriptions.sb_subscriber,
                    subscriptions.sb_book
           FROM     subscriptions
                    JOIN step_1
                      ON subscriptions.sb_subscriber =
                                step_1.sb_subscriber
                         AND subscriptions.sb_start = step_1.min_date),
        step_3
        AS(SELECT   s_id,
                    s_name,
                    b_id,
                    b_name
           FROM     subscribers
                    JOIN step_2
                      ON s_id = sb_subscriber
                    JOIN books
                      ON sb_book = b_id)
SELECT  s_id,
        s_name,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(b_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY b_name)
        )
        AS books_list
FROM    step_3
GROUP BY s_id,
         s_name  
/*показать последнюю книгу, которую каждый
из читателей взял в библиотеке*/
 WITH    step_1
        AS(SELECT   sb_subscriber,
                    MAX(sb_start) AS min_sb_start
           FROM     subscriptions
           GROUP BY sb_subscriber),
        step_2
        AS(SELECT   subscriptions.sb_subscriber,
                    MAX(sb_id) AS min_sb_id
           FROM     subscriptions
                    JOIN step_1
                      ON subscriptions.sb_subscriber =
                                step_1.sb_subscriber
                         AND subscriptions.sb_start  =
                                step_1.min_sb_start
           GROUP BY subscriptions.sb_subscriber,
                    min_sb_start),
        step_3
        AS(SELECT   subscriptions.sb_subscriber,
                    sb_book
           FROM     subscriptions
                    JOIN step_2
                      ON subscriptions.sb_id = step_2.min_sb_id)
SELECT  s_id,
        s_name,
        b_name
FROM    step_3
        JOIN subscribers
          ON sb_subscriber = s_id
        JOIN books
          ON sb_book = b_id
--создать таблицу rooms
CREATE TABLE rooms
(r_id NUMBER(10) NOT NULL, r_name NVARCHAR2(50), r_space NUMBER(3),
CONSTRAINT PK_rooms PRIMARY KEY(r_id))  
--создать таблицу computers
CREATE TABLE computers
(c_id NUMBER(10) NOT NULL,
 c_room NUMBER(10), 
 c_name NVARCHAR2(50),
 CONSTRAINT PK_computers PRIMARY KEY(c_id),
 CONSTRAINT FK_computers_rooms FOREIGN KEY(c_room) REFERENCES rooms(r_id)
)
--наполняем таблицу rooms данными
INSERT ALL
    INTO rooms (r_id, r_name, r_space) VALUES(1, 'Комната с двумя компьютерами', 5)
    INTO rooms (r_id, r_name, r_space) VALUES(2, 'Комната с тремя компьютерами', 5)
    INTO rooms (r_id, r_name, r_space) VALUES(3, 'Пустая комната 1', 2)
    INTO rooms (r_id, r_name, r_space) VALUES(4, 'Пустая комната 2', 2)
    INTO rooms (r_id, r_name, r_space) VALUES(5, 'Пустая комната 3', 2)
SELECT * FROM dual; 
--наполняем таблицу computers данными
INSERT ALL
    INTO computers (c_id, c_room, c_name) VALUES(1, 1, 'Компьютер A в комнате 1')
    INTO computers (c_id, c_room, c_name) VALUES(2, 1, 'Компьютер B в комнате 1')
    INTO computers (c_id, c_room, c_name) VALUES(3, 2, 'Компьютер A в комнате 2')
    INTO computers (c_id, c_room, c_name) VALUES(4, 2, 'Компьютер B в комнате 2')
    INTO computers (c_id, c_room, c_name) VALUES(5, 2, 'Компьютер C в комнате 2')
    INTO computers (c_id, c_room, c_name) VALUES(6, NULL, 'Свободный компьютер A')
    INTO computers (c_id, c_room, c_name) VALUES(7, NULL, 'Свободный компьютер B')
    INTO computers (c_id, c_room, c_name) VALUES(8, NULL, 'Свободный компьютер C')
SELECT * FROM dual;     
--показать информацию о том, как компьютеры распределены по комнатам;
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        JOIN computers
          ON r_id = c_room        
--показать все комнаты с поставленными в них компьютерами;
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        LEFT JOIN computers
               ON r_id = c_room        
--показать все пустые комнаты;
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        LEFT JOIN computers
               ON r_id = c_room
WHERE   c_room IS NULL                       
--показать все компьютеры с информацией о том, в каких они расположены комнатах;
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        RIGHT JOIN computers
                ON r_id = c_room        
--показать все свободные компьютеры;
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        RIGHT JOIN computers
                ON r_id = c_room
WHERE   r_id iS NULL
--упрощённый вариант
SELECT  c_id,
        c_room,
        c_name
FROM    computers
WHERE   c_room IS NULL                        
--показать всю информацию о том, как компьютеры размещены по комнатам (включая пустые комнаты и свободные компью-теры);
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        FULL JOIN computers
               ON r_id = c_room        
--показать информацию по всем пустым комнатам и свободным компьютерам;
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        FULL JOIN computers
               ON r_id = c_room
WHERE        r_id IS NULL
        OR   c_id IS NULL                       
--показать возможные варианты расстановки компьютеров по комнатам (не учитывать вместимость комнат);
--Вариант 1: без ключевого слова JOIN
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms,
        computers
--Вариант 2: с ключевым словом JOIN
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        CROSS JOIN computers                        
--показать возможные варианты перестановки компьютеров по комнатам (компьютер не должен оказаться в той комнате, в кото-рой он сейчас стоит, не учитывать вместимость комнат).
--Вариант 1: без ключевого слова JOIN
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms,
        computers
WHERE   r_id != c_room
--Вариант 2: с ключевым словом JOIN
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    rooms
        CROSS JOIN computers
WHERE   r_id != c_room                                
--Задачи на «неклассическое объединение»:
--показать возможные варианты расстановки компьютеров по комнатам (учитывать вместимость комнат);
SELECT  r_id,
        r_name,
        r_space,
        c_id,
        c_room,
        c_name
FROM    rooms
        CROSS JOIN(SELECT c_id,
                          c_room,
                          c_name,
                          ROW_NUMBER() OVER(ORDER BY c_name ASC)
                          AS position
                   FROM computers
                   ORDER BY c_name ASC) cross_apply_data
WHERE position <= r_space
ORDER BY r_id,
         c_id                           
--показать возможные варианты расстановки свободных компьютеров по пустым комнатам (не учитывать вместимость ком-нат);
SELECT  r_id,
        r_name,
        c_id,
        c_room,
        c_name
FROM    (SELECT r_id,
                r_name
         FROM   rooms
         WHERE  r_id NOT IN(SELECT DISTINCT c_room
                            FROM   computers
                            WHERE  c_room IS NOT NULL))        
         empty_rooms
         CROSS JOIN computers
WHERE    c_room IS NULL                                     
--показать возможные варианты расстановки свободных компьютеров по пустым комнатам (учитывать вместимость комнат);
SELECT  r_id,
        r_name,
        r_space,
        c_id,
        c_room,
        c_name
FROM    (SELECT r_id,
                r_name,
                r_space
         FROM   rooms
         WHERE  r_id NOT IN(SELECT  c_room
                            FROM    computers
                            WHERE   c_room IS NOT NULL))        
         empty_rooms
         CROSS JOIN(SELECT c_id,
                           c_room,
                           c_name,
                           ROW_NUMBER()
                              OVER(
                                ORDER BY c_name ASC) AS position
                    FROM    computers
                    WHERE   c_room IS NULL
                    ORDER BY c_name ASC)
        cross_apply_data
WHERE   position <= r_space
ORDER BY r_id,
         c_id        
--показать возможные варианты расстановки свободных компьютеров по комнатам (учитывать остаточную вместимость ком-нат);
SELECT  r_id,
        r_name,
        r_space,
        (r_space - NVL(r_used, 0)) AS r_space_left,
        c_id,
        c_name
FROM    rooms
        LEFT JOIN(SELECT c_room    AS c_room_inner,
                         COUNT(c_room) AS r_used
                  FROM   computers
                  GROUP BY c_room)  computers_in_room
               ON r_id = c_room_inner
        CROSS JOIN(SELECT c_id,
                          c_room,
                          c_name,
                          ROW_NUMBER() OVER(ORDER BY c_name ASC)
                          AS position
                   FROM   computers WHERE c_room IS NULL
                   ORDER BY c_name ASC) cross_apply_data
WHERE position <= (r_space - NVL(r_used, 0))
ORDER BY r_id,
         c_id                           
--показать расстановку компьютеров по непустым комнатам так, чтобы в выборку не попало больше компьютеров, чем может по-меститься в комнату;
SELECT  r_id,
        r_name,
        r_space,
        c_id,
        c_room,
        c_name
FROM    rooms
        JOIN(SELECT c_id,
                    c_room,
                    c_name,
                    (CASE
                      WHEN c_room IS NULL THEN 1
                      ELSE ROW_NUMBER()
                            OVER(
                              PARTITION BY c_room
                              ORDER BY c_name ASC)
                     END) AS position
             FROM   computers) cross_apply_data
          ON r_id = c_room
WHERE position <= r_space
ORDER BY r_id,
         c_id          
--показать расстановку компьютеров по всем комнатам так, чтобы в выборку не попало больше компьютеров, 
--чем может поместиться в комнату.
SELECT  r_id,
        r_name,
        r_space,
        c_id,
        c_room,
        c_name
FROM    rooms
        LEFT JOIN(SELECT c_id,
                    c_room,
                    c_name,
                    (CASE
                      WHEN c_room IS NULL THEN 1
                      ELSE ROW_NUMBER()
                              OVER(
                                PARTITION BY c_room
                                ORDER BY c_name ASC)
                     END) AS position
                  FROM computers) cross_apply_data
              ON r_id = c_room
WHERE position <= r_space OR position IS NULL
ORDER BY r_id, c_id  
--показать информацию обо всех читателях и датах выдачи им в библиотеке книг
SELECT s_name, sb_start
FROM   subscribers JOIN subscriptions ON sb_subscriber = s_id
WHERE  sb_is_active = 'N'
--показать информацию о читателях, никогда не бравших в библиотеке книги
SELECT DISTINCT s_id
FROM   subscriptions RIGHT JOIN subscribers ON sb_subscriber = s_id
WHERE  sb_subscriber IS NULL
--показать книги, которые ни разу не были взяты никем из читателей
SELECT DISTINCT b_id
FROM   subscriptions RIGHT JOIN books ON sb_book = b_id
WHERE sb_book IS NULL  
--показать информацию о том, какие книги в принципе может взять в библиотеке каждый из читателей
SELECT b_name
FROM   books JOIN subscriptions ON b_id = sb_book
WHERE  subscriptions.sb_is_active = 'Y'
--показать информацию о том, какие книги (при условии, что он их ещё не брал) каждый из читателей может взять в библиотеке

--показать информацию о том, какие изданные до 2010-го года книги в принципе может взять в библиотеке каждый из читателей

--показать информацию о том, какие изданные до 2010-го года книги (при условии, что он их ещё не брал) может взять в библиотеке каждый из читателей


--добавить в базу данных информацию о том, что читатель с идентификатором
--4 взял 15 января 2016 года в библиотеке книгу с идентификатором 3
--и обещал вернуть их 30 января 2016 года
INSERT INTO     subscriptions
                (sb_id,
                 sb_subscriber,
                 sb_book,
                 sb_start,
                 sb_finish,
                 sb_is_active)
VALUES          (101,
                 4,
                 3,
                 TO_DATE('2016-01-15', 'YYYY-MM-DD'),
                 TO_DATE('2016-01-30', 'YYYY-MM-DD'),
                 'N')
--добавить в базу данных информацию о том, что читатель с идентификатором
--2 взял 25 января 2016 года в библиотеке книги с идентификаторами 1, 3, 5
--и обещал их вернуть 30-го апреля 2016 года
--очень опасное решение!
ALTER TABLE     subscriptions   MODIFY CONSTRAINT       PK_subscriptions        DISABLE;
--Сам запрос на вставку:
INSERT ALL
 INTO   subscriptions
        (sb_id,
         sb_subscriber,
         sb_book,
         sb_start,
         sb_finish,
         sb_is_active)
 VALUES (102,
         2,
         1,
         TO_DATE('2016-01-25', 'YYYY-MM-DD'),
         TO_DATE('2016-04-30', 'YYYY-MM-DD'),
         'N')
 INTO   subscriptions
        (sb_id,
         sb_subscriber,
         sb_book,
         sb_start,
         sb_finish,
         sb_is_active)
 VALUES (103,
         2,
         3,
         TO_DATE('2016-01-25', 'YYYY-MM-DD'),
         TO_DATE('2016-04-30', 'YYYY-MM-DD'),
         'N')
 INTO   subscriptions
        (sb_id,
         sb_subscriber,
         sb_book,
         sb_start,
         sb_finish,
         sb_is_active)
 VALUES (104,
         2,
         5,
         TO_DATE('2016-01-25', 'YYYY-MM-DD'),
         TO_DATE('2016-04-30', 'YYYY-MM-DD'),
         'N')  
SELECT 1 FROM DUAL;
--Включение индекса после его отключения:
ALTER TABLE subscriptions MODIFY CONSTRAINT PK_subscriptions ENABLE;
--Добавить в базу данных информацию о троих новых читателях:
--Орлов О.О., Соколов С.С., Беркутов Б.Б.
INSERT ALL
 INTO subscribers
       (s_id,
        s_name)
 VALUES (5, 'Орлов О.О.')  
 INTO subscribers
       (s_id,
        s_name)
 VALUES (6, 'Соколов С.С.')
 INTO subscribers
       (s_id,
        s_name)
 VALUES (7, 'Беркутов Б.Б.') 
 SELECT * FROM DUAL   
--отразить в базе данных информацию о том, что каждый из добавленных
--в предыдущем задании читателей 20 января 2016 года на месяц взял
--в библиотеке книгу "Курс теоретической физики"
INSERT ALL
 INTO subscriptions
      (sb_id, sb_subscriber,
       sb_book,
       sb_start,
       sb_finish,
       sb_is_active)
 VALUES
      (106, 5, 6, TO_DATE('2016-01-20', 'YYYY-MM-DD'),
             TO_DATE('2016-02-20', 'YYYY-MM-DD'), 'N')
INTO subscriptions
      (sb_id, sb_subscriber,
       sb_book,
       sb_start,
       sb_finish,
       sb_is_active)
 VALUES
      (107, 6, 6, TO_DATE('2016-01-20', 'YYYY-MM-DD'),
             TO_DATE('2016-02-20', 'YYYY-MM-DD'), 'N')
INTO subscriptions
      (sb_id, sb_subscriber,
       sb_book,
       sb_start,
       sb_finish,
       sb_is_active)
 VALUES
      (108, 7, 6, TO_DATE('2016-01-20', 'YYYY-MM-DD'),
             TO_DATE('2016-02-20', 'YYYY-MM-DD'), 'N')   
SELECT * FROM DUAL                                   
--добавить в базу данных пять любых авторов и десять книг этих авторов
--(по две на каждого), если понадобится, добавить в базу данных соответ
--жанры. Определить авторство добавленных книг и их принадлежность к
--соответствующим жанрам
--добавляем авторов
INSERT ALL
INTO authors
(a_id, a_name)
VALUES
(8, 'Н.В. Гоголь')
INTO authors
(a_id, a_name)
VALUES
(9, 'Л.Н. Толстой')
INTO authors
(a_id, a_name)
VALUES
(10, 'М.Ю. Лермонтов')
INTO authors
(a_id, a_name)
VALUES
(11, 'Р. Мартин')
INTO authors
(a_id, a_name)
VALUES
(12, 'Я.И. Перельман')
SELECT * FROM DUAL
--добавляем книги
INSERT ALL
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(8, 'Вечера на хуторе близ Диканьки', 1878, 5)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(9, 'Вий', 1880, 4)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(10, 'Война и мир', 1895, 3)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(11, 'Анна Каренина', 1899, 5)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(12, 'Герой нашего времени', 1840, 6)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(13, 'Мцыри', 1840, 7)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(14, 'Идеальный программист', 2019, 2)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(15, 'Чистый код', 2020, 5)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(16, 'Занимательная физика', 1913, 8)
INTO books
(b_id, b_name, b_year, b_quantity)
VALUES
(17, 'Занимательная механика', 1930, 4)
SELECT * FROM DUAL
--связываем книги и авторов
INSERT ALL
INTO m2m_books_authors
(b_id, a_id)
VALUES
(8, 8)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(9, 8)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(10, 9)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(11, 9)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(12, 10)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(13, 10)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(14, 11)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(15, 11)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(16, 12)
INTO m2m_books_authors
(b_id, a_id)
VALUES
(17, 12)
SELECT * FROM DUAL
--связываем книги и жанры
INSERT ALL
INTO m2m_books_genres
(b_id, g_id)
VALUES
(8, 5)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(9, 6)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(10, 5)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(11, 5)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(12, 1)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(13, 5)
INTO m2m_books_genres
VALUES
(14, 2)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(15, 2)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(16, 4)
INTO m2m_books_genres
(b_id, g_id)
VALUES
(17, 4)
SELECT * FROM DUAL
--у выдачи с идентификатором 99 изменить дату возврата на текущую
--и отметить, что книга возвращена
--вариант 1: прямая подстановка текущей даты в запрос
UPDATE subscriptions
SET    sb_finish = TO_DATE('2016-01-06', 'YYYY-MM-DD'),
       sb_is_active = 'N'
WHERE  sb_id = 99
--вариант 2: получение текущей даты на стороне СУБД
UPDATE subscriptions
SET    sb_finish = TRUNC(SYSDATE),
       sb_is_active = 'N'
WHERE  sb_id = 99              
--изменить ожидаемую дату возврата для всех книг, которые читатель
--с идентификатором 2 взял в библиотеке 25-го января 2016-го года
--на "плюс два месяца" (т.е. читатель будет читать их на два месяца
--дольше, чем планировал)
UPDATE subscriptions
SET    sb_finish = ADD_MONTHS(sb_finish, 2)
WHERE  sb_subscriber = 2
       AND sb_start = TO_DATE('2016-01-25', 'YYYY-MM-DD')
--отметить все выдачи с идентификаторами ≤50 как возвращённые
UPDATE subscriptions
SET    sb_is_active = 'Y'
WHERE  sb_id < 50 OR sb_id = 50
--для всех выдач, произведённых до 1-го января 2012-го года
--уменьшить значение дня выдачи на 3

--отметить как невозвращённые все выдачи
--полученные читателем с идентификатором 2  

--удалить информацию о том, что читатель с идентификатором 4
--взял 15-го января 2016-го года в библиотеке книгу с идентификатором 3
DELETE FROM subscriptions
WHERE   sb_subscriber = 4
        AND sb_start = TO_DATE('2016-01-15', 'YYYY-MM-DD')
        AND sb_book = 3
--удалить информацию обо всех посещениях библиотеки читателем с идентификатором 3 по воскресеньям
DELETE FROM     subscriptions
WHERE           sb_subscriber = 3
                AND TO_CHAR(sb_start, 'D') = 1
--удалить информацию обо всех выдачах читателям книги с идентификатором 1
DELETE  FROM    subscriptions
WHERE   sb_book = 1
--удалить все книги, относящиеся к жанру «Классика»
DELETE FROM books
WHERE EXISTS
(
SELECT  b_id,
        b_name
FROM    books
WHERE   b_id IN(SELECT  DISTINCT b_id
                FROM    m2m_books_genres
                WHERE   g_id IN(5)) 
)
--удалить информацию обо всех выдачах книг, произведённых после 19-го числа любого месяца любого года
DELETE FROM     subscriptions
WHERE           TO_CHAR(sb_start, 'DD') > 19
--добавить в базу данных жанры «Философия», «Детектив», «Классика»
MERGE INTO genres
USING(SELECT
      (7) AS g_id,
      (N'Философия') AS g_name
      FROM dual
      UNION
      SELECT
      (8) AS g_id,
      (N'Детектив') AS g_name
      FROM dual
      UNION
      SELECT
      (9) AS g_id,
      (N'Классика') AS g_name
      FROM dual) new_genres
ON(genres.g_name = new_genres.g_name)
WHEN NOT MATCHED THEN
    INSERT(g_id, g_name)
    VALUES(new_genres.g_id, new_genres.g_name)
--скопировать (без повторений) в базу данных «Библио-тека» содержимое
--таблицы genres из базы данных «Большая библио-тека»;
--в случае совпадения первичных ключей добавить к существую-щему имени жанра слово «[OLD]»
-- Отключение триггера, обеспечивающего автоинкремент первичного ключа:
ALTER TRIGGER "library"."TRG_genres_g_id" DISABLE;
-- Слияние данных:
MERGE INTO "library"."genres" "destination" 
USING "hude_library"."genres" "source" 
ON ("destination"."g_id" = "source"."g_id") 
WHEN MATCHED THEN 
UPDATE SET "destination"."g_name" = CONCAT("destination"."g_name", N' [OLD]') 
WHEN NOT MATCHED THEN 
INSERT ("g_id", "g_name") 
VALUES ("source"."g_id", "source"."g_name"); 
-- Включение триггера, обеспечивающего автоинкремент первичного ключа: 
ALTER TRIGGER "library"."TRG_genres_g_id" ENABLE;
--добавить в базу данных жанры «Политика», «Психология», «История»
MERGE INTO genres
USING(SELECT
      (10) AS g_id,
      (N'Политика') AS g_name
      FROM dual
      UNION
      SELECT
      (11) AS g_id,
      (N'Психология') AS g_name
      FROM dual
      UNION
      SELECT
      (12) AS g_id,
      (N'История') AS g_name
      FROM dual) new_genres
ON(genres.g_name = new_genres.g_name)
WHEN NOT MATCHED THEN
    INSERT(g_id, g_name)
    VALUES(new_genres.g_id, new_genres.g_name)
--скопировать (без повторений) в базу данных «Библиотека» 
--содержимое таблицы subscribers из базы данных «Большая библиотека»; 
--в случае совпадения первичных ключей добавить к 
--существующему имени читателя слово « [OLD]»
ALTER TRIGGER "library"."TRG_genres_g_id" DISABLE;
-- Слияние данных:
MERGE INTO "library"."subscriptions" "destination" 
USING "hude_library"."subscriptions" "source" 
ON ("destination"."s_id" = "source"."s_id") 
WHEN MATCHED THEN 
UPDATE SET "destination"."sb_subscriber" = CONCAT("destination"."sb_subscriber", N' [OLD]') 
WHEN NOT MATCHED THEN 
INSERT ("sb_subscriber", "sb_book", "sb_start", "sb_finish", "sb_is_active") 
VALUES ("source"."sb_subscriber", "source"."sb_book", "source"."sb_start", "source"."sb_finish", "source"."sb_is_active"); 
-- Включение триггера, обеспечивающего автоинкремент первичного ключа: 
ALTER TRIGGER "library"."TRG_genres_g_id" ENABLE;
--добавить в базу данных информацию о том, что чита-тель с идентификатором 
--4 взял в библиотеке книги с идентификаторами 2 и 3 1 февраля 2015-го года, 
--и планировал вернуть их не позднее 20-го июля 2015-го года; 
--если текущая дата меньше 20-го июля 2015-го года, 
--отметить выдачи как невозвращённые, если больше — как возвращён-ные
INSERT ALL
        INTO subscriptions
             (
              sb_id,
              sb_subscriber,
              sb_book,
              sb_start,
              sb_finish,
              sb_is_active
             )
             VALUES
             (
              101,
              4,
              2,
              TO_DATE('2015-02-01', 'YYYY-MM-DD'),
              TO_DATE('2015-07-20', 'YYYY-MM-DD'),
              CASE
                WHEN TRUNC(SYSDATE) < TO_DATE('2015-07-20', 'YYYY-MM-DD')
                THEN (SELECT 'N' FROM DUAL)
                ELSE (SELECT 'Y' FROM DUAL)
              END
             )
        INTO subscriptions
             (
              sb_id,
              sb_subscriber,
              sb_book,
              sb_start,
              sb_finish,
              sb_is_active
             )
             VALUES
             (
              102,
              4,
              3,
              TO_DATE('2015-02-01', 'YYYY-MM-DD'),
              TO_DATE('2015-07-20', 'YYYY-MM-DD'),
              CASE
                WHEN TRUNC(SYSDATE) < TO_DATE('2015-07-20', 'YYYY-MM-DD')
                THEN (SELECT 'N' FROM DUAL)
                ELSE (SELECT 'Y' FROM DUAL)
              END
             )
SELECT 1 FROM DUAL;        
--изменить даты возврата всех книг на «два месяца от текущего дня», 
--если книга не возвращена и у соответствующего читателя сейчас 
--на руках больше двух книг, и на «месяц от текущего дня» в про-тивном случае 
--(книга возвращена или у соответствующего читателя на руках сейчас не более двух книг)
UPDATE  subscriptions
SET     sb_finish = CASE
                        WHEN sb_is_active = 'Y'
                        AND EXISTS (SELECT int.sb_subscriber
                                    FROM   subscriptions int
                                    WHERE  int.sb_is_active = 'Y'
                                      AND  int.sb_subscriber = subscriptions.sb_subscriber
                                    GROUP BY int.sb_subscriber
                                    HAVING COUNT(int.sb_book) > 2)
                        THEN (SELECT ADD_MONTHS(sb_finish, 2) FROM DUAL)
                        ELSE (SELECT ADD_MONTHS(sb_finish, 1) FROM DUAL)
                    END
--обновить все имена читателей, добавив в конец в квад-ратных скобках количество 
--невозвращённых книг (например, « [3]») и слова « [RED]», « [YELLOW]», « [GREEN]», 
--соответственно, если у чита-теля сейчас на руках более пяти книг, от трёх до пяти, менее трёх
UPDATE subscribers 
SET s_name = 
(SELECT 
CASE 
WHEN x > 5 
THEN (SELECT s_name || ' [' || x || '] [RED]' FROM DUAL) 
WHEN x >= 3 AND x <= 5 
THEN (SELECT s_name || ' [' || x || '] [YELLOW]' FROM DUAL) 
ELSE 
(SELECT s_name || ' [' || x || '] [GREEN]' FROM DUAL) 
END 
FROM 
(SELECT s_id, COUNT(sb_subscriber) AS x 
FROM subscribers LEFT JOIN 
(SELECT sb_subscriber FROM subscriptions
WHERE sb_is_active = 'Y') ON s_id = sb_subscriber 
GROUP BY s_id) prepared_data 
WHERE subscribers.s_id = prepared_data.s_id)
--добавить в базу данных читателей с именами «Си-доров С.С.», 
--«Иванов И.И.», «Орлов О.О.»; если читатель с таким именем уже существует, 
--добавить в конец имени нового читателя порядковый но-мер в квадратных скобках 
--(например, если при добавлении читателя «Си-доров С.С.» выяснится, 
--что в базе данных уже есть четыре таких чита-теля, 
--имя добавляемого должно превратиться в «Сидоров С.С. [5]»)

--обновить все имена авторов, добавив в конец имени « [+]», 
--если в библиотеке есть более трёх книг этого автора,
--или добавив в конец имени « [-]» в противном случае
update authors
set a_name =
(select case
when x > 5
then (select a_name || ' [+]' FROM dual)
else
(select a_name || ' [-]' from dual)
end
from
(
select a_name, SUM(b_quantity) as x
from books join m2m_books_authors using(b_id) join authors using(a_id)
group by a_name
) prepared_data
where authors.a_name = prepared_data.a_name)
--упростить использование решения задачи 2.2.9.d{132} так, 
--чтобы для получения нужных данных не приходилось 
--использовать представленные в решении{140} объёмные запросы
CREATE OR REPLACE VIEW first_book AS
WITH step_1
    AS(SELECT sb_subscriber,
              MIN(sb_start) AS min_sb_start
       FROM   subscriptions
       GROUP BY sb_subscriber),
     step_2
     AS(SELECT subscriptions.sb_subscriber,
               MIN(sb_id) AS min_sb_id
        FROM   subscriptions
               JOIN step_1
                 ON subscriptions.sb_subscriber =
                           step_1.sb_subscriber
                   AND subscriptions.sb_start =
                           step_1.min_sb_start
        GROUP BY subscriptions.sb_subscriber,
                 min_sb_start),
     step_3
     AS(SELECT subscriptions.sb_subscriber,
               sb_book
        FROM   subscriptions
               JOIN step_2
                 ON subscriptions.sb_id = step_2.min_sb_id)
SELECT s_id,
       s_name,
       b_name
FROM   step_3
       JOIN subscribers
         ON sb_subscriber = s_id
       JOIN books
         ON sb_book = b_id
--создать представление, позволяющее получать список авторов 
--и количество имеющихся в библиотеке книг по каждому автору, 
--но отображающее только таких авторов, по которым имеется более од-ной книги
CREATE OR REPLACE VIEW authors_w_more_than_one_book
AS
    SELECT a_id,
           a_name,
           COUNT(b_id) AS books_in_library
    FROM   authors
           JOIN m2m_books_authors USING(a_id)
    GROUP BY a_id, a_name
    HAVING COUNT(b_id) > 1
--создать представление, позволяющее получать список читателей с количеством 
--находящихся у каждого читателя на ру-ках книг, но отображающее 
--только таких читателей, по которым имеются задолженности, 
--т.е. на руках у читателя есть хотя бы одна книга, 
--которую он должен был вернуть до наступления текущей даты
CREATE OR REPLACE VIEW books_on_subscribers_heads_off_time
AS
SELECT sb_subscriber, s_name, COUNT(sb_id) AS books_count
FROM subscriptions JOIN subscribers ON subscriptions.sb_subscriber = subscribers.s_id
WHERE sb_finish < CURRENT_DATE AND sb_is_active = 'Y'
GROUP BY sb_subscriber, s_name
--ВЫБОРКА ДАННЫХ С ИСПОЛЬЗОВАНИЕ КЭШИРУЮЩИХ ПРЕДСТАВЛЕНИЙ И ТАБЛИЦ
--создать представление, ускоряющее получение ин-формации о 
--количестве экземпляров книг: имеющихся в библиотеке, 
--вы-данных на руки, оставшихся в библиотеке
--Удаление старой версии материализованного представления
--удобно при разработке и отладке
DROP MATERIALIZED VIEW books_statistics;
--создание материализованного представления:
CREATE MATERIALIZED VIEW books_statistics
BUILD IMMEDIATE
REFRESH FORCE
START WITH(SYSDATE) NEXT(SYSDATE + 1/1440)  
AS
    SELECT total,
           given,
           total - given AS rest
    FROM   (SELECT SUM(b_quantity) AS total
            FROM books)
            JOIN (SELECT COUNT(sb_book) AS given
                  FROM  subscriptions
                  WHERE sb_is_active = 'Y')
              ON 1 = 1
--проверка работы представления
INSERT ALL
  INTO books(b_id, b_name,
             b_quantity,
             b_year)
      VALUES(10, N'Новая книга 1',
             5,
             2001)
  INTO books(b_id, b_name,
             b_quantity,
             b_year)
      VALUES(11, N'Новая книга 2',
             10,
             2002)
SELECT 1 FROM DUAL;
COMMIT; -- подождать 1 минуту 
--увеличим на 5 единиц количество экземпляров книги, которой сейчас
--в библиотеке зарегистрировано 10 экземпляров
UPDATE books
SET    b_quantity = b_quantity + 5
WHERE  b_quantity = 10;
COMMIT; -- подождать 1 минуту   
--удалим книгу, оба экземпляра которой сейчас находится на руках
--у читателей (книга с идентификатором 1)   
DELETE FROM books
WHERE  b_id = 1;
COMMIT; -- подождать 1 минуту      
--отметим, что по выдаче с идентификатором 3 книга возвращена
UPDATE subscriptions
SET    sb_is_active = 'N'
WHERE  sb_id = 3;
COMMIT; -- подождать 1 минуту  
--отменим эту операцию (снова отметим книгу как невозвращённую)
UPDATE subscriptions
SET    sb_is_active = 'Y'
WHERE  sb_id = 3;
COMMIT; -- подождать 1 минуту     
--добавим в базу данных информацию о том, что читатель с идентификатором
--2 взял в библиотеке книги с идентификаторами 5 и 6
INSERT ALL
  INTO subscriptions(sb_subscriber,
                     sb_book,
                     sb_start,
                     sb_finish,
                     sb_is_active)
              VALUES(2,
                     5,
                     TO_DATE('2016-01-10', 'YYYY-MM-DD'),
                     TO_DATE('2016-02-10', 'YYYY-MM-DD'),
                     'Y')
  INTO subscriptions(sb_subscriber,
                     sb_book,
                     sb_start,
                     sb_finish,
                     sb_is_active) 
              VALUES(2,
                     6,
                     TO_DATE('2016-01-10', 'YYYY-MM-DD'),
                     TO_DATE('2016-02-10', 'YYYY-MM-DD').
                     'Y')
SELECT 1 FROM DUAL;
COMMIT; --подождать 1 минуту  
--удалим информацию о выдаче с идентификатором 42
--книга по этой выдаче уже возвращена 
DELETE FROM subscriptions
WHERE sb_id = 42;
COMMIT; -- подождать 1 минуту    
--удалим информацию о выдаче с идентификатором 62
--книга по этой выдаче еще не возвращена 
DELETE FROM subscriptions
WHERE sb_id = 62;
COMMIT; -- подождать 1 минуту  
--удалить все книги, что приведёт к каскадному удалению всех выдач
DELETE FROM books;
COMMIT; -- подождать 1 минуту                                                     
--создать представление, ускоряющее получение всей информации 
--из таблицы subscriptions в человекочитаемом виде 
--(где идентификаторы читателей и книг заменены на имена и названия)
--удаление старой версии материализованного представления
--удобно при разработке и отладке
DROP MATERIALIZED VIEW subscriptions_ready;
--создание материализованного представления:
CREATE MATERIALIZED VIEW subscriptions_ready
BUILD IMMEDIATE
REFRESH FORCE
START WITH(SYSDATE) NEXT(SYSDATE + 1/1440)
AS
  SELECT sb_id,
         s_name AS sb_subscriber,
         b_name AS sb_book,
         sb_start,
         sb_finish,
         sb_is_active
  FROM   books
         JOIN subscriptions
           ON b_id = sb_book
         JOIN subscribers
           ON sb_subscriber = s_id;
--создать кеширующее представление, позволяющее
--получать список всех книг, их авторов и жанров
--три колонки: первая - название книги, вторая - авторы, через запятую
--третья - жанры, через запятую           
CREATE MATERIALIZED VIEW books_info
BUILD IMMEDIATE
REFRESH FORCE
START WITH(SYSDATE) NEXT(SYSDATE + 1/1440)
AS
SELECT  book, authors,
        UTL_RAW.CAST_TO_NVARCHAR2
        (
            LISTAGG
            (
                UTL_RAW.CAST_TO_RAW(g_name),
                UTL_RAW.CAST_TO_RAW(N', ')
            )
            WITHIN GROUP(ORDER BY g_name)
        )
        AS genres
FROM
(
        SELECT  b_id, b_name AS book,
                UTL_RAW.CAST_TO_NVARCHAR2
                (
                    LISTAGG
                    (
                        UTL_RAW.CAST_TO_RAW(a_name),
                        UTL_RAW.CAST_TO_RAW(N', ')
                    )
                    WITHIN GROUP(ORDER BY a_name)
                )
                AS authors
        FROM books
        JOIN m2m_books_authors USING(b_id)
        JOIN authors USING(a_id)
        GROUP BY b_id,
                 b_name
) first_level
JOIN m2m_books_genres USING(b_id)
JOIN genres USING(g_id)
GROUP BY b_id, book, authors
--использование представлений для сокрытия значений и структур данных
--создать представление, через которое невозможно 
--получить информацию о том, какой конкретно читатель взял ту или иную книгу
CREATE VIEW subscriptions_anonymous
AS
    SELECT  sb_id,
            sb_book,
            sb_start,
            sb_finish,
            sb_is_active
    FROM    subscriptions
--создать представление, возвращающее всю информацию 
--из таблицы subscriptions, преобразуя даты из 
--полей sb_start и sb_finish в формат UNIXTIME
CREATE VIEW subscriptions_unixtime
AS 
    SELECT  sb_id,
            sb_subscriber,
            sb_book,
            ((sb_start - TO_DATE('01-01-1970', 'DD-MM-YYYY')) * 86400)
            AS sb_start,
            ((sb_finish - TO_DATE('01-01-1970', 'DD-MM-YYYY')) * 86400)
            AS sb_finish,
            sb_is_active
    FROM    subscriptions
--создать представление, через которое невозможно получить информацию 
--о том, какая конкретно книга была выдана читателю в любой из выдач
CREATE VIEW books_anonymous
AS
    SELECT  sb_id,
            sb_subscriber,
            sb_start,
            sb_finish,
            sb_is_active
    FROM    subscriptions
--создать представление, возвращающее всю информацию из таблицы 
--subscriptions, преобразуя даты из полей sb_start и sb_finish 
--в формат «ГГГГ-ММ-ДД НН», где «НН» — день недели в виде своего 
--полного названия (т.е. «Понедельник», «Вторник» и т.д.)

--МОДИФИКАЦИИ ДАННЫХ С ИСПОЛЬЗОВАНИЕМ ПРЕДСТАВЛЕНИЙ
--создать представление, извлекающее информацию о читателях, 
--переводя весь текст в верхний регистр и 
--при этом допускающее модификацию списка читателей  
CREATE VIEW subscribers_upper_case
AS
    SELECT  s_id,
            UPPER(s_name) AS s_name
    FROM    subscribers
--создание триггера для реализации операции вставки
CREATE OR REPLACE TRIGGER subscribers_upper_case_ins
INSTEAD OF INSERT ON subscribers_upper_case
FOR EACH ROW
    BEGIN
        INSERT INTO subscribers
                    (s_id,
                     s_name)
        VALUES      (:new.s_id,
                     :new.s_name);
    END;
--создание триггера для реализации операции обновления
CREATE OR REPLACE TRIGGER subscribers_upper_case_upd
INSTEAD OF UPDATE ON subscribers_upper_case
FOR EACH ROW
    BEGIN
        UPDATE subscribers
        SET    s_id = :new.s_id,
               s_name = :new.s_name
        WHERE  s_id = :old.s_id;
    END;
--проверка работоспособности модификации данных
INSERT ALL
    INTO subscribers(s_id, s_name) VALUES(10, N'Соколов С.С.')    
    INTO subscribers(s_id, s_name) VALUES(11, N'Беркутов Б.Б.')
    INTO subscribers(s_id, s_name) VALUES(12, N'Филинов Ф.Ф.')
SELECT 1 FROM DUAL;
UPDATE  subscribers_upper_case
SET     s_name = N'Синицын З.З.'
WHERE   s_id = 6;
--такой запрос НЕ НАЙДЁТ искомое, т.к. имя должно быть в верхнем регистре:
UPDATE  subscribers_upper_case
SET     s_name = N'Синцын С.С.'
WHERE   s_name = N'Синицын З.З.';
--А такой запрос найдёт искомое:
UPDATE  subscribers_upper_case
SET     s_name = N'Синцын С.С.'
WHERE   s_name = N'СИНИЦЫН З.З.';

DELETE FROM subscribers_upper_case
WHERE  s_id = 6; 
--Такой запрос НЕ НАЙДЕТ искомое, т.к. имя должно быть в верхнем регистре:
DELETE FROM subscribers_upper_case
WHERE  s_name = N'Филинов Ф.Ф.';
--А такой запрос найдёт искомое:
DELETE FROM subscribers_upper_case
WHERE  s_name = N'ФИЛИНОВ Ф.Ф.';

DELETE FROM subscribers_upper_case
WHERE  s_id > 4;
--создать представление, извлекающее информацию о датах выдачи 
--и возврата книг в виде единой строки и при этом 
--допускающее обновление информации в таблице subscriptions
CREATE VIEW subscriptions_wcd
AS
    SELECT sb_id,
           sb_subscriber,
           sb_book,
           TO_CHAR(sb_start, 'YYYY-MM-DD') || ' - ' ||
           TO_CHAR(sb_finish, 'YYYY-MM-DD') AS sb_dates,
           sb_is_active
    FROM   subscriptions
--создание триггера для реализации операции вставки
CREATE OR REPLACE TRIGGER subscriptions_wcd_ins
    INSTEAD OF INSERT ON subscriptions_wcd
    FOR EACH ROW
        BEGIN
            INSERT INTO subscriptions
                        (sb_id,
                         sb_subscriber,
                         sb_book,
                         sb_start,
                         sb_finish,
                         sb_is_active)    
            VALUES      (:new.sb_id,
                         :new.sb_subscriber,
                         :new.sb_book,
                         TO_DATE(SUBSTR(:new.sb_dates, 1,
                                (INSTR(:new.sb_dates, ' ') - 1)), 'YYYY-MM-DD'),
                        TO_DATE(SUBSTR(:new.sb_dates,
                                (INSTR(:new.sb_dates, ' ') + 3)), 'YYYY-MM-DD'),
                        :new.sb_is_active);
            END;
--создание триггера для реализации операции обновления
CREATE OR REPLACE TRIGGER subscriptions_wcd_ins
INSTEAD OF UPDATE ON subscriptions_wcd
FOR EACH ROW
    BEGIN
        UPDATE  subscriptions
        SET     sb_id = :new.sb_id,
                sb_subscriber = :new.sb_subscriber,
                sb_book = :new.sb_book,
                sb_start = TO_DATE(SUBSTR(:new.sb_dates, 1,
                                  (INSTR(:new.sb_dates, ' ') - 1)),
                                  'YYYY-MM-DD'),
                sb_finish = TO_DATE(SUBSTR(:new.sb_dates,
                                   (INSTR(:new.sb_dates, ' ') + 3)),
                                   'YYYY-MM-DD'),
                sb_is_active = :new.sb_is_active
        WHERE   sb_id = :old.sb_id;
    END;       
--проверка работоспособности модификации данных
INSERT INTO subscriptions_wcd
            (sb_subscriber,
             sb_book,
             sb_dates,
             sb_is_active)                         
VALUES      (1,
             3,
             '2019-01-12 - 2019-02-12',
             'N');

UPDATE      subscriptions_wcd
SET         sb_dates = '2019-01-12 - 2019-02-12'
WHERE       sb_id = 100;

DELETE      FROM subscriptions_wcd
WHERE       sb_id = 100;

DELETE      FROM subscriptions_wcd
WHERE       sb_dates = '2012-05-17 - 2012-07-17';
--создать представление, извлекающее информацию 
--о книгах, переводя весь текст в верхний регистр 
--и при этом допускающее модификацию списка книг
CREATE VIEW books_upper_case
AS
    SELECT  b_id,
            UPPER(b_name) AS b_name
    FROM    books
--создать представление, извлекающее информацию о 
--датах выдачи и возврата книг и состоянии выдачи 
--книги в виде единой строки в формате «ГГГГ-ММ-ДД - ГГГГ-ММ-ДД - Возвращена» 
--и при этом допускающее обновление информации в таблице subscriptions
CREATE VIEW subscriptions_return
AS
    SELECT sb_id,
           sb_subscriber,
           sb_book,
           TO_CHAR(sb_start, 'YYYY-MM-DD') || ' - ' ||
           TO_CHAR(sb_finish, 'YYYY-MM-DD') || ' - ' ||  TO_CHAR(sb_is_active) AS sb_dates
    FROM   subscriptions
--представление, выводящее список книг и подписчиков в читаемом виде
CREATE VIEW subscriptions_with_text
AS SELECT 
sb_id, 
s_name AS sb_subscriber, 
b_name AS sb_book,
sb_start, 
sb_finish, 
sb_is_active 
FROM subscriptions JOIN subscribers ON sb_subscriber = s_id JOIN books ON sb_book = b_id    
--представление, выводящее список книг и их жанры через запятую
CREATE VIEW books_with_genres
AS SELECT b_id, 
b_name, 
UTL_RAW.CAST_TO_NVARCHAR2 ( LISTAGG ( UTL_RAW.CAST_TO_RAW(g_name), 
UTL_RAW.CAST_TO_RAW(N',') ) WITHIN GROUP (ORDER BY g_name) ) 
AS genres
FROM books
JOIN m2m_books_genres
USING (b_id) 
JOIN genres
USING (g_id) 
GROUP BY b_id, 
b_name
--создать представление, извлекающее из таблицы m2m_books_authors 
--человекочитаемую (с названиями книг и именами авторов вместо идентификаторов) 
--информацию, и при этом позволяю-щее модифицировать данные в 
--таблице m2m_books_authors (в случае неуникальности названий книг 
--и имён авторов в обоих случаях использо-вать запись 
--с минимальным значением первичного ключа)
CREATE VIEW books_authors
AS
SELECT
books.b_name, authors.a_name
from books join m2m_books_authors on books.b_id = m2m_books_authors.b_id
join authors on m2m_books_authors.a_id = authors.a_id
--создать представление, показывающее список книг с их 
--авторами, и при этом позволяющее добавлять новых авторов
CREATE VIEW books_authors
AS
SELECT
books.b_name, authors.a_name
from books join m2m_books_authors on books.b_id = m2m_books_authors.b_id
join authors on m2m_books_authors.a_id = authors.a_id
--модифицировать схему базы данных «Библиотека» таким образом,
--чтобы таблица subscribers хранила актуальную информацию
--о дате последнего визита читателя в библиотеку
--модификация таблицы:
ALTER TABLE subscribers
    ADD(s_last_visit DATE DEFAULT NULL NULL);
--инициализация данных:
UPDATE subscribers outer
SET    s_last_visit =
       (
        SELECT      last_visit
        FROM        subscribers
        LEFT JOIN  (SELECT      sb_subscriber,
                                MAX(sb_start) AS last_visit
                    FROM        subscriptions
                    GROUP BY    sb_subscriber) prepared_data
        ON          s_id = sb_subscriber
        WHERE   outer.s_id = sb_subscriber
       );
--создание триггеров
CREATE TRIGGER  last_visit_on_scs_ins_upd_del
AFTER INSERT OR UPDATE OR DELETE
ON subscriptions
BEGIN
    UPDATE subscribers outer
    SET    s_last_visit =
          (
           SELECT       last_visit
           FROM         subscribers
           LEFT JOIN   (SELECT  sb_subscriber,
                                MAX(sb_start) AS last_visit
                        FROM    subscriptions
                        GROUP BY sb_subscriber) prepared_data
           ON           s_id = sb_subscriber
           WHERE outer.s_id = sb_subscriber
          );
END;
--запросы для проверки работоспособности
--Добавление выдачи книги читателю с идентификатором 2
--ранее он никогда не был в библиотеке
INSERT INTO subscriptions
            (sb_id,
             sb_subscriber,
             sb_book,
             sb_start,
             sb_finish,
             sb_is_active)
VALUES      (200,
             2,
             1,
             TO_DATE('2019-01-12', 'YYYY-MM-DD'),
             TO_DATE('2019-02-12', 'YYYY-MM-DD'),
             'N');
--изменение идентификатора читателя в только что
--добавленной выдаче с 2 на 1:
UPDATE  subscriptions
SET     sb_subscriber = 1
WHERE   sb_id = 200;     
--ещё одна выдача книги Петрову П.П.
--идентификатор читателя = 2
INSERT INTO subscriptions
            (sb_id,
             sb_subscriber,
             sb_book,
             sb_start,
             sb_finish,
             sb_is_active)
VALUES      (201,
             2,
             1,
             TO_DATE('2020-01-12', 'YYYY-MM-DD'),
             TO_DATE('2020-02-12', 'YYYY-MM-DD'),
             'N');  
--изменение значения даты ранее откорректированной
--выдачи книги (которую переписали с Петрова П.П.
--на Иванова И.И.)
UPDATE  subscriptions
SET     sb_start = TO_DATE('2018-01-12', 'YYYY-MM-DD')
WHERE   sb_id = 200;
--удаление это откорректированной выдачи:
DELETE  FROM subscriptions
WHERE   sb_id = 200;
--удаление единственной выдачи Петрову П.П.
DELETE  FROM subscriptions
WHERE   sb_id = 201; 
ALTER TRIGGER TRG_subscriptions_sb_id ENABLE;                           
--создать кэширующую таблицу averages, содержащую в любой момент времени следующую актуальную информацию:
--а) сколько в среднем книг находится на руках у читателя;
--б) за сколько в среднем по времени (в днях) читатель прочитывает книгу;
--в) сколько в среднем книг прочитал читатель
