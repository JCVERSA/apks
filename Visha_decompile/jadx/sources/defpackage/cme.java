package defpackage;

import java.util.Objects;

public final class cme {
    public final String a;
    public final xge b;
    public final wfe c;
    public final ipe d;
    public final lbe e;
    public final dje f;

    static {
        new v8e().c();
        int i = kfh.a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
    }

    public cme(String str, mce mceVar, xge xgeVar, wfe wfeVar, ipe ipeVar, dje djeVar, ile ileVar) {
        this.a = str;
        this.b = xgeVar;
        this.c = wfeVar;
        this.d = ipeVar;
        this.e = mceVar;
        this.f = djeVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cme)) {
            return false;
        }
        cme cmeVar = (cme) obj;
        return Objects.equals(this.a, cmeVar.a) && this.e.equals(cmeVar.e) && Objects.equals(this.b, cmeVar.b) && Objects.equals(this.c, cmeVar.c) && Objects.equals(this.d, cmeVar.d) && Objects.equals(this.f, cmeVar.f);
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        xge xgeVar = this.b;
        return (((((((iHashCode + (xgeVar != null ? xgeVar.hashCode() : 0)) * 31) + this.c.hashCode()) * 31) + this.e.hashCode()) * 31) + this.d.hashCode()) * 31;
    }
}
