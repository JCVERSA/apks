package org.jsoup.select;

import defpackage.dnb;
import defpackage.tda;
import defpackage.v17;
import java.util.Iterator;
import java.util.regex.Pattern;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public abstract class c {

    public static final class a extends c {
        @Override
        public boolean a(Element element, Element element2) {
            return true;
        }

        public String toString() {
            return "*";
        }
    }

    public static final class a0 extends o {
        public a0(int i, int i2) {
            super(i, i2);
        }

        @Override
        public int b(Element element, Element element2) {
            if (element2.L() == null) {
                return 0;
            }
            return element2.L().t0().size() - element2.A0();
        }

        @Override
        public String c() {
            return "nth-last-child";
        }
    }

    public static final class b extends c {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.y(this.a);
        }

        public String toString() {
            return String.format("[%s]", this.a);
        }
    }

    public static class b0 extends o {
        public b0(int i, int i2) {
            super(i, i2);
        }

        @Override
        public int b(Element element, Element element2) {
            int i = 0;
            if (element2.L() == null) {
                return 0;
            }
            Elements elementsT0 = element2.L().t0();
            for (int iA0 = element2.A0(); iA0 < elementsT0.size(); iA0++) {
                if (elementsT0.get(iA0).k1().equals(element2.k1())) {
                    i++;
                }
            }
            return i;
        }

        @Override
        public String c() {
            return "nth-last-of-type";
        }
    }

    public static abstract class AbstractC0438c extends c {
        public String a;
        public String b;

        public AbstractC0438c(String str, String str2) {
            this(str, str2, true);
        }

        public AbstractC0438c(String str, String str2, boolean z) {
            dnb.g(str);
            dnb.g(str2);
            this.a = v17.b(str);
            boolean z2 = (str2.startsWith("'") && str2.endsWith("'")) || (str2.startsWith("\"") && str2.endsWith("\""));
            str2 = z2 ? str2.substring(1, str2.length() - 1) : str2;
            this.b = z ? v17.b(str2) : v17.c(str2, z2);
        }
    }

    public static class c0 extends o {
        public c0(int i, int i2) {
            super(i, i2);
        }

        @Override
        public int b(Element element, Element element2) {
            int i = 0;
            if (element2.L() == null) {
                return 0;
            }
            for (Element element3 : element2.L().t0()) {
                if (element3.k1().equals(element2.k1())) {
                    i++;
                }
                if (element3 == element2) {
                    break;
                }
            }
            return i;
        }

        @Override
        public String c() {
            return "nth-of-type";
        }
    }

    public static final class d extends c {
        public final String a;

        public d(String str) {
            dnb.g(str);
            this.a = v17.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            Iterator it = element2.j().l().iterator();
            while (it.hasNext()) {
                if (v17.a(((org.jsoup.nodes.a) it.next()).getKey()).startsWith(this.a)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("[^%s]", this.a);
        }
    }

    public static final class d0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            Element elementL = element2.L();
            return (elementL == null || (elementL instanceof Document) || !element2.j1().isEmpty()) ? false : true;
        }

        public String toString() {
            return ":only-child";
        }
    }

    public static final class e extends AbstractC0438c {
        public e(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.y(this.a) && this.b.equalsIgnoreCase(element2.h(this.a).trim());
        }

        public String toString() {
            return String.format("[%s=%s]", this.a, this.b);
        }
    }

    public static final class e0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            Element elementL = element2.L();
            if (elementL == null || (elementL instanceof Document)) {
                return false;
            }
            Iterator<Element> it = elementL.t0().iterator();
            int i = 0;
            while (it.hasNext()) {
                if (it.next().k1().equals(element2.k1())) {
                    i++;
                }
            }
            return i == 1;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    public static final class f extends AbstractC0438c {
        public f(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.y(this.a) && v17.a(element2.h(this.a)).contains(this.b);
        }

        public String toString() {
            return String.format("[%s*=%s]", this.a, this.b);
        }
    }

    public static final class f0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            if (element instanceof Document) {
                element = element.r0(0);
            }
            return element2 == element;
        }

        public String toString() {
            return ":root";
        }
    }

    public static final class g extends AbstractC0438c {
        public g(String str, String str2) {
            super(str, str2, false);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.y(this.a) && v17.a(element2.h(this.a)).endsWith(this.b);
        }

        public String toString() {
            return String.format("[%s$=%s]", this.a, this.b);
        }
    }

    public static final class g0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            if (element2 instanceof org.jsoup.nodes.i) {
                return true;
            }
            for (org.jsoup.nodes.g gVar : element2.p1()) {
                org.jsoup.nodes.i iVar = new org.jsoup.nodes.i(tda.o(element2.l1()), element2.l(), element2.j());
                gVar.U(iVar);
                iVar.k0(gVar);
            }
            return false;
        }

        public String toString() {
            return ":matchText";
        }
    }

    public static final class h extends c {
        public String a;
        public Pattern b;

        public h(String str, Pattern pattern) {
            this.a = v17.b(str);
            this.b = pattern;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.y(this.a) && this.b.matcher(element2.h(this.a)).find();
        }

        public String toString() {
            return String.format("[%s~=%s]", this.a, this.b.toString());
        }
    }

    public static final class h0 extends c {
        public final Pattern a;

        public h0(Pattern pattern) {
            this.a = pattern;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return this.a.matcher(element2.n1()).find();
        }

        public String toString() {
            return String.format(":matches(%s)", this.a);
        }
    }

    public static final class i extends AbstractC0438c {
        public i(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return !this.b.equalsIgnoreCase(element2.h(this.a));
        }

        public String toString() {
            return String.format("[%s!=%s]", this.a, this.b);
        }
    }

    public static final class i0 extends c {
        public final Pattern a;

        public i0(Pattern pattern) {
            this.a = pattern;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return this.a.matcher(element2.W0()).find();
        }

        public String toString() {
            return String.format(":matchesOwn(%s)", this.a);
        }
    }

    public static final class j extends AbstractC0438c {
        public j(String str, String str2) {
            super(str, str2, false);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.y(this.a) && v17.a(element2.h(this.a)).startsWith(this.b);
        }

        public String toString() {
            return String.format("[%s^=%s]", this.a, this.b);
        }
    }

    public static final class j0 extends c {
        public final String a;

        public j0(String str) {
            this.a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.V0().equals(this.a);
        }

        public String toString() {
            return String.format("%s", this.a);
        }
    }

    public static final class k extends c {
        public final String a;

        public k(String str) {
            this.a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.I0(this.a);
        }

        public String toString() {
            return String.format(".%s", this.a);
        }
    }

    public static final class k0 extends c {
        public final String a;

        public k0(String str) {
            this.a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.V0().endsWith(this.a);
        }

        public String toString() {
            return String.format("%s", this.a);
        }
    }

    public static final class l extends c {
        public final String a;

        public l(String str) {
            this.a = v17.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return v17.a(element2.y0()).contains(this.a);
        }

        public String toString() {
            return String.format(":containsData(%s)", this.a);
        }
    }

    public static final class m extends c {
        public final String a;

        public m(String str) {
            this.a = v17.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return v17.a(element2.W0()).contains(this.a);
        }

        public String toString() {
            return String.format(":containsOwn(%s)", this.a);
        }
    }

    public static final class n extends c {
        public final String a;

        public n(String str) {
            this.a = v17.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return v17.a(element2.n1()).contains(this.a);
        }

        public String toString() {
            return String.format(":contains(%s)", this.a);
        }
    }

    public static abstract class o extends c {
        public final int a;
        public final int b;

        public o(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        @Override
        public boolean a(Element element, Element element2) {
            Element elementL = element2.L();
            if (elementL == null || (elementL instanceof Document)) {
                return false;
            }
            int iB = b(element, element2);
            int i = this.a;
            if (i == 0) {
                return iB == this.b;
            }
            int i2 = this.b;
            return (iB - i2) * i >= 0 && (iB - i2) % i == 0;
        }

        public abstract int b(Element element, Element element2);

        public abstract String c();

        public String toString() {
            if (this.a == 0) {
                return String.format(":%s(%d)", c(), Integer.valueOf(this.b));
            }
            return this.b == 0 ? String.format(":%s(%dn)", c(), Integer.valueOf(this.a)) : String.format(":%s(%dn%+d)", c(), Integer.valueOf(this.a), Integer.valueOf(this.b));
        }
    }

    public static final class p extends c {
        public final String a;

        public p(String str) {
            this.a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return this.a.equals(element2.N0());
        }

        public String toString() {
            return String.format("#%s", this.a);
        }
    }

    public static final class q extends r {
        public q(int i) {
            super(i);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.A0() == this.a;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.a));
        }
    }

    public static abstract class r extends c {
        public int a;

        public r(int i) {
            this.a = i;
        }
    }

    public static final class s extends r {
        public s(int i) {
            super(i);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.A0() > this.a;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.a));
        }
    }

    public static final class t extends r {
        public t(int i) {
            super(i);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element != element2 && element2.A0() < this.a;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.a));
        }
    }

    public static final class u extends c {
        @Override
        public boolean a(Element element, Element element2) {
            for (org.jsoup.nodes.g gVar : element2.q()) {
                if (!(gVar instanceof org.jsoup.nodes.d) && !(gVar instanceof org.jsoup.nodes.f)) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return ":empty";
        }
    }

    public static final class v extends c {
        @Override
        public boolean a(Element element, Element element2) {
            Element elementL = element2.L();
            return (elementL == null || (elementL instanceof Document) || element2.A0() != 0) ? false : true;
        }

        public String toString() {
            return ":first-child";
        }
    }

    public static final class w extends c0 {
        public w() {
            super(0, 1);
        }

        @Override
        public String toString() {
            return ":first-of-type";
        }
    }

    public static final class x extends c {
        @Override
        public boolean a(Element element, Element element2) {
            Element elementL = element2.L();
            return (elementL == null || (elementL instanceof Document) || element2.A0() != elementL.t0().size() - 1) ? false : true;
        }

        public String toString() {
            return ":last-child";
        }
    }

    public static final class y extends b0 {
        public y() {
            super(0, 1);
        }

        @Override
        public String toString() {
            return ":last-of-type";
        }
    }

    public static final class z extends o {
        public z(int i, int i2) {
            super(i, i2);
        }

        @Override
        public int b(Element element, Element element2) {
            return element2.A0() + 1;
        }

        @Override
        public String c() {
            return "nth-child";
        }
    }

    public abstract boolean a(Element element, Element element2);
}
