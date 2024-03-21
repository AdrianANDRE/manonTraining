*** Settings ***
Library    OperatingSystem
Library    squash_tf.TFParamService
*** Keywords ***
Je suis "${name}"
    Log To Console    ${\n}Bonjour ${name} ! Je suis la chouette Bizar à votre service ${\n}
    Set Test Variable    ${USER_NAME}    ${name}

J'accepte la quête : "${quest}"
    Log To Console    ${\n}Tu as choisis la quête suivante : ${quest}, frimeuse...${\n}
    Set Test Variable    ${USER_QUEST}    ${quest}

J'ai un message de confirmation
    ${code}=    Get Test Param    TC_CUF_fairycuf
    Log To Console    QUEST ACCEPTED, ${USER_NAME} ! Voilà ton C'est Une Fée : ${code}
    Create File    ./seal_of_owlity.txt    ${USER_NAME} a accepté ${USER_QUEST} ! La guilde affecte un cetificat a ${USER_NAME} ! Seal of Owlity :D. Le code super secret est ${code}. Bravo tu as réussi Manon !! sois fier de toi ^^ 