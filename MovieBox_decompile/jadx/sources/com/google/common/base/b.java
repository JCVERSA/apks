package com.google.common.base;

public abstract class b implements n {

    private static final class a extends e {

        static final b f29393b = new a();

        a() {
            super("CharMatcher.ascii()");
        }

        @Override
        public boolean g(char c10) {
            return c10 <= 127;
        }
    }

    static abstract class AbstractC0377b extends b {
        AbstractC0377b() {
        }

        @Override
        public boolean apply(Object obj) {
            return super.b((Character) obj);
        }
    }

    private static final class c extends AbstractC0377b {

        private final char f29394a;

        private final char f29395b;

        c(char c10, char c11) {
            m.d(c11 >= c10);
            this.f29394a = c10;
            this.f29395b = c11;
        }

        @Override
        public boolean g(char c10) {
            return this.f29394a <= c10 && c10 <= this.f29395b;
        }

        public String toString() {
            return "CharMatcher.inRange('" + b.j(this.f29394a) + "', '" + b.j(this.f29395b) + "')";
        }
    }

    private static final class d extends AbstractC0377b {

        private final char f29396a;

        d(char c10) {
            this.f29396a = c10;
        }

        @Override
        public boolean g(char c10) {
            return c10 == this.f29396a;
        }

        public String toString() {
            return "CharMatcher.is('" + b.j(this.f29396a) + "')";
        }
    }

    static abstract class e extends AbstractC0377b {

        private final String f29397a;

        e(String str) {
            this.f29397a = (String) m.o(str);
        }

        public final String toString() {
            return this.f29397a;
        }
    }

    private static final class f extends e {

        static final b f29398b = new f();

        private f() {
            super("CharMatcher.none()");
        }

        @Override
        public int e(CharSequence charSequence, int i10) {
            m.r(i10, charSequence.length());
            return -1;
        }

        @Override
        public boolean g(char c10) {
            return false;
        }

        @Override
        public boolean h(CharSequence charSequence) {
            return charSequence.length() == 0;
        }
    }

    static final class g extends e {

        static final int f29399b = Integer.numberOfLeadingZeros(31);

        static final b f29400c = new g();

        g() {
            super("CharMatcher.whitespace()");
        }

        @Override
        public boolean g(char c10) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c10) >>> f29399b) == c10;
        }
    }

    protected b() {
    }

    public static b c() {
        return a.f29393b;
    }

    public static b d(char c10, char c11) {
        return new c(c10, c11);
    }

    public static b f(char c10) {
        return new d(c10);
    }

    public static b i() {
        return f.f29398b;
    }

    public static String j(char c10) {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            cArr[5 - i10] = "0123456789ABCDEF".charAt(c10 & 15);
            c10 = (char) (c10 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static b k() {
        return g.f29400c;
    }

    public boolean b(Character ch2) {
        return g(ch2.charValue());
    }

    public int e(CharSequence charSequence, int i10) {
        int length = charSequence.length();
        m.r(i10, length);
        while (i10 < length) {
            if (g(charSequence.charAt(i10))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public abstract boolean g(char c10);

    public boolean h(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!g(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }
}
