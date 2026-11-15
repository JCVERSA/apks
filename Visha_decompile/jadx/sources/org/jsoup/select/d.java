package org.jsoup.select;

import defpackage.dnb;
import defpackage.i17;
import java.util.Iterator;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.g;

public abstract class d {
    public static NodeFilter.FilterResult a(NodeFilter nodeFilter, g gVar) {
        g gVarO = gVar;
        int i = 0;
        while (gVarO != null) {
            NodeFilter.FilterResult filterResultB = nodeFilter.b(gVarO, i);
            if (filterResultB == NodeFilter.FilterResult.STOP) {
                return filterResultB;
            }
            if (filterResultB != NodeFilter.FilterResult.CONTINUE || gVarO.p() <= 0) {
                while (gVarO.C() == null && i > 0) {
                    NodeFilter.FilterResult filterResult = NodeFilter.FilterResult.CONTINUE;
                    if ((filterResultB == filterResult || filterResultB == NodeFilter.FilterResult.SKIP_CHILDREN) && (filterResultB = nodeFilter.a(gVarO, i)) == NodeFilter.FilterResult.STOP) {
                        return filterResultB;
                    }
                    g gVarM = gVarO.M();
                    i--;
                    if (filterResultB == NodeFilter.FilterResult.REMOVE) {
                        gVarO.P();
                    }
                    filterResultB = filterResult;
                    gVarO = gVarM;
                }
                if ((filterResultB == NodeFilter.FilterResult.CONTINUE || filterResultB == NodeFilter.FilterResult.SKIP_CHILDREN) && (filterResultB = nodeFilter.a(gVarO, i)) == NodeFilter.FilterResult.STOP) {
                    return filterResultB;
                }
                if (gVarO == gVar) {
                    return filterResultB;
                }
                g gVarC = gVarO.C();
                if (filterResultB == NodeFilter.FilterResult.REMOVE) {
                    gVarO.P();
                }
                gVarO = gVarC;
            } else {
                gVarO = gVarO.o(0);
                i++;
            }
        }
        return NodeFilter.FilterResult.CONTINUE;
    }

    public static void b(NodeFilter nodeFilter, Elements elements) {
        dnb.i(nodeFilter);
        dnb.i(elements);
        Iterator<Element> it = elements.iterator();
        while (it.hasNext() && a(nodeFilter, it.next()) != NodeFilter.FilterResult.STOP) {
        }
    }

    public static void c(i17 i17Var, g gVar) {
        dnb.i(i17Var);
        dnb.i(gVar);
        g gVarO = gVar;
        int i = 0;
        while (gVarO != null) {
            g gVarM = gVarO.M();
            i17Var.b(gVarO, i);
            if (gVarM != null && !gVarO.A()) {
                gVarO = gVarM.o(gVarO.Z());
            }
            if (gVarO.p() > 0) {
                gVarO = gVarO.o(0);
                i++;
            } else {
                while (gVarO.C() == null && i > 0) {
                    i17Var.a(gVarO, i);
                    gVarO = gVarO.M();
                    i--;
                }
                i17Var.a(gVarO, i);
                if (gVarO == gVar) {
                    return;
                } else {
                    gVarO = gVarO.C();
                }
            }
        }
    }

    public static void d(i17 i17Var, Elements elements) {
        dnb.i(i17Var);
        dnb.i(elements);
        Iterator<Element> it = elements.iterator();
        while (it.hasNext()) {
            c(i17Var, it.next());
        }
    }
}
