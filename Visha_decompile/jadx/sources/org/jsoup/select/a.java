package org.jsoup.select;

import defpackage.i17;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.g;

public abstract class a {

    public static class C0436a implements i17 {
        public final Element a;
        public final Elements b;
        public final c c;

        public C0436a(Element element, Elements elements, c cVar) {
            this.a = element;
            this.b = elements;
            this.c = cVar;
        }

        @Override
        public void a(g gVar, int i) {
        }

        @Override
        public void b(g gVar, int i) {
            if (gVar instanceof Element) {
                Element element = (Element) gVar;
                if (this.c.a(this.a, element)) {
                    this.b.add(element);
                }
            }
        }
    }

    public static class b implements NodeFilter {
        public final Element a;
        public Element b = null;
        public final c c;

        public b(Element element, c cVar) {
            this.a = element;
            this.c = cVar;
        }

        @Override
        public NodeFilter.FilterResult a(g gVar, int i) {
            return NodeFilter.FilterResult.CONTINUE;
        }

        @Override
        public NodeFilter.FilterResult b(g gVar, int i) {
            if (gVar instanceof Element) {
                Element element = (Element) gVar;
                if (this.c.a(this.a, element)) {
                    this.b = element;
                    return NodeFilter.FilterResult.STOP;
                }
            }
            return NodeFilter.FilterResult.CONTINUE;
        }
    }

    public static Elements a(c cVar, Element element) {
        Elements elements = new Elements();
        d.c(new C0436a(element, elements, cVar), element);
        return elements;
    }

    public static Element b(c cVar, Element element) {
        b bVar = new b(element, cVar);
        d.a(bVar, element);
        return bVar.b;
    }
}
