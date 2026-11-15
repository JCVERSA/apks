package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;
import java.util.ArrayList;

public class EmergencyListRes implements Serializable {
    public ArrayList<Emergency> contacts;

    public static class Emergency implements Serializable {
        public String email;
        public String id;
        public String phone;
        public String userName;
    }
}
