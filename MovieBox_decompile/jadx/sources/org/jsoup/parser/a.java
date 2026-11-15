package org.jsoup.parser;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Arrays;
import java.util.Locale;
import org.jsoup.UncheckedIOException;

public final class a {

    private final char[] f68644a;

    private final Reader f68645b;

    private int f68646c;

    private int f68647d;

    private int f68648e;

    private int f68649f;

    private int f68650g;

    private final String[] f68651h;

    public a(Reader reader, int i10) {
        this.f68651h = new String[512];
        org.jsoup.helper.d.j(reader);
        org.jsoup.helper.d.d(reader.markSupported());
        this.f68645b = reader;
        this.f68644a = new char[i10 > 32768 ? 32768 : i10];
        b();
    }

    static boolean G(char[] cArr, int i10, int i11, String str) {
        if (i11 != str.length()) {
            return false;
        }
        int i12 = 0;
        while (true) {
            int i13 = i11 - 1;
            if (i11 == 0) {
                return true;
            }
            int i14 = i10 + 1;
            int i15 = i12 + 1;
            if (cArr[i10] != str.charAt(i12)) {
                return false;
            }
            i10 = i14;
            i11 = i13;
            i12 = i15;
        }
    }

    private void b() {
        int i10 = this.f68648e;
        if (i10 < this.f68647d) {
            return;
        }
        try {
            this.f68645b.skip(i10);
            this.f68645b.mark(32768);
            int i11 = this.f68645b.read(this.f68644a);
            this.f68645b.reset();
            if (i11 != -1) {
                this.f68646c = i11;
                this.f68649f += this.f68648e;
                this.f68648e = 0;
                this.f68650g = 0;
                if (i11 > 24576) {
                    i11 = 24576;
                }
                this.f68647d = i11;
            }
        } catch (IOException e10) {
            throw new UncheckedIOException(e10);
        }
    }

    private static String c(char[] cArr, String[] strArr, int i10, int i11) {
        if (i11 > 12) {
            return new String(cArr, i10, i11);
        }
        if (i11 < 1) {
            return "";
        }
        int i12 = 0;
        int i13 = i10;
        int i14 = 0;
        while (i12 < i11) {
            i14 = (i14 * 31) + cArr[i13];
            i12++;
            i13++;
        }
        int length = i14 & (strArr.length - 1);
        String str = strArr[length];
        if (str == null) {
            String str2 = new String(cArr, i10, i11);
            strArr[length] = str2;
            return str2;
        }
        if (G(cArr, i10, i11, str)) {
            return str;
        }
        String str3 = new String(cArr, i10, i11);
        strArr[length] = str3;
        return str3;
    }

    private boolean s() {
        return this.f68648e >= this.f68646c;
    }

    boolean A() {
        char c10;
        return !r() && (c10 = this.f68644a[this.f68648e]) >= '0' && c10 <= '9';
    }

