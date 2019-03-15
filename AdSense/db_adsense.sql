/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - ad-sense
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `ad-sense`;

USE `ad-sense`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pwd` varchar(15) default NULL,
  `admin_doc` varchar(16) default NULL,
  `admin_name` varchar(50) default NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`admin_id`,`admin_pwd`,`admin_doc`,`admin_name`) values ('admin','admin','30-04-2013','admin');
insert into `m_admin` (`admin_id`,`admin_pwd`,`admin_doc`,`admin_name`) values ('pramitgha','1234567','19-04-2014','pram');
insert into `m_admin` (`admin_id`,`admin_pwd`,`admin_doc`,`admin_name`) values ('rajan','rajan','30-04-2013','rajan');

/*Table structure for table `m_ads` */

DROP TABLE IF EXISTS `m_ads`;

CREATE TABLE `m_ads` (
  `ad_no` int(10) NOT NULL auto_increment,
  `ad_headline` varchar(300) default NULL,
  `ad_desc` varchar(1000) default NULL,
  `ad_link` varchar(300) default NULL,
  `ad_total_display` int(5) default NULL,
  `ad_present_display` int(5) default NULL,
  `ad_balance_display` int(5) default NULL,
  `ad_status` varchar(15) default NULL,
  `ad_start_date` varchar(16) default NULL,
  `ad_end_date` varchar(16) default NULL,
  `is_member` char(1) default NULL,
  `mem_id` varchar(50) default NULL,
  PRIMARY KEY  (`ad_no`),
  KEY `FK_m_ads` (`mem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_ads` */

insert into `m_ads` (`ad_no`,`ad_headline`,`ad_desc`,`ad_link`,`ad_total_display`,`ad_present_display`,`ad_balance_display`,`ad_status`,`ad_start_date`,`ad_end_date`,`is_member`,`mem_id`) values (8,'Training in Java','Core Java, J2EE & JDBC','http://www.dhsinformatics.com',5,1,4,'Active','01-02-2014','28-05-2014','y','mb001');
insert into `m_ads` (`ad_no`,`ad_headline`,`ad_desc`,`ad_link`,`ad_total_display`,`ad_present_display`,`ad_balance_display`,`ad_status`,`ad_start_date`,`ad_end_date`,`is_member`,`mem_id`) values (9,'Fixed Deposit','For 1 Years 10% Interest. If Senior Citizen means 11% Interest. Hurry Up !','http://www.onlinesbi.com',10,4,6,'Active','01-03-2014','28-06-2014','y','mb001');
insert into `m_ads` (`ad_no`,`ad_headline`,`ad_desc`,`ad_link`,`ad_total_display`,`ad_present_display`,`ad_balance_display`,`ad_status`,`ad_start_date`,`ad_end_date`,`is_member`,`mem_id`) values (10,'Wonderla (The Amusement Park)','For Online Booking Click here.','http://www.wonderla.com',20,1,19,'Active','20-03-2014','16-07-2014','n','mb005');
insert into `m_ads` (`ad_no`,`ad_headline`,`ad_desc`,`ad_link`,`ad_total_display`,`ad_present_display`,`ad_balance_display`,`ad_status`,`ad_start_date`,`ad_end_date`,`is_member`,`mem_id`) values (11,'IEEE Projects','ieee java projects','http://http://www.ieeelatestprojects.com/',2,1,1,'Active','03/12/2018','03/12/2018','y','priya');

/*Table structure for table `m_ip` */

DROP TABLE IF EXISTS `m_ip`;

CREATE TABLE `m_ip` (
  `sno` int(5) NOT NULL auto_increment,
  `date1` varchar(50) default NULL,
  `ip` varchar(50) default NULL,
  `count_val` int(12) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_ip` */

insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (1,'2014/04/21','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (2,'2014/04/22','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (3,'2018/12/03','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (4,'2018/12/04','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (5,'2018/12/05','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (6,'2018/12/05','192.168.1.7',7);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (7,'2018/12/06','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (8,'2018/12/07','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (9,'2018/12/08','0:0:0:0:0:0:0:1',4);
insert into `m_ip` (`sno`,`date1`,`ip`,`count_val`) values (10,'2019/02/28','0:0:0:0:0:0:0:1',4);

/*Table structure for table `m_mem_cat` */

DROP TABLE IF EXISTS `m_mem_cat`;

CREATE TABLE `m_mem_cat` (
  `cat_no` int(10) NOT NULL auto_increment,
  `cat_name` varchar(200) default NULL,
  `cat_desc` varchar(200) default NULL,
  PRIMARY KEY  (`cat_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_mem_cat` */

insert into `m_mem_cat` (`cat_no`,`cat_name`,`cat_desc`) values (1,'IT','Programmers');
insert into `m_mem_cat` (`cat_no`,`cat_name`,`cat_desc`) values (2,'Hotels','Hotels');
insert into `m_mem_cat` (`cat_no`,`cat_name`,`cat_desc`) values (5,'Education','Program related training');
insert into `m_mem_cat` (`cat_no`,`cat_name`,`cat_desc`) values (9,'Colleges','Colleges');
insert into `m_mem_cat` (`cat_no`,`cat_name`,`cat_desc`) values (10,'rfgv','hygbujm');
insert into `m_mem_cat` (`cat_no`,`cat_name`,`cat_desc`) values (11,'IEEE Projects','ieee student projetcs');

/*Table structure for table `m_member` */

DROP TABLE IF EXISTS `m_member`;

CREATE TABLE `m_member` (
  `mem_no` int(10) NOT NULL auto_increment,
  `cat_no` int(10) default NULL,
  `mem_id` varchar(50) NOT NULL,
  `mem_pwd` varchar(20) default NULL,
  `mem_rep_name` varchar(50) default NULL,
  `mem_company_name` varchar(100) default NULL,
  `mem_points` int(10) default NULL,
  `phone` varchar(15) default NULL,
  `email` varchar(50) default NULL,
  `page_name` varchar(100) default NULL,
  `pass_question` varchar(300) default NULL,
  `pass_ans` varchar(50) default NULL,
  `mem_doc` varchar(16) default NULL,
  `mem_exp_date` varchar(16) default NULL,
  `mem_status` varchar(10) default NULL,
  PRIMARY KEY  (`mem_no`,`mem_id`),
  KEY `FK_mem_cat` (`cat_no`),
  CONSTRAINT `m_member_ibfk_1` FOREIGN KEY (`cat_no`) REFERENCES `m_mem_cat` (`cat_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_member` */

insert into `m_member` (`mem_no`,`cat_no`,`mem_id`,`mem_pwd`,`mem_rep_name`,`mem_company_name`,`mem_points`,`phone`,`email`,`page_name`,`pass_question`,`pass_ans`,`mem_doc`,`mem_exp_date`,`mem_status`) values (1,1,'mb001','chennai','praveenkumar','DHS Informatics',130,'9006548856','mp@hai.com','Training','Who is your favorite hero?','praveen','09-09-2008','09-09-2009','Active');
insert into `m_member` (`mem_no`,`cat_no`,`mem_id`,`mem_pwd`,`mem_rep_name`,`mem_company_name`,`mem_points`,`phone`,`email`,`page_name`,`pass_question`,`pass_ans`,`mem_doc`,`mem_exp_date`,`mem_status`) values (7,5,'mb003','chennai','Praveen','PES',10,'9456794556','mpkumarcse@yahoo.com','Educational','Who is your favorite hero?','praveen','27-11-2008','30-11-2010','Active');
insert into `m_member` (`mem_no`,`cat_no`,`mem_id`,`mem_pwd`,`mem_rep_name`,`mem_company_name`,`mem_points`,`phone`,`email`,`page_name`,`pass_question`,`pass_ans`,`mem_doc`,`mem_exp_date`,`mem_status`) values (8,2,'mb004','123456','kumar','Nandhini Hotel',0,'457894555','mai@hai.com','South Indian Foods @ Nandhini Hotel','Who is your favorite hero?','siva','29-11-2008','09-12-2009','Active');
insert into `m_member` (`mem_no`,`cat_no`,`mem_id`,`mem_pwd`,`mem_rep_name`,`mem_company_name`,`mem_points`,`phone`,`email`,`page_name`,`pass_question`,`pass_ans`,`mem_doc`,`mem_exp_date`,`mem_status`) values (10,1,'mb005','chennai','kumaran','TCS',0,'874545445','abc@abc.com','Training in PHP','Who is your favorite hero?','praveen','02-02-2009','28-02-2011','Active');
insert into `m_member` (`mem_no`,`cat_no`,`mem_id`,`mem_pwd`,`mem_rep_name`,`mem_company_name`,`mem_points`,`phone`,`email`,`page_name`,`pass_question`,`pass_ans`,`mem_doc`,`mem_exp_date`,`mem_status`) values (11,1,'mjh','1234567','eedf','etrt',0,'2447654556','sdrr3dsf','234ds','What is your library card number?','ertr','19-04-2014','21/09/2015','Active');
insert into `m_member` (`mem_no`,`cat_no`,`mem_id`,`mem_pwd`,`mem_rep_name`,`mem_company_name`,`mem_points`,`phone`,`email`,`page_name`,`pass_question`,`pass_ans`,`mem_doc`,`mem_exp_date`,`mem_status`) values (12,1,'priya','priya@123','priya','dhs',0,'9876545654','priya@dhsinformatics.com','1','Who is your favorite hero?','allu','03-12-2018','03/12/2018','Active');
insert into `m_member` (`mem_no`,`cat_no`,`mem_id`,`mem_pwd`,`mem_rep_name`,`mem_company_name`,`mem_points`,`phone`,`email`,`page_name`,`pass_question`,`pass_ans`,`mem_doc`,`mem_exp_date`,`mem_status`) values (13,1,'anu','anu1234','anu','cvs',0,'9876543234','priya@dhsinformatics.com','ieee','Who is your favorite hero?','allu','28-02-2019','28/02/2019','Active');

/*Table structure for table `m_product` */

DROP TABLE IF EXISTS `m_product`;

CREATE TABLE `m_product` (
  `mem_no` int(10) default NULL,
  `product_no` int(10) NOT NULL auto_increment,
  `product_name` varchar(200) default NULL,
  `product_desc` varchar(600) default NULL,
  `product_image` varchar(300) default NULL,
  PRIMARY KEY  (`product_no`),
  KEY `FK_1` (`mem_no`),
  CONSTRAINT `m_product_ibfk_1` FOREIGN KEY (`mem_no`) REFERENCES `m_member` (`mem_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_product` */

insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (1,5,'Hotel *** Corporate Suites Inc. @ Koramangala 80 FT. Bangalore (India)','Hotel *** Corporate Suites Inc. @ Koramangala 80 FT. Bangalore in 560034 Bangalore Koramangala 80 FT. Road 4th Block 3rd Cross.','base_media2.jpeg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (1,6,'Hotel Swagath - Bangalore','Hotel Swagath is Very close to bus stand and railway station. Well Decorated Rooms.Attached Restaraunts with North and South Indian food.we serve chineese','base_media3.jpeg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (1,7,'Hotel ***** The Oberoi Bangalore (India)','Hotel ***** The Oberoi Bangalore in 560 001 Bangalore 37-39 Mahatma Gandhi Road. ... The Oberoi Bangalore a luxury hotel set amidst tropical gardens','base_media4.jpeg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (1,8,'bala','gfhgffg','base_media5.jpeg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (8,9,'rooms','we are having executive delux two bedrooms 3 bedrooms ac rooms','Christmas-wallpaper2-800x600.jpg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (8,10,'restaurant','soutn india and north indian food are available','47b8cf04b3127cce98548e023ee400000066100AYt27hm5cN2Mg.jpg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (1,11,'hai','hhjhkjhk','download.jpeg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (1,12,'trt','rtyrt','test.jpg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (7,13,'eswar','testing','backgroun_image.jpg');
insert into `m_product` (`mem_no`,`product_no`,`product_name`,`product_desc`,`product_image`) values (1,14,'jhg','hgvhjb','Chrysanthemum.jpg');

/*Table structure for table `m_volunteers` */

DROP TABLE IF EXISTS `m_volunteers`;

CREATE TABLE `m_volunteers` (
  `v_code` int(11) NOT NULL auto_increment,
  `v_id` varchar(15) NOT NULL,
  `v_name` varchar(50) NOT NULL,
  `v_fathername` varchar(50) NOT NULL,
  `v_doorno` varchar(30) default NULL,
  `v_street` varchar(30) default NULL,
  `v_area` varchar(30) default NULL,
  `v_city` varchar(30) default NULL,
  `v_country` varchar(30) default NULL,
  `v_state` varchar(50) default NULL,
  `v_pincode` int(50) default NULL,
  `v_native` varchar(30) default NULL,
  `v_mobile` varchar(15) default NULL,
  `v_email` varchar(50) default NULL,
  `v_vangusam` int(50) default NULL,
  `v_dob` varchar(50) default NULL,
  `req_status` varchar(50) default 'Pending',
  PRIMARY KEY  (`v_code`),
  KEY `FK_m_volunteers` (`v_vangusam`),
  CONSTRAINT `m_volunteers_ibfk_1` FOREIGN KEY (`v_vangusam`) REFERENCES `m_vangusangal` (`vong_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_volunteers` */

insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (1,'VSR3','anu1','arun1','23','btm','btm','blr','Albania','Diber (Peshkopi)',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',4,'1993-12-12','Accepted');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (2,'xyz','anu2','arun2','12','btm','btm','blr','Albania','Korce',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',4,'1992-12-12','Pending');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (3,'xyz','anu3','arun3','23','maruhi nagar','btm','blr','American Samoa','Eastern',567654,'blr','9876787678','priyankasrisha.m93@gmail.com',5,'1993-11-11','Pending');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (4,'VSR3','anu4','arun4','12','btm','btm','blr','Antigua and Barbuda','Redonda',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',6,'1993-12-12','Accepted');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (5,'xyz','anu5','arun5','12','btm','btm','blr','Antartica','Antartica',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',5,'1992-12-12','Pending');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (6,'VSR1','anu6','arun6','12','btm','btm','blr','Australia','Northern Territory',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',12,'1992-11-11','Accepted');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (7,'xyz','anu7','arun7','12','maruhi nagar','btm','blr','Australia','Queensland',567890,'blr','8765432123','priyankasrisha.m93@gmail.com',13,'1992-11-11','Pending');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (8,'xyz','anu8','arun8','23','btm','btm','blr','Armenia','Lorri',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',10,'1992-12-12','Pending');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (9,'xyz','anu9','arun9','34','maruthi nagar','btm','blr','Antartica','Antartica',567890,'blr','8765432123','priyankasrisha.m93@gmail.com',14,'1992-11-11','Pending');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (10,'VSR2','anu10','arun10','34','maruhi nagar','btm','blr','Armenia','Armavir',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',10,'1993-11-01','Accepted');
insert into `m_volunteers` (`v_code`,`v_id`,`v_name`,`v_fathername`,`v_doorno`,`v_street`,`v_area`,`v_city`,`v_country`,`v_state`,`v_pincode`,`v_native`,`v_mobile`,`v_email`,`v_vangusam`,`v_dob`,`req_status`) values (11,'xyz','anu11','arun11','34','btm','btm','blr','Ashmore and Cartier Island','Ashmore and Cartier Island',567654,'blr','8765432123','priyankasrisha.m93@gmail.com',12,'1992-11-01','Pending');

/*Table structure for table `t_ads` */

DROP TABLE IF EXISTS `t_ads`;

CREATE TABLE `t_ads` (
  `t_ad_no` int(10) NOT NULL auto_increment,
  `ad_no` int(10) default NULL,
  `mem_id` varchar(50) NOT NULL,
  `t_ad_start_date` varchar(16) default NULL,
  `t_ad_exp_date` varchar(16) default NULL,
  `t_ad_status` varchar(15) default NULL,
  PRIMARY KEY  (`t_ad_no`),
  KEY `FK_3` (`mem_id`),
  KEY `FK_2` (`ad_no`),
  CONSTRAINT `t_ads_ibfk_3` FOREIGN KEY (`ad_no`) REFERENCES `m_ads` (`ad_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_ads` */

insert into `t_ads` (`t_ad_no`,`ad_no`,`mem_id`,`t_ad_start_date`,`t_ad_exp_date`,`t_ad_status`) values (1,8,'mb001','01-02-2009','28-02-2010','Active');
insert into `t_ads` (`t_ad_no`,`ad_no`,`mem_id`,`t_ad_start_date`,`t_ad_exp_date`,`t_ad_status`) values (2,10,'mb001','01-02-2009','28-02-2009','Active');
insert into `t_ads` (`t_ad_no`,`ad_no`,`mem_id`,`t_ad_start_date`,`t_ad_exp_date`,`t_ad_status`) values (3,9,'mb003','02-02-2009','27-02-2010','Active');
insert into `t_ads` (`t_ad_no`,`ad_no`,`mem_id`,`t_ad_start_date`,`t_ad_exp_date`,`t_ad_status`) values (4,9,'mb001','01-02-2009','28-02-2010','Active');
insert into `t_ads` (`t_ad_no`,`ad_no`,`mem_id`,`t_ad_start_date`,`t_ad_exp_date`,`t_ad_status`) values (5,9,'mb004','01-02-2009','25-02-2010','Active');
insert into `t_ads` (`t_ad_no`,`ad_no`,`mem_id`,`t_ad_start_date`,`t_ad_exp_date`,`t_ad_status`) values (6,9,'mb005','10-02-2009','26-02-2009','Active');
insert into `t_ads` (`t_ad_no`,`ad_no`,`mem_id`,`t_ad_start_date`,`t_ad_exp_date`,`t_ad_status`) values (7,11,'priya','03/12/2018','03/12/2018','Active');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
