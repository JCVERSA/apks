package org.jsoup.parser;

abstract class Token {

    TokenType f68626a;

    public enum TokenType {
        Doctype,
        StartTag,
        EndTag,
        Comment,
        Character,
        EOF
    }

    static final class b extends c {
        b(String str) {
            p(str);
        }

        @Override
        public String toString() {
            return "<![CDATA[" + q() + "]]>";
        }
    }

    static class c extends Token {

        private String f68627b;

        c() {
            super();
            this.f68626a = TokenType.Character;
        }

        @Override
        Token m() {
            this.f68627b = null;
            return this;
        }

        c p(String str) {
            this.f68627b = str;
            return this;
        }

        String q() {
            return this.f68627b;
        }

        public String toString() {
            return q();
        }
    }

    static final class d extends Token {

        final StringBuilder f68628b;

        boolean f68629c;

        d() {
            super();
            this.f68628b = new StringBuilder();
            this.f68629c = false;
            this.f68626a = TokenType.Comment;
        }

        @Override
        Token m() {
            Token.n(this.f68628b);
            this.f68629c = false;
            return this;
        }

        String p() {
            return this.f68628b.toString();
        }

        public String toString() {
            return "<!--" + p() + "-->";
        }
    }

    static final class e extends Token {

        final StringBuilder f68630b;

        String f68631c;

        final StringBuilder f68632d;

        final StringBuilder f68633e;

        boolean f68634f;

        e() {
            super();
            this.f68630b = new StringBuilder();
            this.f68631c = null;
            this.f68632d = new StringBuilder();
            this.f68633e = new StringBuilder();
            this.f68634f = false;
            this.f68626a = TokenType.Doctype;
        }

        @Override
        Token m() {
            Token.n(this.f68630b);
            this.f68631c = null;
            Token.n(this.f68632d);
            Token.n(this.f68633e);
            this.f68634f = false;
            return this;
        }

        String p() {
            return this.f68630b.toString();
        }

        String q() {
            return this.f68631c;
        }

        String r() {
            return this.f68632d.toString();
        }

        public String s() {
            return this.f68633e.toString();
        }

        public boolean t() {
            return this.f68634f;
        }
    }

    static final class f extends Token {
        f() {
            super();
            this.f68626a = TokenType.EOF;
        }

        @Override
        Token m() {
            return this;
        }
    }

    static final class g extends i {
        g() {
            this.f68626a = TokenType.EndTag;
        }

        public String toString() {
            return "</" + A() + ">";
        }
    }

    static final class h extends i {
        h() {
            this.f68643j = new org.jsoup.nodes.b();
            this.f68626a = TokenType.StartTag;
        }

        @Override
        public i m() {
            super.m();
            this.f68643j = new org.jsoup.nodes.b();
            return this;
        }

        h G(String str, org.jsoup.nodes.b bVar) {
            this.f68635b = str;
            this.f68643j = bVar;
            this.f68636c = sz.b.a(str);
            return this;
        }

        public String toString() {
            org.jsoup.nodes.b bVar = this.f68643j;
            if (bVar == null || bVar.size() <= 0) {
                return "<" + A() + ">";
            }
            return "<" + A() + " " + this.f68643j.toString() + ">";
        }
    }

    static abstract class i extends Token {

        protected String f68635b;

        protected String f68636c;

        private String f68637d;

        private StringBuilder f68638e;

        private String f68639f;

        private boolean f68640g;

        private boolean f68641h;

        boolean f68642i;

        org.jsoup.nodes.b f68643j;

        i() {
            super();
            this.f68638e = new StringBuilder();
            this.f68640g = false;
            this.f68641h = false;
            this.f68642i = false;
        }

        private void w() {
            this.f68641h = true;
            String str = this.f68639f;
            if (str != null) {
                this.f68638e.append(str);
                this.f68639f = null;
            }
        }

        final String A() {
            String str = this.f68635b;
            org.jsoup.helper.d.b(str == null || str.length() == 0);
            return this.f68635b;
        }

        final i B(String str) {
            this.f68635b = str;
            this.f68636c = sz.b.a(str);
            return this;
        }

        final void C() {
            String string;
            if (this.f68643j == null) {
                this.f68643j = new org.jsoup.nodes.b();
            }
            String str = this.f68637d;
            if (str != null) {
                String strTrim = str.trim();
                this.f68637d = strTrim;
                if (strTrim.length() > 0) {
                    if (this.f68641h) {
                        string = this.f68638e.length() > 0 ? this.f68638e.toString() : this.f68639f;
                    } else {
                        string = this.f68640g ? "" : null;
                    }
                    this.f68643j.w(this.f68637d, string);
                }
            }
            this.f68637d = null;
            this.f68640g = false;
            this.f68641h = false;
            Token.n(this.f68638e);
            this.f68639f = null;
        }

        final String D() {
            return this.f68636c;
        }

        @Override
        public i m() {
            this.f68635b = null;
            this.f68636c = null;
            this.f68637d = null;
            Token.n(this.f68638e);
            this.f68639f = null;
            this.f68640g = false;
            this.f68641h = false;
            this.f68642i = false;
            this.f68643j = null;
            return this;
        }

        final void F() {
            this.f68640g = true;
        }

        final void p(char c10) {
            q(String.valueOf(c10));
        }

        final void q(String str) {
            String str2 = this.f68637d;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f68637d = str;
        }

        final void r(char c10) {
            w();
            this.f68638e.append(c10);
        }

        final void s(String str) {
            w();
            if (this.f68638e.length() == 0) {
                this.f68639f = str;
            } else {
                this.f68638e.append(str);
            }
        }

        final void t(int[] iArr) {
            w();
            for (int i10 : iArr) {
                this.f68638e.appendCodePoint(i10);
            }
        }

        final void u(char c10) {
            v(String.valueOf(c10));
        }

        final void v(String str) {
            String str2 = this.f68635b;
            if (str2 != null) {
                str = str2.concat(str);
            }
            this.f68635b = str;
            this.f68636c = sz.b.a(str);
        }

        final void x() {
            if (this.f68637d != null) {
                C();
            }
        }

        final org.jsoup.nodes.b y() {
            return this.f68643j;
        }

        final boolean z() {
            return this.f68642i;
        }
    }

    static void n(StringBuilder sb2) {
        if (sb2 != null) {
            sb2.delete(0, sb2.length());
        }
    }

    final c a() {
        return (c) this;
    }

    final d b() {
        return (d) this;
    }

    final e c() {
        return (e) this;
    }

    final g d() {
        return (g) this;
    }

    final h e() {
        return (h) this;
    }

    final boolean f() {
        return this instanceof b;
    }

    final boolean g() {
        return this.f68626a == TokenType.Character;
    }

    final boolean h() {
        return this.f68626a == TokenType.Comment;
    }

    final boolean i() {
        return this.f68626a == TokenType.Doctype;
    }

    final boolean j() {
        return this.f68626a == TokenType.EOF;
    }

    final boolean k() {
        return this.f68626a == TokenType.EndTag;
    }

    final boolean l() {
        return this.f68626a == TokenType.StartTag;
    }

    abstract Token m();

    String o() {
        return getClass().getSimpleName();
    }

    private Token() {
    }
}
