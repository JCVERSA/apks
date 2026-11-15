package org.jsoup.parser;

import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

enum HtmlTreeBuilderState {
    Initial {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.h()) {
                bVar.O(token.b());
            } else {
                if (!token.i()) {
                    bVar.C0(HtmlTreeBuilderState.BeforeHtml);
                    return bVar.e(token);
                }
                Token.e eVarC = token.c();
                org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(bVar.f68723h.b(eVarC.p()), eVarC.r(), eVarC.s());
                gVar.d0(eVarC.q());
                bVar.w().g0(gVar);
                if (eVarC.t()) {
                    bVar.w().i1(Document.QuirksMode.quirks);
                }
                bVar.C0(HtmlTreeBuilderState.BeforeHtml);
            }
            return true;
        }
    },
    BeforeHtml {
        private boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            bVar.V("html");
            bVar.C0(HtmlTreeBuilderState.BeforeHead);
            return bVar.e(token);
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.i()) {
                bVar.p(this);
                return false;
            }
            if (token.h()) {
                bVar.O(token.b());
            } else {
                if (HtmlTreeBuilderState.isWhitespace(token)) {
                    return true;
                }
                if (!token.l() || !token.e().D().equals("html")) {
                    if (token.k() && org.jsoup.helper.c.b(token.d().D(), TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "html", TtmlNode.TAG_BR)) {
                        return anythingElse(token, bVar);
                    }
                    if (!token.k()) {
                        return anythingElse(token, bVar);
                    }
                    bVar.p(this);
                    return false;
                }
                bVar.L(token.e());
                bVar.C0(HtmlTreeBuilderState.BeforeHead);
            }
            return true;
        }
    },
    BeforeHead {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return true;
            }
            if (token.h()) {
                bVar.O(token.b());
            } else {
                if (token.i()) {
                    bVar.p(this);
                    return false;
                }
                if (token.l() && token.e().D().equals("html")) {
                    return HtmlTreeBuilderState.InBody.process(token, bVar);
                }
                if (!token.l() || !token.e().D().equals(TtmlNode.TAG_HEAD)) {
                    if (token.k() && org.jsoup.helper.c.b(token.d().D(), TtmlNode.TAG_HEAD, TtmlNode.TAG_BODY, "html", TtmlNode.TAG_BR)) {
                        bVar.g(TtmlNode.TAG_HEAD);
                        return bVar.e(token);
                    }
                    if (token.k()) {
                        bVar.p(this);
                        return false;
                    }
                    bVar.g(TtmlNode.TAG_HEAD);
                    return bVar.e(token);
                }
                bVar.A0(bVar.L(token.e()));
                bVar.C0(HtmlTreeBuilderState.InHead);
            }
            return true;
        }
    },
    InHead {
        private boolean anythingElse(Token token, i iVar) {
            iVar.f(TtmlNode.TAG_HEAD);
            return iVar.e(token);
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                bVar.N(token.a());
                return true;
            }
            int i10 = a.f68608a[token.f68626a.ordinal()];
            if (i10 == 1) {
                bVar.O(token.b());
            } else {
                if (i10 == 2) {
                    bVar.p(this);
                    return false;
                }
                if (i10 == 3) {
                    Token.h hVarE = token.e();
                    String strD = hVarE.D();
                    if (strD.equals("html")) {
                        return HtmlTreeBuilderState.InBody.process(token, bVar);
                    }
                    if (org.jsoup.helper.c.b(strD, "base", "basefont", "bgsound", "command", "link")) {
                        Element elementP = bVar.P(hVarE);
                        if (strD.equals("base") && elementP.w("href")) {
                            bVar.e0(elementP);
                        }
                    } else if (strD.equals("meta")) {
                        bVar.P(hVarE);
                    } else if (strD.equals(CampaignEx.JSON_KEY_TITLE)) {
                        HtmlTreeBuilderState.handleRcData(hVarE, bVar);
                    } else if (org.jsoup.helper.c.b(strD, "noframes", TtmlNode.TAG_STYLE)) {
                        HtmlTreeBuilderState.handleRawtext(hVarE, bVar);
                    } else if (strD.equals("noscript")) {
                        bVar.L(hVarE);
                        bVar.C0(HtmlTreeBuilderState.InHeadNoscript);
                    } else {
                        if (!strD.equals("script")) {
                            if (!strD.equals(TtmlNode.TAG_HEAD)) {
                                return anythingElse(token, bVar);
                            }
                            bVar.p(this);
                            return false;
                        }
                        bVar.f68717b.u(TokeniserState.ScriptData);
                        bVar.d0();
                        bVar.C0(HtmlTreeBuilderState.Text);
                        bVar.L(hVarE);
                    }
                } else {
                    if (i10 != 4) {
                        return anythingElse(token, bVar);
                    }
                    String strD2 = token.d().D();
                    if (!strD2.equals(TtmlNode.TAG_HEAD)) {
                        if (org.jsoup.helper.c.b(strD2, TtmlNode.TAG_BODY, "html", TtmlNode.TAG_BR)) {
                            return anythingElse(token, bVar);
                        }
                        bVar.p(this);
                        return false;
                    }
                    bVar.j0();
                    bVar.C0(HtmlTreeBuilderState.AfterHead);
                }
            }
            return true;
        }
    },
    InHeadNoscript {
        private boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            bVar.p(this);
            bVar.N(new Token.c().p(token.toString()));
            return true;
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.i()) {
                bVar.p(this);
                return true;
            }
            if (token.l() && token.e().D().equals("html")) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.k() && token.d().D().equals("noscript")) {
                bVar.j0();
                bVar.C0(HtmlTreeBuilderState.InHead);
                return true;
            }
            if (HtmlTreeBuilderState.isWhitespace(token) || token.h() || (token.l() && org.jsoup.helper.c.b(token.e().D(), "basefont", "bgsound", "link", "meta", "noframes", TtmlNode.TAG_STYLE))) {
                return bVar.n0(token, HtmlTreeBuilderState.InHead);
            }
            if (token.k() && token.d().D().equals(TtmlNode.TAG_BR)) {
                return anythingElse(token, bVar);
            }
            if ((!token.l() || !org.jsoup.helper.c.b(token.e().D(), TtmlNode.TAG_HEAD, "noscript")) && !token.k()) {
                return anythingElse(token, bVar);
            }
            bVar.p(this);
            return false;
        }
    },
    AfterHead {
        private boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            bVar.g(TtmlNode.TAG_BODY);
            bVar.q(true);
            return bVar.e(token);
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                bVar.N(token.a());
                return true;
            }
            if (token.h()) {
                bVar.O(token.b());
                return true;
            }
            if (token.i()) {
                bVar.p(this);
                return true;
            }
            if (!token.l()) {
                if (!token.k()) {
                    anythingElse(token, bVar);
                    return true;
                }
                if (org.jsoup.helper.c.b(token.d().D(), TtmlNode.TAG_BODY, "html")) {
                    anythingElse(token, bVar);
                    return true;
                }
                bVar.p(this);
                return false;
            }
            Token.h hVarE = token.e();
            String strD = hVarE.D();
            if (strD.equals("html")) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            if (strD.equals(TtmlNode.TAG_BODY)) {
                bVar.L(hVarE);
                bVar.q(false);
                bVar.C0(HtmlTreeBuilderState.InBody);
                return true;
            }
            if (strD.equals("frameset")) {
                bVar.L(hVarE);
                bVar.C0(HtmlTreeBuilderState.InFrameset);
                return true;
            }
            if (!org.jsoup.helper.c.b(strD, "base", "basefont", "bgsound", "link", "meta", "noframes", "script", TtmlNode.TAG_STYLE, CampaignEx.JSON_KEY_TITLE)) {
                if (strD.equals(TtmlNode.TAG_HEAD)) {
                    bVar.p(this);
                    return false;
                }
                anythingElse(token, bVar);
                return true;
            }
            bVar.p(this);
            Element elementZ = bVar.z();
            bVar.o0(elementZ);
            bVar.n0(token, HtmlTreeBuilderState.InHead);
            bVar.s0(elementZ);
            return true;
        }
    },
    InBody {
        boolean anyOtherEndTag(Token token, org.jsoup.parser.b bVar) {
            String strB = bVar.f68723h.b(token.d().A());
            ArrayList arrayListB = bVar.B();
            for (int size = arrayListB.size() - 1; size >= 0; size--) {
                Element element = (Element) arrayListB.get(size);
                if (element.B().equals(strB)) {
                    bVar.t(strB);
                    if (!strB.equals(bVar.a().B())) {
                        bVar.p(this);
                    }
                    bVar.l0(strB);
                    break;
                }
                if (bVar.b0(element)) {
                    bVar.p(this);
                    return false;
                }
            }
            return true;
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            Element element;
            int i10 = a.f68608a[token.f68626a.ordinal()];
            boolean z10 = true;
            if (i10 == 1) {
                bVar.O(token.b());
            } else {
                if (i10 == 2) {
                    bVar.p(this);
                    return false;
                }
                if (i10 != 3) {
                    if (i10 == 4) {
                        Token.g gVarD = token.d();
                        String strD = gVarD.D();
                        if (org.jsoup.helper.c.c(strD, b.f68624p)) {
                            int i11 = 0;
                            while (i11 < 8) {
                                Element elementU = bVar.u(strD);
                                if (elementU == null) {
                                    return anyOtherEndTag(token, bVar);
                                }
                                if (!bVar.g0(elementU)) {
                                    bVar.p(this);
                                    bVar.r0(elementU);
                                    return z10;
                                }
                                if (!bVar.E(elementU.B())) {
                                    bVar.p(this);
                                    return false;
                                }
                                if (bVar.a() != elementU) {
                                    bVar.p(this);
                                }
                                ArrayList arrayListB = bVar.B();
                                int size = arrayListB.size();
                                int i12 = 0;
                                boolean z11 = false;
                                Element element2 = null;
                                while (true) {
                                    if (i12 >= size || i12 >= 64) {
                                        element = null;
                                        break;
                                    }
                                    element = (Element) arrayListB.get(i12);
                                    if (element != elementU) {
                                        if (z11 && bVar.b0(element)) {
                                            break;
                                        }
                                    } else {
                                        element2 = (Element) arrayListB.get(i12 - 1);
                                        z11 = z10;
                                    }
                                    i12++;
                                }
                                if (element == null) {
                                    bVar.l0(elementU.B());
                                    bVar.r0(elementU);
                                    return z10;
                                }
                                Element elementJ = element;
                                Element element3 = elementJ;
                                for (int i13 = 0; i13 < 3; i13++) {
                                    if (bVar.g0(elementJ)) {
                                        elementJ = bVar.j(elementJ);
                                    }
                                    if (!bVar.Z(elementJ)) {
                                        bVar.s0(elementJ);
                                    } else {
                                        if (elementJ == elementU) {
                                            break;
                                        }
                                        Element element4 = new Element(f.l(elementJ.B(), d.f68671d), bVar.v());
                                        bVar.u0(elementJ, element4);
                                        bVar.w0(elementJ, element4);
                                        if (element3.I() != null) {
                                            element3.L();
                                        }
                                        element4.g0(element3);
                                        elementJ = element4;
                                        element3 = elementJ;
                                    }
                                }
                                if (org.jsoup.helper.c.c(element2.B(), b.f68625q)) {
                                    if (element3.I() != null) {
                                        element3.L();
                                    }
                                    bVar.R(element3);
                                } else {
                                    if (element3.I() != null) {
                                        element3.L();
                                    }
                                    element2.g0(element3);
                                }
                                Element element5 = new Element(elementU.T0(), bVar.v());
                                element5.i().e(elementU.i());
                                for (org.jsoup.nodes.j jVar : (org.jsoup.nodes.j[]) element.o().toArray(new org.jsoup.nodes.j[element.n()])) {
                                    element5.g0(jVar);
                                }
                                element.g0(element5);
                                bVar.r0(elementU);
                                bVar.s0(elementU);
                                bVar.U(element, element5);
                                i11++;
                                z10 = true;
                            }
                        } else if (org.jsoup.helper.c.c(strD, b.f68623o)) {
                            if (!bVar.E(strD)) {
                                bVar.p(this);
                                return false;
                            }
                            bVar.s();
                            if (!bVar.a().B().equals(strD)) {
                                bVar.p(this);
                            }
                            bVar.l0(strD);
                        } else {
                            if (strD.equals(TtmlNode.TAG_SPAN)) {
                                return anyOtherEndTag(token, bVar);
                            }
                            if (strD.equals("li")) {
                                if (!bVar.D(strD)) {
                                    bVar.p(this);
                                    return false;
                                }
                                bVar.t(strD);
                                if (!bVar.a().B().equals(strD)) {
                                    bVar.p(this);
                                }
                                bVar.l0(strD);
                            } else if (strD.equals(TtmlNode.TAG_BODY)) {
                                if (!bVar.E(TtmlNode.TAG_BODY)) {
                                    bVar.p(this);
                                    return false;
                                }
                                bVar.C0(HtmlTreeBuilderState.AfterBody);
                            } else if (strD.equals("html")) {
                                if (bVar.f(TtmlNode.TAG_BODY)) {
                                    return bVar.e(gVarD);
                                }
                            } else if (strD.equals("form")) {
                                org.jsoup.nodes.h hVarX = bVar.x();
                                bVar.y0(null);
                                if (hVarX == null || !bVar.E(strD)) {
                                    bVar.p(this);
                                    return false;
                                }
                                bVar.s();
                                if (!bVar.a().B().equals(strD)) {
                                    bVar.p(this);
                                }
                                bVar.s0(hVarX);
                            } else if (strD.equals(TtmlNode.TAG_P)) {
                                if (!bVar.C(strD)) {
                                    bVar.p(this);
                                    bVar.g(strD);
                                    return bVar.e(gVarD);
                                }
                                bVar.t(strD);
                                if (!bVar.a().B().equals(strD)) {
                                    bVar.p(this);
                                }
                                bVar.l0(strD);
                            } else if (!org.jsoup.helper.c.c(strD, b.f68614f)) {
                                String[] strArr = b.f68611c;
                                if (org.jsoup.helper.c.c(strD, strArr)) {
                                    if (!bVar.G(strArr)) {
                                        bVar.p(this);
                                        return false;
                                    }
                                    bVar.t(strD);
                                    if (!bVar.a().B().equals(strD)) {
                                        bVar.p(this);
                                    }
                                    bVar.m0(strArr);
                                } else {
                                    if (strD.equals("sarcasm")) {
                                        return anyOtherEndTag(token, bVar);
                                    }
                                    if (!org.jsoup.helper.c.c(strD, b.f68616h)) {
                                        if (!strD.equals(TtmlNode.TAG_BR)) {
                                            return anyOtherEndTag(token, bVar);
                                        }
                                        bVar.p(this);
                                        bVar.g(TtmlNode.TAG_BR);
                                        return false;
                                    }
                                    if (!bVar.E("name")) {
                                        if (!bVar.E(strD)) {
                                            bVar.p(this);
                                            return false;
                                        }
                                        bVar.s();
                                        if (!bVar.a().B().equals(strD)) {
                                            bVar.p(this);
                                        }
                                        bVar.l0(strD);
                                        bVar.k();
                                    }
                                }
                            } else {
                                if (!bVar.E(strD)) {
                                    bVar.p(this);
                                    return false;
                                }
                                bVar.t(strD);
                                if (!bVar.a().B().equals(strD)) {
                                    bVar.p(this);
                                }
                                bVar.l0(strD);
                            }
                        }
                    } else if (i10 == 5) {
                        Token.c cVarA = token.a();
                        if (cVarA.q().equals(HtmlTreeBuilderState.nullString)) {
                            bVar.p(this);
                            return false;
                        }
                        if (bVar.r() && HtmlTreeBuilderState.isWhitespace(cVarA)) {
                            bVar.q0();
                            bVar.N(cVarA);
                        } else {
                            bVar.q0();
                            bVar.N(cVarA);
                            bVar.q(false);
                        }
                    }
                    return z10;
                }
                Token.h hVarE = token.e();
                String strD2 = hVarE.D();
                if (strD2.equals("a")) {
                    if (bVar.u("a") != null) {
                        bVar.p(this);
                        bVar.f("a");
                        Element elementY = bVar.y("a");
                        if (elementY != null) {
                            bVar.r0(elementY);
                            bVar.s0(elementY);
                        }
                    }
                    bVar.q0();
                    bVar.p0(bVar.L(hVarE));
                } else if (org.jsoup.helper.c.c(strD2, b.f68617i)) {
                    bVar.q0();
                    bVar.P(hVarE);
                    bVar.q(false);
                } else if (org.jsoup.helper.c.c(strD2, b.f68610b)) {
                    if (bVar.C(TtmlNode.TAG_P)) {
                        bVar.f(TtmlNode.TAG_P);
                    }
                    bVar.L(hVarE);
                } else if (strD2.equals(TtmlNode.TAG_SPAN)) {
                    bVar.q0();
                    bVar.L(hVarE);
                } else if (strD2.equals("li")) {
                    bVar.q(false);
                    ArrayList arrayListB2 = bVar.B();
                    for (int size2 = arrayListB2.size() - 1; size2 > 0; size2--) {
                        Element element6 = (Element) arrayListB2.get(size2);
                        if (element6.B().equals("li")) {
                            bVar.f("li");
                            break;
                        }
                        if (bVar.b0(element6) && !org.jsoup.helper.c.c(element6.B(), b.f68613e)) {
                            break;
                        }
                    }
                    if (bVar.C(TtmlNode.TAG_P)) {
                        bVar.f(TtmlNode.TAG_P);
                    }
                    bVar.L(hVarE);
                } else if (strD2.equals("html")) {
                    bVar.p(this);
                    Element element7 = (Element) bVar.B().get(0);
                    for (org.jsoup.nodes.a aVar : hVarE.y()) {
                        if (!element7.w(aVar.getKey())) {
                            element7.i().x(aVar);
                        }
                    }
                } else {
                    if (org.jsoup.helper.c.c(strD2, b.f68609a)) {
                        return bVar.n0(token, HtmlTreeBuilderState.InHead);
                    }
                    if (strD2.equals(TtmlNode.TAG_BODY)) {
                        bVar.p(this);
                        ArrayList arrayListB3 = bVar.B();
                        if (arrayListB3.size() == 1 || (arrayListB3.size() > 2 && !((Element) arrayListB3.get(1)).B().equals(TtmlNode.TAG_BODY))) {
                            return false;
                        }
                        bVar.q(false);
                        Element element8 = (Element) arrayListB3.get(1);
                        for (org.jsoup.nodes.a aVar2 : hVarE.y()) {
                            if (!element8.w(aVar2.getKey())) {
                                element8.i().x(aVar2);
                            }
                        }
                    } else if (strD2.equals("frameset")) {
                        bVar.p(this);
                        ArrayList arrayListB4 = bVar.B();
                        if (arrayListB4.size() == 1 || ((arrayListB4.size() > 2 && !((Element) arrayListB4.get(1)).B().equals(TtmlNode.TAG_BODY)) || !bVar.r())) {
                            return false;
                        }
                        Element element9 = (Element) arrayListB4.get(1);
                        if (element9.I() != null) {
                            element9.L();
                        }
                        for (int i14 = 1; arrayListB4.size() > i14; i14 = 1) {
                            arrayListB4.remove(arrayListB4.size() - i14);
                        }
                        bVar.L(hVarE);
                        bVar.C0(HtmlTreeBuilderState.InFrameset);
                    } else {
                        String[] strArr2 = b.f68611c;
                        if (org.jsoup.helper.c.c(strD2, strArr2)) {
                            if (bVar.C(TtmlNode.TAG_P)) {
                                bVar.f(TtmlNode.TAG_P);
                            }
                            if (org.jsoup.helper.c.c(bVar.a().B(), strArr2)) {
                                bVar.p(this);
                                bVar.j0();
                            }
                            bVar.L(hVarE);
                        } else if (org.jsoup.helper.c.c(strD2, b.f68612d)) {
                            if (bVar.C(TtmlNode.TAG_P)) {
                                bVar.f(TtmlNode.TAG_P);
                            }
                            bVar.L(hVarE);
                            bVar.f68716a.u("\n");
                            bVar.q(false);
                        } else {
                            if (strD2.equals("form")) {
                                if (bVar.x() != null) {
                                    bVar.p(this);
                                    return false;
                                }
                                if (bVar.C(TtmlNode.TAG_P)) {
                                    bVar.f(TtmlNode.TAG_P);
                                }
                                bVar.Q(hVarE, true);
                                return true;
                            }
                            if (org.jsoup.helper.c.c(strD2, b.f68614f)) {
                                bVar.q(false);
                                ArrayList arrayListB5 = bVar.B();
                                for (int size3 = arrayListB5.size() - 1; size3 > 0; size3--) {
                                    Element element10 = (Element) arrayListB5.get(size3);
                                    if (org.jsoup.helper.c.c(element10.B(), b.f68614f)) {
                                        bVar.f(element10.B());
                                        break;
                                    }
                                    if (bVar.b0(element10) && !org.jsoup.helper.c.c(element10.B(), b.f68613e)) {
                                        break;
                                    }
                                }
                                if (bVar.C(TtmlNode.TAG_P)) {
                                    bVar.f(TtmlNode.TAG_P);
                                }
                                bVar.L(hVarE);
                            } else if (strD2.equals("plaintext")) {
                                if (bVar.C(TtmlNode.TAG_P)) {
                                    bVar.f(TtmlNode.TAG_P);
                                }
                                bVar.L(hVarE);
                                bVar.f68717b.u(TokeniserState.PLAINTEXT);
                            } else if (strD2.equals("button")) {
                                if (bVar.C("button")) {
                                    bVar.p(this);
                                    bVar.f("button");
                                    bVar.e(hVarE);
                                } else {
                                    bVar.q0();
                                    bVar.L(hVarE);
                                    bVar.q(false);
                                }
                            } else if (org.jsoup.helper.c.c(strD2, b.f68615g)) {
                                bVar.q0();
                                bVar.p0(bVar.L(hVarE));
                            } else if (strD2.equals("nobr")) {
                                bVar.q0();
                                if (bVar.E("nobr")) {
                                    bVar.p(this);
                                    bVar.f("nobr");
                                    bVar.q0();
                                }
                                bVar.p0(bVar.L(hVarE));
                            } else if (org.jsoup.helper.c.c(strD2, b.f68616h)) {
                                bVar.q0();
                                bVar.L(hVarE);
                                bVar.S();
                                bVar.q(false);
                            } else if (strD2.equals("table")) {
                                if (bVar.w().h1() != Document.QuirksMode.quirks && bVar.C(TtmlNode.TAG_P)) {
                                    bVar.f(TtmlNode.TAG_P);
                                }
                                bVar.L(hVarE);
                                bVar.q(false);
                                bVar.C0(HtmlTreeBuilderState.InTable);
                            } else if (strD2.equals("input")) {
                                bVar.q0();
                                if (!bVar.P(hVarE).g(NativeComponentConstants.KEY_COMPONENT_TYPE).equalsIgnoreCase("hidden")) {
                                    bVar.q(false);
                                }
                            } else if (org.jsoup.helper.c.c(strD2, b.f68618j)) {
                                bVar.P(hVarE);
                            } else if (strD2.equals("hr")) {
                                if (bVar.C(TtmlNode.TAG_P)) {
                                    bVar.f(TtmlNode.TAG_P);
                                }
                                bVar.P(hVarE);
                                bVar.q(false);
                            } else if (strD2.equals("image")) {
                                if (bVar.y("svg") == null) {
                                    return bVar.e(hVarE.B("img"));
                                }
                                bVar.L(hVarE);
                            } else if (strD2.equals("isindex")) {
                                bVar.p(this);
                                if (bVar.x() != null) {
                                    return false;
                                }
                                bVar.g("form");
                                if (hVarE.f68643j.p(EventConstants.KEY_ACTION)) {
                                    bVar.x().j0(EventConstants.KEY_ACTION, hVarE.f68643j.n(EventConstants.KEY_ACTION));
                                }
                                bVar.g("hr");
                                bVar.g("label");
                                bVar.e(new Token.c().p(hVarE.f68643j.p("prompt") ? hVarE.f68643j.n("prompt") : "This is a searchable index. Enter search keywords: "));
                                org.jsoup.nodes.b bVar2 = new org.jsoup.nodes.b();
                                for (org.jsoup.nodes.a aVar3 : hVarE.f68643j) {
                                    if (!org.jsoup.helper.c.c(aVar3.getKey(), b.f68619k)) {
                                        bVar2.x(aVar3);
                                    }
                                }
                                bVar2.w("name", "isindex");
                                bVar.h("input", bVar2);
                                bVar.f("label");
                                bVar.g("hr");
                                bVar.f("form");
                            } else if (strD2.equals("textarea")) {
                                bVar.L(hVarE);
                                bVar.f68717b.u(TokeniserState.Rcdata);
                                bVar.d0();
                                bVar.q(false);
                                bVar.C0(HtmlTreeBuilderState.Text);
                            } else if (strD2.equals("xmp")) {
                                if (bVar.C(TtmlNode.TAG_P)) {
                                    bVar.f(TtmlNode.TAG_P);
                                }
                                bVar.q0();
                                bVar.q(false);
                                HtmlTreeBuilderState.handleRawtext(hVarE, bVar);
                            } else if (strD2.equals("iframe")) {
                                bVar.q(false);
                                HtmlTreeBuilderState.handleRawtext(hVarE, bVar);
                            } else if (strD2.equals("noembed")) {
                                HtmlTreeBuilderState.handleRawtext(hVarE, bVar);
                            } else if (strD2.equals("select")) {
                                bVar.q0();
                                bVar.L(hVarE);
                                bVar.q(false);
                                HtmlTreeBuilderState htmlTreeBuilderStateB0 = bVar.B0();
                                if (htmlTreeBuilderStateB0.equals(HtmlTreeBuilderState.InTable) || htmlTreeBuilderStateB0.equals(HtmlTreeBuilderState.InCaption) || htmlTreeBuilderStateB0.equals(HtmlTreeBuilderState.InTableBody) || htmlTreeBuilderStateB0.equals(HtmlTreeBuilderState.InRow) || htmlTreeBuilderStateB0.equals(HtmlTreeBuilderState.InCell)) {
                                    bVar.C0(HtmlTreeBuilderState.InSelectInTable);
                                } else {
                                    bVar.C0(HtmlTreeBuilderState.InSelect);
                                }
                            } else if (org.jsoup.helper.c.c(strD2, b.f68620l)) {
                                if (bVar.a().B().equals("option")) {
                                    bVar.f("option");
                                }
                                bVar.q0();
                                bVar.L(hVarE);
                            } else if (!org.jsoup.helper.c.c(strD2, b.f68621m)) {
                                if (!strD2.equals("math") && !strD2.equals("svg") && org.jsoup.helper.c.c(strD2, b.f68622n)) {
                                    bVar.p(this);
                                    return false;
                                }
                                bVar.q0();
                                bVar.L(hVarE);
                            } else if (bVar.E("ruby")) {
                                bVar.s();
                                if (!bVar.a().B().equals("ruby")) {
                                    bVar.p(this);
                                    bVar.k0("ruby");
                                }
                                bVar.L(hVarE);
                            }
                        }
                    }
                }
            }
            return true;
        }
    },
    Text {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.g()) {
                bVar.N(token.a());
                return true;
            }
            if (token.j()) {
                bVar.p(this);
                bVar.j0();
                bVar.C0(bVar.h0());
                return bVar.e(token);
            }
            if (!token.k()) {
                return true;
            }
            bVar.j0();
            bVar.C0(bVar.h0());
            return true;
        }
    },
    InTable {
        boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            bVar.p(this);
            if (!org.jsoup.helper.c.b(bVar.a().B(), "table", "tbody", "tfoot", "thead", "tr")) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            bVar.z0(true);
            boolean zN0 = bVar.n0(token, HtmlTreeBuilderState.InBody);
            bVar.z0(false);
            return zN0;
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.g()) {
                bVar.f0();
                bVar.d0();
                bVar.C0(HtmlTreeBuilderState.InTableText);
                return bVar.e(token);
            }
            if (token.h()) {
                bVar.O(token.b());
                return true;
            }
            if (token.i()) {
                bVar.p(this);
                return false;
            }
            if (!token.l()) {
                if (!token.k()) {
                    if (!token.j()) {
                        return anythingElse(token, bVar);
                    }
                    if (bVar.a().B().equals("html")) {
                        bVar.p(this);
                    }
                    return true;
                }
                String strD = token.d().D();
                if (!strD.equals("table")) {
                    if (!org.jsoup.helper.c.b(strD, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                        return anythingElse(token, bVar);
                    }
                    bVar.p(this);
                    return false;
                }
                if (!bVar.K(strD)) {
                    bVar.p(this);
                    return false;
                }
                bVar.l0("table");
                bVar.x0();
                return true;
            }
            Token.h hVarE = token.e();
            String strD2 = hVarE.D();
            if (strD2.equals("caption")) {
                bVar.n();
                bVar.S();
                bVar.L(hVarE);
                bVar.C0(HtmlTreeBuilderState.InCaption);
            } else if (strD2.equals("colgroup")) {
                bVar.n();
                bVar.L(hVarE);
                bVar.C0(HtmlTreeBuilderState.InColumnGroup);
            } else {
                if (strD2.equals("col")) {
                    bVar.g("colgroup");
                    return bVar.e(token);
                }
                if (org.jsoup.helper.c.b(strD2, "tbody", "tfoot", "thead")) {
                    bVar.n();
                    bVar.L(hVarE);
                    bVar.C0(HtmlTreeBuilderState.InTableBody);
                } else {
                    if (org.jsoup.helper.c.b(strD2, "td", "th", "tr")) {
                        bVar.g("tbody");
                        return bVar.e(token);
                    }
                    if (strD2.equals("table")) {
                        bVar.p(this);
                        if (bVar.f("table")) {
                            return bVar.e(token);
                        }
                    } else {
                        if (org.jsoup.helper.c.b(strD2, TtmlNode.TAG_STYLE, "script")) {
                            return bVar.n0(token, HtmlTreeBuilderState.InHead);
                        }
                        if (strD2.equals("input")) {
                            if (!hVarE.f68643j.n(NativeComponentConstants.KEY_COMPONENT_TYPE).equalsIgnoreCase("hidden")) {
                                return anythingElse(token, bVar);
                            }
                            bVar.P(hVarE);
                        } else {
                            if (!strD2.equals("form")) {
                                return anythingElse(token, bVar);
                            }
                            bVar.p(this);
                            if (bVar.x() != null) {
                                return false;
                            }
                            bVar.Q(hVarE, false);
                        }
                    }
                }
            }
            return true;
        }
    },
    InTableText {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (a.f68608a[token.f68626a.ordinal()] == 5) {
                Token.c cVarA = token.a();
                if (cVarA.q().equals(HtmlTreeBuilderState.nullString)) {
                    bVar.p(this);
                    return false;
                }
                bVar.A().add(cVarA.q());
                return true;
            }
            if (bVar.A().size() > 0) {
                for (String str : bVar.A()) {
                    if (HtmlTreeBuilderState.isWhitespace(str)) {
                        bVar.N(new Token.c().p(str));
                    } else {
                        bVar.p(this);
                        if (org.jsoup.helper.c.b(bVar.a().B(), "table", "tbody", "tfoot", "thead", "tr")) {
                            bVar.z0(true);
                            bVar.n0(new Token.c().p(str), HtmlTreeBuilderState.InBody);
                            bVar.z0(false);
                        } else {
                            bVar.n0(new Token.c().p(str), HtmlTreeBuilderState.InBody);
                        }
                    }
                }
                bVar.f0();
            }
            bVar.C0(bVar.h0());
            return bVar.e(token);
        }
    },
    InCaption {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.k() && token.d().D().equals("caption")) {
                if (!bVar.K(token.d().D())) {
                    bVar.p(this);
                    return false;
                }
                bVar.s();
                if (!bVar.a().B().equals("caption")) {
                    bVar.p(this);
                }
                bVar.l0("caption");
                bVar.k();
                bVar.C0(HtmlTreeBuilderState.InTable);
                return true;
            }
            if ((token.l() && org.jsoup.helper.c.b(token.e().D(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) || (token.k() && token.d().D().equals("table"))) {
                bVar.p(this);
                if (bVar.f("caption")) {
                    return bVar.e(token);
                }
                return true;
            }
            if (!token.k() || !org.jsoup.helper.c.b(token.d().D(), TtmlNode.TAG_BODY, "col", "colgroup", "html", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            bVar.p(this);
            return false;
        }
    },
    InColumnGroup {
        private boolean anythingElse(Token token, i iVar) {
            if (iVar.f("colgroup")) {
                return iVar.e(token);
            }
            return true;
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                bVar.N(token.a());
                return true;
            }
            int i10 = a.f68608a[token.f68626a.ordinal()];
            if (i10 == 1) {
                bVar.O(token.b());
            } else if (i10 == 2) {
                bVar.p(this);
            } else if (i10 == 3) {
                Token.h hVarE = token.e();
                String strD = hVarE.D();
                strD.hashCode();
                if (!strD.equals("col")) {
                    return !strD.equals("html") ? anythingElse(token, bVar) : bVar.n0(token, HtmlTreeBuilderState.InBody);
                }
                bVar.P(hVarE);
            } else {
                if (i10 != 4) {
                    if (i10 != 6) {
                        return anythingElse(token, bVar);
                    }
                    if (bVar.a().B().equals("html")) {
                        return true;
                    }
                    return anythingElse(token, bVar);
                }
                if (!token.d().f68636c.equals("colgroup")) {
                    return anythingElse(token, bVar);
                }
                if (bVar.a().B().equals("html")) {
                    bVar.p(this);
                    return false;
                }
                bVar.j0();
                bVar.C0(HtmlTreeBuilderState.InTable);
            }
            return true;
        }
    },
    InTableBody {
        private boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            return bVar.n0(token, HtmlTreeBuilderState.InTable);
        }

        private boolean exitTableBody(Token token, org.jsoup.parser.b bVar) {
            if (!bVar.K("tbody") && !bVar.K("thead") && !bVar.E("tfoot")) {
                bVar.p(this);
                return false;
            }
            bVar.m();
            bVar.f(bVar.a().B());
            return bVar.e(token);
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            int i10 = a.f68608a[token.f68626a.ordinal()];
            if (i10 == 3) {
                Token.h hVarE = token.e();
                String strD = hVarE.D();
                if (strD.equals("template")) {
                    bVar.L(hVarE);
                    return true;
                }
                if (strD.equals("tr")) {
                    bVar.m();
                    bVar.L(hVarE);
                    bVar.C0(HtmlTreeBuilderState.InRow);
                    return true;
                }
                if (!org.jsoup.helper.c.b(strD, "th", "td")) {
                    return org.jsoup.helper.c.b(strD, "caption", "col", "colgroup", "tbody", "tfoot", "thead") ? exitTableBody(token, bVar) : anythingElse(token, bVar);
                }
                bVar.p(this);
                bVar.g("tr");
                return bVar.e(hVarE);
            }
            if (i10 != 4) {
                return anythingElse(token, bVar);
            }
            String strD2 = token.d().D();
            if (!org.jsoup.helper.c.b(strD2, "tbody", "tfoot", "thead")) {
                if (strD2.equals("table")) {
                    return exitTableBody(token, bVar);
                }
                if (!org.jsoup.helper.c.b(strD2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th", "tr")) {
                    return anythingElse(token, bVar);
                }
                bVar.p(this);
                return false;
            }
            if (!bVar.K(strD2)) {
                bVar.p(this);
                return false;
            }
            bVar.m();
            bVar.j0();
            bVar.C0(HtmlTreeBuilderState.InTable);
            return true;
        }
    },
    InRow {
        private boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            return bVar.n0(token, HtmlTreeBuilderState.InTable);
        }

        private boolean handleMissingTr(Token token, i iVar) {
            if (iVar.f("tr")) {
                return iVar.e(token);
            }
            return false;
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.l()) {
                Token.h hVarE = token.e();
                String strD = hVarE.D();
                if (strD.equals("template")) {
                    bVar.L(hVarE);
                    return true;
                }
                if (!org.jsoup.helper.c.b(strD, "th", "td")) {
                    return org.jsoup.helper.c.b(strD, "caption", "col", "colgroup", "tbody", "tfoot", "thead", "tr") ? handleMissingTr(token, bVar) : anythingElse(token, bVar);
                }
                bVar.o();
                bVar.L(hVarE);
                bVar.C0(HtmlTreeBuilderState.InCell);
                bVar.S();
                return true;
            }
            if (!token.k()) {
                return anythingElse(token, bVar);
            }
            String strD2 = token.d().D();
            if (strD2.equals("tr")) {
                if (!bVar.K(strD2)) {
                    bVar.p(this);
                    return false;
                }
                bVar.o();
                bVar.j0();
                bVar.C0(HtmlTreeBuilderState.InTableBody);
                return true;
            }
            if (strD2.equals("table")) {
                return handleMissingTr(token, bVar);
            }
            if (!org.jsoup.helper.c.b(strD2, "tbody", "tfoot", "thead")) {
                if (!org.jsoup.helper.c.b(strD2, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html", "td", "th")) {
                    return anythingElse(token, bVar);
                }
                bVar.p(this);
                return false;
            }
            if (bVar.K(strD2)) {
                bVar.f("tr");
                return bVar.e(token);
            }
            bVar.p(this);
            return false;
        }
    },
    InCell {
        private boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            return bVar.n0(token, HtmlTreeBuilderState.InBody);
        }

        private void closeCell(org.jsoup.parser.b bVar) {
            if (bVar.K("td")) {
                bVar.f("td");
            } else {
                bVar.f("th");
            }
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (!token.k()) {
                if (!token.l() || !org.jsoup.helper.c.b(token.e().D(), "caption", "col", "colgroup", "tbody", "td", "tfoot", "th", "thead", "tr")) {
                    return anythingElse(token, bVar);
                }
                if (bVar.K("td") || bVar.K("th")) {
                    closeCell(bVar);
                    return bVar.e(token);
                }
                bVar.p(this);
                return false;
            }
            String strD = token.d().D();
            if (!org.jsoup.helper.c.b(strD, "td", "th")) {
                if (org.jsoup.helper.c.b(strD, TtmlNode.TAG_BODY, "caption", "col", "colgroup", "html")) {
                    bVar.p(this);
                    return false;
                }
                if (!org.jsoup.helper.c.b(strD, "table", "tbody", "tfoot", "thead", "tr")) {
                    return anythingElse(token, bVar);
                }
                if (bVar.K(strD)) {
                    closeCell(bVar);
                    return bVar.e(token);
                }
                bVar.p(this);
                return false;
            }
            if (!bVar.K(strD)) {
                bVar.p(this);
                bVar.C0(HtmlTreeBuilderState.InRow);
                return false;
            }
            bVar.s();
            if (!bVar.a().B().equals(strD)) {
                bVar.p(this);
            }
            bVar.l0(strD);
            bVar.k();
            bVar.C0(HtmlTreeBuilderState.InRow);
            return true;
        }
    },
    InSelect {
        private boolean anythingElse(Token token, org.jsoup.parser.b bVar) {
            bVar.p(this);
            return false;
        }

        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            switch (a.f68608a[token.f68626a.ordinal()]) {
                case 1:
                    bVar.O(token.b());
                    return true;
                case 2:
                    bVar.p(this);
                    return false;
                case 3:
                    Token.h hVarE = token.e();
                    String strD = hVarE.D();
                    if (strD.equals("html")) {
                        return bVar.n0(hVarE, HtmlTreeBuilderState.InBody);
                    }
                    if (strD.equals("option")) {
                        if (bVar.a().B().equals("option")) {
                            bVar.f("option");
                        }
                        bVar.L(hVarE);
                    } else {
                        if (!strD.equals("optgroup")) {
                            if (strD.equals("select")) {
                                bVar.p(this);
                                return bVar.f("select");
                            }
                            if (!org.jsoup.helper.c.b(strD, "input", "keygen", "textarea")) {
                                return strD.equals("script") ? bVar.n0(token, HtmlTreeBuilderState.InHead) : anythingElse(token, bVar);
                            }
                            bVar.p(this);
                            if (!bVar.H("select")) {
                                return false;
                            }
                            bVar.f("select");
                            return bVar.e(hVarE);
                        }
                        if (bVar.a().B().equals("option")) {
                            bVar.f("option");
                        } else if (bVar.a().B().equals("optgroup")) {
                            bVar.f("optgroup");
                        }
                        bVar.L(hVarE);
                    }
                    return true;
                case 4:
                    String strD2 = token.d().D();
                    strD2.hashCode();
                    switch (strD2) {
                        case "option":
                            if (bVar.a().B().equals("option")) {
                                bVar.j0();
                            } else {
                                bVar.p(this);
                            }
                            return true;
                        case "select":
                            if (!bVar.H(strD2)) {
                                bVar.p(this);
                                return false;
                            }
                            bVar.l0(strD2);
                            bVar.x0();
                            return true;
                        case "optgroup":
                            if (bVar.a().B().equals("option") && bVar.j(bVar.a()) != null && bVar.j(bVar.a()).B().equals("optgroup")) {
                                bVar.f("option");
                            }
                            if (bVar.a().B().equals("optgroup")) {
                                bVar.j0();
                            } else {
                                bVar.p(this);
                            }
                            return true;
                        default:
                            return anythingElse(token, bVar);
                    }
                case 5:
                    Token.c cVarA = token.a();
                    if (cVarA.q().equals(HtmlTreeBuilderState.nullString)) {
                        bVar.p(this);
                        return false;
                    }
                    bVar.N(cVarA);
                    return true;
                case 6:
                    if (!bVar.a().B().equals("html")) {
                        bVar.p(this);
                    }
                    return true;
                default:
                    return anythingElse(token, bVar);
            }
        }
    },
    InSelectInTable {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.l() && org.jsoup.helper.c.b(token.e().D(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                bVar.p(this);
                bVar.f("select");
                return bVar.e(token);
            }
            if (!token.k() || !org.jsoup.helper.c.b(token.d().D(), "caption", "table", "tbody", "tfoot", "thead", "tr", "td", "th")) {
                return bVar.n0(token, HtmlTreeBuilderState.InSelect);
            }
            bVar.p(this);
            if (!bVar.K(token.d().D())) {
                return false;
            }
            bVar.f("select");
            return bVar.e(token);
        }
    },
    AfterBody {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.h()) {
                bVar.O(token.b());
                return true;
            }
            if (token.i()) {
                bVar.p(this);
                return false;
            }
            if (token.l() && token.e().D().equals("html")) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.k() && token.d().D().equals("html")) {
                if (bVar.Y()) {
                    bVar.p(this);
                    return false;
                }
                bVar.C0(HtmlTreeBuilderState.AfterAfterBody);
                return true;
            }
            if (token.j()) {
                return true;
            }
            bVar.p(this);
            bVar.C0(HtmlTreeBuilderState.InBody);
            return bVar.e(token);
        }
    },
    InFrameset {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                bVar.N(token.a());
            } else if (token.h()) {
                bVar.O(token.b());
            } else {
                if (token.i()) {
                    bVar.p(this);
                    return false;
                }
                if (token.l()) {
                    Token.h hVarE = token.e();
                    String strD = hVarE.D();
                    strD.hashCode();
                    switch (strD) {
                        case "frameset":
                            bVar.L(hVarE);
                            break;
                        case "html":
                            return bVar.n0(hVarE, HtmlTreeBuilderState.InBody);
                        case "frame":
                            bVar.P(hVarE);
                            break;
                        case "noframes":
                            return bVar.n0(hVarE, HtmlTreeBuilderState.InHead);
                        default:
                            bVar.p(this);
                            return false;
                    }
                } else if (token.k() && token.d().D().equals("frameset")) {
                    if (bVar.a().B().equals("html")) {
                        bVar.p(this);
                        return false;
                    }
                    bVar.j0();
                    if (!bVar.Y() && !bVar.a().B().equals("frameset")) {
                        bVar.C0(HtmlTreeBuilderState.AfterFrameset);
                    }
                } else {
                    if (!token.j()) {
                        bVar.p(this);
                        return false;
                    }
                    if (!bVar.a().B().equals("html")) {
                        bVar.p(this);
                    }
                }
            }
            return true;
        }
    },
    AfterFrameset {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (HtmlTreeBuilderState.isWhitespace(token)) {
                bVar.N(token.a());
                return true;
            }
            if (token.h()) {
                bVar.O(token.b());
                return true;
            }
            if (token.i()) {
                bVar.p(this);
                return false;
            }
            if (token.l() && token.e().D().equals("html")) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.k() && token.d().D().equals("html")) {
                bVar.C0(HtmlTreeBuilderState.AfterAfterFrameset);
                return true;
            }
            if (token.l() && token.e().D().equals("noframes")) {
                return bVar.n0(token, HtmlTreeBuilderState.InHead);
            }
            if (token.j()) {
                return true;
            }
            bVar.p(this);
            return false;
        }
    },
    AfterAfterBody {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.h()) {
                bVar.O(token.b());
                return true;
            }
            if (token.i() || HtmlTreeBuilderState.isWhitespace(token) || (token.l() && token.e().D().equals("html"))) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.j()) {
                return true;
            }
            bVar.p(this);
            bVar.C0(HtmlTreeBuilderState.InBody);
            return bVar.e(token);
        }
    },
    AfterAfterFrameset {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            if (token.h()) {
                bVar.O(token.b());
                return true;
            }
            if (token.i() || HtmlTreeBuilderState.isWhitespace(token) || (token.l() && token.e().D().equals("html"))) {
                return bVar.n0(token, HtmlTreeBuilderState.InBody);
            }
            if (token.j()) {
                return true;
            }
            if (token.l() && token.e().D().equals("noframes")) {
                return bVar.n0(token, HtmlTreeBuilderState.InHead);
            }
            bVar.p(this);
            return false;
        }
    },
    ForeignContent {
        @Override
        boolean process(Token token, org.jsoup.parser.b bVar) {
            return true;
        }
    };

    private static String nullString = String.valueOf((char) 0);

    static class a {

        static final int[] f68608a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f68608a = iArr;
            try {
                iArr[Token.TokenType.Comment.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68608a[Token.TokenType.Doctype.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68608a[Token.TokenType.StartTag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f68608a[Token.TokenType.EndTag.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f68608a[Token.TokenType.Character.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f68608a[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    static final class b {

        static final String[] f68609a = {"base", "basefont", "bgsound", "command", "link", "meta", "noframes", "script", TtmlNode.TAG_STYLE, CampaignEx.JSON_KEY_TITLE};

        static final String[] f68610b = {PlaceTypes.ADDRESS, "article", "aside", "blockquote", TtmlNode.CENTER, "details", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, TtmlNode.TAG_DIV, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "menu", "nav", "ol", TtmlNode.TAG_P, "section", "summary", "ul"};

        static final String[] f68611c = {"h1", "h2", "h3", "h4", "h5", "h6"};

        static final String[] f68612d = {"listing", OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE};

        static final String[] f68613e = {PlaceTypes.ADDRESS, TtmlNode.TAG_DIV, TtmlNode.TAG_P};

        static final String[] f68614f = {"dd", "dt"};

        static final String[] f68615g = {DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "big", "code", "em", "font", "i", "s", "small", "strike", "strong", TtmlNode.TAG_TT, TmcStartParams.KEY_URL_SHORT};

        static final String[] f68616h = {"applet", "marquee", "object"};

        static final String[] f68617i = {"area", TtmlNode.TAG_BR, "embed", "img", "keygen", "wbr"};

        static final String[] f68618j = {"param", EventConstants.KEY_SOURCE, "track"};

        static final String[] f68619k = {EventConstants.KEY_ACTION, "name", "prompt"};

        static final String[] f68620l = {"optgroup", "option"};

        static final String[] f68621m = {"rp", "rt"};

        static final String[] f68622n = {"caption", "col", "colgroup", "frame", TtmlNode.TAG_HEAD, "tbody", "td", "tfoot", "th", "thead", "tr"};

        static final String[] f68623o = {PlaceTypes.ADDRESS, "article", "aside", "blockquote", "button", TtmlNode.CENTER, "details", OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_DIR, TtmlNode.TAG_DIV, "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "menu", "nav", "ol", OfflineConstantsKt.OFFLINE_DOWNLOAD_MODE_PRE, "section", "summary", "ul"};

        static final String[] f68624p = {"a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", TtmlNode.TAG_TT, TmcStartParams.KEY_URL_SHORT};

        static final String[] f68625q = {"table", "tbody", "tfoot", "thead", "tr"};
    }

    public static void handleRawtext(Token.h hVar, org.jsoup.parser.b bVar) {
        bVar.f68717b.u(TokeniserState.Rawtext);
        bVar.d0();
        bVar.C0(Text);
        bVar.L(hVar);
    }

    public static void handleRcData(Token.h hVar, org.jsoup.parser.b bVar) {
        bVar.f68717b.u(TokeniserState.Rcdata);
        bVar.d0();
        bVar.C0(Text);
        bVar.L(hVar);
    }

    public static boolean isWhitespace(Token token) {
        if (token.g()) {
            return isWhitespace(token.a().q());
        }
        return false;
    }

    abstract boolean process(Token token, org.jsoup.parser.b bVar);

    public static boolean isWhitespace(String str) {
        return org.jsoup.helper.c.e(str);
    }
}
