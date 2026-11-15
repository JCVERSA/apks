package org.jsoup.parser;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.Reader;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.l;
import org.jsoup.nodes.m;

public class j extends i {

    static class a {

        static final int[] f68726a;

        static {
            int[] iArr = new int[Token.TokenType.values().length];
            f68726a = iArr;
            try {
                iArr[Token.TokenType.StartTag.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68726a[Token.TokenType.EndTag.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68726a[Token.TokenType.Comment.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f68726a[Token.TokenType.Character.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f68726a[Token.TokenType.Doctype.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f68726a[Token.TokenType.EOF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private void n(org.jsoup.nodes.j jVar) {
        a().g0(jVar);
    }

    private void o(Token.g gVar) {
        Element element;
        String strB = this.f68723h.b(gVar.f68635b);
        int size = this.f68719d.size() - 1;
        while (true) {
            if (size < 0) {
                element = null;
                break;
            }
            element = (Element) this.f68719d.get(size);
            if (element.B().equals(strB)) {
                break;
            } else {
                size--;
            }
        }
        if (element == null) {
            return;
        }
        for (int size2 = this.f68719d.size() - 1; size2 >= 0; size2--) {
            Element element2 = (Element) this.f68719d.get(size2);
            this.f68719d.remove(size2);
            if (element2 == element) {
                return;
            }
        }
    }

    @Override
    d b() {
        return d.f68671d;
    }

    @Override
    protected void c(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        super.c(reader, str, parseErrorList, dVar);
        this.f68719d.add(this.f68718c);
        this.f68718c.g1().o(Document.OutputSettings.Syntax.xml);
    }

    @Override
    protected boolean e(Token token) {
        switch (a.f68726a[token.f68626a.ordinal()]) {
            case 1:
                j(token.e());
                break;
            case 2:
                o(token.d());
                break;
            case 3:
                l(token.b());
                break;
            case 4:
                k(token.a());
                break;
            case 5:
                m(token.c());
                break;
            case 6:
                break;
            default:
                org.jsoup.helper.d.a("Unexpected token type: " + token.f68626a);
                break;
        }
        return true;
    }

    Element j(Token.h hVar) {
        f fVarL = f.l(hVar.A(), this.f68723h);
        Element element = new Element(fVarL, this.f68720e, this.f68723h.a(hVar.f68643j));
        n(element);
        if (!hVar.z()) {
            this.f68719d.add(element);
        } else if (!fVarL.f()) {
            fVarL.j();
        }
        return element;
    }

    void k(Token.c cVar) {
        String strQ = cVar.q();
        n(cVar.f() ? new org.jsoup.nodes.d(strQ) : new l(strQ));
    }

    void l(Token.d dVar) {
        org.jsoup.nodes.e eVar = new org.jsoup.nodes.e(dVar.p());
        org.jsoup.nodes.j jVar = eVar;
        if (dVar.f68629c) {
            String strC0 = eVar.c0();
            if (strC0.length() > 1 && (strC0.startsWith("!") || strC0.startsWith(UrlUtils.QUESTION_MARK))) {
                jVar = eVar;
                jVar = eVar;
                jVar = eVar;
                Document documentC = rz.a.c("<" + strC0.substring(1, strC0.length() - 1) + ">", this.f68720e, e.g());
                jVar = eVar;
                if (documentC.n() > 0) {
                    Element elementM0 = documentC.m0(0);
                    org.jsoup.nodes.j mVar = new m(this.f68723h.b(elementM0.U0()), strC0.startsWith("!"));
                    mVar.i().e(elementM0.i());
                    jVar = mVar;
                }
            }
        }
        jVar = eVar;
        jVar = eVar;
        jVar = eVar;
        n(jVar);
    }

    void m(Token.e eVar) {
        org.jsoup.nodes.g gVar = new org.jsoup.nodes.g(this.f68723h.b(eVar.p()), eVar.r(), eVar.s());
        gVar.d0(eVar.q());
        n(gVar);
    }
}
