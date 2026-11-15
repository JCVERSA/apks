package org.jsoup.nodes;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.dnb;
import defpackage.i17;
import defpackage.m0a;
import defpackage.tda;
import defpackage.v17;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import org.jsoup.helper.ChangeNotifyingArrayList;
import org.jsoup.select.Elements;
import org.jsoup.select.Selector;
import org.mozilla.javascript.ES6Iterator;

public class Element extends g {
    public static final List i = Collections.emptyList();
    public static final Pattern j = Pattern.compile("\\s+");
    public static final String k = b.y("baseUri");
    public tda e;
    public WeakReference f;
    public List g;
    public b h;

    public static final class NodeList extends ChangeNotifyingArrayList<g> {
        private final Element owner;

        public NodeList(Element element, int i) {
            super(i);
            this.owner = element;
        }

        @Override
        public void onContentsChanged() {
            this.owner.F();
        }
    }

    public class a implements i17 {
        public final StringBuilder a;

        public a(StringBuilder sb) {
            this.a = sb;
        }

        @Override
        public void a(g gVar, int i) {
            if ((gVar instanceof Element) && ((Element) gVar).R0() && (gVar.C() instanceof j) && !j.j0(this.a)) {
                this.a.append(' ');
            }
        }

        @Override
        public void b(g gVar, int i) {
            if (gVar instanceof j) {
                Element.m0(this.a, (j) gVar);
            } else if (gVar instanceof Element) {
                Element element = (Element) gVar;
                if (this.a.length() > 0) {
                    if ((element.R0() || element.e.d().equals("br")) && !j.j0(this.a)) {
                        this.a.append(' ');
                    }
                }
            }
        }
    }

    public Element(tda tdaVar, String str, b bVar) {
        dnb.i(tdaVar);
        this.g = g.d;
        this.h = bVar;
        this.e = tdaVar;
        if (str != null) {
            W(str);
        }
    }

