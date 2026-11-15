package org.jsoup.parser;

import defpackage.dnb;
import defpackage.v17;
import okio.Utf8;

public abstract class Token {
    public TokenType a;

    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    public static final class b extends c {
        public b(String str) {
            p(str);
        }

        @Override
        public String toString() {
            return "<![CDATA[" + q() + "]]>";
        }
    }

    public static class c extends Token {
        public String b;

        public c() {
            super();
            this.a = TokenType.Character;
        }

        @Override
        public Token m() {
            this.b = null;
            return this;
        }

        public c p(String str) {
            this.b = str;
            return this;
        }

        public String q() {
            return this.b;
        }

        public String toString() {
            return q();
        }
    }

    public static final class d extends Token {
        public final StringBuilder b;
        public String c;
        public boolean d;

        public d() {
            super();
            this.b = new StringBuilder();
            this.d = false;
            this.a = TokenType.Comment;
        }

        @Override
        public Token m() {
            Token.n(this.b);
            this.c = null;
            this.d = false;
            return this;
        }

        public final d p(char c) {
            r();
            this.b.append(c);
            return this;
        }

        public final d q(String str) {
            r();
            if (this.b.length() == 0) {
                this.c = str;
            } else {
                this.b.append(str);
            }
            return this;
        }

        public final void r() {
            String str = this.c;
            if (str != null) {
                this.b.append(str);
                this.c = null;
            }
        }

        public String s() {
            String str = this.c;
            return str != null ? str : this.b.toString();
        }

        public String toString() {
            return "<!--" + s() + "-->";
        }
    }

    public static final class e extends Token {
        public final StringBuilder b;
        public String c;
        public final StringBuilder d;
        public final StringBuilder e;
        public boolean f;

        public e() {
            super();
            this.b = new StringBuilder();
            this.c = null;
            this.d = new StringBuilder();
            this.e = new StringBuilder();
            this.f = false;
            this.a = TokenType.Doctype;
        }

        @Override
        public Token m() {
            Token.n(this.b);
            this.c = null;
            Token.n(this.d);
            Token.n(this.e);
            this.f = false;
            return this;
        }

        public String p() {
            return this.b.toString();
        }

        public String q() {
            return this.c;
        }

        public String r() {
            return this.d.toString();
        }

        public String s() {
            return this.e.toString();
        }

        public boolean t() {
            return this.f;
        }
    }

    public static final class f extends Token {
        public f() {
            super();
            this.a = TokenType.EOF;
        }

        @Override
        public Token m() {
            return this;
        }

        public String toString() {
            return "";
        }
    }

    public static final class g extends i {
        public g() {
            this.a = TokenType.EndTag;
        }

        public String toString() {
            return "</" + I() + ">";
        }
    }

    public static final class h extends i {
        public h() {
            this.a = TokenType.StartTag;
        }

        @Override
        public i m() {
            super.m();
            this.l = null;
            return this;
        }

        public h J(String str, org.jsoup.nodes.b bVar) {
            this.b = str;
            this.l = bVar;
            this.c = v17.a(str);
            return this;
        }

        public String toString() {
            if (!A() || this.l.size() <= 0) {
                return "<" + I() + ">";
            }
            return "<" + I() + " " + this.l.toString() + ">";
        }
    }

    public static abstract class i extends Token {
        public String b;
        public String c;
        public final StringBuilder d;
        public String e;
        public boolean f;
        public final StringBuilder g;
        public String h;
        public boolean i;
        public boolean j;
        public boolean k;
        public org.jsoup.nodes.b l;

        public i() {
            super();
            this.d = new StringBuilder();
            this.f = false;
            this.g = new StringBuilder();
            this.i = false;
            this.j = false;
            this.k = false;
        }

        public final boolean A() {
            return this.l != null;
        }

        public final boolean B() {
            return this.k;
        }

        public final String C() {
            String str = this.b;
            dnb.b(str == null || str.length() == 0);
            return this.b;
        }

        public final i D(String str) {
            this.b = str;
            this.c = v17.a(str);
            return this;
        }

        public final void E() {
            String string;
            if (this.l == null) {
                this.l = new org.jsoup.nodes.b();
            }
            if (this.f && this.l.size() < 512) {
                String strTrim = (this.d.length() > 0 ? this.d.toString() : this.e).trim();
                if (strTrim.length() > 0) {
                    if (this.i) {
                        string = this.g.length() > 0 ? this.g.toString() : this.h;
                    } else {
                        string = this.j ? "" : null;
                    }
                    this.l.j(strTrim, string);
                }
            }
            Token.n(this.d);
            this.e = null;
            this.f = false;
            Token.n(this.g);
            this.h = null;
            this.i = false;
            this.j = false;
        }

        public final String F() {
            return this.c;
        }

        @Override
        public i m() {
            this.b = null;
            this.c = null;
            Token.n(this.d);
            this.e = null;
            this.f = false;
            Token.n(this.g);
            this.h = null;
            this.j = false;
            this.i = false;
            this.k = false;
            this.l = null;
            return this;
        }

        public final void H() {
            this.j = true;
        }

        public final String I() {
            String str = this.b;
            return str != null ? str : "[unset]";
        }

        public final void p(char c) {
            w();
            this.d.append(c);
        }

        public final void q(String str) {
            String strReplace = str.replace((char) 0, Utf8.REPLACEMENT_CHARACTER);
            w();
            if (this.d.length() == 0) {
                this.e = strReplace;
            } else {
                this.d.append(strReplace);
            }
        }

        public final void r(char c) {
            x();
            this.g.append(c);
        }

        public final void s(String str) {
            x();
            if (this.g.length() == 0) {
                this.h = str;
            } else {
                this.g.append(str);
            }
        }

        public final void t(int[] iArr) {
            x();
            for (int i : iArr) {
                this.g.appendCodePoint(i);
            }
        }

        public final void u(char c) {
            v(String.valueOf(c));
        }

        public final void v(String str) {
            String strReplace = str.replace((char) 0, Utf8.REPLACEMENT_CHARACTER);
            String str2 = this.b;
            if (str2 != null) {
                strReplace = str2.concat(strReplace);
            }
            this.b = strReplace;
            this.c = v17.a(strReplace);
        }

        public final void w() {
            this.f = true;
            String str = this.e;
            if (str != null) {
                this.d.append(str);
                this.e = null;
            }
        }

        public final void x() {
            this.i = true;
            String str = this.h;
            if (str != null) {
                this.g.append(str);
                this.h = null;
            }
        }

        public final void y() {
            if (this.f) {
                E();
            }
        }

        public final boolean z(String str) {
            org.jsoup.nodes.b bVar = this.l;
            return bVar != null && bVar.s(str);
        }
    }

    public static void n(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    public final c a() {
        return (c) this;
    }

    public final d b() {
        return (d) this;
    }

    public final e c() {
        return (e) this;
    }

    public final g d() {
        return (g) this;
    }

    public final h e() {
        return (h) this;
    }

    public final boolean f() {
        return this instanceof b;
    }

    public final boolean g() {
        return this.a == TokenType.Character;
    }

    public final boolean h() {
        return this.a == TokenType.Comment;
    }

    public final boolean i() {
        return this.a == TokenType.Doctype;
    }

    public final boolean j() {
        return this.a == TokenType.EOF;
    }

    public final boolean k() {
        return this.a == TokenType.EndTag;
    }

    public final boolean l() {
        return this.a == TokenType.StartTag;
    }

    public abstract Token m();

    public String o() {
        return getClass().getSimpleName();
    }

    public Token() {
    }
}
