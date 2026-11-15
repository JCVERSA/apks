package org.jsoup.select;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.transsion.gslb.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.parser.g;

public class e {

    private static final String[] f68750d = {",", ">", "+", "~", " "};

    private static final String[] f68751e = {UrlUtils.EQUAL_MARK, "!=", "^=", "$=", "*=", "~="};

    private static final Pattern f68752f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    private static final Pattern f68753g = Pattern.compile("([+-])?(\\d+)");

    private g f68754a;

    private String f68755b;

    private List f68756c = new ArrayList();

    private e(String str) {
        this.f68755b = str;
        this.f68754a = new g(str);
    }

    private void a() {
        this.f68756c.add(new c.a());
    }

    private void b() {
        g gVar = new g(this.f68754a.a('[', ']'));
        String strH = gVar.h(f68751e);
        org.jsoup.helper.d.h(strH);
        gVar.i();
        if (gVar.j()) {
            if (strH.startsWith("^")) {
                this.f68756c.add(new c.d(strH.substring(1)));
                return;
            } else {
                this.f68756c.add(new c.b(strH));
                return;
            }
        }
        if (gVar.k(UrlUtils.EQUAL_MARK)) {
            this.f68756c.add(new c.e(strH, gVar.q()));
            return;
        }
        if (gVar.k("!=")) {
            this.f68756c.add(new c.i(strH, gVar.q()));
            return;
        }
        if (gVar.k("^=")) {
            this.f68756c.add(new c.j(strH, gVar.q()));
            return;
        }
        if (gVar.k("$=")) {
            this.f68756c.add(new c.g(strH, gVar.q()));
        } else if (gVar.k("*=")) {
            this.f68756c.add(new c.f(strH, gVar.q()));
        } else {
            if (!gVar.k("~=")) {
                throw new Selector.SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", this.f68755b, gVar.q());
            }
            this.f68756c.add(new c.h(strH, Pattern.compile(gVar.q())));
        }
    }

    private void c() {
        String strE = this.f68754a.e();
        org.jsoup.helper.d.h(strE);
        this.f68756c.add(new c.k(strE.trim()));
    }

    private void d() {
        String strE = this.f68754a.e();
        org.jsoup.helper.d.h(strE);
        this.f68756c.add(new c.p(strE));
    }

