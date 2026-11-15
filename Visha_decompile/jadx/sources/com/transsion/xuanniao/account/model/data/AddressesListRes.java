package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;
import java.util.ArrayList;

public class AddressesListRes extends EncryptRes {
    public ArrayList<Address> addresses;

    public static class Address implements Serializable {
        public String address;
        public String country;
        public String countryCode;
        public String createdAt;
        public boolean defaultFlag;
        public String deleteStatus;
        public String district;
        public String id;
        public String label;
        public String phone;
        public String postalCode;
        public String province;
        public String updatedAt;
        public String userName;
    }
}
