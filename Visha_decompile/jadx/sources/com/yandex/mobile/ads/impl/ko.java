package com.yandex.mobile.ads.impl;

import org.apache.commons.io.IOUtils;

public abstract class ko implements wj1<Character> {

    public static abstract class a extends ko {
        @Override
        @Deprecated
        public final boolean apply(Character ch) {
            return a(ch.charValue());
        }
    }

    public static final class b extends a {
        private final char b;

        public b(char c) {
            this.b = c;
        }

        @Override
        public final boolean a(char c) {
            return c == this.b;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CharMatcher.is('");
            char c = this.b;
            char[] cArr = new char[6];
            cArr[0] = IOUtils.DIR_SEPARATOR_WINDOWS;
            cArr[1] = 'u';
            cArr[2] = 0;
            cArr[3] = 0;
            cArr[4] = 0;
            cArr[5] = 0;
            for (int i = 0; i < 4; i++) {
                cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
                c = (char) (c >> 4);
            }
            sb.append(String.copyValueOf(cArr));
            sb.append("')");
            return sb.toString();
        }
    }

    public static abstract class c extends a {
        private final String b = (String) vj1.a("CharMatcher.none()");

        public final String toString() {
            return this.b;
        }
    }

    public static final class d extends c {
        static final d c = new d();

        private d() {
        }

        @Override
        public final boolean a(char c2) {
            return false;
        }

        @Override
        public final int a(CharSequence charSequence, int i) {
            vj1.b(i, charSequence.length());
            return -1;
        }
    }

    public int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        vj1.b(i, length);
        while (i < length) {
            if (a(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean a(char c2);
}