    private void e() {
        String strF = this.f68754a.f();
        org.jsoup.helper.d.h(strF);
        if (strF.startsWith("*|")) {
            this.f68756c.add(new b.C0841b(new c.j0(sz.b.b(strF)), new c.k0(sz.b.b(strF.replace("*|", ":")))));
            return;
        }
        if (strF.contains("|")) {
            strF = strF.replace("|", ":");
        }
        this.f68756c.add(new c.j0(strF.trim()));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0048  */
    /* JADX WARN: Code duplicated, block: B:13:0x0059  */
    /* JADX WARN: Code duplicated, block: B:15:0x005d  */
    /* JADX WARN: Code duplicated, block: B:16:0x006e  */
    /* JADX WARN: Code duplicated, block: B:18:0x0072  */
    /* JADX WARN: Code duplicated, block: B:19:0x0083  */
    /* JADX WARN: Code duplicated, block: B:21:0x0087  */
    /* JADX WARN: Code duplicated, block: B:22:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x009a  */
    /* JADX WARN: Code duplicated, block: B:25:0x009e  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c0  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x00c0, please report this as an issue */
    private void f(char c10) {
        c aVar;
        c cVar;
        boolean z10;
        b.C0841b c0841b;
        c cVar2;
        b.a aVar2;
        b.a aVar3;
        b.a aVar4;
        c cVar3;
        b.a aVar5;
        this.f68754a.i();
        c cVarT = t(h());
        if (this.f68756c.size() == 1) {
            aVar = (c) this.f68756c.get(0);
            if ((aVar instanceof b.C0841b) && c10 != ',') {
                z10 = true;
                cVar = aVar;
                aVar = ((b.C0841b) aVar).c();
            }
            this.f68756c.clear();
            if (c10 == '>') {
                aVar5 = new b.a(cVarT, new f.b(aVar));
            } else if (c10 == ' ') {
                aVar4 = new b.a(cVarT, new f.e(aVar));
            } else if (c10 == '+') {
                aVar3 = new b.a(cVarT, new f.c(aVar));
            } else if (c10 == '~') {
                aVar2 = new b.a(cVarT, new f.C0843f(aVar));
            } else {
                if (c10 == ',') {
                    throw new Selector.SelectorParseException("Unknown combinator: " + c10, new Object[0]);
                }
                if (aVar instanceof b.C0841b) {
                    b.C0841b c0841b2 = (b.C0841b) aVar;
                    c0841b2.e(cVarT);
                    cVar2 = c0841b2;
                } else {
                    c0841b = new b.C0841b();
                    c0841b.e(aVar);
                    c0841b.e(cVarT);
                }
            }
            if (z10) {
                cVar2 = c0841b;
                cVar2 = aVar2;
                cVar2 = aVar3;
                cVar2 = aVar4;
                cVar2 = aVar5;
                ((b.C0841b) cVar).b(cVar2);
                cVar3 = cVar;
            } else {
                cVar2 = c0841b;
                cVar2 = aVar2;
                cVar2 = aVar3;
                cVar2 = aVar4;
                cVar2 = aVar5;
                cVar3 = cVar2;
            }
            this.f68756c.add(cVar3);
        }
        aVar = new b.a(this.f68756c);
        cVar = aVar;
        z10 = false;
        this.f68756c.clear();
        if (c10 == '>') {
            aVar5 = new b.a(cVarT, new f.b(aVar));
        } else if (c10 == ' ') {
            aVar4 = new b.a(cVarT, new f.e(aVar));
        } else if (c10 == '+') {
            aVar3 = new b.a(cVarT, new f.c(aVar));
        } else if (c10 == '~') {
            aVar2 = new b.a(cVarT, new f.C0843f(aVar));
        } else {
            if (c10 == ',') {
                throw new Selector.SelectorParseException("Unknown combinator: " + c10, new Object[0]);
            }
            if (aVar instanceof b.C0841b) {
                b.C0841b c0841b3 = (b.C0841b) aVar;
                c0841b3.e(cVarT);
                cVar2 = c0841b3;
            } else {
                c0841b = new b.C0841b();
                c0841b.e(aVar);
                c0841b.e(cVarT);
            }
        }
        if (z10) {
            cVar2 = c0841b;
            cVar2 = aVar2;
            cVar2 = aVar3;
            cVar2 = aVar4;
            cVar2 = aVar5;
            ((b.C0841b) cVar).b(cVar2);
            cVar3 = cVar;
        } else {
            cVar2 = c0841b;
            cVar2 = aVar2;
            cVar2 = aVar3;
            cVar2 = aVar4;
            cVar2 = aVar5;
            cVar3 = cVar2;
        }
        this.f68756c.add(cVar3);
    }

    private int g() {
        String strTrim = this.f68754a.b(")").trim();
        org.jsoup.helper.d.e(org.jsoup.helper.c.g(strTrim), "Index must be numeric");
        return Integer.parseInt(strTrim);
    }

    private String h() {
        StringBuilder sb2 = new StringBuilder();
        while (!this.f68754a.j()) {
            if (this.f68754a.l("(")) {
                sb2.append("(");
                sb2.append(this.f68754a.a('(', ')'));
                sb2.append(")");
            } else if (this.f68754a.l("[")) {
                sb2.append("[");
                sb2.append(this.f68754a.a('[', ']'));
                sb2.append("]");
            } else {
                if (this.f68754a.n(f68750d)) {
                    break;
                }
                sb2.append(this.f68754a.c());
            }
        }
        return sb2.toString();
    }

    private void i(boolean z10) {
        this.f68754a.d(z10 ? ":containsOwn" : ":contains");
        String strS = g.s(this.f68754a.a('(', ')'));
        org.jsoup.helper.d.i(strS, ":contains(text) query must not be empty");
        if (z10) {
            this.f68756c.add(new c.m(strS));
        } else {
            this.f68756c.add(new c.n(strS));
        }
    }

    private void j() {
        this.f68754a.d(":containsData");
        String strS = g.s(this.f68754a.a('(', ')'));
        org.jsoup.helper.d.i(strS, ":containsData(text) query must not be empty");
        this.f68756c.add(new c.l(strS));
    }

    private void k(boolean z10, boolean z11) {
        int i10;
        int i11 = 0;
        String strB = sz.b.b(this.f68754a.b(")"));
        Matcher matcher = f68752f.matcher(strB);
        Matcher matcher2 = f68753g.matcher(strB);
        if ("odd".equals(strB)) {
            i11 = 2;
            i10 = 1;
        } else if ("even".equals(strB)) {
            i10 = 0;
            i11 = 2;
        } else if (matcher.matches()) {
            int i12 = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
            i10 = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
            i11 = i12;
        } else {
            if (!matcher2.matches()) {
                throw new Selector.SelectorParseException("Could not parse nth-index '%s': unexpected format", strB);
            }
            i10 = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
        }
        if (z11) {
            if (z10) {
                this.f68756c.add(new c.b0(i11, i10));
                return;
            } else {
                this.f68756c.add(new c.c0(i11, i10));
                return;
            }
        }
        if (z10) {
            this.f68756c.add(new c.a0(i11, i10));
        } else {
            this.f68756c.add(new c.z(i11, i10));
        }
    }

    private void l() {
        if (this.f68754a.k(Utils.SEPARATOR)) {
            d();
            return;
        }
        if (this.f68754a.k(".")) {
            c();
            return;
        }
        if (this.f68754a.p() || this.f68754a.l("*|")) {
            e();
            return;
        }
        if (this.f68754a.l("[")) {
            b();
            return;
        }
        if (this.f68754a.k("*")) {
            a();
            return;
        }
        if (this.f68754a.k(":lt(")) {
            p();
            return;
        }
        if (this.f68754a.k(":gt(")) {
            o();
            return;
        }
        if (this.f68754a.k(":eq(")) {
            n();
            return;
        }
        if (this.f68754a.l(":has(")) {
            m();
            return;
        }
        if (this.f68754a.l(":contains(")) {
            i(false);
            return;
        }
        if (this.f68754a.l(":containsOwn(")) {
            i(true);
            return;
        }
        if (this.f68754a.l(":containsData(")) {
            j();
            return;
        }
        if (this.f68754a.l(":matches(")) {
            q(false);
            return;
        }
        if (this.f68754a.l(":matchesOwn(")) {
            q(true);
            return;
        }
        if (this.f68754a.l(":not(")) {
            r();
            return;
        }
        if (this.f68754a.k(":nth-child(")) {
            k(false, false);
            return;
        }
        if (this.f68754a.k(":nth-last-child(")) {
            k(true, false);
            return;
        }
        if (this.f68754a.k(":nth-of-type(")) {
            k(false, true);
            return;
        }
        if (this.f68754a.k(":nth-last-of-type(")) {
            k(true, true);
            return;
        }
        if (this.f68754a.k(":first-child")) {
            this.f68756c.add(new c.v());
            return;
        }
        if (this.f68754a.k(":last-child")) {
            this.f68756c.add(new c.x());
            return;
        }
        if (this.f68754a.k(":first-of-type")) {
            this.f68756c.add(new c.w());
            return;
        }
        if (this.f68754a.k(":last-of-type")) {
            this.f68756c.add(new c.y());
            return;
        }
        if (this.f68754a.k(":only-child")) {
            this.f68756c.add(new c.d0());
            return;
        }
        if (this.f68754a.k(":only-of-type")) {
            this.f68756c.add(new c.e0());
            return;
        }
        if (this.f68754a.k(":empty")) {
            this.f68756c.add(new c.u());
        } else if (this.f68754a.k(":root")) {
            this.f68756c.add(new c.f0());
        } else {
            if (!this.f68754a.k(":matchText")) {
                throw new Selector.SelectorParseException("Could not parse query '%s': unexpected token at '%s'", this.f68755b, this.f68754a.q());
            }
            this.f68756c.add(new c.g0());
        }
    }

    private void m() {
        this.f68754a.d(":has");
        String strA = this.f68754a.a('(', ')');
        org.jsoup.helper.d.i(strA, ":has(el) subselect must not be empty");
        this.f68756c.add(new f.a(t(strA)));
    }

    private void n() {
        this.f68756c.add(new c.q(g()));
    }

    private void o() {
        this.f68756c.add(new c.s(g()));
    }

    private void p() {
        this.f68756c.add(new c.t(g()));
    }

    private void q(boolean z10) {
        this.f68754a.d(z10 ? ":matchesOwn" : ":matches");
        String strA = this.f68754a.a('(', ')');
        org.jsoup.helper.d.i(strA, ":matches(regex) query must not be empty");
        if (z10) {
            this.f68756c.add(new c.i0(Pattern.compile(strA)));
        } else {
            this.f68756c.add(new c.h0(Pattern.compile(strA)));
        }
    }

    private void r() {
        this.f68754a.d(":not");
        String strA = this.f68754a.a('(', ')');
        org.jsoup.helper.d.i(strA, ":not(selector) subselect must not be empty");
        this.f68756c.add(new f.d(t(strA)));
    }

    public static c t(String str) {
        try {
            return new e(str).s();
        } catch (IllegalArgumentException e10) {
            throw new Selector.SelectorParseException(e10.getMessage(), new Object[0]);
        }
    }

    c s() {
        this.f68754a.i();
        if (this.f68754a.n(f68750d)) {
            this.f68756c.add(new f.g());
            f(this.f68754a.c());
        } else {
            l();
        }
        while (!this.f68754a.j()) {
            boolean zI = this.f68754a.i();
            if (this.f68754a.n(f68750d)) {
                f(this.f68754a.c());
            } else if (zI) {
                f(' ');
            } else {
                l();
            }
        }
        return this.f68756c.size() == 1 ? (c) this.f68756c.get(0) : new b.a(this.f68756c);
    }
}
