SELECT 
    Users.Id As UserId,
    Users.DisplayName As UserName,
    Posts.LastActivityDate As Date,
    Users.Location AS Location,
    Posts.Id AS PostId,
    PostTags.TagId AS TagId,
    Tags.TagName AS TagName    
FROM Posts
    INNER JOIN Users ON Posts.LastEditorUserId = Users.Id
    INNER JOIN PostTags ON Posts.Id = PostTags.PostId 
    INNER JOIN Tags ON Tags.Id = PostTags.TagId
Where 
    (
    Posts.LastActivityDate > '2017-07-08' 
AND Posts.LastActivityDate < '2018-07-07'
    )
AND  (
    Users.Location = 'Toronto'
    OR    Users.Location = 'Toronto, ON'
    OR    Users.Location = 'Toronto, ON, Canada'
    )