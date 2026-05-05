create table supplier(
	sid int primary key,
    sname varchar(50),
    rating float
);

create table parts(
	pid int primary key,
    pname varchar(50),
    color varchar(10)
);

create table catalog(
	sid int,
    pid int,
    cost float,
    foreign key (sid) references supplier(sid),
    foreign key (pid) references parts(pid)
);
