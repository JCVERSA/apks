package org.jsoup.nodes;

import defpackage.rj5;
import java.io.IOException;

public class d extends rj5 {
    public d(String str) {
        this.e = str;
    }

    @Override
    public String E() {
        return "#comment";
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001e  */
    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    @Override
    public void I(Appendable appendable, int i, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.j()) {
            if (Z() == 0) {
                g gVar = this.b;
                if ((gVar instanceof Element) && ((Element) gVar).k1().c()) {
                    B(appendable, i, outputSettings);
                } else if (outputSettings.h()) {
                    B(appendable, i, outputSettings);
                }
            } else if (outputSettings.h()) {
                B(appendable, i, outputSettings);
            }
        }
        appendable.append("<!--").append(h0()).append("-->");
    }

    @Override
    public void J(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    @Override
    public String a(String str) {
        return super.a(str);
    }

    @Override
    public d x0() {
        return (d) super.x0();
    }

    @Override
    public String h(String str) {
        return super.h(str);
    }

    public String h0() {
        return d0();
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
    public String toString() {
        return G();
    }

    @Override
    public g v() {
        return super.v();
    }
}
