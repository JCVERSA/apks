package defpackage;

import java.util.Locale;

public abstract class sfa {
    public final String a;
    public final Locale b;
    public final Object c;

    public sfa(String str, Locale locale, Object obj) {
        this.a = str;
        this.b = locale;
        this.c = obj;
    }

    public ufa a() {
        return ufa.a();
    }

    public Locale b() {
        return this.b;
    }

    public String c() {
        return this.a;
    }

    public abstract ufa d(String str, Locale locale);
}
