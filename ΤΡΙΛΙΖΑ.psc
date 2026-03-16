ΠΡΟΓΡΑΜΜΑ TIC-TAC-TOE
ΜΕΤΑΒΛΗΤΕΣ
  ΑΚΕΡΑΙΕΣ:ι,ξ,κ,θ,λ,μ
  ΧΑΡΑΚΤΗΡΕΣ: απ,π[3,3]

ΑΡΧΗ
  ΓΡΑΨΕ 'WOULD YOU LIKE TO PLAY?(YOUR ANSWER MUST BE YES OR NO)'
  ΔΙΑΒΑΣΕ απ
  ΟΣΟ απ<>'YES' ΚΑι απ <>'NO' ΕΠΑΝΑΛΑΒΕ
    ΓΡΑΨΕ'NOT ACCEPTABLE ANSWER, TYPE IT AGAIN'
    ΔΙΑΒΑΣΕ απ
  ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
  ΟΣΟ απ = 'YES' ΕΠΑΝΑΛΑΒΕ
    ΓΙΑ ι ΑΠΟ 1 ΜΕΧΡΙ 3
      ΓΙΑ ξ ΑΠΟ 1 ΜΕΧΡΙ 3
        π[ι,ξ] <-- 'Α'
      ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
    ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
    ΓΡΑΨΕ 'INSTRUCTIONS: IN ORDER TO CHOOSE THE BOX YOU WANT TYPE 2 NUMBERS BETWEEN 1 AND 3(THE FIRST ONE REPRESENTS THE LINE AND THE SECOND ONE REPRESENTS THE COLUMN)(EVERY BOX THAT HAS NOT BEEN CHOSEN WILL HAVE THE LETTER A )'
    ΓΡΑΨΕ 'FOR A TWO-PLAYER GAME PRESS P. FOR A GAME AGAINST THE COMPUTER PRESS C'
    ΔΙΑΒΑΣΕ απ
    ΑΝ απ='P' ΤΟΤΕ
      ΓΡΑΨΕ 'PLAYER ONE TAKES Χ, PLAYER TWO TAKES Ο'
      ι <-- 1
      ΟΣΟ ι <= 9 ΕΠΑΝΑΛΑΒΕ
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'NOW IS THE TURN OF PLAYER NUMBER:',ι MOD 2 +1
        ΓΡΑΨΕ 'GIVE THE NUMBER OF THE LINE AND COLUMN'

        ΔΙΑΒΑΣΕ θ,ξ
        ΟΣΟ (π[θ,ξ]<>'Α') ΕΠΑΝΑΛΑΒΕ
          ΓΡΑΨΕ 'ALREADY CHOSEN BOX,CHOOSE A DIFFERENT ONE'
          ΔΙΑΒΑΣΕ θ,ξ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΑΝ ι MOD 2 =1 ΤΟΤΕ
          π[θ,ξ] <-- 'Χ'
        ΑΛΛΙΩΣ
          π[θ,ξ] <-- 'Ο'
        ΤΕΛΟΣ_ΑΝ
        ΑΝ (π[1,1]='Χ' ΚΑΙ π[1,2]='Χ' ΚΑΙ π[1,3]='Χ') Η (π[1,1]='Χ' ΚΑΙ π[2,1]='Χ' ΚΑΙ π[3,1]='Χ') Η (π[2,1]='Χ' ΚΑΙ π[2,2]='Χ' ΚΑΙ π[2,3]='Χ') Η (π[1,2]='Χ' ΚΑΙ π[2,2]='Χ' ΚΑΙ π[3,2]='Χ') Η (π[3,1]='Χ' ΚΑΙ π[3,2]='Χ' ΚΑΙ π[3,3]='Χ') Η  (π[1,3]='Χ' ΚΑΙ π[2,3]='Χ' ΚΑΙ π[3,3]='Χ') Η  (π[1,1]='Χ' ΚΑΙ π[2,2]='Χ' ΚΑΙ π[3,3]='Χ') Η   (π[1,3]='Χ' ΚΑΙ π[2,2]='Χ' ΚΑΙ π[3,1]='Χ') ΤΟΤΕ
          ΓΡΑΨΕ 'PLAYER ONE WINS'
          ι <-- 10
        ΑΛΛΙΩΣ_ΑΝ (π[1,1]='Ο' ΚΑΙ π[1,2]='Ο' ΚΑΙ π[1,3]='Ο') Η (π[1,1]='Ο' ΚΑΙ π[2,1]='Ο' ΚΑΙ π[3,1]='Ο') Η (π[2,1]='Ο' ΚΑΙ π[2,2]='Ο' ΚΑΙ π[2,3]='Ο') Η (π[1,2]='Ο' ΚΑΙ π[2,2]='Ο' ΚΑΙ π[3,2]='Ο') Η (π[3,1]='Ο' ΚΑΙ π[3,2]='Ο' ΚΑΙ π[3,3]='Ο') Η  (π[1,3]='Ο' ΚΑΙ π[2,3]='Ο' ΚΑΙ π[3,3]='Ο') Η  (π[1,1]='Ο' ΚΑΙ π[2,2]='Ο' ΚΑΙ π[3,3]='Ο') Η   (π[1,3]='Ο' ΚΑΙ π[2,2]='Ο' ΚΑΙ π[3,1]='Ο') ΤΟΤΕ
          ΓΡΑΨΕ 'PLAYER TWO WINS'
          ι <-- 10
        ΑΛΛΙΩΣ_ΑΝ ι=9 ΤΟΤΕ
          ΓΡΑΨΕ 'IT'S A DRAW'
        ΤΕΛΟΣ_ΑΝ
        ι <-- ι+1
      ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
    ΑΛΛΙΩΣ_ΑΝ απ='ΥΠ' ΤΟΤΕ
      ΓΡΑΨΕ ' IT IS THE COMPUTER'S TURN'
      ΓΡΑΨΕ' COMPUTER CHOOSES THE TOP LEFT BOX'
      π[1,1] <-- 'Χ'
      ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
        κ <-- 0
        ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
          ΓΡΑΨΕ_ π[λ,μ]
          κ <-- κ+1
          ΑΝ  κ=3 ΤΟΤΕ
            ΓΡΑΨΕ
            ΓΡΑΨΕ_ '-----'
            ΓΡΑΨΕ
          ΤΕΛΟΣ_ΑΝ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
      ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
      ΓΡΑΨΕ 'GIVE THE NUMBER FOR THE LINE AND COLUMN'
      ΔΙΑΒΑΣΕ ι,ξ
      π[ι,ξ] <-- 'Ο'
      ΑΝ (ι=1 ΚΑΙ ξ=3)  ΤΟΤΕ
        ΓΡΑΨΕ 'COMPUTER CHOOSE THE BOTTOM RIGHT BOX'
        π[3,3] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ ι=2 ΚΑΙ ξ=2 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOSSE THE BOTTOM LEFT BOX'
          π[3,1] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ ' GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=2 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM MIDDLE BOX'
            π[3,2] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ_ΑΝ ι=3 ΚΑΙ ξ =2 ΤΟΤΕ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE LEFT BOX'
            π[2,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE LEFT BOX'
            π[2,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE BOX'
          π[2,2] <-- 'Χ'
          ΓΡΑΨΕ 'COMPUTER WINS'
        ΤΕΛΟΣ_ΑΝ
      ΑΛΛΙΩΣ_ΑΝ ι=3 ΚΑΙ ξ=1 ΤΟΤΕ
        ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM RIGHT BOX'
        π[3,3] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ ι=2 ΚΑΙ ξ=2 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP RIGHT BOX'
          π[1,3] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ ' GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=2 ΚΑΙ ξ=3 ΤΟΤΕ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP MIDDLE BOX'
            π[1,2] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ_ΑΝ ι=1 ΚΑΙ ξ =2 ΤΟΤΕ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE RIGHT MIDDLE BOX'
            π[2,3] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE RIGHT MIDDLE BOX'
            π[2,3] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE BOX'
          π[2,2] <-- 'Χ'
          ΓΡΑΨΕ 'COMPUTER WINS'
        ΤΕΛΟΣ_ΑΝ
      ΑΛΛΙΩΣ_ΑΝ ι=3 ΚΑΙ ξ =3   ΤΟΤΕ
        ΓΡΑΨΕ'COMPUTER CHOOSES THE TOP RIGHT BOX'
        π[1,3] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ ι=1 ΚΑΙ ξ=2 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
          π[3,1] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=2 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE MIDDLE BOX'
            π[2,2] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE LEFT BOX'
            π[2,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP MIDDLE BOX'
          π[1,2] <-- 'Χ'
          ΓΡΑΨΕ 'COMPUTER WINS'
        ΤΕΛΟΣ_ΑΝ
      ΑΛΛΙΩΣ_ΑΝ ι=2 ΚΑΙ ξ=2 ΤΟΤΕ
        ΓΡΑΨΕ'COMPUTER CHOOSES THE BOTTOM RIGHT BOX'
        π[3,3] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ (ι=3 ΚΑΙ ξ=1)  ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP RIGHT BOX'
          π[1,3] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=1 ΚΑΙ ξ=2 ΤΟΤΕ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE RIGHT BOX'
            π[2,3] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP MIDDLE BOX'
            π[1,2] <-- 'Χ'
            ΓΡΑΨΕ'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ_ΑΝ (ι=1 ΚΑΙ ξ=3)  ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
          π[3,1] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=3 ΚΑΙ ξ=2 ΤΟΤΕ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE LEFT BOX'
            π[2,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM MIDDLE BOX'
            π[3,2] <-- 'Χ'
            ΓΡΑΨΕ'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ_ΑΝ ι=1 ΚΑΙ ξ =2 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOSSES THE BOTTOM MIDDLE BOX'
          π[3,2] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=3 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE TOP RIGHT BOX '
            π[1,3] <-- 'Χ'
            ΓΡΑΨΕ 'DEFINITE DRAW'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
            π[3,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ_ΑΝ ι=2 ΚΑΙ ξ =1 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE RIGHT BOX'
          π[2,3] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=1 ΚΑΙ ξ=3 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
            π[3,1] <-- 'Χ'
            ΓΡΑΨΕ 'DEFINITE DRAW'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP RIGHT BOX'
            π[1,3] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ_ΑΝ ι=2 ΚΑΙ ξ =3 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE LEFT BOX'
          π[2,1] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=3 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE TOP RIGHT BOX'
            π[1,3] <-- 'Χ'
            ΓΡΑΨΕ 'DEFINITE DRAW'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
            π[3,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ_ΑΝ ι=3 ΚΑΙ ξ =2 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP MIDDLE BOX'
          π[1,2] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=1 ΚΑΙ ξ=3 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
            π[3,1] <-- 'Χ'
            ΓΡΑΨΕ 'DEFINITE DRAW'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX '
            π[3,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΤΕΛΟΣ_ΑΝ
      ΑΛΛΙΩΣ_ΑΝ ι=1 ΚΑΙ ξ=2 ΤΟΤΕ
        ΓΡΑΨΕ'COMPUTER CHOOSES THE MIDDLE BOX'
        π[2,2] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ ι=3 ΚΑι ξ =3 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
          π[3,1] <-- 'Χ'
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=2 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE TOP RIGHT BOX'
            π[1,3] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE LEFT BOX'
            π[2,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ
          ΓΡΑΨΕ'COMPUTER CHOOSES THE BOTTOM RIGHT BOX'
          π[3,3] <-- 'Χ'
          ΓΡΑΨΕ 'COMPUTER WINS'
        ΤΕΛΟΣ_ΑΝ
      ΑΛΛΙΩΣ_ΑΝ ι=2 ΚΑΙ ξ=1 ΤΟΤΕ
        ΓΡΑΨΕ'COMPUTER CHOOSES THE MIDDLE BOX'
        π[2,2] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ ι=3 ΚΑι ξ =3 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP RIGHT BOX '
          π[1,3] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=3 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE TOP MIDDLE BOX'
            π[1,2] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
            π[3,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ
          ΓΡΑΨΕ 'COMPOUTER CHOOSES THE BOTTOM RIGHT BOX'
          π[3,3] <-- 'Χ'
          ΓΡΑΨΕ 'COMPUTER WINS'
        ΤΕΛΟΣ_ΑΝ
      ΑΛΛΙΩΣ_ΑΝ ι=3 ΚΑΙ ξ=2 ΤΟΤΕ
        ΓΡΑΨΕ'COMPUTER CHOOSES THE MIDDLE BOX'
        π[2,2] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ ι=3 ΚΑι ξ =3 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
          π[3,1] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'

          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=2 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE TOP RIGHT BOX'
            π[1,3] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE MIDDLE LEFT BOX'
            π[2,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM RIGHT BOX'
          π[3,3] <-- 'Χ'
          ΓΡΑΨΕ 'COMPUTER WINS'
        ΤΕΛΟΣ_ΑΝ
      ΑΛΛΙΩΣ_ΑΝ ι=2 ΚΑΙ ξ=3 ΤΟΤΕ
        ΓΡΑΨΕ'COMPUTER CHOOSES THE MIDDLE BOX'
        π[2,2] <-- 'Χ'
        ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
          κ <-- 0
          ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
            ΓΡΑΨΕ_ π[λ,μ]
            κ <-- κ+1
            ΑΝ  κ=3 ΤΟΤΕ
              ΓΡΑΨΕ
              ΓΡΑΨΕ_ '-----'
              ΓΡΑΨΕ
            ΤΕΛΟΣ_ΑΝ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
        ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
        ΔΙΑΒΑΣΕ ι,ξ
        π[ι,ξ] <-- 'Ο'
        ΑΝ ι=3 ΚΑι ξ =3 ΤΟΤΕ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE TOP RIGHT BOX'
          π[1,3] <-- 'Χ'
          ΓΙΑ λ ΑΠΟ 1 ΜΕΧΡΙ 3
            κ <-- 0
            ΓΙΑ μ ΑΠΟ 1 ΜΕΧΡΙ 3
              ΓΡΑΨΕ_ π[λ,μ]
              κ <-- κ+1
              ΑΝ  κ=3 ΤΟΤΕ
                ΓΡΑΨΕ
                ΓΡΑΨΕ_ '-----'
                ΓΡΑΨΕ
              ΤΕΛΟΣ_ΑΝ
            ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
          ΓΡΑΨΕ 'GIVE THE NUMBERS FOR THE LINE AND COLUMN'
          ΔΙΑΒΑΣΕ ι,ξ
          π[ι,ξ] <-- 'Ο'
          ΑΝ ι=3 ΚΑΙ ξ=1 ΤΟΤΕ
            ΓΡΑΨΕ'COMPUTER CHOOSES THE TOP MIDDLE BOX'
            π[1,2] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΑΛΛΙΩΣ
            ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM LEFT BOX'
            π[3,1] <-- 'Χ'
            ΓΡΑΨΕ 'COMPUTER WINS'
          ΤΕΛΟΣ_ΑΝ
        ΑΛΛΙΩΣ
          ΓΡΑΨΕ 'COMPUTER CHOOSES THE BOTTOM RIGHT BOX'
          π[3,3] <-- 'Χ'
          ΓΡΑΨΕ 'COMPUTER WINS'
        ΤΕΛΟΣ_ΑΝ
      ΤΕΛΟΣ_ΑΝ








    ΤΕΛΟΣ_ΑΝ






    ΓΙΑ ι ΑΠΟ 1 ΜΕΧΡΙ 3
      κ <-- 0
      ΓΙΑ ξ ΑΠΟ 1 ΜΕΧΡΙ 3
        ΓΡΑΨΕ_ π[ι,ξ]
        κ <-- κ+1
        ΑΝ  κ=3 ΤΟΤΕ
          ΓΡΑΨΕ
          ΓΡΑΨΕ_ '-----'
          ΓΡΑΨΕ
        ΤΕΛΟΣ_ΑΝ
      ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
    ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
    ΓΡΑΨΕ 'WOULD YOU LIKE TO PLAY AGAIN?(YOUR ANSWER MUST BE YES OR NO)'
    ΔΙΑΒΑΣΕ απ
    ΟΣΟ απ<>'YES' ΚΑΙ απ<>'NO' ΕΠΑΝΑΛΑΒΕ
      ΓΡΑΨΕ'WRONG ANSWER TYPE AGAIN'
      ΔΙΑΒΑΣΕ απ
    ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ
  ΤΕΛΟΣ_ΕΠΑΝΑΛΗΨΗΣ

ΤΕΛΟΣ_ΠΡΟΓΡΑΜΜΑΤΟΣ

