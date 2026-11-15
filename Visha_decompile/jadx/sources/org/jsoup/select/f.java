package org.jsoup.select;

import org.jsoup.nodes.Element;

public abstract class f extends org.jsoup.select.c {
    public org.jsoup.select.c a;

    public static class a extends f {
        public a(org.jsoup.select.c cVar) {
            this.a = cVar;
        }

        @Override
        public boolean a(Element element, Element element2) {
            for (Element element3 : element2.C0()) {
                if (element3 != element2 && this.a.a(element2, element3)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format(":has(%s)", this.a);
        }
    }

    public static class b extends f {
        public b(org.jsoup.select.c cVar) {
            this.a = cVar;
        }

        @Override
        public boolean a(Element element, Element element2) {
            Element elementL;
            return (element == element2 || (elementL = element2.L()) == null || !this.a.a(element, elementL)) ? false : true;
        }

        public String toString() {
            return String.format("%s > ", this.a);
        }
    }

    public static class c extends f {
        public c(org.jsoup.select.c cVar) {
            this.a = cVar;
        }

        @Override
        public boolean a(Element element, Element element2) {
            Element elementC1;
            return (element == element2 || (elementC1 = element2.c1()) == null || !this.a.a(element, elementC1)) ? false : true;
        }

        public String toString() {
            return String.format("%s + ", this.a);
        }
    }

    public static class d extends f {
        public d(org.jsoup.select.c cVar) {
            this.a = cVar;
        }

        @Override
        public boolean a(Element element, Element element2) {
            return !this.a.a(element, element2);
        }

        public String toString() {
            return String.format(":not(%s)", this.a);
        }
    }

    public static class e extends f {
        public e(org.jsoup.select.c cVar) {
            this.a = cVar;
        }

        @Override
        public boolean a(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element elementL = element2.L(); elementL != null; elementL = elementL.L()) {
                if (this.a.a(element, elementL)) {
                    return true;
                }
                if (elementL == element) {
                    break;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ", this.a);
        }
    }

    public static class C0439f extends f {
        public C0439f(org.jsoup.select.c cVar) {
            this.a = cVar;
        }

        @Override
        public boolean a(Element element, Element element2) {
            if (element == element2) {
                return false;
            }
            for (Element elementC1 = element2.c1(); elementC1 != null; elementC1 = elementC1.c1()) {
                if (this.a.a(element, elementC1)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return String.format("%s ~ ", this.a);
        }
    }

    public static class g extends org.jsoup.select.c {
        @Override
        public boolean a(Element element, Element element2) {
            return element == element2;
        }
    }
}
