package com.yandex.div.internal;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.xi;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0000\u0018\u0000 \u000e2\u00060\u0001j\u0002`\u0002:\u0002\u000f\u0010B!\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0005\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0005\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0006\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0006\u0010\t\u001a\u0004\b\f\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/yandex/div/internal/ComparisonFailure;", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "", "message", "expected", "actual", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Ljava/lang/String;", "getExpected", "()Ljava/lang/String;", "getActual", "getMessage", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "assertion_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ComparisonFailure extends AssertionError {
    private static final a Companion = new a(null);
    private static final int MAX_CONTEXT_LENGTH = 20;
    private static final long serialVersionUID = 1;
    private final String actual;
    private final String expected;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b {
        public static final a f = new a(null);
        public final int a;
        public final String b;
        public final String c;
        public int d;
        public int e;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public b(int i, String str, String str2) {
            this.a = i;
            this.b = str;
            this.c = str2;
        }

        public final boolean a() {
            return y45.e(this.b, this.c);
        }

        public final String b(String str) {
            if (this.b == null || this.c == null || a()) {
                String strM = xi.m(str, this.b, this.c);
                y45.i(strM, "format(message, expected, actual)");
                return strM;
            }
            f();
            g();
            String strM2 = xi.m(str, c(this.b), c(this.c));
            y45.i(strM2, "format(message, expected, actual)");
            return strM2;
        }

        public final String c(String str) {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            String strSubstring = str.substring(this.d, (str.length() - this.e) + 1);
            y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            sb.append(']');
            String string = sb.toString();
            if (this.d > 0) {
                string = d() + string;
            }
            if (this.e <= 0) {
                return string;
            }
            return string + e();
        }

        public final String d() {
            String str = this.d > this.a ? "..." : "";
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            String str2 = this.b;
            y45.g(str2);
            String strSubstring = str2.substring(Math.max(0, this.d - this.a), this.d);
            y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            return sb.toString();
        }

        public final String e() {
            String str = this.b;
            y45.g(str);
            int iMin = Math.min((str.length() - this.e) + 1 + this.a, this.b.length());
            String str2 = (this.b.length() - this.e) + 1 < this.b.length() - this.a ? "..." : "";
            StringBuilder sb = new StringBuilder();
            String str3 = this.b;
            String strSubstring = str3.substring((str3.length() - this.e) + 1, iMin);
            y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            sb.append(str2);
            return sb.toString();
        }

        public final void f() {
            this.d = 0;
            String str = this.b;
            y45.g(str);
            int length = str.length();
            String str2 = this.c;
            y45.g(str2);
            int iMin = Math.min(length, str2.length());
            while (true) {
                int i = this.d;
                if (i >= iMin || this.b.charAt(i) != this.c.charAt(this.d)) {
                    return;
                } else {
                    this.d++;
                }
            }
        }

        public final void g() {
            String str = this.b;
            y45.g(str);
            int length = str.length() - 1;
            String str2 = this.c;
            y45.g(str2);
            int length2 = str2.length() - 1;
            while (true) {
                int i = this.d;
                if (length2 < i || length < i || this.b.charAt(length) != this.c.charAt(length2)) {
                    break;
                }
                length2--;
                length--;
            }
            this.e = this.b.length() - length;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComparisonFailure(String str, String str2, String str3) {
        super(str);
        y45.j(str2, "expected");
        y45.j(str3, "actual");
        this.expected = str2;
        this.actual = str3;
    }

    public final String getActual() {
        return this.actual;
    }

    public final String getExpected() {
        return this.expected;
    }

    @Override
    public String getMessage() {
        return new b(20, this.expected, this.actual).b(super.getMessage());
    }
}
