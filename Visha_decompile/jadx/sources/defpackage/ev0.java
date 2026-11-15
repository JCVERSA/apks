package defpackage;

import org.apache.commons.io.IOUtils;

public abstract class ev0 implements he8 {

    public static final class a extends e {
        public static final ev0 c = new a();

        public a() {
            super("CharMatcher.ascii()");
        }

        @Override
        public boolean g(char c2) {
            return c2 <= 127;
        }
    }

    public static abstract class b extends ev0 {
        @Override
        public boolean apply(Object obj) {
            return super.b((Character) obj);
        }
    }

    public static final class c extends b {
        public final char b;
        public final char c;

        public c(char c, char c2) {
            xd8.d(c2 >= c);
            this.b = c;
            this.c = c2;
        }

        @Override
        public boolean g(char c) {
            return this.b <= c && c <= this.c;
        }

        public String toString() {
            return "CharMatcher.inRange('" + ev0.j(this.b) + "', '" + ev0.j(this.c) + "')";
        }
    }

    public static final class d extends b {
        public final char b;

        public d(char c) {
            this.b = c;
        }

        @Override
        public boolean g(char c) {
            return c == this.b;
        }

        public String toString() {
            return "CharMatcher.is('" + ev0.j(this.b) + "')";
        }
    }

    public static abstract class e extends b {
        public final String b;

        public e(String str) {
            this.b = (String) xd8.o(str);
        }

        public final String toString() {
            return this.b;
        }
    }

    public static final class f extends e {
        public static final ev0 c = new f();

        public f() {
            super("CharMatcher.none()");
        }

        @Override
        public int e(CharSequence charSequence, int i) {
            xd8.r(i, charSequence.length());
            return -1;
        }

        @Override
        public boolean g(char c2) {
            return false;
        }

        @Override
        public boolean h(CharSequence charSequence) {
            return charSequence.length() == 0;
        }
    }

    public static final class g extends e {
        public static final int c = Integer.numberOfLeadingZeros(31);
        public static final ev0 d = new g();

        public g() {
            super("CharMatcher.whitespace()");
        }

        @Override
        public boolean g(char c2) {
            return "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001  \f\u2009\u3000\u2004\u3000\u3000\u2028\n \u3000".charAt((48906 * c2) >>> c) == c2;
        }
    }

    public static ev0 c() {
        return a.c;
    }

    public static ev0 d(char c2, char c3) {
        return new c(c2, c3);
    }

    public static ev0 f(char c2) {
        return new d(c2);
    }

    public static ev0 i() {
        return f.c;
    }

    public static String j(char c2) {
        char[] cArr = new char[6];
        cArr[0] = IOUtils.DIR_SEPARATOR_WINDOWS;
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        return String.copyValueOf(cArr);
    }

    public static ev0 k() {
        return g.d;
    }

    public boolean b(Character ch) {
        return g(ch.charValue());
    }

    public int e(CharSequence charSequence, int i) {
        int length = charSequence.length();
        xd8.r(i, length);
        while (i < length) {
            if (g(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean g(char c2);

    public boolean h(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!g(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }
}
