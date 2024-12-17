***Settings***
Library    SeleniumLibrary
Resource    ./Keyword.robot
Variables   ./data.yaml

***Test Cases***
User need to open brower
    Open Browser   ${baseUrl}    edge
    Maximize Browser Window

User go to register Page
    Wait until element is ready then click element      xpath=//button[text()="สมัครสมาชิก"]

Robot should verify webPage open and title
    Wait until Page Contains then verify webpage
    Wait until Page Contains then verify title

User input information in register Page
    Wait until element is ready then input text     name=email                  ${Useremail}
    Wait until element is ready then input text     name=firstName              ${Username}
    Wait until element is ready then input text     name=lastName               ${UserLastname}
    Wait until element is ready then input text     name=phoneNumber            ${UserPhonenumber}
    Wait until element is ready then input text     name=newPassword            ${Userpassword}
    Wait until element is ready then input text     name=confirmPassword        ${Userpassword}

User select confirm after input information
    Wait until element is ready then click element      xpath=//div[@class="mt-8"]//div[@class="cursor-pointer"]
    Wait until element is ready then click element      xpath=//div[@class="mt-12 xs:mt-8"]//div[@class="cursor-pointer"]
    Wait until element is ready then click element      xpath=//input[@type="checkbox"]
    Wait until element is ready then click element      xpath=//div[@class="mt-10"]//button[@type="submit"]

future skill should display OTP page and display message 
    Wait until Page Contains then verify text     ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์XX-XXXX-0000



    