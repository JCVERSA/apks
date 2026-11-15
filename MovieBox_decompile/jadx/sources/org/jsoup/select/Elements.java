package org.jsoup.select;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.h;

public class Elements extends ArrayList<Element> {
    public Elements() {
    }

    private Elements siblings(String str, boolean z10, boolean z11) {
        Elements elements = new Elements();
        c cVarT = str != null ? e.t(str) : null;
        for (Element elementI0 : this) {
            do {
                elementI0 = z10 ? elementI0.I0() : elementI0.P0();
                if (elementI0 == null) {
                    break;
                }
                if (cVarT == null) {
                    elements.add(elementI0);
                } else if (elementI0.G0(cVarT)) {
                    elements.add(elementI0);
                }
            } while (z11);
        }
        return elements;
    }

    public Elements addClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().d0(str);
        }
        return this;
    }

    public Elements after(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().e0(str);
        }
        return this;
    }

    public Elements append(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().f0(str);
        }
        return this;
    }

    public String attr(String str) {
        for (Element element : this) {
            if (element.w(str)) {
                return element.g(str);
            }
        }
        return "";
    }

    public Elements before(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().k0(str);
        }
        return this;
    }

    public List<String> eachAttr(String str) {
        ArrayList arrayList = new ArrayList(size());
        for (Element element : this) {
            if (element.w(str)) {
                arrayList.add(element.g(str));
            }
        }
        return arrayList;
    }

    public List<String> eachText() {
        ArrayList arrayList = new ArrayList(size());
        for (Element element : this) {
            if (element.A0()) {
                arrayList.add(element.W0());
            }
        }
        return arrayList;
    }

    public Elements empty() {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().w0();
        }
        return this;
    }

    public Elements eq(int i10) {
        return size() > i10 ? new Elements(get(i10)) : new Elements();
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

    public List<h> forms() {
        ArrayList arrayList = new ArrayList();
        for (Element element : this) {
            if (element instanceof h) {
                arrayList.add((h) element);
            }
        }
        return arrayList;
    }

    public boolean hasAttr(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().w(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().z0(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasText() {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().A0()) {
                return true;
            }
        }
        return false;
    }

    public String html() {
        StringBuilder sb2 = new StringBuilder();
        for (Element element : this) {
            if (sb2.length() != 0) {
                sb2.append("\n");
            }
            sb2.append(element.B0());
        }
        return sb2.toString();
    }

    public boolean is(String str) {
        c cVarT = e.t(str);
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            if (it.next().G0(cVarT)) {
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
        StringBuilder sb2 = new StringBuilder();
        for (Element element : this) {
            if (sb2.length() != 0) {
                sb2.append("\n");
            }
            sb2.append(element.D());
        }
        return sb2.toString();
    }

    public Elements parents() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            linkedHashSet.addAll(it.next().M0());
        }
        return new Elements(linkedHashSet);
    }

    public Elements prepend(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().N0(str);
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
            it.next().L();
        }
        return this;
    }

    public Elements removeAttr(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().M(str);
        }
        return this;
    }

    public Elements removeClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().Q0(str);
        }
        return this;
    }

    public Elements select(String str) {
        return Selector.b(str, this);
    }

    public Elements tagName(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().V0(str);
        }
        return this;
    }

    public String text() {
        StringBuilder sb2 = new StringBuilder();
        for (Element element : this) {
            if (sb2.length() != 0) {
                sb2.append(" ");
            }
            sb2.append(element.W0());
        }
        return sb2.toString();
    }

    @Override
    public String toString() {
        return outerHtml();
    }

    public Elements toggleClass(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().Z0(str);
        }
        return this;
    }

    public Elements traverse(tz.a aVar) {
        d.d(aVar, this);
        return this;
    }

    public Elements unwrap() {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().Y();
        }
        return this;
    }

    public String val() {
        return size() > 0 ? first().a1() : "";
    }

    public Elements wrap(String str) {
        org.jsoup.helper.d.h(str);
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().c1(str);
        }
        return this;
    }

    public Elements(int i10) {
        super(i10);
    }

    @Override
    public Elements clone() {
        Elements elements = new Elements(size());
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            elements.add(it.next().s0());
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
            it.next().b1(str);
        }
        return this;
    }

    public Elements(Element... elementArr) {
        super(Arrays.asList(elementArr));
    }

    public Elements attr(String str, String str2) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().j0(str, str2);
        }
        return this;
    }

    public Elements html(String str) {
        Iterator<Element> it = iterator();
        while (it.hasNext()) {
            it.next().C0(str);
        }
        return this;
    }
}
