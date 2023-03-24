CREATE TABLE user
(
    `id`        BIGINT          NOT NULL    AUTO_INCREMENT,
    `username`  VARCHAR(100)    NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE post_1m
(
    `id`               BIGINT          NOT NULL    AUTO_INCREMENT,
    `user_id`          BIGINT          NOT NULL,
    `category`         VARCHAR(20)     NOT NULL,
    `title`            VARCHAR(255)    NOT NULL,
    `content`          LONGTEXT        NOT NULL,
    `created_at`       TIMESTAMP       NOT NULL,
    `updated_at`       TIMESTAMP       NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE post_5m
(
    `id`               BIGINT          NOT NULL    AUTO_INCREMENT,
    `user_id`          BIGINT          NOT NULL,
    `category`         VARCHAR(20)     NOT NULL,
    `title`            VARCHAR(255)    NOT NULL,
    `content`          LONGTEXT        NOT NULL,
    `created_at`       TIMESTAMP       NOT NULL,
    `updated_at`       TIMESTAMP       NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user (id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

INSERT INTO user (username) VALUES ('username 0001');
INSERT INTO user (username) VALUES ('username 0002');
INSERT INTO user (username) VALUES ('username 0003');
INSERT INTO user (username) VALUES ('username 0004');
INSERT INTO user (username) VALUES ('username 0005');
INSERT INTO user (username) VALUES ('username 0006');
INSERT INTO user (username) VALUES ('username 0007');
INSERT INTO user (username) VALUES ('username 0008');
INSERT INTO user (username) VALUES ('username 0009');
INSERT INTO user (username) VALUES ('username 0010');
INSERT INTO user (username) VALUES ('username 0011');
INSERT INTO user (username) VALUES ('username 0012');


DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsertOnPost1M$$

CREATE PROCEDURE loopInsertOnPost1M()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 10000 DO
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (1, 'TECH', 'Health Coach I', 'Duis mattis egestas metus.', '2022-03-25 09:52:56', '2022-03-25 09:52:56');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'MED_HEALTH', 'Administrative Officer', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2022-05-21 21:42:36', '2022-05-21 21:42:36');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Occupational Therapist', 'In hac habitasse platea dictumst.', '2022-12-07 21:46:23', '2022-12-07 21:46:23');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'BUSINESS', 'Safety Technician IV', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', '2023-02-01 12:20:42', '2023-02-01 12:20:42');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'FREE_THREAD', 'Recruiting Manager', 'Curabitur in libero ut massa volutpat convallis.', '2022-11-16 11:22:23', '2022-11-16 11:22:23');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'MED_HEALTH', 'Research Associate', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', '2022-10-20 09:55:19', '2022-10-20 09:55:19');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (1, 'SOCIAL_SCIENCES', 'Legal Assistant', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', '2023-02-16 23:33:04', '2023-02-16 23:33:04');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'BUSINESS', 'Desktop Support Technician', 'Vivamus tortor. Duis mattis egestas metus.', '2022-03-06 00:50:38', '2022-03-06 00:50:38');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (2, 'WORRIES_HUGS', 'Recruiter', 'Morbi non quam nec dui luctus rutrum.', '2023-02-26 05:09:24', '2023-02-26 05:09:24');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'HUMANITIES', 'Recruiter', 'Morbi porttitor lorem id ligula.', '2022-04-14 11:25:19', '2022-04-14 11:25:19');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'TECH', 'Editor', 'Etiam justo.', '2022-03-12 17:27:33', '2022-03-12 17:27:33');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'WORRIES_HUGS', 'Senior Financial Analyst', 'Aliquam erat volutpat. In congue.', '2022-06-29 10:55:13', '2022-06-29 10:55:13');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'HUMANITIES', 'Associate Professor', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022-11-22 01:02:44', '2022-11-22 01:02:44');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'NATURAL_SCIENCES', 'Chief Design Engineer', 'Nullam varius. Nulla facilisi.', '2022-05-12 18:47:48', '2022-05-12 18:47:48');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'LAW', 'Food Chemist', 'Nunc rhoncus dui vel sem. Sed sagittis.', '2022-04-08 03:45:28', '2022-04-08 03:45:28');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Senior Sales Associate', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', '2022-11-16 20:07:56', '2022-11-16 20:07:56');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (1, 'HUMANITIES', 'Editor', 'In hac habitasse platea dictumst.', '2022-12-22 19:52:38', '2022-12-22 19:52:38');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'TECH', 'Community Outreach Specialist', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2022-07-24 04:24:32', '2022-07-24 04:24:32');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (2, 'BUSINESS', 'VP Accounting', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022-05-02 06:06:47', '2022-05-02 06:06:47');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'MED_HEALTH', 'Desktop Support Technician', 'Maecenas rhoncus aliquam lacus.', '2022-08-29 11:55:25', '2022-08-29 11:55:25');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'EVENTS', 'Geologist IV', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2023-02-23 14:58:30', '2023-02-23 14:58:30');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'CAMPUS', 'Structural Analysis Engineer', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', '2022-11-02 14:02:06', '2022-11-02 14:02:06');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Information Systems Manager', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', '2022-10-16 16:14:00', '2022-10-16 16:14:00');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'NATURAL_SCIENCES', 'Sales Associate', 'In blandit ultrices enim.', '2022-04-03 03:29:03', '2022-04-03 03:29:03');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'ARTS', 'Community Outreach Specialist', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2022-10-21 09:32:59', '2022-10-21 09:32:59');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'EVENTS', 'Engineer III', 'Curabitur convallis.', '2022-04-20 14:18:35', '2022-04-20 14:18:35');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'CAMPUS', 'Structural Analysis Engineer', 'Nam nulla.', '2022-08-18 19:06:29', '2022-08-18 19:06:29');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'FREE_THREAD', 'Mechanical Systems Engineer', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', '2022-09-22 13:24:02', '2022-09-22 13:24:02');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'WORRIES_HUGS', 'Chemical Engineer', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', '2022-04-17 02:46:41', '2022-04-17 02:46:41');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'MED_HEALTH', 'Geologist II', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2023-01-16 01:03:53', '2023-01-16 01:03:53');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'SOCIAL_SCIENCES', 'Data Coordiator', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022-04-27 04:56:50', '2022-04-27 04:56:50');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'WORRIES_HUGS', 'Engineer IV', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022-05-26 03:56:12', '2022-05-26 03:56:12');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'FREE_THREAD', 'Software Consultant', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022-10-20 19:26:33', '2022-10-20 19:26:33');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (2, 'WORRIES_HUGS', 'Assistant Professor', 'Pellentesque viverra pede ac diam.', '2023-02-27 20:55:29', '2023-02-27 20:55:29');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'TECH', 'Health Coach I', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', '2022-10-15 13:49:57', '2022-10-15 13:49:57');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'BUSINESS', 'Database Administrator I', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', '2022-08-23 11:15:48', '2022-08-23 11:15:48');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'FREE_THREAD', 'Internal Auditor', 'Proin risus.', '2023-02-10 02:34:49', '2023-02-10 02:34:49');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'ARTS', 'Senior Cost Accountant', 'Morbi porttitor lorem id ligula.', '2022-11-05 06:58:31', '2022-11-05 06:58:31');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'TECH', 'Systems Administrator I', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', '2022-05-01 21:51:05', '2022-05-01 21:51:05');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'NATURAL_SCIENCES', 'GIS Technical Architect', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', '2022-10-26 19:36:33', '2022-10-26 19:36:33');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'HUMANITIES', 'Senior Editor', 'Nulla tempus.', '2023-01-26 06:30:30', '2023-01-26 06:30:30');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'EVENTS', 'Help Desk Technician', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2022-05-19 20:07:32', '2022-05-19 20:07:32');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'ARTS', 'Environmental Specialist', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', '2022-04-29 18:42:53', '2022-04-29 18:42:53');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'LAW', 'Sales Representative', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2022-09-12 04:56:03', '2022-09-12 04:56:03');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'BUSINESS', 'Professor', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', '2022-08-12 19:42:57', '2022-08-12 19:42:57');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Nurse Practicioner', 'Aliquam erat volutpat. In congue. Etiam justo.', '2022-08-06 04:45:32', '2022-08-06 04:45:32');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'HUMANITIES', 'Financial Advisor', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022-04-20 10:23:55', '2022-04-20 10:23:55');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'CAMPUS', 'Database Administrator II', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', '2022-04-26 15:36:13', '2022-04-26 15:36:13');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'WORRIES_HUGS', 'Help Desk Operator', 'Nunc nisl.', '2022-04-13 02:52:05', '2022-04-13 02:52:05');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (4, 'CAMPUS', 'Chemical Engineer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', '2022-10-11 17:17:39', '2022-10-11 17:17:39');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'TECH', 'Structural Analysis Engineer', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '2022-12-06 02:00:52', '2022-12-06 02:00:52');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'FREE_THREAD', 'Tax Accountant', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022-05-29 05:36:41', '2022-05-29 05:36:41');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (2, 'HUMANITIES', 'Analyst Programmer', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '2022-03-09 13:48:49', '2022-03-09 13:48:49');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'LAW', 'Research Assistant I', 'Vivamus tortor.', '2023-02-03 19:43:17', '2023-02-03 19:43:17');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'CAMPUS', 'Assistant Manager', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '2022-09-12 15:31:23', '2022-09-12 15:31:23');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'CAMPUS', 'Teacher', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022-03-19 21:27:37', '2022-03-19 21:27:37');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Teacher', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022-12-01 00:13:54', '2022-12-01 00:13:54');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'CAMPUS', 'Librarian', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '2022-10-08 13:40:00', '2022-10-08 13:40:00');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'TECH', 'Teacher', 'Proin interdum mauris non ligula pellentesque ultrices.', '2022-06-02 13:35:38', '2022-06-02 13:35:38');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (4, 'EVENTS', 'Analyst Programmer', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2023-02-21 07:26:53', '2023-02-21 07:26:53');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'LAW', 'Quality Engineer', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2023-02-18 16:01:27', '2023-02-18 16:01:27');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'CAMPUS', 'Director of Sales', 'Aenean auctor gravida sem.', '2022-09-26 22:40:53', '2022-09-26 22:40:53');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'BUSINESS', 'Data Coordiator', 'Proin risus.', '2022-11-02 23:34:49', '2022-11-02 23:34:49');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'ARTS', 'Human Resources Manager', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022-10-24 02:23:12', '2022-10-24 02:23:12');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'EVENTS', 'Senior Cost Accountant', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2023-03-03 15:45:58', '2023-03-03 15:45:58');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (1, 'EVENTS', 'Social Worker', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', '2023-02-27 14:18:16', '2023-02-27 14:18:16');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'MED_HEALTH', 'VP Sales', 'Ut at dolor quis odio consequat varius.', '2022-03-29 23:21:23', '2022-03-29 23:21:23');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'CAMPUS', 'Librarian', 'Nullam molestie nibh in lectus.', '2022-04-14 05:04:35', '2022-04-14 05:04:35');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'HUMANITIES', 'Internal Auditor', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '2022-05-12 05:54:52', '2022-05-12 05:54:52');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Environmental Tech', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', '2023-02-12 01:27:41', '2023-02-12 01:27:41');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Design Engineer', 'Nunc rhoncus dui vel sem.', '2023-02-17 10:27:29', '2023-02-17 10:27:29');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'LAW', 'VP Quality Control', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022-03-05 14:14:50', '2022-03-05 14:14:50');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'MED_HEALTH', 'Sales Associate', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2023-01-04 02:25:39', '2023-01-04 02:25:39');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'TECH', 'Tax Accountant', 'Phasellus in felis. Donec semper sapien a libero.', '2023-01-10 11:40:58', '2023-01-10 11:40:58');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'TECH', 'Junior Executive', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2022-07-23 01:38:55', '2022-07-23 01:38:55');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'TECH', 'Account Executive', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2023-01-19 16:55:06', '2023-01-19 16:55:06');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (6, 'CAMPUS', 'Accounting Assistant II', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022-03-05 09:26:01', '2022-03-05 09:26:01');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (1, 'HUMANITIES', 'Account Representative I', 'Etiam faucibus cursus urna. Ut tellus.', '2022-04-20 01:05:09', '2022-04-20 01:05:09');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'WORRIES_HUGS', 'Developer IV', 'Integer ac leo.', '2022-05-21 10:41:27', '2022-05-21 10:41:27');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'MED_HEALTH', 'VP Sales', 'Etiam justo. Etiam pretium iaculis justo.', '2022-04-08 12:33:41', '2022-04-08 12:33:41');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (1, 'FREE_THREAD', 'Analog Circuit Design manager', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022-12-20 09:53:11', '2022-12-20 09:53:11');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'TECH', 'Paralegal', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022-09-15 08:49:47', '2022-09-15 08:49:47');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'FREE_THREAD', 'Automation Specialist II', 'Pellentesque at nulla. Suspendisse potenti.', '2022-10-18 08:07:48', '2022-10-18 08:07:48');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (10, 'HUMANITIES', 'Data Coordiator', 'Nullam varius.', '2023-01-30 04:36:16', '2023-01-30 04:36:16');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (12, 'ARTS', 'Financial Advisor', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022-05-04 05:10:33', '2022-05-04 05:10:33');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'WORRIES_HUGS', 'Software Consultant', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '2022-06-08 09:43:59', '2022-06-08 09:43:59');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'HUMANITIES', 'Human Resources Manager', 'Duis ac nibh.', '2022-06-29 12:42:33', '2022-06-29 12:42:33');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (8, 'SOCIAL_SCIENCES', 'Project Manager', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', '2022-06-13 03:50:04', '2022-06-13 03:50:04');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (1, 'NATURAL_SCIENCES', 'Dental Hygienist', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022-12-21 02:57:34', '2022-12-21 02:57:34');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Web Designer III', 'In eleifend quam a odio. In hac habitasse platea dictumst.', '2022-04-10 17:02:41', '2022-04-10 17:02:41');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'SOCIAL_SCIENCES', 'Health Coach III', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', '2022-04-30 03:13:08', '2022-04-30 03:13:08');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'EVENTS', 'Social Worker', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '2022-11-17 17:48:12', '2022-11-17 17:48:12');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'CAMPUS', 'Financial Advisor', 'Vestibulum rutrum rutrum neque.', '2022-09-01 06:44:30', '2022-09-01 06:44:30');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (11, 'NATURAL_SCIENCES', 'Chemical Engineer', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', '2022-11-12 18:17:23', '2022-11-12 18:17:23');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (4, 'HUMANITIES', 'Librarian', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', '2022-08-29 18:08:00', '2022-08-29 18:08:00');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'WORRIES_HUGS', 'Developer III', 'Pellentesque at nulla. Suspendisse potenti.', '2022-04-25 20:44:18', '2022-04-25 20:44:18');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (4, 'MED_HEALTH', 'Safety Technician I', 'Integer a nibh.', '2022-06-27 10:51:38', '2022-06-27 10:51:38');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (3, 'ARTS', 'Biostatistician I', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', '2022-12-19 21:05:09', '2022-12-19 21:05:09');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (7, 'TECH', 'Director of Sales', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '2023-01-23 20:01:05', '2023-01-23 20:01:05');
        insert into post_1m (user_id, category, title, content, created_at, updated_at) values (9, 'BUSINESS', 'Staff Accountant III', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', '2022-05-02 05:20:19', '2022-05-02 05:20:19');
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER $$

DELIMITER $$
DROP PROCEDURE IF EXISTS loopInsertOnPost5M$$

CREATE PROCEDURE loopInsertOnPost5M()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 50000 DO
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (1, 'TECH', 'Health Coach I', 'Duis mattis egestas metus.', '2022-03-25 09:52:56', '2022-03-25 09:52:56');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'MED_HEALTH', 'Administrative Officer', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', '2022-05-21 21:42:36', '2022-05-21 21:42:36');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Occupational Therapist', 'In hac habitasse platea dictumst.', '2022-12-07 21:46:23', '2022-12-07 21:46:23');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'BUSINESS', 'Safety Technician IV', 'Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', '2023-02-01 12:20:42', '2023-02-01 12:20:42');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'FREE_THREAD', 'Recruiting Manager', 'Curabitur in libero ut massa volutpat convallis.', '2022-11-16 11:22:23', '2022-11-16 11:22:23');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'MED_HEALTH', 'Research Associate', 'Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl.', '2022-10-20 09:55:19', '2022-10-20 09:55:19');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (1, 'SOCIAL_SCIENCES', 'Legal Assistant', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', '2023-02-16 23:33:04', '2023-02-16 23:33:04');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'BUSINESS', 'Desktop Support Technician', 'Vivamus tortor. Duis mattis egestas metus.', '2022-03-06 00:50:38', '2022-03-06 00:50:38');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (2, 'WORRIES_HUGS', 'Recruiter', 'Morbi non quam nec dui luctus rutrum.', '2023-02-26 05:09:24', '2023-02-26 05:09:24');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'HUMANITIES', 'Recruiter', 'Morbi porttitor lorem id ligula.', '2022-04-14 11:25:19', '2022-04-14 11:25:19');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'TECH', 'Editor', 'Etiam justo.', '2022-03-12 17:27:33', '2022-03-12 17:27:33');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'WORRIES_HUGS', 'Senior Financial Analyst', 'Aliquam erat volutpat. In congue.', '2022-06-29 10:55:13', '2022-06-29 10:55:13');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'HUMANITIES', 'Associate Professor', 'Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '2022-11-22 01:02:44', '2022-11-22 01:02:44');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'NATURAL_SCIENCES', 'Chief Design Engineer', 'Nullam varius. Nulla facilisi.', '2022-05-12 18:47:48', '2022-05-12 18:47:48');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'LAW', 'Food Chemist', 'Nunc rhoncus dui vel sem. Sed sagittis.', '2022-04-08 03:45:28', '2022-04-08 03:45:28');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Senior Sales Associate', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', '2022-11-16 20:07:56', '2022-11-16 20:07:56');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (1, 'HUMANITIES', 'Editor', 'In hac habitasse platea dictumst.', '2022-12-22 19:52:38', '2022-12-22 19:52:38');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'TECH', 'Community Outreach Specialist', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', '2022-07-24 04:24:32', '2022-07-24 04:24:32');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (2, 'BUSINESS', 'VP Accounting', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', '2022-05-02 06:06:47', '2022-05-02 06:06:47');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'MED_HEALTH', 'Desktop Support Technician', 'Maecenas rhoncus aliquam lacus.', '2022-08-29 11:55:25', '2022-08-29 11:55:25');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'EVENTS', 'Geologist IV', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '2023-02-23 14:58:30', '2023-02-23 14:58:30');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'CAMPUS', 'Structural Analysis Engineer', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', '2022-11-02 14:02:06', '2022-11-02 14:02:06');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Information Systems Manager', 'Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.', '2022-10-16 16:14:00', '2022-10-16 16:14:00');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'NATURAL_SCIENCES', 'Sales Associate', 'In blandit ultrices enim.', '2022-04-03 03:29:03', '2022-04-03 03:29:03');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'ARTS', 'Community Outreach Specialist', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', '2022-10-21 09:32:59', '2022-10-21 09:32:59');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'EVENTS', 'Engineer III', 'Curabitur convallis.', '2022-04-20 14:18:35', '2022-04-20 14:18:35');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'CAMPUS', 'Structural Analysis Engineer', 'Nam nulla.', '2022-08-18 19:06:29', '2022-08-18 19:06:29');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'FREE_THREAD', 'Mechanical Systems Engineer', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', '2022-09-22 13:24:02', '2022-09-22 13:24:02');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'WORRIES_HUGS', 'Chemical Engineer', 'Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum.', '2022-04-17 02:46:41', '2022-04-17 02:46:41');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'MED_HEALTH', 'Geologist II', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', '2023-01-16 01:03:53', '2023-01-16 01:03:53');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'SOCIAL_SCIENCES', 'Data Coordiator', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', '2022-04-27 04:56:50', '2022-04-27 04:56:50');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'WORRIES_HUGS', 'Engineer IV', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022-05-26 03:56:12', '2022-05-26 03:56:12');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'FREE_THREAD', 'Software Consultant', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', '2022-10-20 19:26:33', '2022-10-20 19:26:33');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (2, 'WORRIES_HUGS', 'Assistant Professor', 'Pellentesque viverra pede ac diam.', '2023-02-27 20:55:29', '2023-02-27 20:55:29');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'TECH', 'Health Coach I', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', '2022-10-15 13:49:57', '2022-10-15 13:49:57');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'BUSINESS', 'Database Administrator I', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.', '2022-08-23 11:15:48', '2022-08-23 11:15:48');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'FREE_THREAD', 'Internal Auditor', 'Proin risus.', '2023-02-10 02:34:49', '2023-02-10 02:34:49');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'ARTS', 'Senior Cost Accountant', 'Morbi porttitor lorem id ligula.', '2022-11-05 06:58:31', '2022-11-05 06:58:31');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'TECH', 'Systems Administrator I', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', '2022-05-01 21:51:05', '2022-05-01 21:51:05');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'NATURAL_SCIENCES', 'GIS Technical Architect', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', '2022-10-26 19:36:33', '2022-10-26 19:36:33');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'HUMANITIES', 'Senior Editor', 'Nulla tempus.', '2023-01-26 06:30:30', '2023-01-26 06:30:30');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'EVENTS', 'Help Desk Technician', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', '2022-05-19 20:07:32', '2022-05-19 20:07:32');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'ARTS', 'Environmental Specialist', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', '2022-04-29 18:42:53', '2022-04-29 18:42:53');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'LAW', 'Sales Representative', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', '2022-09-12 04:56:03', '2022-09-12 04:56:03');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'BUSINESS', 'Professor', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', '2022-08-12 19:42:57', '2022-08-12 19:42:57');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Nurse Practicioner', 'Aliquam erat volutpat. In congue. Etiam justo.', '2022-08-06 04:45:32', '2022-08-06 04:45:32');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'HUMANITIES', 'Financial Advisor', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '2022-04-20 10:23:55', '2022-04-20 10:23:55');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'CAMPUS', 'Database Administrator II', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', '2022-04-26 15:36:13', '2022-04-26 15:36:13');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'WORRIES_HUGS', 'Help Desk Operator', 'Nunc nisl.', '2022-04-13 02:52:05', '2022-04-13 02:52:05');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (4, 'CAMPUS', 'Chemical Engineer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', '2022-10-11 17:17:39', '2022-10-11 17:17:39');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'TECH', 'Structural Analysis Engineer', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', '2022-12-06 02:00:52', '2022-12-06 02:00:52');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'FREE_THREAD', 'Tax Accountant', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '2022-05-29 05:36:41', '2022-05-29 05:36:41');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (2, 'HUMANITIES', 'Analyst Programmer', 'Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna.', '2022-03-09 13:48:49', '2022-03-09 13:48:49');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'LAW', 'Research Assistant I', 'Vivamus tortor.', '2023-02-03 19:43:17', '2023-02-03 19:43:17');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'CAMPUS', 'Assistant Manager', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '2022-09-12 15:31:23', '2022-09-12 15:31:23');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'CAMPUS', 'Teacher', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022-03-19 21:27:37', '2022-03-19 21:27:37');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Teacher', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022-12-01 00:13:54', '2022-12-01 00:13:54');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'CAMPUS', 'Librarian', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', '2022-10-08 13:40:00', '2022-10-08 13:40:00');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'TECH', 'Teacher', 'Proin interdum mauris non ligula pellentesque ultrices.', '2022-06-02 13:35:38', '2022-06-02 13:35:38');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (4, 'EVENTS', 'Analyst Programmer', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.', '2023-02-21 07:26:53', '2023-02-21 07:26:53');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'LAW', 'Quality Engineer', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2023-02-18 16:01:27', '2023-02-18 16:01:27');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'CAMPUS', 'Director of Sales', 'Aenean auctor gravida sem.', '2022-09-26 22:40:53', '2022-09-26 22:40:53');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'BUSINESS', 'Data Coordiator', 'Proin risus.', '2022-11-02 23:34:49', '2022-11-02 23:34:49');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'ARTS', 'Human Resources Manager', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '2022-10-24 02:23:12', '2022-10-24 02:23:12');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'EVENTS', 'Senior Cost Accountant', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2023-03-03 15:45:58', '2023-03-03 15:45:58');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (1, 'EVENTS', 'Social Worker', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.', '2023-02-27 14:18:16', '2023-02-27 14:18:16');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'MED_HEALTH', 'VP Sales', 'Ut at dolor quis odio consequat varius.', '2022-03-29 23:21:23', '2022-03-29 23:21:23');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'CAMPUS', 'Librarian', 'Nullam molestie nibh in lectus.', '2022-04-14 05:04:35', '2022-04-14 05:04:35');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'HUMANITIES', 'Internal Auditor', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis.', '2022-05-12 05:54:52', '2022-05-12 05:54:52');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Environmental Tech', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', '2023-02-12 01:27:41', '2023-02-12 01:27:41');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'ARTS', 'Design Engineer', 'Nunc rhoncus dui vel sem.', '2023-02-17 10:27:29', '2023-02-17 10:27:29');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'LAW', 'VP Quality Control', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2022-03-05 14:14:50', '2022-03-05 14:14:50');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'MED_HEALTH', 'Sales Associate', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', '2023-01-04 02:25:39', '2023-01-04 02:25:39');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'TECH', 'Tax Accountant', 'Phasellus in felis. Donec semper sapien a libero.', '2023-01-10 11:40:58', '2023-01-10 11:40:58');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'TECH', 'Junior Executive', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', '2022-07-23 01:38:55', '2022-07-23 01:38:55');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'TECH', 'Account Executive', 'Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', '2023-01-19 16:55:06', '2023-01-19 16:55:06');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (6, 'CAMPUS', 'Accounting Assistant II', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '2022-03-05 09:26:01', '2022-03-05 09:26:01');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (1, 'HUMANITIES', 'Account Representative I', 'Etiam faucibus cursus urna. Ut tellus.', '2022-04-20 01:05:09', '2022-04-20 01:05:09');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'WORRIES_HUGS', 'Developer IV', 'Integer ac leo.', '2022-05-21 10:41:27', '2022-05-21 10:41:27');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'MED_HEALTH', 'VP Sales', 'Etiam justo. Etiam pretium iaculis justo.', '2022-04-08 12:33:41', '2022-04-08 12:33:41');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (1, 'FREE_THREAD', 'Analog Circuit Design manager', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', '2022-12-20 09:53:11', '2022-12-20 09:53:11');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'TECH', 'Paralegal', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2022-09-15 08:49:47', '2022-09-15 08:49:47');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'FREE_THREAD', 'Automation Specialist II', 'Pellentesque at nulla. Suspendisse potenti.', '2022-10-18 08:07:48', '2022-10-18 08:07:48');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (10, 'HUMANITIES', 'Data Coordiator', 'Nullam varius.', '2023-01-30 04:36:16', '2023-01-30 04:36:16');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (12, 'ARTS', 'Financial Advisor', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', '2022-05-04 05:10:33', '2022-05-04 05:10:33');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'WORRIES_HUGS', 'Software Consultant', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim.', '2022-06-08 09:43:59', '2022-06-08 09:43:59');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'HUMANITIES', 'Human Resources Manager', 'Duis ac nibh.', '2022-06-29 12:42:33', '2022-06-29 12:42:33');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (8, 'SOCIAL_SCIENCES', 'Project Manager', 'Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti.', '2022-06-13 03:50:04', '2022-06-13 03:50:04');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (1, 'NATURAL_SCIENCES', 'Dental Hygienist', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', '2022-12-21 02:57:34', '2022-12-21 02:57:34');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (5, 'SOCIAL_SCIENCES', 'Web Designer III', 'In eleifend quam a odio. In hac habitasse platea dictumst.', '2022-04-10 17:02:41', '2022-04-10 17:02:41');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'SOCIAL_SCIENCES', 'Health Coach III', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', '2022-04-30 03:13:08', '2022-04-30 03:13:08');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'EVENTS', 'Social Worker', 'Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.', '2022-11-17 17:48:12', '2022-11-17 17:48:12');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'CAMPUS', 'Financial Advisor', 'Vestibulum rutrum rutrum neque.', '2022-09-01 06:44:30', '2022-09-01 06:44:30');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (11, 'NATURAL_SCIENCES', 'Chemical Engineer', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.', '2022-11-12 18:17:23', '2022-11-12 18:17:23');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (4, 'HUMANITIES', 'Librarian', 'Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', '2022-08-29 18:08:00', '2022-08-29 18:08:00');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'WORRIES_HUGS', 'Developer III', 'Pellentesque at nulla. Suspendisse potenti.', '2022-04-25 20:44:18', '2022-04-25 20:44:18');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (4, 'MED_HEALTH', 'Safety Technician I', 'Integer a nibh.', '2022-06-27 10:51:38', '2022-06-27 10:51:38');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (3, 'ARTS', 'Biostatistician I', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam.', '2022-12-19 21:05:09', '2022-12-19 21:05:09');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (7, 'TECH', 'Director of Sales', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', '2023-01-23 20:01:05', '2023-01-23 20:01:05');
        insert into post_5m (user_id, category, title, content, created_at, updated_at) values (9, 'BUSINESS', 'Staff Accountant III', 'Vestibulum sed magna at nunc commodo placerat. Praesent blandit.', '2022-05-02 05:20:19', '2022-05-02 05:20:19');
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER $$

CALL loopInsertOnPost1M;
CALL loopInsertOnPost5M;