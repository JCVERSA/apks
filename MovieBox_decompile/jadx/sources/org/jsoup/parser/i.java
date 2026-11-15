package org.jsoup.parser;

import java.io.Reader;
import java.util.ArrayList;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

abstract class i {

    a f68716a;

    h f68717b;

    protected Document f68718c;

    protected ArrayList f68719d;

    protected String f68720e;

    protected Token f68721f;

    protected ParseErrorList f68722g;

    protected d f68723h;

    private Token.h f68724i = new Token.h();

    private Token.g f68725j = new Token.g();

    i() {
    }

    protected Element a() {
        int size = this.f68719d.size();
        if (size > 0) {
            return (Element) this.f68719d.get(size - 1);
        }
        return null;
    }

    abstract d b();

    protected void c(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        org.jsoup.helper.d.k(reader, "String input must not be null");
        org.jsoup.helper.d.k(str, "BaseURI must not be null");
        this.f68718c = new Document(str);
        this.f68723h = dVar;
        this.f68716a = new a(reader);
        this.f68722g = parseErrorList;
        this.f68721f = null;
        this.f68717b = new h(this.f68716a, parseErrorList);
        this.f68719d = new ArrayList(32);
        this.f68720e = str;
    }

    Document d(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        c(reader, str, parseErrorList, dVar);
        i();
        return this.f68718c;
    }

    protected abstract boolean e(Token token);

    protected boolean f(String str) {
        Token token = this.f68721f;
        Token.g gVar = this.f68725j;
        return token == gVar ? e(new Token.g().B(str)) : e(gVar.m().B(str));
    }

    protected boolean g(String str) {
        Token token = this.f68721f;
        Token.h hVar = this.f68724i;
        return token == hVar ? e(new Token.h().B(str)) : e(hVar.m().B(str));
    }

    public boolean h(String str, org.jsoup.nodes.b bVar) {
        Token token = this.f68721f;
        Token.h hVar = this.f68724i;
        if (token == hVar) {
            return e(new Token.h().G(str, bVar));
        }
        hVar.m();
        this.f68724i.G(str, bVar);
        return e(this.f68724i);
    }

    protected void i() {
        Token tokenT;
        do {
            tokenT = this.f68717b.t();
            e(tokenT);
            tokenT.m();
        } while (tokenT.f68626a != Token.TokenType.EOF);
    }
}
