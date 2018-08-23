# abapGit-user-exit-logon-by-rfc
abapGit user exit to log in Github/Gitlab with RFC automatically

"NO LOGIN ANYMORE"

This is useful only to on your private ABAP developer edition.

**Credits : @Christianguenter2 at https://github.com/larshp/abapGit/issues/1841**

By default, abapGit asks for password when you COMMIT your changes from ZABAPGIT.
![image](https://user-images.githubusercontent.com/34005250/44513449-a90c8580-a6bd-11e8-9bd7-5bbf30a5806e.png)

With this project, it won't ask for password anymore.

You may adapt the code to add other RFC destinations.

Note: all other user exits are provided empty.

# Installation

**(1)** Clone this project via ZABAPGIT -> +Online -> Repo URL https://github.com/sandraros/abapGit-user-exit-logon-by-rfc

That will install the class ZCL_ABAPGIT_USER_EXIT. Code same as provided by @Christianguenter2 at https://github.com/larshp/abapGit/issues/1841.

**(2)** manually define the RFC destinations GITHUB and GITLAB with your credentials see below.

Run transaction SM59 to create RFC destinations GITHUB and GITLAB (or the only one you use).

(credits for screen shots: @Christianguenter2) :

**Pay attention to name of RFC destinations GITHUB and GITLAB which must be in upper case**

![SM59 screen 1 for GITHUB](https://user-images.githubusercontent.com/17437789/44337321-96563e80-a47a-11e8-92dd-99dc3c797c65.png)

![SM59 screen 2 for GITHUB](https://user-images.githubusercontent.com/17437789/44337316-92c2b780-a47a-11e8-9c7e-87b21a34d56d.png)
