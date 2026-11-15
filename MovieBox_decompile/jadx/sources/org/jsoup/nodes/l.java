package org.jsoup.nodes;

public class l extends i {
    public l(String str) {
        this.f68600c = str;
    }

    static boolean e0(StringBuilder sb2) {
        return sb2.length() != 0 && sb2.charAt(sb2.length() - 1) == ' ';
    }

    @Override
    public String B() {
        return "#text";
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0024  */
    /* JADX WARN: Code duplicated, block: B:18:0x003a  */
    @Override
    void F(Appendable appendable, int i10, Document.OutputSettings outputSettings) {
        if (outputSettings.m()) {
            if (V() == 0) {
                j jVar = this.f68601a;
                if ((jVar instanceof Element) && ((Element) jVar).T0().a() && !d0()) {
                    z(appendable, i10, outputSettings);
                } else if (outputSettings.k() && W().size() > 0 && !d0()) {
                    z(appendable, i10, outputSettings);
                }
            } else if (outputSettings.k()) {
                z(appendable, i10, outputSettings);
            }
        }
        Entities.e(appendable, a0(), outputSettings, false, outputSettings.m() && (I() instanceof Element) && !Element.O0(I()), false);
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

    public boolean d0() {
        return org.jsoup.helper.c.e(a0());
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
