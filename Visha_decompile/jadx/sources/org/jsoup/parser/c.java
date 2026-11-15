package org.jsoup.parser;

import defpackage.dnb;
import defpackage.dx7;
import defpackage.nv0;
import defpackage.sw7;
import defpackage.tw7;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public abstract class c {
    public dx7 a;
    public nv0 b;
    public b c;
    public Document d;
    public ArrayList e;
    public String f;
    public Token g;
    public tw7 h;
    public Token.h i = new Token.h();
    public Token.g j = new Token.g();

    public Element a() {
        int size = this.e.size();
        return size > 0 ? (Element) this.e.get(size - 1) : this.d;
    }

    public boolean b(String str) {
        Element elementA;
        return (this.e.size() == 0 || (elementA = a()) == null || !elementA.V0().equals(str)) ? false : true;
    }

    public abstract tw7 c();

    public void d(String str) {
        ParseErrorList parseErrorListA = this.a.a();
        if (parseErrorListA.canAddError()) {
            parseErrorListA.add(new sw7(this.b.J(), str));
        }
    }

    public void e(Reader reader, String str, dx7 dx7Var) {
        dnb.j(reader, "String input must not be null");
        dnb.j(str, "BaseURI must not be null");
        dnb.i(dx7Var);
        Document document = new Document(str);
        this.d = document;
        document.z1(dx7Var);
        this.a = dx7Var;
        this.h = dx7Var.g();
        this.b = new nv0(reader);
        this.g = null;
        this.c = new b(this.b, dx7Var.a());
        this.e = new ArrayList(32);
        this.f = str;
    }

    public abstract boolean f(String str);

    public Document g(Reader reader, String str, dx7 dx7Var) {
        e(reader, str, dx7Var);
        m();
        this.b.d();
        this.b = null;
        this.c = null;
        this.e = null;
        return this.d;
    }

    public abstract List h(String str, Element element, String str2, dx7 dx7Var);

    public abstract boolean i(Token token);

    public boolean j(String str) {
        Token token = this.g;
        Token.g gVar = this.j;
        return token == gVar ? i(new Token.g().D(str)) : i(gVar.m().D(str));
    }

    public boolean k(String str) {
        Token.h hVar = this.i;
        return this.g == hVar ? i(new Token.h().D(str)) : i(hVar.m().D(str));
    }

    public boolean l(String str, org.jsoup.nodes.b bVar) {
        Token.h hVar = this.i;
        if (this.g == hVar) {
            return i(new Token.h().J(str, bVar));
        }
        hVar.m();
        hVar.J(str, bVar);
        return i(hVar);
    }

    public void m() {
        Token tokenV;
        b bVar = this.c;
        Token.TokenType tokenType = Token.TokenType.EOF;
        do {
            tokenV = bVar.v();
            i(tokenV);
            tokenV.m();
        } while (tokenV.a != tokenType);
    }
}
