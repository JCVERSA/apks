package org.jsoup.parser;

public class d {

    public static final d f68670c = new d(false, false);

    public static final d f68671d = new d(true, true);

    private final boolean f68672a;

    private final boolean f68673b;

    public d(boolean z10, boolean z11) {
        this.f68672a = z10;
        this.f68673b = z11;
    }

    org.jsoup.nodes.b a(org.jsoup.nodes.b bVar) {
        if (!this.f68673b) {
            bVar.v();
        }
        return bVar;
    }

    String b(String str) {
        String strTrim = str.trim();
        return !this.f68672a ? sz.b.a(strTrim) : strTrim;
    }
}
