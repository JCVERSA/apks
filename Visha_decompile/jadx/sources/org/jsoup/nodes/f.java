package org.jsoup.nodes;

import defpackage.dnb;
import defpackage.m0a;
import defpackage.rj5;
import java.io.IOException;

public class f extends rj5 {
    public f(String str, String str2, String str3) {
        dnb.i(str);
        dnb.i(str2);
        dnb.i(str3);
        i("name", str);
        i("publicId", str2);
        i("systemId", str3);
        i0();
    }

    @Override
    public String E() {
        return "#doctype";
    }

    @Override
    public void I(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.k() != Document.OutputSettings.Syntax.html || g0("publicId") || g0("systemId")) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (g0("name")) {
            appendable.append(" ").append(h("name"));
        }
        if (g0("pubSysKey")) {
            appendable.append(" ").append(h("pubSysKey"));
        }
        if (g0("publicId")) {
            appendable.append(" \"").append(h("publicId")).append('\"');
        }
        if (g0("systemId")) {
            appendable.append(" \"").append(h("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override
    public void J(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    @Override
    public String a(String str) {
        return super.a(str);
    }

    public final boolean g0(String str) {
        return !m0a.f(h(str));
    }

    @Override
    public String h(String str) {
        return super.h(str);
    }

    public void h0(String str) {
        if (str != null) {
            i("pubSysKey", str);
        }
    }

    @Override
    public g i(String str, String str2) {
        return super.i(str, str2);
    }

    public final void i0() {
        if (g0("publicId")) {
            i("pubSysKey", "PUBLIC");
        } else if (g0("systemId")) {
            i("pubSysKey", "SYSTEM");
        }
    }

    @Override
    public String l() {
        return super.l();
    }

    @Override
    public int p() {
        return super.p();
    }

    @Override
    public g v() {
        return super.v();
    }
}
