package org.jsoup.nodes;

import defpackage.m0a;
import defpackage.rj5;

public class j extends rj5 {
    public j(String str) {
        this.e = str;
    }

    public static boolean j0(StringBuilder sb) {
        return sb.length() != 0 && sb.charAt(sb.length() - 1) == ' ';
    }

    @Override
    public String E() {
        return "#text";
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:18:0x003a  */
    @Override
    public void I(Appendable appendable, int i, Document.OutputSettings outputSettings) {
        boolean zJ = outputSettings.j();
        if (zJ) {
            if (Z() == 0) {
                g gVar = this.b;
                if ((gVar instanceof Element) && ((Element) gVar).k1().c() && !i0()) {
                    B(appendable, i, outputSettings);
                } else if (outputSettings.h() && a0().size() > 0 && !i0()) {
                    B(appendable, i, outputSettings);
                }
            } else if (outputSettings.h()) {
                B(appendable, i, outputSettings);
            }
        }
        Entities.g(appendable, d0(), outputSettings, false, zJ && !Element.b1(this.b), zJ && (this.b instanceof Document));
    }

    @Override
    public void J(Appendable appendable, int i, Document.OutputSettings outputSettings) {
    }

    @Override
    public String a(String str) {
        return super.a(str);
    }

    @Override
    public j x0() {
        return (j) super.x0();
    }

    @Override
    public String h(String str) {
        return super.h(str);
    }

    public String h0() {
        return d0();
    }

    public boolean i0() {
        return m0a.f(d0());
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
