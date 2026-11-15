package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.dnb;
import defpackage.dx7;
import defpackage.m0a;
import defpackage.sw7;
import defpackage.tda;
import defpackage.tw7;
import defpackage.x34;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.d;
import org.jsoup.nodes.e;
import org.jsoup.nodes.g;
import org.jsoup.nodes.j;
import org.jsoup.select.Elements;

public class a extends c {
    public HtmlTreeBuilderState k;
    public HtmlTreeBuilderState l;
    public boolean m;
    public Element n;
    public x34 o;
    public Element p;
    public ArrayList q;
    public List r;
    public Token.g s;
    public boolean t;
    public boolean u;
    public boolean v;
    public String[] w = {null};
    public static final String[] x = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};
    public static final String[] y = {"ol", "ul"};
    public static final String[] z = {AuthInfo.Component.CODE_BUTTON};
    public static final String[] A = {"html", "table"};
    public static final String[] B = {"optgroup", "option"};
    public static final String[] C = {"dd", "dt", "li", "optgroup", "option", TtmlNode.TAG_P, "rp", "rt"};
    public static final String[] D = {"address", "applet", "area", "article", "aside", TtmlNode.RUBY_BASE, "basefont", "bgsound", "blockquote", TtmlNode.TAG_BODY, "br", AuthInfo.Component.CODE_BUTTON, "caption", TtmlNode.CENTER, "col", "colgroup", "command", "dd", "details", "dir", TtmlNode.TAG_DIV, CmcdConfiguration.KEY_DEADLINE, "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", TypedValues.AttributesType.S_FRAME, "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", AuthInfo.Component.CODE_LINK, "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", TtmlNode.TAG_P, "param", "plaintext", "pre", StringLookupFactory.KEY_SCRIPT, "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp"};

    public String A() {
        return this.f;
    }

    public void A0(Element element, Element element2) {
        B0(this.q, element, element2);
    }

    public Document B() {
        return this.d;
    }

    public final void B0(ArrayList arrayList, Element element, Element element2) {
        int iLastIndexOf = arrayList.lastIndexOf(element);
        dnb.c(iLastIndexOf != -1);
        arrayList.set(iLastIndexOf, element2);
    }

    public x34 C() {
        return this.o;
    }

    public void C0(Element element, Element element2) {
        B0(this.e, element, element2);
    }

    public Element D(String str) {
        int size = this.e.size();
        int i = size - 1;
        int i2 = i >= 256 ? size - 257 : 0;
        while (i >= i2) {
            Element element = (Element) this.e.get(i);
            if (element.V0().equals(str)) {
                return element;
            }
            i--;
        }
        return null;
    }

    public void D0() {
        int size = this.e.size();
        int i = size - 1;
        boolean z2 = false;
        int i2 = i >= 256 ? size - 257 : 0;
        if (this.e.size() == 0) {
            I0(HtmlTreeBuilderState.InBody);
        }
        while (i >= i2) {
            Element element = (Element) this.e.get(i);
            if (i == 0) {
                if (this.v) {
                    element = this.p;
                }
                z2 = true;
            }
            String strV0 = element != null ? element.V0() : "";
            if ("select".equals(strV0)) {
                I0(HtmlTreeBuilderState.InSelect);
                return;
            }
            if ("td".equals(strV0) || ("th".equals(strV0) && !z2)) {
                I0(HtmlTreeBuilderState.InCell);
                return;
            }
            if ("tr".equals(strV0)) {
                I0(HtmlTreeBuilderState.InRow);
                return;
            }
            if ("tbody".equals(strV0) || "thead".equals(strV0) || "tfoot".equals(strV0)) {
                I0(HtmlTreeBuilderState.InTableBody);
                return;
            }
            if ("caption".equals(strV0)) {
                I0(HtmlTreeBuilderState.InCaption);
                return;
            }
            if ("colgroup".equals(strV0)) {
                I0(HtmlTreeBuilderState.InColumnGroup);
                return;
            }
            if ("table".equals(strV0)) {
                I0(HtmlTreeBuilderState.InTable);
                return;
            }
            if ("head".equals(strV0) && !z2) {
                I0(HtmlTreeBuilderState.InHead);
                return;
            }
            if (TtmlNode.TAG_BODY.equals(strV0)) {
                I0(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("frameset".equals(strV0)) {
                I0(HtmlTreeBuilderState.InFrameset);
                return;
            } else if ("html".equals(strV0)) {
                I0(this.n == null ? HtmlTreeBuilderState.BeforeHead : HtmlTreeBuilderState.AfterHead);
                return;
            } else {
                if (z2) {
                    I0(HtmlTreeBuilderState.InBody);
                    return;
                }
                i--;
            }
        }
    }

    public Element E() {
        return this.n;
    }

    public void E0(x34 x34Var) {
        this.o = x34Var;
    }

    public List F() {
        return this.r;
    }

    public void F0(boolean z2) {
        this.u = z2;
    }

    public ArrayList G() {
        return this.e;
    }

    public void G0(Element element) {
        this.n = element;
    }

    public boolean H(String str) {
        return K(str, z);
    }

    public HtmlTreeBuilderState H0() {
        return this.k;
    }

    public boolean I(String str) {
        return K(str, y);
    }

    public void I0(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.k = htmlTreeBuilderState;
    }

    public boolean J(String str) {
        return K(str, null);
    }

    public boolean K(String str, String[] strArr) {
        return N(str, x, strArr);
    }

    public boolean L(String[] strArr) {
        return O(strArr, x, null);
    }

    public boolean M(String str) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            String strV0 = ((Element) this.e.get(size)).V0();
            if (strV0.equals(str)) {
                return true;
            }
            if (!m0a.d(strV0, B)) {
                return false;
            }
        }
        dnb.a("Should not be reachable");
        return false;
    }

    public final boolean N(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.w;
        strArr3[0] = str;
        return O(strArr3, strArr, strArr2);
    }

    public final boolean O(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.e.size();
        int i = size - 1;
        int i2 = i > 100 ? size - 101 : 0;
        while (i >= i2) {
            String strV0 = ((Element) this.e.get(i)).V0();
            if (m0a.d(strV0, strArr)) {
                return true;
            }
            if (m0a.d(strV0, strArr2)) {
                return false;
            }
            if (strArr3 != null && m0a.d(strV0, strArr3)) {
                return false;
            }
            i--;
        }
        return false;
    }

    public boolean P(String str) {
        return N(str, A, null);
    }

    public Element Q(Token.h hVar) {
        if (hVar.A() && !hVar.l.isEmpty() && hVar.l.p(this.h) > 0) {
            d("Duplicate attribute");
        }
        if (!hVar.B()) {
            Element element = new Element(tda.p(hVar.C(), this.h), null, this.h.b(hVar.l));
            R(element);
            return element;
        }
        Element elementU = U(hVar);
        this.e.add(elementU);
        this.c.w(TokeniserState.Data);
        this.c.m(this.s.m().D(elementU.l1()));
        return elementU;
    }

    public void R(Element element) {
        Y(element);
        this.e.add(element);
    }

    public void S(Token.c cVar) {
        g eVar;
        Element elementA = a();
        String strV0 = elementA.V0();
        String strQ = cVar.q();
        if (cVar.f()) {
            eVar = new org.jsoup.nodes.c(strQ);
        } else {
            eVar = f(strV0) ? new e(strQ) : new j(strQ);
        }
        elementA.k0(eVar);
    }

    public void T(Token.d dVar) {
        Y(new d(dVar.s()));
    }

    public Element U(Token.h hVar) {
        tda tdaVarP = tda.p(hVar.C(), this.h);
        Element element = new Element(tdaVarP, null, this.h.b(hVar.l));
        Y(element);
        if (hVar.B()) {
            if (!tdaVarP.i()) {
                tdaVarP.n();
            } else if (!tdaVarP.f()) {
                this.c.s("Tag cannot be self closing; not a void tag");
            }
        }
        return element;
    }

    public x34 V(Token.h hVar, boolean z2) {
        x34 x34Var = new x34(tda.p(hVar.C(), this.h), null, this.h.b(hVar.l));
        E0(x34Var);
        Y(x34Var);
        if (z2) {
            this.e.add(x34Var);
        }
        return x34Var;
    }

    public void W(g gVar) {
        Element elementN;
        Element elementD = D("table");
        boolean z2 = false;
        if (elementD == null) {
            elementN = (Element) this.e.get(0);
        } else if (elementD.L() != null) {
            elementN = elementD.L();
            z2 = true;
        } else {
            elementN = n(elementD);
        }
        if (!z2) {
            elementN.k0(gVar);
        } else {
            dnb.i(elementD);
            elementD.q0(gVar);
        }
    }

    public void X() {
        this.q.add(null);
    }

    public final void Y(g gVar) {
        x34 x34Var;
        if (this.e.isEmpty()) {
            this.d.k0(gVar);
        } else if (c0()) {
            W(gVar);
        } else {
            a().k0(gVar);
        }
        if (gVar instanceof Element) {
            Element element = (Element) gVar;
            if (!element.k1().g() || (x34Var = this.o) == null) {
                return;
            }
            x34Var.u1(element);
        }
    }

    public void Z(Element element, Element element2) {
        int iLastIndexOf = this.e.lastIndexOf(element);
        dnb.c(iLastIndexOf != -1);
        this.e.add(iLastIndexOf + 1, element2);
    }

    public Element a0(String str) {
        Element element = new Element(tda.p(str, this.h), null);
        R(element);
        return element;
    }

    public final boolean b0(ArrayList arrayList, Element element) {
        int size = arrayList.size();
        int i = size - 1;
        int i2 = i >= 256 ? size - 257 : 0;
        while (i >= i2) {
            if (((Element) arrayList.get(i)) == element) {
                return true;
            }
            i--;
        }
        return false;
    }

    @Override
    public tw7 c() {
        return tw7.c;
    }

    public boolean c0() {
        return this.u;
    }

    public boolean d0() {
        return this.v;
    }

    @Override
    public void e(Reader reader, String str, dx7 dx7Var) {
        super.e(reader, str, dx7Var);
        this.k = HtmlTreeBuilderState.Initial;
        this.l = null;
        this.m = false;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.s = new Token.g();
        this.t = true;
        this.u = false;
        this.v = false;
    }

    public boolean e0(Element element) {
        return b0(this.q, element);
    }

    @Override
    public boolean f(String str) {
        return str.equals(StringLookupFactory.KEY_SCRIPT) || str.equals("style");
    }

    public final boolean f0(Element element, Element element2) {
        return element.V0().equals(element2.V0()) && element.j().equals(element2.j());
    }

    public boolean g0(Element element) {
        return m0a.d(element.V0(), D);
    }

    @Override
    public List h(String str, Element element, String str2, dx7 dx7Var) {
        Element element2;
        this.k = HtmlTreeBuilderState.Initial;
        e(new StringReader(str), str2, dx7Var);
        this.p = element;
        this.v = true;
        if (element != null) {
            if (element.K() != null) {
                this.d.B1(element.K().A1());
            }
            String strV0 = element.V0();
            if (m0a.c(strV0, "title", "textarea")) {
                this.c.w(TokeniserState.Rcdata);
            } else if (m0a.c(strV0, "iframe", "noembed", "noframes", "style", "xmp")) {
                this.c.w(TokeniserState.Rawtext);
            } else if (strV0.equals(StringLookupFactory.KEY_SCRIPT)) {
                this.c.w(TokeniserState.ScriptData);
            } else if (!strV0.equals("noscript") && strV0.equals("plaintext")) {
                this.c.w(TokeniserState.Data);
            } else {
                this.c.w(TokeniserState.Data);
            }
            element2 = new Element(tda.p(strV0, this.h), str2);
            this.d.k0(element2);
            this.e.add(element2);
            D0();
            Elements elementsZ0 = element.Z0();
            elementsZ0.add(0, element);
            for (Element element3 : elementsZ0) {
                if (element3 instanceof x34) {
                    this.o = (x34) element3;
                    break;
                }
            }
        } else {
            element2 = null;
        }
        m();
        if (element == null) {
            return this.d.q();
        }
        List listA0 = element2.a0();
        if (!listA0.isEmpty()) {
            element2.P0(-1, listA0);
        }
        return element2.q();
    }

    public Element h0() {
        if (this.q.size() <= 0) {
            return null;
        }
        ArrayList arrayList = this.q;
        return (Element) arrayList.get(arrayList.size() - 1);
    }

    @Override
    public boolean i(Token token) {
        this.g = token;
        return this.k.process(token, this);
    }

    public void i0() {
        this.l = this.k;
    }

    public void j0(Element element) {
        if (this.m) {
            return;
        }
        String strA = element.a("href");
        if (strA.length() != 0) {
            this.f = strA;
            this.m = true;
            this.d.W(strA);
        }
    }

    public void k0() {
        this.r = new ArrayList();
    }

    @Override
    public boolean l(String str, org.jsoup.nodes.b bVar) {
        return super.l(str, bVar);
    }

    public boolean l0(Element element) {
        return b0(this.e, element);
    }

    public HtmlTreeBuilderState m0() {
        return this.l;
    }

    public Element n(Element element) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            if (((Element) this.e.get(size)) == element) {
                return (Element) this.e.get(size - 1);
            }
        }
        return null;
    }

    public Element n0() {
        return (Element) this.e.remove(this.e.size() - 1);
    }

    public void o(Element element) {
        int i = 0;
        for (int size = this.q.size() - 1; size >= 0; size--) {
            Element element2 = (Element) this.q.get(size);
            if (element2 == null) {
                return;
            }
            if (f0(element, element2)) {
                i++;
            }
            if (i == 3) {
                this.q.remove(size);
                return;
            }
        }
    }

    public void o0(String str) {
        for (int size = this.e.size() - 1; size >= 0 && !((Element) this.e.get(size)).V0().equals(str); size--) {
            this.e.remove(size);
        }
    }

    public void p() {
        while (!this.q.isEmpty() && z0() != null) {
        }
    }

    public Element p0(String str) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Element element = (Element) this.e.get(size);
            this.e.remove(size);
            if (element.V0().equals(str)) {
                return element;
            }
        }
        return null;
    }

    public final void q(String... strArr) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Element element = (Element) this.e.get(size);
            if (m0a.c(element.V0(), strArr) || element.V0().equals("html")) {
                return;
            }
            this.e.remove(size);
        }
    }

    public void q0(String... strArr) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            Element element = (Element) this.e.get(size);
            this.e.remove(size);
            if (m0a.d(element.V0(), strArr)) {
                return;
            }
        }
    }

    public void r() {
        q("tbody", "tfoot", "thead", "template");
    }

    public int r0(Element element) {
        for (int i = 0; i < this.q.size(); i++) {
            if (element == this.q.get(i)) {
                return i;
            }
        }
        return -1;
    }

    public void s() {
        q("table");
    }

    public boolean s0(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.g = token;
        return htmlTreeBuilderState.process(token, this);
    }

    public void t() {
        q("tr", "template");
    }

    public void t0(Element element) {
        this.e.add(element);
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.g + ", state=" + this.k + ", currentElement=" + a() + '}';
    }

    public void u(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.a.a().canAddError()) {
            this.a.a().add(new sw7(this.b.J(), "Unexpected token [%s] when in state [%s]", this.g.o(), htmlTreeBuilderState));
        }
    }

    public void u0(Element element) {
        o(element);
        this.q.add(element);
    }

    public void v(boolean z2) {
        this.t = z2;
    }

    public void v0(Element element, int i) {
        o(element);
        try {
            this.q.add(i, element);
        } catch (IndexOutOfBoundsException unused) {
            this.q.add(element);
        }
    }

    public boolean w() {
        return this.t;
    }

    public void w0() {
        Element elementH0 = h0();
        if (elementH0 == null || l0(elementH0)) {
            return;
        }
        int size = this.q.size();
        int i = size - 12;
        if (i < 0) {
            i = 0;
        }
        boolean z2 = true;
        int i2 = size - 1;
        int i3 = i2;
        while (i3 != i) {
            i3--;
            elementH0 = (Element) this.q.get(i3);
            if (elementH0 == null || l0(elementH0)) {
                z2 = false;
                break;
            }
        }
        while (true) {
            if (!z2) {
                i3++;
                elementH0 = (Element) this.q.get(i3);
            }
            dnb.i(elementH0);
            Element elementA0 = a0(elementH0.V0());
            if (elementH0.k() > 0) {
                elementA0.j().k(elementH0.j());
            }
            this.q.set(i3, elementA0);
            if (i3 == i2) {
                return;
            } else {
                z2 = false;
            }
        }
    }

    public void x() {
        y(null);
    }

    public void x0(Element element) {
        for (int size = this.q.size() - 1; size >= 0; size--) {
            if (((Element) this.q.get(size)) == element) {
                this.q.remove(size);
                return;
            }
        }
    }

    public void y(String str) {
        while (str != null && !b(str) && m0a.d(a().V0(), C)) {
            n0();
        }
    }

    public boolean y0(Element element) {
        for (int size = this.e.size() - 1; size >= 0; size--) {
            if (((Element) this.e.get(size)) == element) {
                this.e.remove(size);
                return true;
            }
        }
        return false;
    }

    public Element z(String str) {
        for (int size = this.q.size() - 1; size >= 0; size--) {
            Element element = (Element) this.q.get(size);
            if (element == null) {
                return null;
            }
            if (element.V0().equals(str)) {
                return element;
            }
        }
        return null;
    }

    public Element z0() {
        int size = this.q.size();
        if (size > 0) {
            return (Element) this.q.remove(size - 1);
        }
        return null;
    }
}
