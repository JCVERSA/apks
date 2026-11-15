package org.jsoup.parser;

public class c {

    private int f68668a;

    private String f68669b;

    c(int i10, String str) {
        this.f68668a = i10;
        this.f68669b = str;
    }

    public String toString() {
        return this.f68668a + ": " + this.f68669b;
    }

    c(int i10, String str, Object... objArr) {
        this.f68669b = String.format(str, objArr);
        this.f68668a = i10;
    }
}
