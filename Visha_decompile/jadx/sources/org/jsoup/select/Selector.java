package org.jsoup.select;

import defpackage.dnb;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.jsoup.nodes.Element;

public abstract class Selector {

    public static class SelectorParseException extends IllegalStateException {
        public SelectorParseException(String str, Object... objArr) {
            super(String.format(str, objArr));
        }
    }

    public static Elements a(Collection collection, Collection collection2) {
        Elements elements = new Elements();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            Element element = (Element) it.next();
            Iterator it2 = collection2.iterator();
            do {
                if (!it2.hasNext()) {
                    elements.add(element);
                    break;
                }
            } while (!element.equals((Element) it2.next()));
        }
        return elements;
    }

    public static Elements b(String str, Iterable iterable) {
        dnb.g(str);
        dnb.i(iterable);
        c cVarT = e.t(str);
        Elements elements = new Elements();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            for (Element element : d(cVarT, (Element) it.next())) {
                if (identityHashMap.put(element, Boolean.TRUE) == null) {
                    elements.add(element);
                }
            }
        }
        return elements;
    }

    public static Elements c(String str, Element element) {
        dnb.g(str);
        return d(e.t(str), element);
    }

    public static Elements d(c cVar, Element element) {
        dnb.i(cVar);
        dnb.i(element);
        return a.a(cVar, element);
    }

    public static Element e(String str, Element element) {
        dnb.g(str);
        return a.b(e.t(str), element);
    }
}