    boolean B(String str) {
        b();
        int length = str.length();
        if (length > this.f68646c - this.f68648e) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (Character.toUpperCase(str.charAt(i10)) != Character.toUpperCase(this.f68644a[this.f68648e + i10])) {
                return false;
            }
        }
        return true;
    }

    boolean C() {
        if (r()) {
            return false;
        }
        char c10 = this.f68644a[this.f68648e];
        return (c10 >= 'A' && c10 <= 'Z') || (c10 >= 'a' && c10 <= 'z') || Character.isLetter(c10);
    }

    int D(char c10) {
        b();
        for (int i10 = this.f68648e; i10 < this.f68646c; i10++) {
            if (c10 == this.f68644a[i10]) {
                return i10 - this.f68648e;
            }
        }
        return -1;
    }

    int E(CharSequence charSequence) {
        b();
        char cCharAt = charSequence.charAt(0);
        int i10 = this.f68648e;
        while (i10 < this.f68646c) {
            if (cCharAt != this.f68644a[i10]) {
                do {
                    i10++;
                    if (i10 >= this.f68646c) {
                        break;
                    }
                } while (cCharAt != this.f68644a[i10]);
            }
            int i11 = i10 + 1;
            int length = (charSequence.length() + i11) - 1;
            int i12 = this.f68646c;
            if (i10 < i12 && length <= i12) {
                int i13 = i11;
                for (int i14 = 1; i13 < length && charSequence.charAt(i14) == this.f68644a[i13]; i14++) {
                    i13++;
                }
                if (i13 == length) {
                    return i10 - this.f68648e;
                }
            }
            i10 = i11;
        }
        return -1;
    }

    public int F() {
        return this.f68649f + this.f68648e;
    }

    void H() {
        this.f68648e = this.f68650g;
    }

    void I() {
        this.f68648e--;
    }

    public void a() {
        this.f68648e++;
    }

    char d() {
        b();
        char c10 = s() ? (char) 65535 : this.f68644a[this.f68648e];
        this.f68648e++;
        return c10;
    }

    String e() {
        int i10;
        char c10;
        b();
        int i11 = this.f68648e;
        int i12 = this.f68646c;
        char[] cArr = this.f68644a;
        while (true) {
            i10 = this.f68648e;
            if (i10 >= i12 || (c10 = cArr[i10]) == '&' || c10 == '<' || c10 == 0) {
                break;
            }
            this.f68648e = i10 + 1;
        }
        return i10 > i11 ? c(this.f68644a, this.f68651h, i11, i10 - i11) : "";
    }

    String f() {
        int i10;
        char c10;
        b();
        int i11 = this.f68648e;
        while (true) {
            i10 = this.f68648e;
            if (i10 >= this.f68646c || (c10 = this.f68644a[i10]) < '0' || c10 > '9') {
                break;
            }
            this.f68648e = i10 + 1;
        }
        return c(this.f68644a, this.f68651h, i11, i10 - i11);
    }

    String g() {
        int i10;
        char c10;
        b();
        int i11 = this.f68648e;
        while (true) {
            i10 = this.f68648e;
            if (i10 >= this.f68646c || (((c10 = this.f68644a[i10]) < '0' || c10 > '9') && ((c10 < 'A' || c10 > 'F') && (c10 < 'a' || c10 > 'f')))) {
                break;
            }
            this.f68648e = i10 + 1;
        }
        return c(this.f68644a, this.f68651h, i11, i10 - i11);
    }

    String h() {
        char c10;
        b();
        int i10 = this.f68648e;
        while (true) {
            int i11 = this.f68648e;
            if (i11 >= this.f68646c || (((c10 = this.f68644a[i11]) < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !Character.isLetter(c10)))) {
                break;
            }
            this.f68648e++;
        }
        return c(this.f68644a, this.f68651h, i10, this.f68648e - i10);
    }

    String i() {
        char c10;
        b();
        int i10 = this.f68648e;
        while (true) {
            int i11 = this.f68648e;
            if (i11 >= this.f68646c || (((c10 = this.f68644a[i11]) < 'A' || c10 > 'Z') && ((c10 < 'a' || c10 > 'z') && !Character.isLetter(c10)))) {
                break;
            }
            this.f68648e++;
        }
        while (!s()) {
            char[] cArr = this.f68644a;
            int i12 = this.f68648e;
            char c11 = cArr[i12];
            if (c11 < '0' || c11 > '9') {
                break;
            }
            this.f68648e = i12 + 1;
        }
        return c(this.f68644a, this.f68651h, i10, this.f68648e - i10);
    }

    String j() {
        int i10;
        char c10;
        b();
        int i11 = this.f68648e;
        int i12 = this.f68646c;
        char[] cArr = this.f68644a;
        while (true) {
            i10 = this.f68648e;
            if (i10 >= i12 || (c10 = cArr[i10]) == '\t' || c10 == '\n' || c10 == '\r' || c10 == '\f' || c10 == ' ' || c10 == '/' || c10 == '>' || c10 == 0) {
                break;
            }
            this.f68648e = i10 + 1;
        }
        return i10 > i11 ? c(this.f68644a, this.f68651h, i11, i10 - i11) : "";
    }

    public String k(char c10) {
        int iD = D(c10);
        if (iD == -1) {
            return o();
        }
        String strC = c(this.f68644a, this.f68651h, this.f68648e, iD);
        this.f68648e += iD;
        return strC;
    }

    String l(String str) {
        int iE = E(str);
        if (iE == -1) {
            return o();
        }
        String strC = c(this.f68644a, this.f68651h, this.f68648e, iE);
        this.f68648e += iE;
        return strC;
    }

    public String m(char... cArr) {
        b();
        int i10 = this.f68648e;
        int i11 = this.f68646c;
        char[] cArr2 = this.f68644a;
        loop0: while (this.f68648e < i11) {
            for (char c10 : cArr) {
                if (cArr2[this.f68648e] == c10) {
                    break loop0;
                }
            }
            this.f68648e++;
        }
        int i12 = this.f68648e;
        return i12 > i10 ? c(this.f68644a, this.f68651h, i10, i12 - i10) : "";
    }

    String n(char... cArr) {
        b();
        int i10 = this.f68648e;
        int i11 = this.f68646c;
        char[] cArr2 = this.f68644a;
        while (true) {
            int i12 = this.f68648e;
            if (i12 >= i11 || Arrays.binarySearch(cArr, cArr2[i12]) >= 0) {
                break;
            }
            this.f68648e++;
        }
        int i13 = this.f68648e;
        return i13 > i10 ? c(this.f68644a, this.f68651h, i10, i13 - i10) : "";
    }

    String o() {
        b();
        char[] cArr = this.f68644a;
        String[] strArr = this.f68651h;
        int i10 = this.f68648e;
        String strC = c(cArr, strArr, i10, this.f68646c - i10);
        this.f68648e = this.f68646c;
        return strC;
    }

    boolean p(String str) {
        Locale locale = Locale.ENGLISH;
        return E(str.toLowerCase(locale)) > -1 || E(str.toUpperCase(locale)) > -1;
    }

    public char q() {
        b();
        if (s()) {
            return (char) 65535;
        }
        return this.f68644a[this.f68648e];
    }

    public boolean r() {
        b();
        return this.f68648e >= this.f68646c;
    }

    void t() {
        this.f68650g = this.f68648e;
    }

    public String toString() {
        char[] cArr = this.f68644a;
        int i10 = this.f68648e;
        return new String(cArr, i10, this.f68646c - i10);
    }

    boolean u(String str) {
        b();
        if (!x(str)) {
            return false;
        }
        this.f68648e += str.length();
        return true;
    }

    boolean v(String str) {
        if (!B(str)) {
            return false;
        }
        this.f68648e += str.length();
        return true;
    }

    boolean w(char c10) {
        return !r() && this.f68644a[this.f68648e] == c10;
    }

    boolean x(String str) {
        b();
        int length = str.length();
        if (length > this.f68646c - this.f68648e) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (str.charAt(i10) != this.f68644a[this.f68648e + i10]) {
                return false;
            }
        }
        return true;
    }

    boolean y(char... cArr) {
        if (r()) {
            return false;
        }
        b();
        char c10 = this.f68644a[this.f68648e];
        for (char c11 : cArr) {
            if (c11 == c10) {
                return true;
            }
        }
        return false;
    }

    boolean z(char[] cArr) {
        b();
        return !r() && Arrays.binarySearch(cArr, this.f68644a[this.f68648e]) >= 0;
    }

    public a(Reader reader) {
        this(reader, 32768);
    }

    public a(String str) {
        this(new StringReader(str), str.length());
    }
}
