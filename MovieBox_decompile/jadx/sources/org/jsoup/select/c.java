package org.jsoup.select;

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
        public a0(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        protected int b(Element element, Element element2) {
            return element2.I().o0().size() - element2.v0();
        }

        @Override
        protected String c() {
            return "nth-last-child";
        }
    }

    public static final class b extends c {

        private String f68732a;

        public b(String str) {
            this.f68732a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.w(this.f68732a);
        }

        public String toString() {
            return String.format("[%s]", this.f68732a);
        }
    }

    public static class b0 extends o {
        public b0(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        protected int b(Element element, Element element2) {
            Elements elementsO0 = element2.I().o0();
            int i10 = 0;
            for (int iV0 = element2.v0(); iV0 < elementsO0.size(); iV0++) {
                if (elementsO0.get(iV0).T0().equals(element2.T0())) {
                    i10++;
                }
            }
            return i10;
        }

        @Override
        protected String c() {
            return "nth-last-of-type";
        }
    }

    public static abstract class AbstractC0842c extends c {

        String f68733a;

        String f68734b;

        public AbstractC0842c(String str, String str2) {
            org.jsoup.helper.d.h(str);
            org.jsoup.helper.d.h(str2);
            this.f68733a = sz.b.b(str);
            if ((str2.startsWith("\"") && str2.endsWith("\"")) || (str2.startsWith("'") && str2.endsWith("'"))) {
                str2 = str2.substring(1, str2.length() - 1);
            }
            this.f68734b = sz.b.b(str2);
        }
    }

    public static class c0 extends o {
        public c0(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        protected int b(Element element, Element element2) {
            int i10 = 0;
            for (Element element3 : element2.I().o0()) {
                if (element3.T0().equals(element2.T0())) {
                    i10++;
                }
                if (element3 == element2) {
                    break;
                }
            }
            return i10;
        }

        @Override
        protected String c() {
            return "nth-of-type";
        }
    }

    public static final class d extends c {

        private String f68735a;

        public d(String str) {
            org.jsoup.helper.d.h(str);
            this.f68735a = sz.b.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            Iterator it = element2.i().g().iterator();
            while (it.hasNext()) {
                if (sz.b.a(((org.jsoup.nodes.a) it.next()).getKey()).startsWith(this.f68735a)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("[^%s]", this.f68735a);
        }
    }

    public static final class d0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            return (elementI == null || (elementI instanceof Document) || element2.S0().size() != 0) ? false : true;
        }

        public String toString() {
            return ":only-child";
        }
    }

    public static final class e extends AbstractC0842c {
        public e(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.w(this.f68733a) && this.f68734b.equalsIgnoreCase(element2.g(this.f68733a).trim());
        }

        public String toString() {
            return String.format("[%s=%s]", this.f68733a, this.f68734b);
        }
    }

    public static final class e0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            if (elementI == null || (elementI instanceof Document)) {
                return false;
            }
            Iterator<Element> it = elementI.o0().iterator();
            int i10 = 0;
            while (it.hasNext()) {
                if (it.next().T0().equals(element2.T0())) {
                    i10++;
                }
            }
            return i10 == 1;
        }

        public String toString() {
            return ":only-of-type";
        }
    }

    public static final class f extends AbstractC0842c {
        public f(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.w(this.f68733a) && sz.b.a(element2.g(this.f68733a)).contains(this.f68734b);
        }

        public String toString() {
            return String.format("[%s*=%s]", this.f68733a, this.f68734b);
        }
    }

    public static final class f0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            if (element instanceof Document) {
                element = element.m0(0);
            }
            return element2 == element;
        }

        public String toString() {
            return ":root";
        }
    }

    public static final class g extends AbstractC0842c {
        public g(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.w(this.f68733a) && sz.b.a(element2.g(this.f68733a)).endsWith(this.f68734b);
        }

        public String toString() {
            return String.format("[%s$=%s]", this.f68733a, this.f68734b);
        }
    }

    public static final class g0 extends c {
        @Override
        public boolean a(Element element, Element element2) {
            if (element2 instanceof org.jsoup.nodes.k) {
                return true;
            }
            for (org.jsoup.nodes.j jVar : element2.Y0()) {
                org.jsoup.nodes.k kVar = new org.jsoup.nodes.k(org.jsoup.parser.f.k(element2.U0()), element2.j(), element2.i());
                jVar.Q(kVar);
                kVar.g0(jVar);
            }
            return false;
        }

        public String toString() {
            return ":matchText";
        }
    }

    public static final class h extends c {

        String f68736a;

        Pattern f68737b;

        public h(String str, Pattern pattern) {
            this.f68736a = sz.b.b(str);
            this.f68737b = pattern;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.w(this.f68736a) && this.f68737b.matcher(element2.g(this.f68736a)).find();
        }

        public String toString() {
            return String.format("[%s~=%s]", this.f68736a, this.f68737b.toString());
        }
    }

    public static final class h0 extends c {

        private Pattern f68738a;

        public h0(Pattern pattern) {
            this.f68738a = pattern;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return this.f68738a.matcher(element2.W0()).find();
        }

        public String toString() {
            return String.format(":matches(%s)", this.f68738a);
        }
    }

    public static final class i extends AbstractC0842c {
        public i(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return !this.f68734b.equalsIgnoreCase(element2.g(this.f68733a));
        }

        public String toString() {
            return String.format("[%s!=%s]", this.f68733a, this.f68734b);
        }
    }

    public static final class i0 extends c {

        private Pattern f68739a;

        public i0(Pattern pattern) {
            this.f68739a = pattern;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return this.f68739a.matcher(element2.J0()).find();
        }

        public String toString() {
            return String.format(":matchesOwn(%s)", this.f68739a);
        }
    }

    public static final class j extends AbstractC0842c {
        public j(String str, String str2) {
            super(str, str2);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.w(this.f68733a) && sz.b.a(element2.g(this.f68733a)).startsWith(this.f68734b);
        }

        public String toString() {
            return String.format("[%s^=%s]", this.f68733a, this.f68734b);
        }
    }

    public static final class j0 extends c {

        private String f68740a;

        public j0(String str) {
            this.f68740a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.U0().equalsIgnoreCase(this.f68740a);
        }

        public String toString() {
            return String.format("%s", this.f68740a);
        }
    }

    public static final class k extends c {

        private String f68741a;

        public k(String str) {
            this.f68741a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.z0(this.f68741a);
        }

        public String toString() {
            return String.format(".%s", this.f68741a);
        }
    }

    public static final class k0 extends c {

        private String f68742a;

        public k0(String str) {
            this.f68742a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.U0().endsWith(this.f68742a);
        }

        public String toString() {
            return String.format("%s", this.f68742a);
        }
    }

    public static final class l extends c {

        private String f68743a;

        public l(String str) {
            this.f68743a = sz.b.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return sz.b.a(element2.t0()).contains(this.f68743a);
        }

        public String toString() {
            return String.format(":containsData(%s)", this.f68743a);
        }
    }

    public static final class m extends c {

        private String f68744a;

        public m(String str) {
            this.f68744a = sz.b.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return sz.b.a(element2.J0()).contains(this.f68744a);
        }

        public String toString() {
            return String.format(":containsOwn(%s)", this.f68744a);
        }
    }

    public static final class n extends c {

        private String f68745a;

        public n(String str) {
            this.f68745a = sz.b.a(str);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return sz.b.a(element2.W0()).contains(this.f68745a);
        }

        public String toString() {
            return String.format(":contains(%s)", this.f68745a);
        }
    }

    public static abstract class o extends c {

        protected final int f68746a;

        protected final int f68747b;

        public o(int i10, int i11) {
            this.f68746a = i10;
            this.f68747b = i11;
        }

        @Override
        public boolean a(Element element, Element element2) {
            Element elementI = element2.I();
            if (elementI == null || (elementI instanceof Document)) {
                return false;
            }
            int iB = b(element, element2);
            int i10 = this.f68746a;
            if (i10 == 0) {
                return iB == this.f68747b;
            }
            int i11 = this.f68747b;
            return (iB - i11) * i10 >= 0 && (iB - i11) % i10 == 0;
        }

        protected abstract int b(Element element, Element element2);

        protected abstract String c();

        public String toString() {
            if (this.f68746a == 0) {
                return String.format(":%s(%d)", c(), Integer.valueOf(this.f68747b));
            }
            return this.f68747b == 0 ? String.format(":%s(%dn)", c(), Integer.valueOf(this.f68746a)) : String.format(":%s(%dn%+d)", c(), Integer.valueOf(this.f68746a), Integer.valueOf(this.f68747b));
        }
    }

    public static final class p extends c {

        private String f68748a;

        public p(String str) {
            this.f68748a = str;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return this.f68748a.equals(element2.E0());
        }

        public String toString() {
            return String.format("#%s", this.f68748a);
        }
    }

    public static final class q extends r {
        public q(int i10) {
            super(i10);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.v0() == this.f68749a;
        }

        public String toString() {
            return String.format(":eq(%d)", Integer.valueOf(this.f68749a));
        }
    }

    public static abstract class r extends c {

        int f68749a;

        public r(int i10) {
            this.f68749a = i10;
        }
    }

    public static final class s extends r {
        public s(int i10) {
            super(i10);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element2.v0() > this.f68749a;
        }

        public String toString() {
            return String.format(":gt(%d)", Integer.valueOf(this.f68749a));
        }
    }

    public static final class t extends r {
        public t(int i10) {
            super(i10);
        }

        @Override
        public boolean a(Element element, Element element2) {
            return element != element2 && element2.v0() < this.f68749a;
        }

        public String toString() {
            return String.format(":lt(%d)", Integer.valueOf(this.f68749a));
        }
    }

    public static final class u extends c {
        @Override
        public boolean a(Element element, Element element2) {
            for (org.jsoup.nodes.j jVar : element2.o()) {
                if (!(jVar instanceof org.jsoup.nodes.e) && !(jVar instanceof org.jsoup.nodes.m) && !(jVar instanceof org.jsoup.nodes.g)) {
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
            Element elementI = element2.I();
            return (elementI == null || (elementI instanceof Document) || element2.v0() != 0) ? false : true;
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
            Element elementI = element2.I();
            return (elementI == null || (elementI instanceof Document) || element2.v0() != elementI.o0().size() - 1) ? false : true;
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
        public z(int i10, int i11) {
            super(i10, i11);
        }

        @Override
        protected int b(Element element, Element element2) {
            return element2.v0() + 1;
        }

        @Override
        protected String c() {
            return "nth-child";
        }
    }

    protected c() {
    }

    public abstract boolean a(Element element, Element element2);
}
