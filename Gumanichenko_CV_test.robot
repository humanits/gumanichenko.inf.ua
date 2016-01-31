*** Settings ***
Test Setup        Open test browser
Test Teardown     Close test browser
Library           Selenium2Library
Resource          Gumanichenko_CV_KeyWords.txt

*** Variables ***

*** Test Cases ***
start_cv
    [Tags]    start
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    photo.jpg

download_pdf
    [Tags]    download    pdf
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    pdf.jpg
    Click Image    pdf.jpg
    Get All Links

open_google_docs
    [Tags]    google    docs
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    doc.jpg

linkedin
    [Tags]    linked
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    linked.jpg

vk
    [Tags]    vk
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    vk.jpg

fb
    [Tags]    fb
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    fb.jpg

skype
    [Tags]    skype
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Link    skype:vgxviper?chat

test_ex
    [Tags]    test_ex
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    test.png

git
    [Tags]    git
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Image    git.png

text
    [Tags]    text
    Go to    http://gumanichenko.inf.ua
    Page Should Contain Element    mytext2

Open test browser
    Open browser    about:

Close test browser
    Close all browsers
