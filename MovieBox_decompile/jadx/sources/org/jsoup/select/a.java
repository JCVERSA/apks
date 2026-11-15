package org.jsoup.select;

import org.jsoup.nodes.Element;
import org.jsoup.nodes.j;

public abstract class a {

    private static class C0840a implements tz.a {

        private final Element f68727a;

        private final Elements f68728b;

        private final c f68729c;

        C0840a(Element element, Elements elements, c cVar) {
            this.f68727a = element;
            this.f68728b = elements;
            this.f68729c = cVar;
        }

        @Override
        public void a(j jVar, int i10) {
        }

        @Override
        public void b(j jVar, int i10) {
            if (jVar instanceof Element) {
                Element element = (Element) jVar;
                if (this.f68729c.a(this.f68727a, element)) {
                    this.f68728b.add(element);
                }
            }
        }
    }

    public static Elements a(c cVar, Element element) {
        Elements elements = new Elements();
        d.c(new C0840a(element, elements, cVar), element);
        return elements;
    }
}
