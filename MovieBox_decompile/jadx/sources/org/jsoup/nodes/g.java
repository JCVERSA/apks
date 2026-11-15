package org.jsoup.nodes;

import java.io.IOException;

public class g extends i {
    public g(String str, String str2, String str3) {
        org.jsoup.helper.d.j(str);
        org.jsoup.helper.d.j(str2);
        org.jsoup.helper.d.j(str3);
        h("name", str);
        h("publicId", str2);
        if (c0("publicId")) {
            h("pubSysKey", "PUBLIC");
        }
        h("systemId", str3);
    }

    private boolean c0(String str) {
        return !org.jsoup.helper.c.e(g(str));
    }

    @Override
    public String B() {
        return "#doctype";
    }

    @Override
    void F(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.n() != Document.OutputSettings.Syntax.html || c0("publicId") || c0("systemId")) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (c0("name")) {
            appendable.append(" ").append(g("name"));
        }
        if (c0("pubSysKey")) {
            appendable.append(" ").append(g("pubSysKey"));
        }
        if (c0("publicId")) {
            appendable.append(" \"").append(g("publicId")).append('\"');
        }
        if (c0("systemId")) {
            appendable.append(" \"").append(g("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override
    void G(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
    }

    @Override
    public String a(String str) {
        return super.a(str);
    }

    public void d0(String str) {
        if (str != null) {
            h("pubSysKey", str);
        }
    }

    @Override
    public String g(String str) {
        return super.g(str);
    }

    @Override
    public j h(String str, String str2) {
        return super.h(str, str2);
    }

    @Override
    public String j() {
        return super.j();
    }

    @Override
    public int n() {
        return super.n();
    }

    @Override
    public boolean w(String str) {
        return super.w(str);
    }
}
