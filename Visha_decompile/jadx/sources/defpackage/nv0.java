package defpackage;

import androidx.core.app.FrameMetricsAggregator;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;
import org.jsoup.UncheckedIOException;

public final class nv0 {
    public char[] a;
    public Reader b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public String[] h;
    public boolean i;

    public nv0(Reader reader, int i) {
        this.g = -1;
        this.h = new String[512];
        dnb.i(reader);
        dnb.c(reader.markSupported());
        this.b = reader;
        this.a = new char[Math.min(i, 32768)];
        b();
    }

    public static boolean K(char[] cArr, int i, int i2, String str) {
        if (i2 != str.length()) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 == 0) {
                return true;
            }
            int i5 = i + 1;
            int i6 = i3 + 1;
            if (cArr[i] != str.charAt(i3)) {
                return false;
            }
            i = i5;
            i2 = i4;
            i3 = i6;
        }
    }

    public static String c(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return "";
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 * 31) + cArr[i + i4];
        }
        int i5 = i3 & FrameMetricsAggregator.EVERY_DURATION;
        String str = strArr[i5];
        if (str != null && K(cArr, i, i2, str)) {
            return str;
        }
        String str2 = new String(cArr, i, i2);
        strArr[i5] = str2;
        return str2;
    }

    public boolean A(String str) {
        b();
        int length = str.length();
        if (length > this.c - this.e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) != this.a[this.e + i]) {
                return false;
            }
        }
        return true;
    }

    public boolean B(char... cArr) {
        if (u()) {
            return false;
        }
        b();
        char c = this.a[this.e];
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    public boolean C(char[] cArr) {
        b();
        return !u() && Arrays.binarySearch(cArr, this.a[this.e]) >= 0;
    }

    public boolean D() {
        if (u()) {
            return false;
        }
        char c = this.a[this.e];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    public boolean E() {
        char c;
        return !u() && (c = this.a[this.e]) >= '0' && c <= '9';
    }

    public boolean F(String str) {
        b();
        int length = str.length();
        if (length > this.c - this.e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (Character.toUpperCase(str.charAt(i)) != Character.toUpperCase(this.a[this.e + i])) {
                return false;
            }
        }
        return true;
    }

    public boolean G() {
        if (u()) {
            return false;
        }
        char c = this.a[this.e];
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z') || Character.isLetter(c);
    }

    public int H(char c) {
        b();
        for (int i = this.e; i < this.c; i++) {
            if (c == this.a[i]) {
                return i - this.e;
            }
        }
        return -1;
    }

    public int I(CharSequence charSequence) {
        b();
        char cCharAt = charSequence.charAt(0);
        int i = this.e;
        while (i < this.c) {
            if (cCharAt != this.a[i]) {
                do {
                    i++;
                    if (i >= this.c) {
                        break;
                    }
                } while (cCharAt != this.a[i]);
            }
            int i2 = i + 1;
            int length = (charSequence.length() + i2) - 1;
            int i3 = this.c;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && charSequence.charAt(i5) == this.a[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.e;
                }
            }
            i = i2;
        }
        return -1;
    }

    public int J() {
        return this.f + this.e;
    }

    public void L() {
        int i = this.g;
        if (i == -1) {
            throw new UncheckedIOException(new IOException("Mark invalid"));
        }
        this.e = i;
        N();
    }

    public void M() {
        int i = this.e;
        if (i < 1) {
            throw new UncheckedIOException(new IOException("WTF: No buffer left to unconsume."));
        }
        this.e = i - 1;
    }

    public void N() {
        this.g = -1;
    }

    public void a() {
        this.e++;
    }

    public final void b() {
        int i;
        int i2;
        boolean z;
        if (this.i || (i = this.e) < this.d) {
            return;
        }
        int i3 = this.g;
        if (i3 != -1) {
            i2 = i - i3;
            i = i3;
        } else {
            i2 = 0;
        }
        try {
            long j = i;
            long jSkip = this.b.skip(j);
            this.b.mark(32768);
            int i4 = 0;
            while (true) {
                z = true;
                if (i4 > 1024) {
                    break;
                }
                Reader reader = this.b;
                char[] cArr = this.a;
                int i5 = reader.read(cArr, i4, cArr.length - i4);
                if (i5 == -1) {
                    this.i = true;
                }
                if (i5 <= 0) {
                    break;
                } else {
                    i4 += i5;
                }
            }
            this.b.reset();
            if (i4 > 0) {
                if (jSkip != j) {
                    z = false;
                }
                dnb.c(z);
                this.c = i4;
                this.f += i;
                this.e = i2;
                if (this.g != -1) {
                    this.g = 0;
                }
                this.d = Math.min(i4, 24576);
            }
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void d() {
        Reader reader = this.b;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
        } catch (IOException unused) {
        } finally {
            this.b = null;
            this.a = null;
            this.h = null;
        }
    }

    public char e() {
        b();
        char c = v() ? (char) 65535 : this.a[this.e];
        this.e++;
        return c;
    }

    public String f(boolean z) {
        int i = this.e;
        int i2 = this.c;
        char[] cArr = this.a;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0) {
                break;
            }
            if (c != '\"') {
                if (c == '&') {
                    break;
                }
                if (c == '\'') {
                    if (!z) {
                        break;
                    }
                    break;
                }
                continue;
                i3++;
            }
            if (!z) {
                break;
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? c(this.a, this.h, i, i3 - i) : "";
    }

    public String g() {
        int i = this.e;
        int i2 = this.c;
        char[] cArr = this.a;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '&' || c == '<') {
                break;
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? c(this.a, this.h, i, i3 - i) : "";
    }

    public String h() {
        int i;
        char c;
        b();
        int i2 = this.e;
        while (true) {
            i = this.e;
            if (i >= this.c || (c = this.a[i]) < '0' || c > '9') {
                break;
            }
            this.e = i + 1;
        }
        return c(this.a, this.h, i2, i - i2);
    }

    public String i() {
        int i;
        char c;
        b();
        int i2 = this.e;
        while (true) {
            i = this.e;
            if (i >= this.c || (((c = this.a[i]) < '0' || c > '9') && ((c < 'A' || c > 'F') && (c < 'a' || c > 'f')))) {
                break;
            }
            this.e = i + 1;
        }
        return c(this.a, this.h, i2, i - i2);
    }

    public String j() {
        char c;
        b();
        int i = this.e;
        while (true) {
            int i2 = this.e;
            if (i2 >= this.c || (((c = this.a[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.e++;
        }
        return c(this.a, this.h, i, this.e - i);
    }

    public String k() {
        char c;
        b();
        int i = this.e;
        while (true) {
            int i2 = this.e;
            if (i2 >= this.c || (((c = this.a[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.e++;
        }
        while (!v()) {
            char[] cArr = this.a;
            int i3 = this.e;
            char c2 = cArr[i3];
            if (c2 < '0' || c2 > '9') {
                break;
            }
            this.e = i3 + 1;
        }
        return c(this.a, this.h, i, this.e - i);
    }

    public String l() {
        int i = this.e;
        int i2 = this.c;
        char[] cArr = this.a;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '<') {
                break;
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? c(this.a, this.h, i, i3 - i) : "";
    }

    public String m() {
        b();
        int i = this.e;
        int i2 = this.c;
        char[] cArr = this.a;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ' || c == '/' || c == '<' || c == '>') {
                break;
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? c(this.a, this.h, i, i3 - i) : "";
    }

    public String n(char c) {
        int iH = H(c);
        if (iH == -1) {
            return r();
        }
        String strC = c(this.a, this.h, this.e, iH);
        this.e += iH;
        return strC;
    }

    public String o(String str) {
        int I = I(str);
        if (I != -1) {
            String strC = c(this.a, this.h, this.e, I);
            this.e += I;
            return strC;
        }
        if (this.c - this.e < str.length()) {
            return r();
        }
        int length = (this.c - str.length()) + 1;
        char[] cArr = this.a;
        String[] strArr = this.h;
        int i = this.e;
        String strC2 = c(cArr, strArr, i, length - i);
        this.e = length;
        return strC2;
    }

    public String p(char... cArr) {
        b();
        int i = this.e;
        int i2 = this.c;
        char[] cArr2 = this.a;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c : cArr) {
                if (cArr2[i3] == c) {
                    break loop0;
                }
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? c(this.a, this.h, i, i3 - i) : "";
    }

    public String q(char... cArr) {
        b();
        int i = this.e;
        int i2 = this.c;
        char[] cArr2 = this.a;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.e = i3;
        return i3 > i ? c(this.a, this.h, i, i3 - i) : "";
    }

    public String r() {
        b();
        char[] cArr = this.a;
        String[] strArr = this.h;
        int i = this.e;
        String strC = c(cArr, strArr, i, this.c - i);
        this.e = this.c;
        return strC;
    }

    public boolean s(String str) {
        Locale locale = Locale.ENGLISH;
        return I(str.toLowerCase(locale)) > -1 || I(str.toUpperCase(locale)) > -1;
    }

    public char t() {
        b();
        if (v()) {
            return (char) 65535;
        }
        return this.a[this.e];
    }

    public String toString() {
        int i = this.c;
        int i2 = this.e;
        return i - i2 < 0 ? "" : new String(this.a, i2, i - i2);
    }

    public boolean u() {
        b();
        return this.e >= this.c;
    }

    public final boolean v() {
        return this.e >= this.c;
    }

    public void w() {
        if (this.c - this.e < 1024) {
            this.d = 0;
        }
        b();
        this.g = this.e;
    }

    public boolean x(String str) {
        b();
        if (!A(str)) {
            return false;
        }
        this.e += str.length();
        return true;
    }

    public boolean y(String str) {
        if (!F(str)) {
            return false;
        }
        this.e += str.length();
        return true;
    }

    public boolean z(char c) {
        return !u() && this.a[this.e] == c;
    }

    public nv0(Reader reader) {
        this(reader, 32768);
    }

    public nv0(String str) {
        this(new StringReader(str), str.length());
    }
}
