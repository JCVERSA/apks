package com.iab.omid.library.mmadbridge.adsession;

public class f {

    private final String f32832a;

    private final String f32833b;

    private f(String str, String str2) {
        this.f32832a = str;
        this.f32833b = str2;
    }

    public static f a(String str, String str2) {
        re.g.f(str, "Name is null or empty");
        re.g.f(str2, "Version is null or empty");
        return new f(str, str2);
    }

    public String b() {
        return this.f32832a;
    }

    public String c() {
        return this.f32833b;
    }
}
