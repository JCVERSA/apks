package org.jsoup.select;

import defpackage.dnb;
import defpackage.i17;
import defpackage.m0a;
import defpackage.x34;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.g;
import org.jsoup.nodes.j;

public class Elements extends ArrayList<Element> {
    public Elements() {
    }

    private <T extends g> List<T> childNodesOfType(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        for (Element element : this) {
            for (int i = 0; i < element.p(); i++) {
                g gVarO = element.o(i);
                if (cls.isInstance(gVarO)) {
                    arrayList.add(cls.cast(gVarO));
                }
            }
        }
        return arrayList;
    }

    private Elements siblings(String str, boolean z, boolean z2) {
        Elements elements = new Elements();
        c cVarT = str != null ? e.t(str) : null;
        for (Element elementU0 : this) {
            do {
                elementU0 = z ? elementU0.U0() : elementU0.c1();
                if (elementU0 == null) {
                    break;
                }
                if (cVarT == null) {
                    elements.add(elementU0);
                } else if (elementU0.Q0(cVarT)) {
                    elements.add(elementU0);
                }
            } while (z2);
        }
        return elements;
    }

    public Elements addClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().g0(str);
        }
        return this;
    }

    public Elements after(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().h0(str);
        }
        return this;
    }

    public Elements append(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().j0(str);
        }
        return this;
    }

    public String attr(String str) {
        for (Element element : this) {
            if (element.y(str)) {
                return element.h(str);
            }
        }
        return "";
    }

    public Elements before(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().p0(str);
        }
        return this;
    }

    public List<org.jsoup.nodes.d> comments() {
        return childNodesOfType(org.jsoup.nodes.d.class);
    }

    public List<org.jsoup.nodes.e> dataNodes() {
        return childNodesOfType(org.jsoup.nodes.e.class);
    }

    public List<String> eachAttr(String str) {
        ArrayList arrayList = new ArrayList(size());
        for (Element element : this) {
            if (element.y(str)) {
                arrayList.add(element.h(str));
            }
        }
        return arrayList;
    }

    public List<String> eachText() {
        ArrayList arrayList = new ArrayList(size());
        for (Element element : this) {
            if (element.J0()) {
                arrayList.add(element.n1());
            }
        }
        return arrayList;
    }

    public Elements empty() {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().v();
        }
        return this;
    }

    public Elements eq(int i) {
        return size() > i ? new Elements(get(i)) : new Elements();
    }

    public Elements filter(NodeFilter nodeFilter) {
        d.b(nodeFilter, this);
        return this;
    }

    public Element first() {
        if (isEmpty()) {
            return null;
        }
        return get(0);
    }

    public List<x34> forms() {
        ArrayList arrayList = new ArrayList();
        for (Element element : this) {
            if (element instanceof x34) {
                arrayList.add((x34) element);
            }
        }
        return arrayList;
    }

    public boolean hasAttr(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().y(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().I0(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasText() {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().J0()) {
                return true;
            }
        }
        return false;
    }

    public String html() {
        StringBuilder sbB = m0a.b();
        for (Element element : this) {
            if (sbB.length() != 0) {
                sbB.append("\n");
            }
            sbB.append(element.L0());
        }
        return m0a.m(sbB);
    }

    public boolean is(String str) {
        c cVarT = e.t(str);
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().Q0(cVarT)) {
                return true;
            }
        }
        return false;
    }

    public Element last() {
        if (isEmpty()) {
            return null;
        }
        return get(size() - 1);
    }

    public Elements next() {
        return siblings(null, true, false);
    }

    public Elements nextAll() {
        return siblings(null, true, true);
    }

    public Elements not(String str) {
        return Selector.a(this, Selector.b(str, this));
    }

    public String outerHtml() {
        StringBuilder sbB = m0a.b();
        for (Element element : this) {
            if (sbB.length() != 0) {
                sbB.append("\n");
            }
            sbB.append(element.G());
        }
        return m0a.m(sbB);
    }

    public Elements parents() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            linkedHashSet.addAll(it.next().Z0());
        }
        return new Elements(linkedHashSet);
    }

    public Elements prepend(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().a1(str);
        }
        return this;
    }

    public Elements prev() {
        return siblings(null, false, false);
    }

    public Elements prevAll() {
        return siblings(null, false, true);
    }

    public Elements remove() {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().P();
        }
        return this;
    }

    public Elements removeAttr(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().d1(str);
        }
        return this;
    }

    public Elements removeClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().e1(str);
        }
        return this;
    }

    public Elements select(String str) {
        return Selector.b(str, this);
    }

    public Elements tagName(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().m1(str);
        }
        return this;
    }

    public String text() {
        StringBuilder sbB = m0a.b();
        for (Element element : this) {
            if (sbB.length() != 0) {
                sbB.append(" ");
            }
            sbB.append(element.n1());
        }
        return m0a.m(sbB);
    }

    public List<j> textNodes() {
        return childNodesOfType(j.class);
    }

    @Override
    public String toString() {
        return outerHtml();
    }

    public Elements toggleClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().q1(str);
        }
        return this;
    }

    public Elements traverse(i17 i17Var) {
        d.d(i17Var, this);
        return this;
    }

    public Elements unwrap() {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().b0();
        }
        return this;
    }

    public String val() {
        return size() > 0 ? first().r1() : "";
    }

    public Elements wrap(String str) {
        dnb.g(str);
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().t1(str);
        }
        return this;
    }

    public Elements(int i) {
        super(i);
    }

    @Override
    public Elements clone() {
        Elements elements = new Elements(size());
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            elements.add(it.next().x0());
        }
        return elements;
    }

    public Elements next(String str) {
        return siblings(str, true, false);
    }

    public Elements nextAll(String str) {
        return siblings(str, true, true);
    }

    public Elements prev(String str) {
        return siblings(str, false, false);
    }

    public Elements prevAll(String str) {
        return siblings(str, false, true);
    }

    public Elements(Collection<Element> collection) {
        super(collection);
    }

    public Elements(List<Element> list) {
        super(list);
    }

    public Elements val(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().s1(str);
        }
        return this;
    }

    public Elements(Element... elementArr) {
        super(Arrays.asList(elementArr));
    }

    public Elements attr(String str, String str2) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().o0(str, str2);
        }
        return this;
    }

    public Elements html(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().M0(str);
        }
        return this;
    }
}