    public static int O0(Element element, List list) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (list.get(i2) == element) {
                return i2;
            }
        }
        return 0;
    }

    public static boolean b1(g gVar) {
        if (gVar instanceof Element) {
            Element elementL = (Element) gVar;
            int i2 = 0;
            while (!elementL.e.l()) {
                elementL = elementL.L();
                i2++;
                if (i2 >= 6 || elementL == null) {
                }
            }
            return true;
        }
        return false;
    }

    public static void f0(Element element, Elements elements) {
        Element elementL = element.L();
        if (elementL == null || elementL.l1().equals("#root")) {
            return;
        }
        elements.add(elementL);
        f0(elementL, elements);
    }

    public static String g1(Element element, String str) {
        while (element != null) {
            b bVar = element.h;
            if (bVar != null && bVar.s(str)) {
                return element.h.q(str);
            }
            element = element.L();
        }
        return "";
    }

    public static void m0(StringBuilder sb, j jVar) {
        String strH0 = jVar.h0();
        if (b1(jVar.b) || (jVar instanceof c)) {
            sb.append(strH0);
        } else {
            m0a.a(sb, strH0, j.j0(sb));
        }
    }

    public static void n0(Element element, StringBuilder sb) {
        if (!element.e.d().equals("br") || j.j0(sb)) {
            return;
        }
        sb.append(" ");
    }

    public int A0() {
        if (L() == null) {
            return 0;
        }
        return O0(this, L().s0());
    }

    @Override
    public Element v() {
        this.g.clear();
        return this;
    }

    public Elements C0() {
        return org.jsoup.select.a.a(new org.jsoup.select.c.a(), this);
    }

    public Element D0(String str) {
        dnb.g(str);
        Elements elementsA = org.jsoup.select.a.a(new org.jsoup.select.c.p(str), this);
        if (elementsA.size() > 0) {
            return elementsA.get(0);
        }
        return null;
    }

    @Override
    public String E() {
        return this.e.d();
    }

    public Elements E0(String str) {
        dnb.g(str);
        return org.jsoup.select.a.a(new org.jsoup.select.c.b(str.trim()), this);
    }

    @Override
    public void F() {
        super.F();
        this.f = null;
    }

    public Elements F0(String str, String str2) {
        return org.jsoup.select.a.a(new org.jsoup.select.c.e(str, str2), this);
    }

    public Elements G0(String str) {
        dnb.g(str);
        return org.jsoup.select.a.a(new org.jsoup.select.c.k(str), this);
    }

    public Elements H0(String str) {
        dnb.g(str);
        return org.jsoup.select.a.a(new org.jsoup.select.c.j0(v17.b(str)), this);
    }

    @Override
    public void I(Appendable appendable, int i2, Document.OutputSettings outputSettings) throws IOException {
        if (outputSettings.j() && S0(outputSettings) && !T0(outputSettings) && (!(appendable instanceof StringBuilder) || ((StringBuilder) appendable).length() > 0)) {
            B(appendable, i2, outputSettings);
        }
        appendable.append('<').append(l1());
        b bVar = this.h;
        if (bVar != null) {
            bVar.v(appendable, outputSettings);
        }
        if (!this.g.isEmpty() || !this.e.j()) {
            appendable.append('>');
        } else if (outputSettings.k() == Document.OutputSettings.Syntax.html && this.e.f()) {
            appendable.append('>');
        } else {
            appendable.append(" />");
        }
    }

    public boolean I0(String str) {
        b bVar = this.h;
        if (bVar == null) {
            return false;
        }
        String strR = bVar.r("class");
        int length = strR.length();
        int length2 = str.length();
        if (length != 0 && length >= length2) {
            if (length == length2) {
                return str.equalsIgnoreCase(strR);
            }
            boolean z = false;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (Character.isWhitespace(strR.charAt(i3))) {
                    if (!z) {
                        continue;
                    } else {
                        if (i3 - i2 == length2 && strR.regionMatches(true, i2, str, 0, length2)) {
                            return true;
                        }
                        z = false;
                    }
                } else if (!z) {
                    i2 = i3;
                    z = true;
                }
            }
            if (z && length - i2 == length2) {
                return strR.regionMatches(true, i2, str, 0, length2);
            }
        }
        return false;
    }

    @Override
    public void J(Appendable appendable, int i2, Document.OutputSettings outputSettings) throws IOException {
        if (this.g.isEmpty() && this.e.j()) {
            return;
        }
        if (outputSettings.j() && !this.g.isEmpty() && (this.e.c() || (outputSettings.h() && (this.g.size() > 1 || (this.g.size() == 1 && !(this.g.get(0) instanceof j)))))) {
            B(appendable, i2, outputSettings);
        }
        appendable.append("</").append(l1()).append('>');
    }

    public boolean J0() {
        for (g gVar : this.g) {
            if (gVar instanceof j) {
                if (!((j) gVar).i0()) {
                    return true;
                }
            } else if ((gVar instanceof Element) && ((Element) gVar).J0()) {
                return true;
            }
        }
        return false;
    }

    public Appendable K0(Appendable appendable) {
        int size = this.g.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((g) this.g.get(i2)).H(appendable);
        }
        return appendable;
    }

    public String L0() {
        StringBuilder sbB = m0a.b();
        K0(sbB);
        String strM = m0a.m(sbB);
        return h.a(this).j() ? strM.trim() : strM;
    }

    public Element M0(String str) {
        v();
        j0(str);
        return this;
    }

    public String N0() {
        b bVar = this.h;
        return bVar != null ? bVar.r(TtmlNode.ATTR_ID) : "";
    }

    public Element P0(int i2, Collection collection) {
        dnb.j(collection, "Children collection to be inserted must not be null.");
        int iP = p();
        if (i2 < 0) {
            i2 += iP + 1;
        }
        dnb.d(i2 >= 0 && i2 <= iP, "Insert position out of bounds.");
        c(i2, (g[]) new ArrayList(collection).toArray(new g[0]));
        return this;
    }

    public boolean Q0(org.jsoup.select.c cVar) {
        return cVar.a(V(), this);
    }

    public boolean R0() {
        return this.e.e();
    }

    public final boolean S0(Document.OutputSettings outputSettings) {
        return this.e.c() || (L() != null && L().k1().c()) || outputSettings.h();
    }

    public final boolean T0(Document.OutputSettings outputSettings) {
        return (!k1().h() || k1().f() || (L() != null && !L().R0()) || N() == null || outputSettings.h()) ? false : true;
    }

    public Element U0() {
        if (this.b == null) {
            return null;
        }
        List listS0 = L().s0();
        int iO0 = O0(this, listS0) + 1;
        if (listS0.size() > iO0) {
            return (Element) listS0.get(iO0);
        }
        return null;
    }

    public String V0() {
        return this.e.k();
    }

    public String W0() {
        StringBuilder sbB = m0a.b();
        X0(sbB);
        return m0a.m(sbB).trim();
    }

    public final void X0(StringBuilder sb) {
        for (g gVar : this.g) {
            if (gVar instanceof j) {
                m0(sb, (j) gVar);
            } else if (gVar instanceof Element) {
                n0((Element) gVar, sb);
            }
        }
    }

    @Override
    public final Element L() {
        return (Element) this.b;
    }

    public Elements Z0() {
        Elements elements = new Elements();
        f0(this, elements);
        return elements;
    }

    public Element a1(String str) {
        dnb.i(str);
        c(0, (g[]) h.b(this).f(str, this, l()).toArray(new g[0]));
        return this;
    }

    public Element c1() {
        List listS0;
        int iO0;
        if (this.b != null && (iO0 = O0(this, (listS0 = L().s0()))) > 0) {
            return (Element) listS0.get(iO0 - 1);
        }
        return null;
    }

    public Element d1(String str) {
        return (Element) super.Q(str);
    }

    public Element e1(String str) {
        dnb.i(str);
        Set setV0 = v0();
        setV0.remove(str);
        w0(setV0);
        return this;
    }

    @Override
    public Element V() {
        return (Element) super.V();
    }

    public Element g0(String str) {
        dnb.i(str);
        Set setV0 = v0();
        setV0.add(str);
        w0(setV0);
        return this;
    }

    public Element h0(String str) {
        return (Element) super.f(str);
    }

    public Elements h1(String str) {
        return Selector.c(str, this);
    }

    public Element i0(g gVar) {
        return (Element) super.g(gVar);
    }

    public Element i1(String str) {
        return Selector.e(str, this);
    }

    @Override
    public b j() {
        if (this.h == null) {
            this.h = new b();
        }
        return this.h;
    }

    public Element j0(String str) {
        dnb.i(str);
        d((g[]) h.b(this).f(str, this, l()).toArray(new g[0]));
        return this;
    }

    public Elements j1() {
        if (this.b == null) {
            return new Elements(0);
        }
        List<Element> listS0 = L().s0();
        Elements elements = new Elements(listS0.size() - 1);
        for (Element element : listS0) {
            if (element != this) {
                elements.add(element);
            }
        }
        return elements;
    }

    public Element k0(g gVar) {
        dnb.i(gVar);
        S(gVar);
        w();
        this.g.add(gVar);
        gVar.Y(this.g.size() - 1);
        return this;
    }

    public tda k1() {
        return this.e;
    }

    @Override
    public String l() {
        return g1(this, k);
    }

    public Element l0(String str) {
        Element element = new Element(tda.p(str, h.b(this).g()), l());
        k0(element);
        return element;
    }

    public String l1() {
        return this.e.d();
    }

    public Element m1(String str) {
        dnb.h(str, "Tag name must not be empty.");
        this.e = tda.p(str, h.b(this).g());
        return this;
    }

    public String n1() {
        StringBuilder sbB = m0a.b();
        org.jsoup.select.d.c(new a(sbB), this);
        return m0a.m(sbB).trim();
    }

    public Element o0(String str, String str2) {
        super.i(str, str2);
        return this;
    }

    public Element o1(String str) {
        dnb.i(str);
        v();
        Document documentK = K();
        if (documentK == null || !documentK.y1().d(V0())) {
            k0(new j(str));
        } else {
            k0(new e(str));
        }
        return this;
    }

    @Override
    public int p() {
        return this.g.size();
    }

    public Element p0(String str) {
        return (Element) super.m(str);
    }

    public List p1() {
        ArrayList arrayList = new ArrayList();
        for (g gVar : this.g) {
            if (gVar instanceof j) {
                arrayList.add((j) gVar);
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Element q0(g gVar) {
        return (Element) super.n(gVar);
    }

    public Element q1(String str) {
        dnb.i(str);
        Set setV0 = v0();
        if (setV0.contains(str)) {
            setV0.remove(str);
        } else {
            setV0.add(str);
        }
        w0(setV0);
        return this;
    }

    public Element r0(int i2) {
        return (Element) s0().get(i2);
    }

    public String r1() {
        return V0().equals("textarea") ? n1() : h(ES6Iterator.VALUE_PROPERTY);
    }

    public List s0() {
        List list;
        if (p() == 0) {
            return i;
        }
        WeakReference weakReference = this.f;
        if (weakReference != null && (list = (List) weakReference.get()) != null) {
            return list;
        }
        int size = this.g.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            g gVar = (g) this.g.get(i2);
            if (gVar instanceof Element) {
                arrayList.add((Element) gVar);
            }
        }
        this.f = new WeakReference(arrayList);
        return arrayList;
    }

    public Element s1(String str) {
        if (V0().equals("textarea")) {
            o1(str);
        } else {
            o0(ES6Iterator.VALUE_PROPERTY, str);
        }
        return this;
    }

    public Elements t0() {
        return new Elements((List<Element>) s0());
    }

    public Element t1(String str) {
        return (Element) super.c0(str);
    }

    @Override
    public void u(String str) {
        j().B(k, str);
    }

    public String u0() {
        return h("class").trim();
    }

    public Set v0() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(j.split(u0())));
        linkedHashSet.remove("");
        return linkedHashSet;
    }

    @Override
    public List w() {
        if (this.g == g.d) {
            this.g = new NodeList(this, 4);
        }
        return this.g;
    }

    public Element w0(Set set) {
        dnb.i(set);
        if (set.isEmpty()) {
            j().G("class");
        } else {
            j().B("class", m0a.j(set, " "));
        }
        return this;
    }

    @Override
    public Element x0() {
        return (Element) super.x0();
    }

    public String y0() {
        StringBuilder sbB = m0a.b();
        for (g gVar : this.g) {
            if (gVar instanceof e) {
                sbB.append(((e) gVar).h0());
            } else if (gVar instanceof d) {
                sbB.append(((d) gVar).h0());
            } else if (gVar instanceof Element) {
                sbB.append(((Element) gVar).y0());
            } else if (gVar instanceof c) {
                sbB.append(((c) gVar).h0());
            }
        }
        return m0a.m(sbB);
    }

    @Override
    public boolean z() {
        return this.h != null;
    }

    @Override
    public Element t(g gVar) {
        Element element = (Element) super.t(gVar);
        b bVar = this.h;
        element.h = bVar != null ? bVar.clone() : null;
        NodeList nodeList = new NodeList(element, this.g.size());
        element.g = nodeList;
        nodeList.addAll(this.g);
        return element;
    }

    public Element(tda tdaVar, String str) {
        this(tdaVar, str, null);
    }
}
