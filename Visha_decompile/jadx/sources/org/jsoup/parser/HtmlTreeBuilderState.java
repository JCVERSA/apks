package org.jsoup.parser;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.m0a;
import defpackage.tda;
import defpackage.tw7;
import defpackage.x34;
import java.util.ArrayList;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.f;
import org.jsoup.nodes.g;
import org.mozilla.classfile.ByteCode;

enum HtmlTreeBuilderState {
    Initial {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                return true;
            }
            if (token.h()) {
                aVar.T(token.b());
            } else {
                if (!token.i()) {
                    aVar.I0(HtmlTreeBuilderState.BeforeHtml);
                    return aVar.i(token);
                }
                Token.e eVarC = token.c();
                f fVar = new f(aVar.h.c(eVarC.p()), eVarC.r(), eVarC.s());
                fVar.h0(eVarC.q());
                aVar.B().k0(fVar);
                if (eVarC.t()) {
                    aVar.B().B1(Document.QuirksMode.quirks);
                }
                aVar.I0(HtmlTreeBuilderState.BeforeHtml);
            }
            return true;
        }
    },
    BeforeHtml {
        private boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            aVar.a0("html");
            aVar.I0(HtmlTreeBuilderState.BeforeHead);
            return aVar.i(token);
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.i()) {
                aVar.u(this);
                return false;
            }
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
                return true;
            }
            if (token.l() && token.e().F().equals("html")) {
                aVar.Q(token.e());
                aVar.I0(HtmlTreeBuilderState.BeforeHead);
                return true;
            }
            if ((!token.k() || !m0a.d(token.d().F(), b.e)) && token.k()) {
                aVar.u(this);
                return false;
            }
            return anythingElse(token, aVar);
        }
    },
    BeforeHead {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
                return true;
            }
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (token.i()) {
                aVar.u(this);
                return false;
            }
            if (token.l() && token.e().F().equals("html")) {
                return HtmlTreeBuilderState.InBody.process(token, aVar);
            }
            if (token.l() && token.e().F().equals("head")) {
                aVar.G0(aVar.Q(token.e()));
                aVar.I0(HtmlTreeBuilderState.InHead);
                return true;
            }
            if (token.k() && m0a.d(token.d().F(), b.e)) {
                aVar.k("head");
                return aVar.i(token);
            }
            if (token.k()) {
                aVar.u(this);
                return false;
            }
            aVar.k("head");
            return aVar.i(token);
        }
    },
    InHead {
        private boolean f(Token token, c cVar) {
            cVar.j("head");
            return cVar.i(token);
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
                return true;
            }
            int i = a.a[token.a.ordinal()];
            if (i == 1) {
                aVar.T(token.b());
            } else {
                if (i == 2) {
                    aVar.u(this);
                    return false;
                }
                if (i == 3) {
                    Token.h hVarE = token.e();
                    String strF = hVarE.F();
                    if (strF.equals("html")) {
                        return HtmlTreeBuilderState.InBody.process(token, aVar);
                    }
                    if (m0a.d(strF, b.a)) {
                        Element elementU = aVar.U(hVarE);
                        if (strF.equals(TtmlNode.RUBY_BASE) && elementU.y("href")) {
                            aVar.j0(elementU);
                        }
                    } else if (strF.equals("meta")) {
                        aVar.U(hVarE);
                    } else if (strF.equals("title")) {
                        HtmlTreeBuilderState.b(hVarE, aVar);
                    } else if (m0a.d(strF, b.b)) {
                        HtmlTreeBuilderState.a(hVarE, aVar);
                    } else if (strF.equals("noscript")) {
                        aVar.Q(hVarE);
                        aVar.I0(HtmlTreeBuilderState.InHeadNoscript);
                    } else {
                        if (!strF.equals(StringLookupFactory.KEY_SCRIPT)) {
                            if (!strF.equals("head")) {
                                return f(token, aVar);
                            }
                            aVar.u(this);
                            return false;
                        }
                        aVar.c.w(TokeniserState.ScriptData);
                        aVar.i0();
                        aVar.I0(HtmlTreeBuilderState.Text);
                        aVar.Q(hVarE);
                    }
                } else {
                    if (i != 4) {
                        return f(token, aVar);
                    }
                    String strF2 = token.d().F();
                    if (!strF2.equals("head")) {
                        if (m0a.d(strF2, b.c)) {
                            return f(token, aVar);
                        }
                        aVar.u(this);
                        return false;
                    }
                    aVar.n0();
                    aVar.I0(HtmlTreeBuilderState.AfterHead);
                }
            }
            return true;
        }
    },
    InHeadNoscript {
        private boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            aVar.u(this);
            aVar.S(new Token.c().p(token.toString()));
            return true;
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.i()) {
                aVar.u(this);
                return true;
            }
            if (token.l() && token.e().F().equals("html")) {
                return aVar.s0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.k() && token.d().F().equals("noscript")) {
                aVar.n0();
                aVar.I0(HtmlTreeBuilderState.InHead);
                return true;
            }
            if (HtmlTreeBuilderState.e(token) || token.h() || (token.l() && m0a.d(token.e().F(), b.f))) {
                return aVar.s0(token, HtmlTreeBuilderState.InHead);
            }
            if (token.k() && token.d().F().equals("br")) {
                return anythingElse(token, aVar);
            }
            if ((!token.l() || !m0a.d(token.e().F(), b.K)) && !token.k()) {
                return anythingElse(token, aVar);
            }
            aVar.u(this);
            return false;
        }
    },
    AfterHead {
        private boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            aVar.k(TtmlNode.TAG_BODY);
            aVar.v(true);
            return aVar.i(token);
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
                return true;
            }
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (token.i()) {
                aVar.u(this);
                return true;
            }
            if (!token.l()) {
                if (!token.k()) {
                    anythingElse(token, aVar);
                    return true;
                }
                if (m0a.d(token.d().F(), b.d)) {
                    anythingElse(token, aVar);
                    return true;
                }
                aVar.u(this);
                return false;
            }
            Token.h hVarE = token.e();
            String strF = hVarE.F();
            if (strF.equals("html")) {
                return aVar.s0(token, HtmlTreeBuilderState.InBody);
            }
            if (strF.equals(TtmlNode.TAG_BODY)) {
                aVar.Q(hVarE);
                aVar.v(false);
                aVar.I0(HtmlTreeBuilderState.InBody);
                return true;
            }
            if (strF.equals("frameset")) {
                aVar.Q(hVarE);
                aVar.I0(HtmlTreeBuilderState.InFrameset);
                return true;
            }
            if (!m0a.d(strF, b.g)) {
                if (strF.equals("head")) {
                    aVar.u(this);
                    return false;
                }
                anythingElse(token, aVar);
                return true;
            }
            aVar.u(this);
            Element elementE = aVar.E();
            aVar.t0(elementE);
            aVar.s0(token, HtmlTreeBuilderState.InHead);
            aVar.y0(elementE);
            return true;
        }
    },
    InBody {
        public boolean anyOtherEndTag(Token token, org.jsoup.parser.a aVar) {
            String str = token.d().c;
            ArrayList arrayListG = aVar.G();
            if (aVar.D(str) == null) {
                aVar.u(this);
                return false;
            }
            for (int size = arrayListG.size() - 1; size >= 0; size--) {
                Element element = (Element) arrayListG.get(size);
                if (element.V0().equals(str)) {
                    aVar.y(str);
                    if (!aVar.b(str)) {
                        aVar.u(this);
                    }
                    aVar.p0(str);
                    break;
                }
                if (aVar.g0(element)) {
                    aVar.u(this);
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final boolean f(Token token, org.jsoup.parser.a aVar) {
            Token.g gVarD = token.d();
            String strF = gVarD.F();
            strF.hashCode();
            byte b = -1;
            switch (strF.hashCode()) {
                case 112:
                    if (strF.equals(TtmlNode.TAG_P)) {
                        b = 0;
                    }
                    break;
                case 3152:
                    if (strF.equals("br")) {
                        b = 1;
                    }
                    break;
                case 3200:
                    if (strF.equals("dd")) {
                        b = 2;
                    }
                    break;
                case 3216:
                    if (strF.equals("dt")) {
                        b = 3;
                    }
                    break;
                case 3273:
                    if (strF.equals("h1")) {
                        b = 4;
                    }
                    break;
                case 3274:
                    if (strF.equals("h2")) {
                        b = 5;
                    }
                    break;
                case 3275:
                    if (strF.equals("h3")) {
                        b = 6;
                    }
                    break;
                case 3276:
                    if (strF.equals("h4")) {
                        b = 7;
                    }
                    break;
                case 3277:
                    if (strF.equals("h5")) {
                        b = 8;
                    }
                    break;
                case 3278:
                    if (strF.equals("h6")) {
                        b = 9;
                    }
                    break;
                case 3453:
                    if (strF.equals("li")) {
                        b = 10;
                    }
                    break;
                case 3029410:
                    if (strF.equals(TtmlNode.TAG_BODY)) {
                        b = ByteCode.T_LONG;
                    }
                    break;
                case 3148996:
                    if (strF.equals("form")) {
                        b = 12;
                    }
                    break;
                case 3213227:
                    if (strF.equals("html")) {
                        b = 13;
                    }
                    break;
                case 3536714:
                    if (strF.equals(TtmlNode.TAG_SPAN)) {
                        b = 14;
                    }
                    break;
                case 1869063452:
                    if (strF.equals("sarcasm")) {
                        b = 15;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    if (!aVar.H(strF)) {
                        aVar.u(this);
                        aVar.k(strF);
                        return aVar.i(gVarD);
                    }
                    aVar.y(strF);
                    if (!aVar.b(strF)) {
                        aVar.u(this);
                    }
                    aVar.p0(strF);
                    return true;
                case 1:
                    aVar.u(this);
                    aVar.k("br");
                    return false;
                case 2:
                case 3:
                    if (!aVar.J(strF)) {
                        aVar.u(this);
                        return false;
                    }
                    aVar.y(strF);
                    if (!aVar.b(strF)) {
                        aVar.u(this);
                    }
                    aVar.p0(strF);
                    return true;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    String[] strArr = b.i;
                    if (!aVar.L(strArr)) {
                        aVar.u(this);
                        return false;
                    }
                    aVar.y(strF);
                    if (!aVar.b(strF)) {
                        aVar.u(this);
                    }
                    aVar.q0(strArr);
                    return true;
                case 10:
                    if (!aVar.I(strF)) {
                        aVar.u(this);
                        return false;
                    }
                    aVar.y(strF);
                    if (!aVar.b(strF)) {
                        aVar.u(this);
                    }
                    aVar.p0(strF);
                    return true;
                case 11:
                    if (aVar.J(TtmlNode.TAG_BODY)) {
                        aVar.I0(HtmlTreeBuilderState.AfterBody);
                        return true;
                    }
                    aVar.u(this);
                    return false;
                case 12:
                    x34 x34VarC = aVar.C();
                    aVar.E0(null);
                    if (x34VarC == null || !aVar.J(strF)) {
                        aVar.u(this);
                        return false;
                    }
                    aVar.x();
                    if (!aVar.b(strF)) {
                        aVar.u(this);
                    }
                    aVar.y0(x34VarC);
                    return true;
                case 13:
                    if (aVar.j(TtmlNode.TAG_BODY)) {
                        return aVar.i(gVarD);
                    }
                    return true;
                case 14:
                case 15:
                    return anyOtherEndTag(token, aVar);
                default:
                    if (m0a.d(strF, b.s)) {
                        return g(token, aVar);
                    }
                    if (m0a.d(strF, b.r)) {
                        if (!aVar.J(strF)) {
                            aVar.u(this);
                            return false;
                        }
                        aVar.x();
                        if (!aVar.b(strF)) {
                            aVar.u(this);
                        }
                        aVar.p0(strF);
                    } else {
                        if (!m0a.d(strF, b.m)) {
                            return anyOtherEndTag(token, aVar);
                        }
                        if (!aVar.J("name")) {
                            if (!aVar.J(strF)) {
                                aVar.u(this);
                                return false;
                            }
                            aVar.x();
                            if (!aVar.b(strF)) {
                                aVar.u(this);
                            }
                            aVar.p0(strF);
                            aVar.p();
                        }
                    }
                    return true;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r8v6, types: [int] */
        public final boolean g(Token token, org.jsoup.parser.a aVar) {
            String strF = token.d().F();
            ArrayList arrayListG = aVar.G();
            boolean z = false;
            int i = 0;
            while (i < 8) {
                Element elementZ = aVar.z(strF);
                if (elementZ == null) {
                    return anyOtherEndTag(token, aVar);
                }
                if (!aVar.l0(elementZ)) {
                    aVar.u(this);
                    aVar.x0(elementZ);
                    return true;
                }
                if (!aVar.J(elementZ.V0())) {
                    aVar.u(this);
                    return z;
                }
                if (aVar.a() != elementZ) {
                    aVar.u(this);
                }
                int size = arrayListG.size();
                Element element = null;
                int iR0 = -1;
                boolean z2 = z;
                Element element2 = null;
                for (int i2 = 1; i2 < size && i2 < 64; i2++) {
                    Element element3 = (Element) arrayListG.get(i2);
                    if (element3 != elementZ) {
                        if (z2 && aVar.g0(element3)) {
                            element = element3;
                            break;
                        }
                    } else {
                        element2 = (Element) arrayListG.get(i2 - 1);
                        iR0 = aVar.r0(element3);
                        z2 = true;
                    }
                }
                if (element == null) {
                    aVar.p0(elementZ.V0());
                    aVar.x0(elementZ);
                    return true;
                }
                Element elementN = element;
                Element element4 = elementN;
                for (?? r8 = z; r8 < 3; r8++) {
                    if (aVar.l0(elementN)) {
                        elementN = aVar.n(elementN);
                    }
                    if (!aVar.e0(elementN)) {
                        aVar.y0(elementN);
                    } else {
                        if (elementN == elementZ) {
                            break;
                        }
                        Element element5 = new Element(tda.p(elementN.E(), tw7.d), aVar.A());
                        aVar.A0(elementN, element5);
                        aVar.C0(elementN, element5);
                        if (element4 == element) {
                            iR0 = aVar.r0(element5) + 1;
                        }
                        if (element4.L() != null) {
                            element4.P();
                        }
                        element5.k0(element4);
                        elementN = element5;
                        element4 = elementN;
                    }
                }
                if (element2 != null) {
                    if (m0a.d(element2.V0(), b.t)) {
                        if (element4.L() != null) {
                            element4.P();
                        }
                        aVar.W(element4);
                    } else {
                        if (element4.L() != null) {
                            element4.P();
                        }
                        element2.k0(element4);
                    }
                }
                Element element6 = new Element(elementZ.k1(), aVar.A());
                element6.j().k(elementZ.j());
                for (g gVar : (g[]) element.q().toArray(new g[0])) {
                    element6.k0(gVar);
                }
                element.k0(element6);
                aVar.x0(elementZ);
                aVar.v0(element6, iR0);
                aVar.y0(elementZ);
                aVar.Z(element, element6);
                i++;
                z = false;
            }
            return true;
        }

        /* JADX WARN: Code duplicated, block: B:284:0x04fe  */
        /* JADX WARN: Code duplicated, block: B:310:0x0584  */
        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final boolean h(Token token, org.jsoup.parser.a aVar) {
            byte b;
            Token.h hVarE = token.e();
            String strF = hVarE.F();
            strF.hashCode();
            switch (strF.hashCode()) {
                case -1644953643:
                    b = strF.equals("frameset") ? (byte) 0 : (byte) -1;
                    break;
                case -1377687758:
                    b = strF.equals(AuthInfo.Component.CODE_BUTTON) ? (byte) 1 : (byte) -1;
                    break;
                case -1191214428:
                    b = strF.equals("iframe") ? (byte) 2 : (byte) -1;
                    break;
                case -1010136971:
                    b = strF.equals("option") ? (byte) 3 : (byte) -1;
                    break;
                case -1003243718:
                    b = strF.equals("textarea") ? (byte) 4 : (byte) -1;
                    break;
                case -906021636:
                    b = strF.equals("select") ? (byte) 5 : (byte) -1;
                    break;
                case -80773204:
                    b = strF.equals("optgroup") ? (byte) 6 : (byte) -1;
                    break;
                case 97:
                    b = strF.equals(CmcdData.OBJECT_TYPE_AUDIO_ONLY) ? (byte) 7 : (byte) -1;
                    break;
                case 3200:
                    b = strF.equals("dd") ? (byte) 8 : (byte) -1;
                    break;
                case 3216:
                    b = strF.equals("dt") ? (byte) 9 : (byte) -1;
                    break;
                case 3273:
                    b = strF.equals("h1") ? (byte) 10 : (byte) -1;
                    break;
                case 3274:
                    b = strF.equals("h2") ? ByteCode.T_LONG : (byte) -1;
                    break;
                case 3275:
                    b = strF.equals("h3") ? (byte) 12 : (byte) -1;
                    break;
                case 3276:
                    b = strF.equals("h4") ? (byte) 13 : (byte) -1;
                    break;
                case 3277:
                    b = strF.equals("h5") ? (byte) 14 : (byte) -1;
                    break;
                case 3278:
                    b = strF.equals("h6") ? (byte) 15 : (byte) -1;
                    break;
                case 3338:
                    b = strF.equals("hr") ? (byte) 16 : (byte) -1;
                    break;
                case 3453:
                    b = strF.equals("li") ? (byte) 17 : (byte) -1;
                    break;
                case 3646:
                    b = strF.equals("rp") ? (byte) 18 : (byte) -1;
                    break;
                case 3650:
                    b = strF.equals("rt") ? (byte) 19 : (byte) -1;
                    break;
                case 111267:
                    b = strF.equals("pre") ? (byte) 20 : (byte) -1;
                    break;
                case 114276:
                    b = strF.equals("svg") ? (byte) 21 : (byte) -1;
                    break;
                case 118811:
                    b = strF.equals("xmp") ? (byte) 22 : (byte) -1;
                    break;
                case 3029410:
                    b = strF.equals(TtmlNode.TAG_BODY) ? (byte) 23 : (byte) -1;
                    break;
                case 3148996:
                    b = strF.equals("form") ? (byte) 24 : (byte) -1;
                    break;
                case 3213227:
                    b = strF.equals("html") ? (byte) 25 : (byte) -1;
                    break;
                case 3344136:
                    b = strF.equals("math") ? (byte) 26 : (byte) -1;
                    break;
                case 3386833:
                    b = strF.equals("nobr") ? (byte) 27 : (byte) -1;
                    break;
                case 3536714:
                    b = strF.equals(TtmlNode.TAG_SPAN) ? (byte) 28 : (byte) -1;
                    break;
                case 100313435:
                    b = strF.equals("image") ? (byte) 29 : (byte) -1;
                    break;
                case 100358090:
                    b = strF.equals("input") ? (byte) 30 : (byte) -1;
                    break;
                case 110115790:
                    b = strF.equals("table") ? (byte) 31 : (byte) -1;
                    break;
                case 181975684:
                    b = strF.equals("listing") ? (byte) 32 : (byte) -1;
                    break;
                case 1973234167:
                    b = strF.equals("plaintext") ? (byte) 33 : (byte) -1;
                    break;
                case 2091304424:
                    b = strF.equals("isindex") ? (byte) 34 : (byte) -1;
                    break;
                case 2115613112:
                    b = strF.equals("noembed") ? (byte) 35 : (byte) -1;
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    aVar.u(this);
                    ArrayList arrayListG = aVar.G();
                    if (arrayListG.size() == 1 || ((arrayListG.size() > 2 && !((Element) arrayListG.get(1)).V0().equals(TtmlNode.TAG_BODY)) || !aVar.w())) {
                        return false;
                    }
                    Element element = (Element) arrayListG.get(1);
                    if (element.L() != null) {
                        element.P();
                    }
                    while (arrayListG.size() > 1) {
                        arrayListG.remove(arrayListG.size() - 1);
                    }
                    aVar.Q(hVarE);
                    aVar.I0(HtmlTreeBuilderState.InFrameset);
                    return true;
                case 1:
                    if (aVar.H(AuthInfo.Component.CODE_BUTTON)) {
                        aVar.u(this);
                        aVar.j(AuthInfo.Component.CODE_BUTTON);
                        aVar.i(hVarE);
                    } else {
                        aVar.w0();
                        aVar.Q(hVarE);
                        aVar.v(false);
                    }
                    return true;
                case 2:
                    aVar.v(false);
                    HtmlTreeBuilderState.a(hVarE, aVar);
                    return true;
                case 3:
                case 6:
                    if (aVar.b("option")) {
                        aVar.j("option");
                    }
                    aVar.w0();
                    aVar.Q(hVarE);
                    return true;
                case 4:
                    aVar.Q(hVarE);
                    if (!hVarE.B()) {
                        aVar.c.w(TokeniserState.Rcdata);
                        aVar.i0();
                        aVar.v(false);
                        aVar.I0(HtmlTreeBuilderState.Text);
                    }
                    return true;
                case 5:
                    aVar.w0();
                    aVar.Q(hVarE);
                    aVar.v(false);
                    HtmlTreeBuilderState htmlTreeBuilderStateH0 = aVar.H0();
                    if (htmlTreeBuilderStateH0.equals(HtmlTreeBuilderState.InTable) || htmlTreeBuilderStateH0.equals(HtmlTreeBuilderState.InCaption) || htmlTreeBuilderStateH0.equals(HtmlTreeBuilderState.InTableBody) || htmlTreeBuilderStateH0.equals(HtmlTreeBuilderState.InRow) || htmlTreeBuilderStateH0.equals(HtmlTreeBuilderState.InCell)) {
                        aVar.I0(HtmlTreeBuilderState.InSelectInTable);
                    } else {
                        aVar.I0(HtmlTreeBuilderState.InSelect);
                    }
                    return true;
                case 7:
                    if (aVar.z(CmcdData.OBJECT_TYPE_AUDIO_ONLY) != null) {
                        aVar.u(this);
                        aVar.j(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
                        Element elementD = aVar.D(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
                        if (elementD != null) {
                            aVar.x0(elementD);
                            aVar.y0(elementD);
                        }
                    }
                    aVar.w0();
                    aVar.u0(aVar.Q(hVarE));
                    return true;
                case 8:
                case 9:
                    aVar.v(false);
                    ArrayList arrayListG2 = aVar.G();
                    for (int size = arrayListG2.size() - 1; size > 0; size--) {
                        Element element2 = (Element) arrayListG2.get(size);
                        if (m0a.d(element2.V0(), b.k)) {
                            aVar.j(element2.V0());
                        } else if (!aVar.g0(element2) || m0a.d(element2.V0(), b.j)) {
                        }
                        if (aVar.H(TtmlNode.TAG_P)) {
                            aVar.j(TtmlNode.TAG_P);
                        }
                        aVar.Q(hVarE);
                        return true;
                    }
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.Q(hVarE);
                    return true;
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    if (m0a.d(aVar.a().V0(), b.i)) {
                        aVar.u(this);
                        aVar.n0();
                    }
                    aVar.Q(hVarE);
                    return true;
                case 16:
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.U(hVarE);
                    aVar.v(false);
                    return true;
                case 17:
                    aVar.v(false);
                    ArrayList arrayListG3 = aVar.G();
                    for (int size2 = arrayListG3.size() - 1; size2 > 0; size2--) {
                        Element element3 = (Element) arrayListG3.get(size2);
                        if (element3.V0().equals("li")) {
                            aVar.j("li");
                        } else if (!aVar.g0(element3) || m0a.d(element3.V0(), b.j)) {
                        }
                        if (aVar.H(TtmlNode.TAG_P)) {
                            aVar.j(TtmlNode.TAG_P);
                        }
                        aVar.Q(hVarE);
                        return true;
                    }
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.Q(hVarE);
                    return true;
                case 18:
                case 19:
                    if (aVar.J(TtmlNode.ATTR_TTS_RUBY)) {
                        aVar.x();
                        if (!aVar.b(TtmlNode.ATTR_TTS_RUBY)) {
                            aVar.u(this);
                            aVar.o0(TtmlNode.ATTR_TTS_RUBY);
                        }
                        aVar.Q(hVarE);
                    }
                    return true;
                case 20:
                case 32:
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.Q(hVarE);
                    aVar.b.x("\n");
                    aVar.v(false);
                    return true;
                case 21:
                    aVar.w0();
                    aVar.Q(hVarE);
                    return true;
                case 22:
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.w0();
                    aVar.v(false);
                    HtmlTreeBuilderState.a(hVarE, aVar);
                    return true;
                case 23:
                    aVar.u(this);
                    ArrayList arrayListG4 = aVar.G();
                    if (arrayListG4.size() == 1 || (arrayListG4.size() > 2 && !((Element) arrayListG4.get(1)).V0().equals(TtmlNode.TAG_BODY))) {
                        return false;
                    }
                    aVar.v(false);
                    Element element4 = (Element) arrayListG4.get(1);
                    if (hVarE.A()) {
                        for (org.jsoup.nodes.a aVar2 : hVarE.l) {
                            if (!element4.y(aVar2.getKey())) {
                                element4.j().C(aVar2);
                            }
                        }
                    }
                    return true;
                case 24:
                    if (aVar.C() != null) {
                        aVar.u(this);
                        return false;
                    }
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.V(hVarE, true);
                    return true;
                case 25:
                    aVar.u(this);
                    if (aVar.G().size() > 0) {
                        Element element5 = (Element) aVar.G().get(0);
                        if (hVarE.A()) {
                            for (org.jsoup.nodes.a aVar3 : hVarE.l) {
                                if (!element5.y(aVar3.getKey())) {
                                    element5.j().C(aVar3);
                                }
                            }
                        }
                    }
                    return true;
                case 26:
                    aVar.w0();
                    aVar.Q(hVarE);
                    return true;
                case 27:
                    aVar.w0();
                    if (aVar.J("nobr")) {
                        aVar.u(this);
                        aVar.j("nobr");
                        aVar.w0();
                    }
                    aVar.u0(aVar.Q(hVarE));
                    return true;
                case 28:
                    aVar.w0();
                    aVar.Q(hVarE);
                    return true;
                case 29:
                    if (aVar.D("svg") == null) {
                        return aVar.i(hVarE.D("img"));
                    }
                    aVar.Q(hVarE);
                    return true;
                case 30:
                    aVar.w0();
                    if (!aVar.U(hVarE).h("type").equalsIgnoreCase("hidden")) {
                        aVar.v(false);
                    }
                    return true;
                case 31:
                    if (aVar.B().A1() != Document.QuirksMode.quirks && aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.Q(hVarE);
                    aVar.v(false);
                    aVar.I0(HtmlTreeBuilderState.InTable);
                    return true;
                case 33:
                    if (aVar.H(TtmlNode.TAG_P)) {
                        aVar.j(TtmlNode.TAG_P);
                    }
                    aVar.Q(hVarE);
                    aVar.c.w(TokeniserState.PLAINTEXT);
                    return true;
                case 34:
                    aVar.u(this);
                    if (aVar.C() != null) {
                        return false;
                    }
                    aVar.k("form");
                    if (hVarE.z("action")) {
                        aVar.C().j().B("action", hVarE.l.q("action"));
                    }
                    aVar.k("hr");
                    aVar.k(AnnotatedPrivateKey.LABEL);
                    aVar.i(new Token.c().p(hVarE.z("prompt") ? hVarE.l.q("prompt") : "This is a searchable index. Enter search keywords: "));
                    org.jsoup.nodes.b bVar = new org.jsoup.nodes.b();
                    if (hVarE.A()) {
                        for (org.jsoup.nodes.a aVar4 : hVarE.l) {
                            if (!m0a.d(aVar4.getKey(), b.p)) {
                                bVar.C(aVar4);
                            }
                        }
                    }
                    bVar.B("name", "isindex");
                    aVar.l("input", bVar);
                    aVar.j(AnnotatedPrivateKey.LABEL);
                    aVar.k("hr");
                    aVar.j("form");
                    return true;
                case 35:
                    HtmlTreeBuilderState.a(hVarE, aVar);
                    return true;
                default:
                    if (m0a.d(strF, b.n)) {
                        aVar.w0();
                        aVar.U(hVarE);
                        aVar.v(false);
                    } else if (m0a.d(strF, b.h)) {
                        if (aVar.H(TtmlNode.TAG_P)) {
                            aVar.j(TtmlNode.TAG_P);
                        }
                        aVar.Q(hVarE);
                    } else {
                        if (m0a.d(strF, b.g)) {
                            return aVar.s0(token, HtmlTreeBuilderState.InHead);
                        }
                        if (m0a.d(strF, b.l)) {
                            aVar.w0();
                            aVar.u0(aVar.Q(hVarE));
                        } else if (m0a.d(strF, b.m)) {
                            aVar.w0();
                            aVar.Q(hVarE);
                            aVar.X();
                            aVar.v(false);
                        } else if (m0a.d(strF, b.o)) {
                            aVar.U(hVarE);
                        } else {
                            if (m0a.d(strF, b.q)) {
                                aVar.u(this);
                                return false;
                            }
                            aVar.w0();
                            aVar.Q(hVarE);
                        }
                    }
                    return true;
            }
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            int i = a.a[token.a.ordinal()];
            if (i == 1) {
                aVar.T(token.b());
            } else {
                if (i == 2) {
                    aVar.u(this);
                    return false;
                }
                if (i == 3) {
                    return h(token, aVar);
                }
                if (i == 4) {
                    return f(token, aVar);
                }
                if (i == 5) {
                    Token.c cVarA = token.a();
                    if (cVarA.q().equals(HtmlTreeBuilderState.b)) {
                        aVar.u(this);
                        return false;
                    }
                    if (aVar.w() && HtmlTreeBuilderState.e(cVarA)) {
                        aVar.w0();
                        aVar.S(cVarA);
                    } else {
                        aVar.w0();
                        aVar.S(cVarA);
                        aVar.v(false);
                    }
                }
            }
            return true;
        }
    },
    Text {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.g()) {
                aVar.S(token.a());
                return true;
            }
            if (token.j()) {
                aVar.u(this);
                aVar.n0();
                aVar.I0(aVar.m0());
                return aVar.i(token);
            }
            if (!token.k()) {
                return true;
            }
            aVar.n0();
            aVar.I0(aVar.m0());
            return true;
        }
    },
    InTable {
        public boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            aVar.u(this);
            aVar.F0(true);
            aVar.s0(token, HtmlTreeBuilderState.InBody);
            aVar.F0(false);
            return true;
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.g() && m0a.d(aVar.a().V0(), b.C)) {
                aVar.k0();
                aVar.i0();
                aVar.I0(HtmlTreeBuilderState.InTableText);
                return aVar.i(token);
            }
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (token.i()) {
                aVar.u(this);
                return false;
            }
            if (!token.l()) {
                if (!token.k()) {
                    if (!token.j()) {
                        return anythingElse(token, aVar);
                    }
                    if (aVar.b("html")) {
                        aVar.u(this);
                    }
                    return true;
                }
                String strF = token.d().F();
                if (!strF.equals("table")) {
                    if (!m0a.d(strF, b.B)) {
                        return anythingElse(token, aVar);
                    }
                    aVar.u(this);
                    return false;
                }
                if (!aVar.P(strF)) {
                    aVar.u(this);
                    return false;
                }
                aVar.p0("table");
                aVar.D0();
                return true;
            }
            Token.h hVarE = token.e();
            String strF2 = hVarE.F();
            if (strF2.equals("caption")) {
                aVar.s();
                aVar.X();
                aVar.Q(hVarE);
                aVar.I0(HtmlTreeBuilderState.InCaption);
            } else if (strF2.equals("colgroup")) {
                aVar.s();
                aVar.Q(hVarE);
                aVar.I0(HtmlTreeBuilderState.InColumnGroup);
            } else {
                if (strF2.equals("col")) {
                    aVar.s();
                    aVar.k("colgroup");
                    return aVar.i(token);
                }
                if (m0a.d(strF2, b.u)) {
                    aVar.s();
                    aVar.Q(hVarE);
                    aVar.I0(HtmlTreeBuilderState.InTableBody);
                } else {
                    if (m0a.d(strF2, b.v)) {
                        aVar.s();
                        aVar.k("tbody");
                        return aVar.i(token);
                    }
                    if (strF2.equals("table")) {
                        aVar.u(this);
                        if (!aVar.P(strF2)) {
                            return false;
                        }
                        aVar.p0(strF2);
                        aVar.D0();
                        if (aVar.H0() != HtmlTreeBuilderState.InTable) {
                            return aVar.i(token);
                        }
                        aVar.Q(hVarE);
                        return true;
                    }
                    if (m0a.d(strF2, b.w)) {
                        return aVar.s0(token, HtmlTreeBuilderState.InHead);
                    }
                    if (strF2.equals("input")) {
                        if (!hVarE.A() || !hVarE.l.q("type").equalsIgnoreCase("hidden")) {
                            return anythingElse(token, aVar);
                        }
                        aVar.U(hVarE);
                    } else {
                        if (!strF2.equals("form")) {
                            return anythingElse(token, aVar);
                        }
                        aVar.u(this);
                        if (aVar.C() != null) {
                            return false;
                        }
                        aVar.V(hVarE, false);
                    }
                }
            }
            return true;
        }
    },
    InTableText {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.a == Token.TokenType.Character) {
                Token.c cVarA = token.a();
                if (cVarA.q().equals(HtmlTreeBuilderState.b)) {
                    aVar.u(this);
                    return false;
                }
                aVar.F().add(cVarA.q());
                return true;
            }
            if (aVar.F().size() > 0) {
                for (String str : aVar.F()) {
                    if (HtmlTreeBuilderState.d(str)) {
                        aVar.S(new Token.c().p(str));
                    } else {
                        aVar.u(this);
                        if (m0a.d(aVar.a().V0(), b.C)) {
                            aVar.F0(true);
                            aVar.s0(new Token.c().p(str), HtmlTreeBuilderState.InBody);
                            aVar.F0(false);
                        } else {
                            aVar.s0(new Token.c().p(str), HtmlTreeBuilderState.InBody);
                        }
                    }
                }
                aVar.k0();
            }
            aVar.I0(aVar.m0());
            return aVar.i(token);
        }
    },
    InCaption {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.k() && token.d().F().equals("caption")) {
                if (!aVar.P(token.d().F())) {
                    aVar.u(this);
                    return false;
                }
                aVar.x();
                if (!aVar.b("caption")) {
                    aVar.u(this);
                }
                aVar.p0("caption");
                aVar.p();
                aVar.I0(HtmlTreeBuilderState.InTable);
                return true;
            }
            if ((token.l() && m0a.d(token.e().F(), b.A)) || (token.k() && token.d().F().equals("table"))) {
                aVar.u(this);
                if (aVar.j("caption")) {
                    return aVar.i(token);
                }
                return true;
            }
            if (!token.k() || !m0a.d(token.d().F(), b.L)) {
                return aVar.s0(token, HtmlTreeBuilderState.InBody);
            }
            aVar.u(this);
            return false;
        }
    },
    InColumnGroup {
        public final boolean f(Token token, c cVar) {
            if (cVar.j("colgroup")) {
                return cVar.i(token);
            }
            return true;
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
                return true;
            }
            int i = a.a[token.a.ordinal()];
            if (i == 1) {
                aVar.T(token.b());
            } else if (i == 2) {
                aVar.u(this);
            } else if (i == 3) {
                Token.h hVarE = token.e();
                String strF = hVarE.F();
                strF.hashCode();
                if (!strF.equals("col")) {
                    return !strF.equals("html") ? f(token, aVar) : aVar.s0(token, HtmlTreeBuilderState.InBody);
                }
                aVar.U(hVarE);
            } else {
                if (i != 4) {
                    if (i == 6 && aVar.b("html")) {
                        return true;
                    }
                    return f(token, aVar);
                }
                if (!token.d().c.equals("colgroup")) {
                    return f(token, aVar);
                }
                if (aVar.b("html")) {
                    aVar.u(this);
                    return false;
                }
                aVar.n0();
                aVar.I0(HtmlTreeBuilderState.InTable);
            }
            return true;
        }
    },
    InTableBody {
        private boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            return aVar.s0(token, HtmlTreeBuilderState.InTable);
        }

        public final boolean f(Token token, org.jsoup.parser.a aVar) {
            if (!aVar.P("tbody") && !aVar.P("thead") && !aVar.J("tfoot")) {
                aVar.u(this);
                return false;
            }
            aVar.r();
            aVar.j(aVar.a().V0());
            return aVar.i(token);
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            int i = a.a[token.a.ordinal()];
            if (i == 3) {
                Token.h hVarE = token.e();
                String strF = hVarE.F();
                if (strF.equals("template")) {
                    aVar.Q(hVarE);
                    return true;
                }
                if (strF.equals("tr")) {
                    aVar.r();
                    aVar.Q(hVarE);
                    aVar.I0(HtmlTreeBuilderState.InRow);
                    return true;
                }
                if (!m0a.d(strF, b.x)) {
                    return m0a.d(strF, b.D) ? f(token, aVar) : anythingElse(token, aVar);
                }
                aVar.u(this);
                aVar.k("tr");
                return aVar.i(hVarE);
            }
            if (i != 4) {
                return anythingElse(token, aVar);
            }
            String strF2 = token.d().F();
            if (!m0a.d(strF2, b.J)) {
                if (strF2.equals("table")) {
                    return f(token, aVar);
                }
                if (!m0a.d(strF2, b.E)) {
                    return anythingElse(token, aVar);
                }
                aVar.u(this);
                return false;
            }
            if (!aVar.P(strF2)) {
                aVar.u(this);
                return false;
            }
            aVar.r();
            aVar.n0();
            aVar.I0(HtmlTreeBuilderState.InTable);
            return true;
        }
    },
    InRow {
        private boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            return aVar.s0(token, HtmlTreeBuilderState.InTable);
        }

        public final boolean f(Token token, c cVar) {
            if (cVar.j("tr")) {
                return cVar.i(token);
            }
            return false;
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.l()) {
                Token.h hVarE = token.e();
                String strF = hVarE.F();
                if (strF.equals("template")) {
                    aVar.Q(hVarE);
                    return true;
                }
                if (!m0a.d(strF, b.x)) {
                    return m0a.d(strF, b.F) ? f(token, aVar) : anythingElse(token, aVar);
                }
                aVar.t();
                aVar.Q(hVarE);
                aVar.I0(HtmlTreeBuilderState.InCell);
                aVar.X();
                return true;
            }
            if (!token.k()) {
                return anythingElse(token, aVar);
            }
            String strF2 = token.d().F();
            if (strF2.equals("tr")) {
                if (!aVar.P(strF2)) {
                    aVar.u(this);
                    return false;
                }
                aVar.t();
                aVar.n0();
                aVar.I0(HtmlTreeBuilderState.InTableBody);
                return true;
            }
            if (strF2.equals("table")) {
                return f(token, aVar);
            }
            if (!m0a.d(strF2, b.u)) {
                if (!m0a.d(strF2, b.G)) {
                    return anythingElse(token, aVar);
                }
                aVar.u(this);
                return false;
            }
            if (!aVar.P(strF2) || !aVar.P("tr")) {
                aVar.u(this);
                return false;
            }
            aVar.t();
            aVar.n0();
            aVar.I0(HtmlTreeBuilderState.InTableBody);
            return true;
        }
    },
    InCell {
        private boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            return aVar.s0(token, HtmlTreeBuilderState.InBody);
        }

        public final void f(org.jsoup.parser.a aVar) {
            if (aVar.P("td")) {
                aVar.j("td");
            } else {
                aVar.j("th");
            }
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (!token.k()) {
                if (!token.l() || !m0a.d(token.e().F(), b.A)) {
                    return anythingElse(token, aVar);
                }
                if (aVar.P("td") || aVar.P("th")) {
                    f(aVar);
                    return aVar.i(token);
                }
                aVar.u(this);
                return false;
            }
            String strF = token.d().F();
            if (!m0a.d(strF, b.x)) {
                if (m0a.d(strF, b.y)) {
                    aVar.u(this);
                    return false;
                }
                if (!m0a.d(strF, b.z)) {
                    return anythingElse(token, aVar);
                }
                if (aVar.P(strF)) {
                    f(aVar);
                    return aVar.i(token);
                }
                aVar.u(this);
                return false;
            }
            if (!aVar.P(strF)) {
                aVar.u(this);
                aVar.I0(HtmlTreeBuilderState.InRow);
                return false;
            }
            aVar.x();
            if (!aVar.b(strF)) {
                aVar.u(this);
            }
            aVar.p0(strF);
            aVar.p();
            aVar.I0(HtmlTreeBuilderState.InRow);
            return true;
        }
    },
    InSelect {
        private boolean anythingElse(Token token, org.jsoup.parser.a aVar) {
            aVar.u(this);
            return false;
        }

        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            switch (a.a[token.a.ordinal()]) {
                case 1:
                    aVar.T(token.b());
                    return true;
                case 2:
                    aVar.u(this);
                    return false;
                case 3:
                    Token.h hVarE = token.e();
                    String strF = hVarE.F();
                    if (strF.equals("html")) {
                        return aVar.s0(hVarE, HtmlTreeBuilderState.InBody);
                    }
                    if (strF.equals("option")) {
                        if (aVar.b("option")) {
                            aVar.j("option");
                        }
                        aVar.Q(hVarE);
                    } else {
                        if (!strF.equals("optgroup")) {
                            if (strF.equals("select")) {
                                aVar.u(this);
                                return aVar.j("select");
                            }
                            if (!m0a.d(strF, b.H)) {
                                return strF.equals(StringLookupFactory.KEY_SCRIPT) ? aVar.s0(token, HtmlTreeBuilderState.InHead) : anythingElse(token, aVar);
                            }
                            aVar.u(this);
                            if (!aVar.M("select")) {
                                return false;
                            }
                            aVar.j("select");
                            return aVar.i(hVarE);
                        }
                        if (aVar.b("option")) {
                            aVar.j("option");
                        }
                        if (aVar.b("optgroup")) {
                            aVar.j("optgroup");
                        }
                        aVar.Q(hVarE);
                    }
                    return true;
                case 4:
                    String strF2 = token.d().F();
                    strF2.hashCode();
                    switch (strF2) {
                        case "option":
                            if (aVar.b("option")) {
                                aVar.n0();
                            } else {
                                aVar.u(this);
                            }
                            return true;
                        case "select":
                            if (!aVar.M(strF2)) {
                                aVar.u(this);
                                return false;
                            }
                            aVar.p0(strF2);
                            aVar.D0();
                            return true;
                        case "optgroup":
                            if (aVar.b("option") && aVar.n(aVar.a()) != null && aVar.n(aVar.a()).V0().equals("optgroup")) {
                                aVar.j("option");
                            }
                            if (aVar.b("optgroup")) {
                                aVar.n0();
                            } else {
                                aVar.u(this);
                            }
                            return true;
                        default:
                            return anythingElse(token, aVar);
                    }
                case 5:
                    Token.c cVarA = token.a();
                    if (cVarA.q().equals(HtmlTreeBuilderState.b)) {
                        aVar.u(this);
                        return false;
                    }
                    aVar.S(cVarA);
                    return true;
                case 6:
                    if (!aVar.b("html")) {
                        aVar.u(this);
                    }
                    return true;
                default:
                    return anythingElse(token, aVar);
            }
        }
    },
    InSelectInTable {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.l() && m0a.d(token.e().F(), b.I)) {
                aVar.u(this);
                aVar.p0("select");
                aVar.D0();
                return aVar.i(token);
            }
            if (!token.k() || !m0a.d(token.d().F(), b.I)) {
                return aVar.s0(token, HtmlTreeBuilderState.InSelect);
            }
            aVar.u(this);
            if (!aVar.P(token.d().F())) {
                return false;
            }
            aVar.p0("select");
            aVar.D0();
            return aVar.i(token);
        }
    },
    AfterBody {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
                return true;
            }
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (token.i()) {
                aVar.u(this);
                return false;
            }
            if (token.l() && token.e().F().equals("html")) {
                return aVar.s0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.k() && token.d().F().equals("html")) {
                if (aVar.d0()) {
                    aVar.u(this);
                    return false;
                }
                aVar.I0(HtmlTreeBuilderState.AfterAfterBody);
                return true;
            }
            if (token.j()) {
                return true;
            }
            aVar.u(this);
            aVar.I0(HtmlTreeBuilderState.InBody);
            return aVar.i(token);
        }
    },
    InFrameset {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
            } else if (token.h()) {
                aVar.T(token.b());
            } else {
                if (token.i()) {
                    aVar.u(this);
                    return false;
                }
                if (token.l()) {
                    Token.h hVarE = token.e();
                    String strF = hVarE.F();
                    strF.hashCode();
                    switch (strF) {
                        case "frameset":
                            aVar.Q(hVarE);
                            break;
                        case "html":
                            return aVar.s0(hVarE, HtmlTreeBuilderState.InBody);
                        case "frame":
                            aVar.U(hVarE);
                            break;
                        case "noframes":
                            return aVar.s0(hVarE, HtmlTreeBuilderState.InHead);
                        default:
                            aVar.u(this);
                            return false;
                    }
                } else if (token.k() && token.d().F().equals("frameset")) {
                    if (aVar.b("html")) {
                        aVar.u(this);
                        return false;
                    }
                    aVar.n0();
                    if (!aVar.d0() && !aVar.b("frameset")) {
                        aVar.I0(HtmlTreeBuilderState.AfterFrameset);
                    }
                } else {
                    if (!token.j()) {
                        aVar.u(this);
                        return false;
                    }
                    if (!aVar.b("html")) {
                        aVar.u(this);
                    }
                }
            }
            return true;
        }
    },
    AfterFrameset {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (HtmlTreeBuilderState.e(token)) {
                aVar.S(token.a());
                return true;
            }
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (token.i()) {
                aVar.u(this);
                return false;
            }
            if (token.l() && token.e().F().equals("html")) {
                return aVar.s0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.k() && token.d().F().equals("html")) {
                aVar.I0(HtmlTreeBuilderState.AfterAfterFrameset);
                return true;
            }
            if (token.l() && token.e().F().equals("noframes")) {
                return aVar.s0(token, HtmlTreeBuilderState.InHead);
            }
            if (token.j()) {
                return true;
            }
            aVar.u(this);
            return false;
        }
    },
    AfterAfterBody {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (token.i() || (token.l() && token.e().F().equals("html"))) {
                return aVar.s0(token, HtmlTreeBuilderState.InBody);
            }
            if (!HtmlTreeBuilderState.e(token)) {
                if (token.j()) {
                    return true;
                }
                aVar.u(this);
                aVar.I0(HtmlTreeBuilderState.InBody);
                return aVar.i(token);
            }
            Element elementP0 = aVar.p0("html");
            aVar.S(token.a());
            if (elementP0 == null) {
                return true;
            }
            aVar.e.add(elementP0);
            Element elementI1 = elementP0.i1(TtmlNode.TAG_BODY);
            if (elementI1 == null) {
                return true;
            }
            aVar.e.add(elementI1);
            return true;
        }
    },
    AfterAfterFrameset {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            if (token.h()) {
                aVar.T(token.b());
                return true;
            }
            if (token.i() || HtmlTreeBuilderState.e(token) || (token.l() && token.e().F().equals("html"))) {
                return aVar.s0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.j()) {
                return true;
            }
            if (token.l() && token.e().F().equals("noframes")) {
                return aVar.s0(token, HtmlTreeBuilderState.InHead);
            }
            aVar.u(this);
            return false;
        }
    },
    ForeignContent {
        @Override
        public boolean process(Token token, org.jsoup.parser.a aVar) {
            return true;
        }
    };

    public static final String b = String.valueOf((char) 0);

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            a = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final class b {
        public static final String[] a = {TtmlNode.RUBY_BASE, "basefont", "bgsound", "command", AuthInfo.Component.CODE_LINK};
        public static final String[] b = {"noframes", "style"};
        public static final String[] c = {TtmlNode.TAG_BODY, "br", "html"};
        public static final String[] d = {TtmlNode.TAG_BODY, "html"};
        public static final String[] e = {TtmlNode.TAG_BODY, "br", "head", "html"};
        public static final String[] f = {"basefont", "bgsound", AuthInfo.Component.CODE_LINK, "meta", "noframes", "style"};
        public static final String[] g = {TtmlNode.RUBY_BASE, "basefont", "bgsound", "command", AuthInfo.Component.CODE_LINK, "meta", "noframes", StringLookupFactory.KEY_SCRIPT, "style", "title"};
        public static final String[] h = {"address", "article", "aside", "blockquote", TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, CmcdConfiguration.KEY_DEADLINE, "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", TtmlNode.TAG_P, "section", "summary", "ul"};
        public static final String[] i = {"h1", "h2", "h3", "h4", "h5", "h6"};
        public static final String[] j = {"address", TtmlNode.TAG_DIV, TtmlNode.TAG_P};
        public static final String[] k = {"dd", "dt"};
        public static final String[] l = {"b", "big", TrackingKey.CODE, "em", "font", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "s", "small", "strike", "strong", TtmlNode.TAG_TT, "u"};
        public static final String[] m = {"applet", "marquee", "object"};
        public static final String[] n = {"area", "br", "embed", "img", "keygen", "wbr"};
        public static final String[] o = {"param", "source", "track"};
        public static final String[] p = {"action", "name", "prompt"};
        public static final String[] q = {"caption", "col", "colgroup", TypedValues.AttributesType.S_FRAME, "head", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] r = {"address", "article", "aside", "blockquote", AuthInfo.Component.CODE_BUTTON, TtmlNode.CENTER, "details", "dir", TtmlNode.TAG_DIV, CmcdConfiguration.KEY_DEADLINE, "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", "pre", "section", "summary", "ul"};
        public static final String[] s = {CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "big", TrackingKey.CODE, "em", "font", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "nobr", "s", "small", "strike", "strong", TtmlNode.TAG_TT, "u"};
        public static final String[] t = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] u = {"tbody", "tfoot", "thead"};
        public static final String[] v = {"td", "th", "tr"};
        public static final String[] w = {StringLookupFactory.KEY_SCRIPT, "style"};
        public static final String[] x = {"td", "th"};
        public static final String[] y = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html"};
        public static final String[] z = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] A = {"caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] B = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] C = {"table", "tbody", "tfoot", "thead", "tr"};
        public static final String[] D = {"caption", "col", "colgroup", "tbody", "tfoot", "thead"};
        public static final String[] E = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th", "tr"};
        public static final String[] F = {"caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr"};
        public static final String[] G = {TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th"};
        public static final String[] H = {"input", "keygen", "textarea"};
        public static final String[] I = {"caption", "table", "tbody", "td", "tfoot", "th", "thead", "tr"};
        public static final String[] J = {"tbody", "tfoot", "thead"};
        public static final String[] K = {"head", "noscript"};
        public static final String[] L = {TtmlNode.TAG_BODY, "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr"};
    }

    public static void a(Token.h hVar, org.jsoup.parser.a aVar) {
        aVar.c.w(TokeniserState.Rawtext);
        aVar.i0();
        aVar.I0(Text);
        aVar.Q(hVar);
    }

    public static void b(Token.h hVar, org.jsoup.parser.a aVar) {
        aVar.c.w(TokeniserState.Rcdata);
        aVar.i0();
        aVar.I0(Text);
        aVar.Q(hVar);
    }

    public static boolean d(String str) {
        return m0a.f(str);
    }

    public static boolean e(Token token) {
        if (token.g()) {
            return m0a.f(token.a().q());
        }
        return false;
    }

    public abstract boolean process(Token token, org.jsoup.parser.a aVar);
}
