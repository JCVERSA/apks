package com.mbridge.msdk.mbsignalcommon.windvane;

public enum d {
    JS("js", "application/x-javascript"),
    CSS("css", "text/css"),
    JPG("jpg", "image/jpeg"),
    JPEG("jpep", "image/jpeg"),
    PNG("png", "image/png"),
    WEBP("webp", "image/webp"),
    GIF("gif", "image/gif"),
    HTM("htm", "text/html"),
    HTML("html", "text/html");


    private String f35725a;

    private String f35726b;

    d(String str, String str2) {
        this.f35725a = str;
        this.f35726b = str2;
    }

    public String b() {
        return this.f35726b;
    }

    public String c() {
        return this.f35725a;
    }
}
