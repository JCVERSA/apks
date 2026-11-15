package org.jsoup.select;

import java.util.Iterator;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.j;

public abstract class d {
    public static NodeFilter.FilterResult a(NodeFilter nodeFilter, j jVar) {
        j jVarM = jVar;
        int i10 = 0;
        while (jVarM != null) {
            NodeFilter.FilterResult filterResultB = nodeFilter.b(jVarM, i10);
            if (filterResultB == NodeFilter.FilterResult.STOP) {
                return filterResultB;
            }
            if (filterResultB != NodeFilter.FilterResult.CONTINUE || jVarM.n() <= 0) {
                while (jVarM.A() == null && i10 > 0) {
                    NodeFilter.FilterResult filterResult = NodeFilter.FilterResult.CONTINUE;
                    if ((filterResultB == filterResult || filterResultB == NodeFilter.FilterResult.SKIP_CHILDREN) && (filterResultB = nodeFilter.a(jVarM, i10)) == NodeFilter.FilterResult.STOP) {
                        return filterResultB;
                    }
                    j jVarJ = jVarM.J();
                    i10--;
                    if (filterResultB == NodeFilter.FilterResult.REMOVE) {
                        jVarM.L();
                    }
                    filterResultB = filterResult;
                    jVarM = jVarJ;
                }
                if ((filterResultB == NodeFilter.FilterResult.CONTINUE || filterResultB == NodeFilter.FilterResult.SKIP_CHILDREN) && (filterResultB = nodeFilter.a(jVarM, i10)) == NodeFilter.FilterResult.STOP) {
                    return filterResultB;
                }
                if (jVarM == jVar) {
                    return filterResultB;
                }
                j jVarA = jVarM.A();
                if (filterResultB == NodeFilter.FilterResult.REMOVE) {
                    jVarM.L();
                }
                jVarM = jVarA;
            } else {
                jVarM = jVarM.m(0);
                i10++;
            }
        }
        return NodeFilter.FilterResult.CONTINUE;
    }

    public static void b(NodeFilter nodeFilter, Elements elements) {
        org.jsoup.helper.d.j(nodeFilter);
        org.jsoup.helper.d.j(elements);
        Iterator<Element> it = elements.iterator();
        while (it.hasNext() && a(nodeFilter, it.next()) != NodeFilter.FilterResult.STOP) {
        }
    }

    public static void c(tz.a aVar, j jVar) {
        j jVarM = jVar;
        int i10 = 0;
        while (jVarM != null) {
            aVar.b(jVarM, i10);
            if (jVarM.n() > 0) {
                jVarM = jVarM.m(0);
                i10++;
            } else {
                while (jVarM.A() == null && i10 > 0) {
                    aVar.a(jVarM, i10);
                    jVarM = jVarM.J();
                    i10--;
                }
                aVar.a(jVarM, i10);
                if (jVarM == jVar) {
                    return;
                } else {
                    jVarM = jVarM.A();
                }
            }
        }
    }

    public static void d(tz.a aVar, Elements elements) {
        org.jsoup.helper.d.j(aVar);
        org.jsoup.helper.d.j(elements);
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            c(aVar, it.next());
        }
    }
}
