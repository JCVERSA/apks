package org.jsoup.parser;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.l;
import org.jsoup.select.Elements;

public class b extends i {

    private HtmlTreeBuilderState f68655k;

    private HtmlTreeBuilderState f68656l;

    private boolean f68657m;

    private Element f68658n;

    private org.jsoup.nodes.h f68659o;

    private Element f68660p;

    private ArrayList f68661q;

    private List f68662r;

    private Token.g f68663s;

    private boolean f68664t;

    private boolean f68665u;

    private boolean f68666v;

    private String[] f68667w = {null};

    static final String[] f68652x = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};

    static final String[] f68653y = {"ol", "ul"};

    static final String[] f68654z = {"button"};
    static final String[] A = {"html", "table"};
    static final String[] B = {"optgroup", "option"};
    static final String[] C = {"dd", "dt", "li", "optgroup", "option", TtmlNode.TAG_P, "rp", "rt"};
    static final String[] D = {PlaceTypes.ADDRESS, "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", TtmlNode.TAG_BODY, TtmlNode.TAG_BR, "button", "caption", TtmlNode.CENTER, "col", "colgroup", "command", "dd", "details", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, TtmlNode.TAG_DIV, "dl", "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", TtmlNode.TAG_HEAD, "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", TtmlNode.TAG_P, "param", "plaintext", OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, "script", "section", "select", TtmlNode.TAG_STYLE, "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", CampaignEx.JSON_KEY_TITLE, "tr", "ul", "wbr", "xmp"};

    private boolean I(String str, String[] strArr, String[] strArr2) {
        String[] strArr3 = this.f68667w;
        strArr3[0] = str;
        return J(strArr3, strArr, strArr2);
    }

    private boolean J(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f68719d.size();
        int i10 = size - 1;
        int i11 = i10 > 100 ? size - 101 : 0;
        while (i10 >= i11) {
            String strB = ((Element) this.f68719d.get(i10)).B();
            if (org.jsoup.helper.c.c(strB, strArr)) {
                return true;
            }
            if (org.jsoup.helper.c.c(strB, strArr2)) {
                return false;
            }
            if (strArr3 != null && org.jsoup.helper.c.c(strB, strArr3)) {
                return false;
            }
            i10--;
        }
        return false;
    }

    private void T(org.jsoup.nodes.j jVar) {
        org.jsoup.nodes.h hVar;
        if (this.f68719d.size() == 0) {
            this.f68718c.g0(jVar);
        } else if (X()) {
            R(jVar);
        } else {
            a().g0(jVar);
        }
        if (jVar instanceof Element) {
            Element element = (Element) jVar;
            if (!element.T0().e() || (hVar = this.f68659o) == null) {
                return;
            }
            hVar.d1(element);
        }
    }

    private boolean W(ArrayList arrayList, Element element) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((Element) arrayList.get(size)) == element) {
                return true;
            }
        }
        return false;
    }

    private boolean a0(Element element, Element element2) {
        return element.B().equals(element2.B()) && element.i().equals(element2.i());
    }

    private void l(String... strArr) {
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            Element element = (Element) this.f68719d.get(size);
            if (org.jsoup.helper.c.b(element.B(), strArr) || element.B().equals("html")) {
                return;
            }
            this.f68719d.remove(size);
        }
    }

    private void v0(ArrayList arrayList, Element element, Element element2) {
        int iLastIndexOf = arrayList.lastIndexOf(element);
        org.jsoup.helper.d.d(iLastIndexOf != -1);
        arrayList.set(iLastIndexOf, element2);
    }

    List A() {
        return this.f68662r;
    }

    void A0(Element element) {
        this.f68658n = element;
    }

    ArrayList B() {
        return this.f68719d;
    }

    HtmlTreeBuilderState B0() {
        return this.f68655k;
    }

    boolean C(String str) {
        return F(str, f68654z);
    }

    void C0(HtmlTreeBuilderState htmlTreeBuilderState) {
        this.f68655k = htmlTreeBuilderState;
    }

    boolean D(String str) {
        return F(str, f68653y);
    }

    boolean E(String str) {
        return F(str, null);
    }

    boolean F(String str, String[] strArr) {
        return I(str, f68652x, strArr);
    }

    boolean G(String[] strArr) {
        return J(strArr, f68652x, null);
    }

    boolean H(String str) {
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            String strB = ((Element) this.f68719d.get(size)).B();
            if (strB.equals(str)) {
                return true;
            }
            if (!org.jsoup.helper.c.c(strB, B)) {
                return false;
            }
        }
        org.jsoup.helper.d.a("Should not be reachable");
        return false;
    }

    boolean K(String str) {
        return I(str, A, null);
    }

    Element L(Token.h hVar) {
        if (!hVar.z()) {
            Element element = new Element(f.l(hVar.A(), this.f68723h), this.f68720e, this.f68723h.a(hVar.f68643j));
            M(element);
            return element;
        }
        Element elementP = P(hVar);
        this.f68719d.add(elementP);
        this.f68717b.u(TokeniserState.Data);
        this.f68717b.k(this.f68663s.m().B(elementP.U0()));
        return elementP;
    }

    void M(Element element) {
        T(element);
        this.f68719d.add(element);
    }

    void N(Token.c cVar) {
        org.jsoup.nodes.j fVar;
        String strU0 = a().U0();
        String strQ = cVar.q();
        if (cVar.f()) {
            fVar = new org.jsoup.nodes.d(strQ);
        } else {
            fVar = (strU0.equals("script") || strU0.equals(TtmlNode.TAG_STYLE)) ? new org.jsoup.nodes.f(strQ) : new l(strQ);
        }
        a().g0(fVar);
    }

    void O(Token.d dVar) {
        T(new org.jsoup.nodes.e(dVar.p()));
    }

    Element P(Token.h hVar) {
        f fVarL = f.l(hVar.A(), this.f68723h);
        Element element = new Element(fVarL, this.f68720e, hVar.f68643j);
        T(element);
        if (hVar.z()) {
            if (!fVarL.f()) {
                fVarL.j();
            } else if (!fVarL.d()) {
                this.f68717b.q("Tag cannot be self closing; not a void tag");
            }
        }
        return element;
    }

    org.jsoup.nodes.h Q(Token.h hVar, boolean z10) {
        org.jsoup.nodes.h hVar2 = new org.jsoup.nodes.h(f.l(hVar.A(), this.f68723h), this.f68720e, hVar.f68643j);
        y0(hVar2);
        T(hVar2);
        if (z10) {
            this.f68719d.add(hVar2);
        }
        return hVar2;
    }

    void R(org.jsoup.nodes.j jVar) {
        Element elementJ;
        Element elementY = y("table");
        boolean z10 = false;
        if (elementY == null) {
            elementJ = (Element) this.f68719d.get(0);
        } else if (elementY.I() != null) {
            elementJ = elementY.I();
            z10 = true;
        } else {
            elementJ = j(elementY);
        }
        if (!z10) {
            elementJ.g0(jVar);
        } else {
            org.jsoup.helper.d.j(elementY);
            elementY.l0(jVar);
        }
    }

    void S() {
        this.f68661q.add(null);
    }

    void U(Element element, Element element2) {
        int iLastIndexOf = this.f68719d.lastIndexOf(element);
        org.jsoup.helper.d.d(iLastIndexOf != -1);
        this.f68719d.add(iLastIndexOf + 1, element2);
    }

    Element V(String str) {
        Element element = new Element(f.l(str, this.f68723h), this.f68720e);
        M(element);
        return element;
    }

    boolean X() {
        return this.f68665u;
    }

    boolean Y() {
        return this.f68666v;
    }

    boolean Z(Element element) {
        return W(this.f68661q, element);
    }

    @Override
    d b() {
        return d.f68670c;
    }

    boolean b0(Element element) {
        return org.jsoup.helper.c.c(element.B(), D);
    }

    @Override
    protected void c(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        super.c(reader, str, parseErrorList, dVar);
        this.f68655k = HtmlTreeBuilderState.Initial;
        this.f68656l = null;
        this.f68657m = false;
        this.f68658n = null;
        this.f68659o = null;
        this.f68660p = null;
        this.f68661q = new ArrayList();
        this.f68662r = new ArrayList();
        this.f68663s = new Token.g();
        this.f68664t = true;
        this.f68665u = false;
        this.f68666v = false;
    }

    Element c0() {
        if (this.f68661q.size() <= 0) {
            return null;
        }
        ArrayList arrayList = this.f68661q;
        return (Element) arrayList.get(arrayList.size() - 1);
    }

    void d0() {
        this.f68656l = this.f68655k;
    }

    @Override
    protected boolean e(Token token) {
        this.f68721f = token;
        return this.f68655k.process(token, this);
    }

    void e0(Element element) {
        if (this.f68657m) {
            return;
        }
        String strA = element.a("href");
        if (strA.length() != 0) {
            this.f68720e = strA;
            this.f68657m = true;
            this.f68718c.S(strA);
        }
    }

    void f0() {
        this.f68662r = new ArrayList();
    }

    boolean g0(Element element) {
        return W(this.f68719d, element);
    }

    @Override
    public boolean h(String str, org.jsoup.nodes.b bVar) {
        return super.h(str, bVar);
    }

    HtmlTreeBuilderState h0() {
        return this.f68656l;
    }

    List i0(String str, Element element, String str2, ParseErrorList parseErrorList, d dVar) {
        Element element2;
        this.f68655k = HtmlTreeBuilderState.Initial;
        c(new StringReader(str), str2, parseErrorList, dVar);
        this.f68660p = element;
        this.f68666v = true;
        if (element != null) {
            if (element.H() != null) {
                this.f68718c.i1(element.H().h1());
            }
            String strU0 = element.U0();
            if (org.jsoup.helper.c.b(strU0, CampaignEx.JSON_KEY_TITLE, "textarea")) {
                this.f68717b.u(TokeniserState.Rcdata);
            } else if (org.jsoup.helper.c.b(strU0, "iframe", "noembed", "noframes", TtmlNode.TAG_STYLE, "xmp")) {
                this.f68717b.u(TokeniserState.Rawtext);
            } else if (strU0.equals("script")) {
                this.f68717b.u(TokeniserState.ScriptData);
            } else if (!strU0.equals("noscript") && strU0.equals("plaintext")) {
                this.f68717b.u(TokeniserState.Data);
            } else {
                this.f68717b.u(TokeniserState.Data);
            }
            element2 = new Element(f.l("html", dVar), str2);
            this.f68718c.g0(element2);
            this.f68719d.add(element2);
            x0();
            Elements elementsM0 = element.M0();
            elementsM0.add(0, element);
            for (Element element3 : elementsM0) {
                if (element3 instanceof org.jsoup.nodes.h) {
                    this.f68659o = (org.jsoup.nodes.h) element3;
                    break;
                }
            }
        } else {
            element2 = null;
        }
        i();
        return element != null ? element2.o() : this.f68718c.o();
    }

    Element j(Element element) {
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            if (((Element) this.f68719d.get(size)) == element) {
                return (Element) this.f68719d.get(size - 1);
            }
        }
        return null;
    }

    Element j0() {
        return (Element) this.f68719d.remove(this.f68719d.size() - 1);
    }

    void k() {
        while (!this.f68661q.isEmpty() && t0() != null) {
        }
    }

    void k0(String str) {
        for (int size = this.f68719d.size() - 1; size >= 0 && !((Element) this.f68719d.get(size)).B().equals(str); size--) {
            this.f68719d.remove(size);
        }
    }

    void l0(String str) {
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            Element element = (Element) this.f68719d.get(size);
            this.f68719d.remove(size);
            if (element.B().equals(str)) {
                return;
            }
        }
    }

    void m() {
        l("tbody", "tfoot", "thead", "template");
    }

    void m0(String... strArr) {
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            Element element = (Element) this.f68719d.get(size);
            this.f68719d.remove(size);
            if (org.jsoup.helper.c.c(element.B(), strArr)) {
                return;
            }
        }
    }

    void n() {
        l("table");
    }

    boolean n0(Token token, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.f68721f = token;
        return htmlTreeBuilderState.process(token, this);
    }

    void o() {
        l("tr", "template");
    }

    void o0(Element element) {
        this.f68719d.add(element);
    }

    void p(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.f68722g.canAddError()) {
            this.f68722g.add(new c(this.f68716a.F(), "Unexpected token [%s] when in state [%s]", this.f68721f.o(), htmlTreeBuilderState));
        }
    }

    void p0(Element element) {
        int i10 = 0;
        for (int size = this.f68661q.size() - 1; size >= 0; size--) {
            Element element2 = (Element) this.f68661q.get(size);
            if (element2 == null) {
                break;
            }
            if (a0(element, element2)) {
                i10++;
            }
            if (i10 == 3) {
                this.f68661q.remove(size);
                break;
            }
        }
        this.f68661q.add(element);
    }

    void q(boolean z10) {
        this.f68664t = z10;
    }

    void q0() {
        Element elementC0 = c0();
        if (elementC0 == null || g0(elementC0)) {
            return;
        }
        boolean z10 = true;
        int size = this.f68661q.size() - 1;
        int i10 = size;
        while (i10 != 0) {
            i10--;
            elementC0 = (Element) this.f68661q.get(i10);
            if (elementC0 == null || g0(elementC0)) {
                z10 = false;
                break;
            }
        }
        while (true) {
            if (!z10) {
                i10++;
                elementC0 = (Element) this.f68661q.get(i10);
            }
            org.jsoup.helper.d.j(elementC0);
            Element elementV = V(elementC0.B());
            elementV.i().e(elementC0.i());
            this.f68661q.set(i10, elementV);
            if (i10 == size) {
                return;
            } else {
                z10 = false;
            }
        }
    }

    boolean r() {
        return this.f68664t;
    }

    void r0(Element element) {
        for (int size = this.f68661q.size() - 1; size >= 0; size--) {
            if (((Element) this.f68661q.get(size)) == element) {
                this.f68661q.remove(size);
                return;
            }
        }
    }

    void s() {
        t(null);
    }

    boolean s0(Element element) {
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            if (((Element) this.f68719d.get(size)) == element) {
                this.f68719d.remove(size);
                return true;
            }
        }
        return false;
    }

    void t(String str) {
        while (str != null && !a().B().equals(str) && org.jsoup.helper.c.c(a().B(), C)) {
            j0();
        }
    }

    Element t0() {
        int size = this.f68661q.size();
        if (size > 0) {
            return (Element) this.f68661q.remove(size - 1);
        }
        return null;
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.f68721f + ", state=" + this.f68655k + ", currentElement=" + a() + '}';
    }

    Element u(String str) {
        for (int size = this.f68661q.size() - 1; size >= 0; size--) {
            Element element = (Element) this.f68661q.get(size);
            if (element == null) {
                return null;
            }
            if (element.B().equals(str)) {
                return element;
            }
        }
        return null;
    }

    void u0(Element element, Element element2) {
        v0(this.f68661q, element, element2);
    }

    String v() {
        return this.f68720e;
    }

    Document w() {
        return this.f68718c;
    }

    void w0(Element element, Element element2) {
        v0(this.f68719d, element, element2);
    }

    org.jsoup.nodes.h x() {
        return this.f68659o;
    }

    void x0() {
        boolean z10 = false;
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            Element element = (Element) this.f68719d.get(size);
            if (size == 0) {
                element = this.f68660p;
                z10 = true;
            }
            String strB = element.B();
            if ("select".equals(strB)) {
                C0(HtmlTreeBuilderState.InSelect);
                return;
            }
            if ("td".equals(strB) || ("th".equals(strB) && !z10)) {
                C0(HtmlTreeBuilderState.InCell);
                return;
            }
            if ("tr".equals(strB)) {
                C0(HtmlTreeBuilderState.InRow);
                return;
            }
            if ("tbody".equals(strB) || "thead".equals(strB) || "tfoot".equals(strB)) {
                C0(HtmlTreeBuilderState.InTableBody);
                return;
            }
            if ("caption".equals(strB)) {
                C0(HtmlTreeBuilderState.InCaption);
                return;
            }
            if ("colgroup".equals(strB)) {
                C0(HtmlTreeBuilderState.InColumnGroup);
                return;
            }
            if ("table".equals(strB)) {
                C0(HtmlTreeBuilderState.InTable);
                return;
            }
            if (TtmlNode.TAG_HEAD.equals(strB)) {
                C0(HtmlTreeBuilderState.InBody);
                return;
            }
            if (TtmlNode.TAG_BODY.equals(strB)) {
                C0(HtmlTreeBuilderState.InBody);
                return;
            }
            if ("frameset".equals(strB)) {
                C0(HtmlTreeBuilderState.InFrameset);
                return;
            } else if ("html".equals(strB)) {
                C0(HtmlTreeBuilderState.BeforeHead);
                return;
            } else {
                if (z10) {
                    C0(HtmlTreeBuilderState.InBody);
                    return;
                }
            }
        }
    }

    Element y(String str) {
        for (int size = this.f68719d.size() - 1; size >= 0; size--) {
            Element element = (Element) this.f68719d.get(size);
            if (element.B().equals(str)) {
                return element;
            }
        }
        return null;
    }

    void y0(org.jsoup.nodes.h hVar) {
        this.f68659o = hVar;
    }

    Element z() {
        return this.f68658n;
    }

    void z0(boolean z10) {
        this.f68665u = z10;
    }
}
