package com.mgmi.model;

import android.text.TextUtils;

public class h extends d {
    public int e;
    public boolean f;
    public String g;
    public int h;
    public StarInfoJson i;

    public void m(String str) {
        this.i = !TextUtils.isEmpty(str) ? (StarInfoJson) com.mgadplus.netlib.json.b.a(str, StarInfoJson.class) : null;
    }
}
