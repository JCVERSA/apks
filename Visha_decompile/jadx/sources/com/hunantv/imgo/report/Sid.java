package com.hunantv.imgo.report;

import java.io.Serializable;
import java.util.UUID;

public class Sid implements Serializable {
    private static Sid instance = null;
    private static final long serialVersionUID = 6279694845844962733L;
    private String sid;

    public static Sid getInstance() {
        if (instance == null) {
            Sid sid = new Sid();
            instance = sid;
            sid.rebuild();
        }
        return instance;
    }

    private String getSId() {
        return UUID.randomUUID().toString().replaceAll("-", "");
    }

    public String get() {
        return this.sid;
    }

    public void rebuild() {
        this.sid = getSId();
    }
}
