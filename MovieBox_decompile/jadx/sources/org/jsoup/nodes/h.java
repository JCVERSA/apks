package org.jsoup.nodes;

import org.jsoup.select.Elements;

public class h extends Element {

    private final Elements f68598j;

    public h(org.jsoup.parser.f fVar, String str, b bVar) {
        super(fVar, str, bVar);
        this.f68598j = new Elements();
    }

    @Override
    protected void N(j jVar) {
        super.N(jVar);
        this.f68598j.remove(jVar);
    }

    public h d1(Element element) {
        this.f68598j.add(element);
        return this;
    }
}
