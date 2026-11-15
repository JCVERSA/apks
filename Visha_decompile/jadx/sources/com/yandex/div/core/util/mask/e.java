package com.yandex.div.core.util.mask;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class e {
    public static final a d = new a(null);
    public final int a;
    public final int b;
    public final int c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final e a(String str, String str2) {
            y45.j(str, TtmlNode.LEFT);
            y45.j(str2, TtmlNode.RIGHT);
            if (str.length() > str2.length()) {
                e eVarA = a(str2, str);
                return new e(eVarA.c(), eVarA.b(), eVarA.a());
            }
            int length = str2.length() - 1;
            int length2 = str2.length() - str.length();
            int i = 0;
            while (i < length && i < str.length() && str.charAt(i) == str2.charAt(i)) {
                i++;
            }
            while (true) {
                int i2 = length - length2;
                if (i2 < i || str.charAt(i2) != str2.charAt(length)) {
                    break;
                }
                length--;
            }
            int i3 = (length + 1) - i;
            return new e(i, i3, i3 - length2);
        }

        public a() {
        }
    }

    public e(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public final int a() {
        return this.b;
    }

    public final int b() {
        return this.c;
    }

    public final int c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.a == eVar.a && this.b == eVar.b && this.c == eVar.c;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Integer.hashCode(this.c);
    }

    public String toString() {
        return "TextDiff(start=" + this.a + ", added=" + this.b + ", removed=" + this.c + ')';
    }
}
