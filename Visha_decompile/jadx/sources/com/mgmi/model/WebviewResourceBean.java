package com.mgmi.model;

import java.io.Serializable;

public class WebviewResourceBean implements com.mgadplus.netlib.json.a, Serializable {
    public String addr;
    public String ctype;

    public WebviewResourceBean(String str, String str2) {
        this.ctype = str;
        this.addr = str2;
    }
}
