user can signup/login
user can create resource
users can comment on other users resources
comments can be created


User
    - has many resources <<< authored_resources >>>
    - has many comments
    - has many resources, through comments <<< commented_resources >>>


Resource
    - belong to a user <<< author >>>
    - has many comments 
    - has many users through comments as commentors 


Comment
    - belong to user
    - belong to resource 



user 
    username:string
    email:string
    password:string

resource
    title:string
    url: string
    user_id:integer

comment
    user_id:integer
    resource_id:integer 
    content:text


validations <<< after setting your models >>>


Login/signup flow 
 => home page
    - sessions controller 
 => signup 
    - build the signup form 
    - build the create action for submission 
    
 => login
    - session controller 