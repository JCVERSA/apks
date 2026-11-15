package com.hunantv.media.report.a;

public class b implements a {
    private String a;
    private String b;

    public b() {
        this.b = "_";
    }

    @Override
    public void a(String str, String str2) {
        String str3;
        if (this.a == null) {
            str3 = "";
        } else {
            str3 = this.a + this.b;
        }
        this.a = str3;
        this.a += str + "_" + str2;
    }

    public String toString() {
        return this.a;
    }

    public b(String str) {
        this.b = str;
    }
}
