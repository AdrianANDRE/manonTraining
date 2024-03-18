*** Settings ***
Library    OperatingSystem

*** Keywords ***
Je suis "${name}"
    Log To Console    ${\n}Bonjour ${name} ! Je suis la chouette Bizar à votre service ${\n}
    Set Test Variable    ${USER_NAME}    ${name}

J'accepte la quête : "${quest}"
    Log To Console    ${\n}Tu as choisis la quête suivante : ${quest}, frimeuse...${\n}
    Set Test Variable    ${USER_QUEST}    ${quest}

J'ai un message de confirmation
    Log To Console    QUEST ACCEPTED, ${USER_NAME} !
    Create File    ./cetificats.txt    ${USER_NAME} a accepté ${USER_QUEST} ! La guilde affecte un cetificat a ${USER_NAME} ! Seal of Owl Quality :D