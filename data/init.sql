CREATE DATABASE ssac;

    use ssac;
    
    CREATE TABLE students (
        id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        myid VARCHAR(50) NOT NULL,
        firstName VARCHAR(255) NOT NULL,
        lastName VARCHAR(255) NOT NULL,
        email VARCHAR(50) NOT NULL,
        majorCode VARCHAR(30) NOT NULL,
        minorCode VARCHAR(30) NOT NULL,
        preCode VARCHAR(30) NOT NULL,
        matricTerm INT(11) NOT NULL,
        gradTerm INT(11) NOT NULL,
        bulletinTerm INT(11) NOT NULL
    );
    
    CREATE TABLE majors (
        id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        majorCode VARCHAR(30) NOT NULL,
        majReqCode VARCHAR(30) NOT NULL,
        bulletinTerm INT(11) NOT NULL
    );
    
    CREATE TABLE courses (
        id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        course_id INT(11) NOT NULL,
        course_prefix VARCHAR(10) NOT NULL,
        course_num VARCHAR(10) NOT NULL,
        title TEXT NOT NULL,
        description TEXT NOT NULL,
        course_min_hrs DECIMAL(8,4) NOT NULL,
        course_max_hrs DECIMAL(8,4) NOT NULL,
        courseTerm INT(10) NOT NULL
    );
    
    CREATE TABLE degree_requirements (
        id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        majReqCode VARCHAR(50) NOT NULL,
        majorCode VARCHAR(30) NOT NULL,
        course_id INT(11) NOT NULL,
        bulletinTerm INT(11) NOT NULL
    );
    
    CREATE INDEX majorCode ON students(majorCode);
    CREATE INDEX bulletinTerm ON students(bulletinTerm);
    CREATE INDEX bulletinTerm ON majors(bulletinTerm);
    CREATE INDEX course_id ON degree_requirements(course_id);
    CREATE INDEX majReqCode ON degree_requirements(majReqCode);
    CREATE INDEX majorCode ON degree_requirements(majorCode);
    CREATE INDEX bulletinTerm ON degree_requirements(bulletinTerm);
    CREATE INDEX course_prefix ON courses(course_prefix);
    CREATE INDEX course_num ON courses(course_num);
    CREATE INDEX courseTerm ON courses(courseTerm);