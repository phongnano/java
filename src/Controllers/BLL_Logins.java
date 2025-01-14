package Controllers;

import Models.DTO_Logins;
import java.util.ArrayList;
import javax.swing.JComboBox;
import javax.swing.JLabel;

public class BLL_Logins {

    DAL_Logins dal = new DAL_Logins();

    public void loadBank(JComboBox combobox) {
        dal.loadBank(combobox);
    }

    public void getLogobank(JLabel lblLogo, String bank) {
        dal.getLogobank(lblLogo, bank);
    }

    public ArrayList<DTO_Logins> checkLogin(String usr) {
        return dal.checkLogin(usr);
    }

    public boolean Login(String usr, String pwd, String bnk) {
        return dal.Login(usr, pwd, bnk);
    }

    public void ChangePasswords(DTO_Logins dto) {
        dal.ChangePassword(dto.getUsername(), dto.getPasswowd(), dto.getNewpassword(), dto.getRepassword());
    }
}
