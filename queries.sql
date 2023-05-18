insert into blogger(username,password,name,created_at,email) values ('dale1','pass','dale','2020-02-07','email1@gmail.com');
insert into blogger(username,password,name,created_at,email) values ('dale2','pass','dale steve','2020-04-07','email2@gmail.com');
insert into blogger(username,password,name,created_at,email) values ('dale3','password','dale man','2020-03-07','email3@gmail.com');

insert into blog_post (content,title,created_at,blogger_id) values ('dale is the best post','dale best title','2021-06-07',1);
insert into blog_post (content,title,created_at,blogger_id) values ('dale is the best post 2','dale best title2','2021-06-08',2);

insert into blog_post_comment (content,created_at,blogger_id,blog_post_id) values ('no i am the best','2022-02-02',2,1);
insert into blog_post_comment (content,created_at,blogger_id,blog_post_id) values ('no i am the best!!','2022-03-02',3,1);
insert into blog_post_comment (content,created_at,blogger_id,blog_post_id) values ('no i am the best!!!!','2022-02-02',1,2);
insert into blog_post_comment (content,created_at,blogger_id,blog_post_id) values ('no i am the best!!!!!!!','2022-03-02',2,2);


select username,id from blogger where created_at > '2020-01-01';
update blogger set password='bad_password' where password ='pass';
select content,title,username from blog_post inner join blogger on blog_post.blogger_id = blogger.id;
select blog_post_comment.content,username,title  from blog_post_comment inner join blogger on blogger.id=blog_post_comment.blogger_id
inner join blog_post on blog_post.blogger_id = blogger.id ;
