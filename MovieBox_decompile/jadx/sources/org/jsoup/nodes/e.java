package org.jsoup.nodes;

import java.io.IOException;

public class e extends i {
    public e(String str) {
        this.f68600c = str;
    }

    @Override
    public String B() {
        return "#comment";
    }

    @Override
    void F(Appendable appendable, int i10, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.m()) {
            z(appendable, i10, outputSettings);
        }
        appendable.append("<!--").append(c0()).append("-->");
    }

    @Override
    void G(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
    }

    @Override
    public String a(String str) {
        return super.a(str);
    }

    public String c0() {
        return a0();
    }

    @Override
    public String g(String str) {
        return super.g(str);
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
    public String toString() {
        return D();
    }

    @Override
    public boolean w(String str) {
        return super.w(str);
    }
}
