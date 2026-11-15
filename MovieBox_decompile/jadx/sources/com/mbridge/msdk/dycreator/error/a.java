package com.mbridge.msdk.dycreator.error;

public class a {

    private int f34041a;

    private String f34042b;

    public a(b bVar) {
        if (bVar != null) {
            this.f34041a = bVar.b();
            this.f34042b = bVar.c();
        }
    }

    public String toString() {
        return "DyError{errorCode=" + this.f34041a + '}';
    }

    public a(int i10, String str) {
        this.f34041a = i10;
        this.f34042b = str;
    }
}
