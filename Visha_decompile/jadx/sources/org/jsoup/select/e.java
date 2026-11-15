package org.jsoup.select;

import com.alibaba.android.arouter.utils.Consts;
import defpackage.dnb;
import defpackage.m0a;
import defpackage.mpa;
import defpackage.v17;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.slf4j.Marker;

public class e {
    public static final String[] d = {StringUtils.COMMA, ">", Marker.ANY_NON_NULL_MARKER, "~", " "};
    public static final String[] e = {"=", "!=", "^=", "$=", "*=", "~="};
    public static final Pattern f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);
    public static final Pattern g = Pattern.compile("([+-])?(\\d+)");
    public final mpa a;
    public final String b;
    public final List c = new ArrayList();

    public e(String str) {
        dnb.g(str);
        String strTrim = str.trim();
        this.b = strTrim;
        this.a = new mpa(strTrim);
    }

    public static c t(String str) {
        try {
            return new e(str).s();
        } catch (IllegalArgumentException e2) {
            throw new Selector.SelectorParseException(e2.getMessage(), new Object[0]);
        }
    }

    public final void a() {
        this.c.add(new c.a());
    }

    public final void b() {
        mpa mpaVar = new mpa(this.a.a('[', ']'));
        String strH = mpaVar.h(e);
        dnb.g(strH);
        mpaVar.i();
        if (mpaVar.j()) {
            if (strH.startsWith("^")) {
                this.c.add(new c.d(strH.substring(1)));
                return;
            } else {
                this.c.add(new c.b(strH));
                return;
            }
        }
        if (mpaVar.k("=")) {
            this.c.add(new c.e(strH, mpaVar.q()));
            return;
        }
        if (mpaVar.k("!=")) {
            this.c.add(new c.i(strH, mpaVar.q()));
            return;
        }
        if (mpaVar.k("^=")) {
            this.c.add(new c.j(strH, mpaVar.q()));
            return;
        }
        if (mpaVar.k("$=")) {
            this.c.add(new c.g(strH, mpaVar.q()));
        } else if (mpaVar.k("*=")) {
            this.c.add(new c.f(strH, mpaVar.q()));
        } else {
            if (!mpaVar.k("~=")) {
                throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.b, mpaVar.q());
            }
            this.c.add(new c.h(strH, Pattern.compile(mpaVar.q())));
        }
    }

    public final void c() {
        String strE = this.a.e();
        dnb.g(strE);
        this.c.add(new c.k(strE.trim()));
    }

    public final void d() {
        String strE = this.a.e();
        dnb.g(strE);
        this.c.add(new c.p(strE));
    }

    public final void e() {
        String strB = v17.b(this.a.f());
        dnb.g(strB);
        if (strB.startsWith("*|")) {
            this.c.add(new b.C0437b(new c.j0(strB.substring(2)), new c.k0(strB.replace("*|", StringUtils.PROCESS_POSTFIX_DELIMITER))));
        } else {
            if (strB.contains("|")) {
                strB = strB.replace("|", StringUtils.PROCESS_POSTFIX_DELIMITER);
            }
            this.c.add(new c.j0(strB));
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0048  */
    /* JADX WARN: Code duplicated, block: B:14:0x004c  */
    /* JADX WARN: Code duplicated, block: B:16:0x0050  */
    /* JADX WARN: Code duplicated, block: B:18:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0056  */
    /* JADX WARN: Code duplicated, block: B:21:0x005a  */
    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    /* JADX WARN: Code duplicated, block: B:24:0x006a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0083  */
    /* JADX WARN: Code duplicated, block: B:28:0x0095  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:30:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:33:0x00d1  */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x006a, please report this as an issue */
    public final void f(char c) {
        c aVar;
        c cVar;
        boolean z;
        b.a aVar2;
        c cVar2;
        c cVar3;
        b.C0437b c0437b;
        this.a.i();
        c cVarT = t(h());
        if (this.c.size() == 1) {
            aVar = (c) this.c.get(0);
            if ((aVar instanceof b.C0437b) && c != ',') {
                z = true;
                cVar = aVar;
                aVar = ((b.C0437b) aVar).c();
            }
            this.c.clear();
            if (c != ' ') {
                aVar2 = new b.a(new f.e(aVar), cVarT);
            } else if (c != '>') {
                aVar2 = new b.a(new f.b(aVar), cVarT);
            } else {
                if (c != '~') {
                    if (c != '+') {
                        aVar2 = new b.a(new f.c(aVar), cVarT);
                    } else {
                        if (c == ',') {
                            throw new Selector.SelectorParseException("Unknown combinator: " + c, new Object[0]);
                        }
                        if (aVar instanceof b.C0437b) {
                            c0437b = (b.C0437b) aVar;
                        } else {
                            b.C0437b c0437b2 = new b.C0437b();
                            c0437b2.e(aVar);
                            c0437b = c0437b2;
                        }
                        c0437b.e(cVarT);
                        cVar2 = c0437b;
                    }
                    if (z) {
                        ((b.C0437b) cVar).b(cVar2);
                        cVar3 = cVar;
                    } else {
                        cVar3 = cVar2;
                    }
                    this.c.add(cVar3);
                }
                aVar2 = new b.a(new f.C0439f(aVar), cVarT);
            }
            cVar2 = aVar2;
            if (z) {
                ((b.C0437b) cVar).b(cVar2);
                cVar3 = cVar;
            } else {
                cVar3 = cVar2;
            }
            this.c.add(cVar3);
        }
        aVar = new b.a(this.c);
        cVar = aVar;
        z = false;
        this.c.clear();
        if (c != ' ') {
            aVar2 = new b.a(new f.e(aVar), cVarT);
        } else if (c != '>') {
            aVar2 = new b.a(new f.b(aVar), cVarT);
        } else {
            if (c != '~') {
                if (c != '+') {
                    aVar2 = new b.a(new f.c(aVar), cVarT);
                } else {
                    if (c == ',') {
                        throw new Selector.SelectorParseException("Unknown combinator: " + c, new Object[0]);
                    }
                    if (aVar instanceof b.C0437b) {
                        c0437b = (b.C0437b) aVar;
                    } else {
                        b.C0437b c0437b3 = new b.C0437b();
                        c0437b3.e(aVar);
                        c0437b = c0437b3;
                    }
                    c0437b.e(cVarT);
                    cVar2 = c0437b;
                }
                if (z) {
                    ((b.C0437b) cVar).b(cVar2);
                    cVar3 = cVar;
                } else {
                    cVar3 = cVar2;
                }
                this.c.add(cVar3);
            }
            aVar2 = new b.a(new f.C0439f(aVar), cVarT);
        }
        cVar2 = aVar2;
        if (z) {
            ((b.C0437b) cVar).b(cVar2);
            cVar3 = cVar;
        } else {
            cVar3 = cVar2;
        }
        this.c.add(cVar3);
    }

    public final int g() {
        String strTrim = this.a.b(")").trim();
        dnb.d(m0a.h(strTrim), "Index must be numeric");
        return Integer.parseInt(strTrim);
    }

    public final String h() {
        StringBuilder sbB = m0a.b();
        while (!this.a.j()) {
            if (this.a.l("(")) {
                sbB.append("(");
                sbB.append(this.a.a('(', ')'));
                sbB.append(")");
            } else if (this.a.l("[")) {
                sbB.append("[");
                sbB.append(this.a.a('[', ']'));
                sbB.append("]");
            } else if (!this.a.n(d)) {
                sbB.append(this.a.c());
            } else {
                if (sbB.length() > 0) {
                    break;
                }
                this.a.c();
            }
        }
        return m0a.m(sbB);
    }

    public final void i(boolean z) {
        this.a.d(z ? ":containsOwn" : ":contains");
        String strS = mpa.s(this.a.a('(', ')'));
        dnb.h(strS, ":contains(text) query must not be empty");
        if (z) {
            this.c.add(new c.m(strS));
        } else {
            this.c.add(new c.n(strS));
        }
    }

    public final void j() {
        this.a.d(":containsData");
        String strS = mpa.s(this.a.a('(', ')'));
        dnb.h(strS, ":containsData(text) query must not be empty");
        this.c.add(new c.l(strS));
    }

    public final void k(boolean z, boolean z2) {
        String strB = v17.b(this.a.b(")"));
        Matcher matcher = f.matcher(strB);
        Matcher matcher2 = g.matcher(strB);
        int i = 2;
        int i2 = 1;
        if (!"odd".equals(strB)) {
            if ("even".equals(strB)) {
                i2 = 0;
            } else if (matcher.matches()) {
                int i3 = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
                i2 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
                i = i3;
            } else {
                if (!matcher2.matches()) {
                    throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", strB);
                }
                i2 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
                i = 0;
            }
        }
        if (z2) {
            if (z) {
                this.c.add(new c.b0(i, i2));
                return;
            } else {
                this.c.add(new c.c0(i, i2));
                return;
            }
        }
        if (z) {
            this.c.add(new c.a0(i, i2));
        } else {
            this.c.add(new c.z(i, i2));
        }
    }

    public final void l() {
        if (this.a.k("#")) {
            d();
            return;
        }
        if (this.a.k(Consts.DOT)) {
            c();
            return;
        }
        if (this.a.p() || this.a.l("*|")) {
            e();
            return;
        }
        if (this.a.l("[")) {
            b();
            return;
        }
        if (this.a.k("*")) {
            a();
            return;
        }
        if (this.a.k(":lt(")) {
            p();
            return;
        }
        if (this.a.k(":gt(")) {
            o();
            return;
        }
        if (this.a.k(":eq(")) {
            n();
            return;
        }
        if (this.a.l(":has(")) {
            m();
            return;
        }
        if (this.a.l(":contains(")) {
            i(false);
            return;
        }
        if (this.a.l(":containsOwn(")) {
            i(true);
            return;
        }
        if (this.a.l(":containsData(")) {
            j();
            return;
        }
        if (this.a.l(":matches(")) {
            q(false);
            return;
        }
        if (this.a.l(":matchesOwn(")) {
            q(true);
            return;
        }
        if (this.a.l(":not(")) {
            r();
            return;
        }
        if (this.a.k(":nth-child(")) {
            k(false, false);
            return;
        }
        if (this.a.k(":nth-last-child(")) {
            k(true, false);
            return;
        }
        if (this.a.k(":nth-of-type(")) {
            k(false, true);
            return;
        }
        if (this.a.k(":nth-last-of-type(")) {
            k(true, true);
            return;
        }
        if (this.a.k(":first-child")) {
            this.c.add(new c.v());
            return;
        }
        if (this.a.k(":last-child")) {
            this.c.add(new c.x());
            return;
        }
        if (this.a.k(":first-of-type")) {
            this.c.add(new c.w());
            return;
        }
        if (this.a.k(":last-of-type")) {
            this.c.add(new c.y());
            return;
        }
        if (this.a.k(":only-child")) {
            this.c.add(new c.d0());
            return;
        }
        if (this.a.k(":only-of-type")) {
            this.c.add(new c.e0());
            return;
        }
        if (this.a.k(":empty")) {
            this.c.add(new c.u());
        } else if (this.a.k(":root")) {
            this.c.add(new c.f0());
        } else {
            if (!this.a.k(":matchText")) {
                throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.b, this.a.q());
            }
            this.c.add(new c.g0());
        }
    }

    public final void m() {
        this.a.d(":has");
        String strA = this.a.a('(', ')');
        dnb.h(strA, ":has(el) subselect must not be empty");
        this.c.add(new f.a(t(strA)));
    }

    public final void n() {
        this.c.add(new c.q(g()));
    }

    public final void o() {
        this.c.add(new c.s(g()));
    }

    public final void p() {
        this.c.add(new c.t(g()));
    }

    public final void q(boolean z) {
        this.a.d(z ? ":matchesOwn" : ":matches");
        String strA = this.a.a('(', ')');
        dnb.h(strA, ":matches(regex) query must not be empty");
        if (z) {
            this.c.add(new c.i0(Pattern.compile(strA)));
        } else {
            this.c.add(new c.h0(Pattern.compile(strA)));
        }
    }

    public final void r() {
        this.a.d(":not");
        String strA = this.a.a('(', ')');
        dnb.h(strA, ":not(selector) subselect must not be empty");
        this.c.add(new f.d(t(strA)));
    }

    public c s() {
        this.a.i();
        if (this.a.n(d)) {
            this.c.add(new f.g());
            f(this.a.c());
        } else {
            l();
        }
        while (!this.a.j()) {
            boolean zI = this.a.i();
            if (this.a.n(d)) {
                f(this.a.c());
            } else if (zI) {
                f(' ');
            } else {
                l();
            }
        }
        return this.c.size() == 1 ? (c) this.c.get(0) : new b.a(this.c);
    }

    public String toString() {
        return this.b;
    }
}
