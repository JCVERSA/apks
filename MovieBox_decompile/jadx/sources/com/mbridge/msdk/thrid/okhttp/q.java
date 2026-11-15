package com.mbridge.msdk.thrid.okhttp;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

public final class q {

    private static final char[] f37457j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    final String f37458a;

    private final String f37459b;

    private final String f37460c;

    final String f37461d;

    final int f37462e;

    private final List<String> f37463f;

    private final List<String> f37464g;

    private final String f37465h;

    private final String f37466i;

    public static final class a {

        String f37467a;

        String f37470d;

        final List<String> f37472f;

        List<String> f37473g;

        String f37474h;

        String f37468b = "";

        String f37469c = "";

        int f37471e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f37472f = arrayList;
            arrayList.add("");
        }

        private boolean c(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private static int f(String str, int i10, int i11) {
            int i12 = 0;
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i12++;
                i10++;
            }
            return i12;
        }

        public a a(int i10) {
            if (i10 > 0 && i10 <= 65535) {
                this.f37471e = i10;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i10);
        }

        public a b(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strA = a(str, 0, str.length());
            if (strA != null) {
                this.f37470d = strA;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        a d() {
            int size = this.f37472f.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f37472f.set(i10, q.a(this.f37472f.get(i10), "[]", true, true, false, true));
            }
            List<String> list = this.f37473g;
            if (list != null) {
                int size2 = list.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str = this.f37473g.get(i11);
                    if (str != null) {
                        this.f37473g.set(i11, q.a(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, true));
                    }
                }
            }
            String str2 = this.f37474h;
            if (str2 != null) {
                this.f37474h = q.a(str2, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, false);
            }
            return this;
        }

        public a e(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.f37467a = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f37467a = "https";
            }
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            String str = this.f37467a;
            if (str != null) {
                sb2.append(str);
                sb2.append("://");
            } else {
                sb2.append("//");
            }
            if (!this.f37468b.isEmpty() || !this.f37469c.isEmpty()) {
                sb2.append(this.f37468b);
                if (!this.f37469c.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.f37469c);
                }
                sb2.append('@');
            }
            String str2 = this.f37470d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb2.append('[');
                    sb2.append(this.f37470d);
                    sb2.append(']');
                } else {
                    sb2.append(this.f37470d);
                }
            }
            if (this.f37471e != -1 || this.f37467a != null) {
                int iB = b();
                String str3 = this.f37467a;
                if (str3 == null || iB != q.a(str3)) {
                    sb2.append(':');
                    sb2.append(iB);
                }
            }
            q.b(sb2, this.f37472f);
            if (this.f37473g != null) {
                sb2.append('?');
                q.a(sb2, this.f37473g);
            }
            if (this.f37474h != null) {
                sb2.append('#');
                sb2.append(this.f37474h);
            }
            return sb2.toString();
        }

        private void c() {
            List<String> list = this.f37472f;
            if (!list.remove(list.size() - 1).isEmpty() || this.f37472f.isEmpty()) {
                this.f37472f.add("");
            } else {
                List<String> list2 = this.f37472f;
                list2.set(list2.size() - 1, "");
            }
        }

        public a a(String str) {
            this.f37473g = str != null ? q.d(q.a(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public q a() {
            if (this.f37467a != null) {
                if (this.f37470d != null) {
                    return new q(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        int b() {
            int i10 = this.f37471e;
            return i10 != -1 ? i10 : q.a(this.f37467a);
        }

        private static int b(String str, int i10, int i11) {
            try {
                int i12 = Integer.parseInt(q.a(str, i10, i11, "", false, false, false, true, null));
                if (i12 <= 0 || i12 > 65535) {
                    return -1;
                }
                return i12;
            } catch (NumberFormatException unused) {
            }
        }

        private static int c(String str, int i10, int i11) {
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt == ':') {
                    return i10;
                }
                if (cCharAt == '[') {
                    do {
                        i10++;
                        if (i10 >= i11) {
                            break;
                        }
                    } while (str.charAt(i10) != ']');
                }
                i10++;
            }
            return i11;
        }

        private static int e(String str, int i10, int i11) {
            if (i11 - i10 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i10);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i10);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i10;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        a a(q qVar, String str) {
            int iA;
            int i10;
            int iB = com.mbridge.msdk.thrid.okhttp.internal.c.b(str, 0, str.length());
            int iC = com.mbridge.msdk.thrid.okhttp.internal.c.c(str, iB, str.length());
            int iE = e(str, iB, iC);
            if (iE != -1) {
                if (str.regionMatches(true, iB, "https:", 0, 6)) {
                    this.f37467a = "https";
                    iB += 6;
                } else if (str.regionMatches(true, iB, "http:", 0, 5)) {
                    this.f37467a = "http";
                    iB += 5;
                } else {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, iE) + "'");
                }
            } else if (qVar != null) {
                this.f37467a = qVar.f37458a;
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int iF = f(str, iB, iC);
            char c10 = '?';
            char c11 = '#';
            if (iF < 2 && qVar != null && qVar.f37458a.equals(this.f37467a)) {
                this.f37468b = qVar.f();
                this.f37469c = qVar.b();
                this.f37470d = qVar.f37461d;
                this.f37471e = qVar.f37462e;
                this.f37472f.clear();
                this.f37472f.addAll(qVar.d());
                if (iB == iC || str.charAt(iB) == '#') {
                    a(qVar.e());
                }
            } else {
                boolean z10 = false;
                boolean z11 = false;
                int i11 = iB + iF;
                while (true) {
                    iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i11, iC, "@/\\?#");
                    byte bCharAt = iA != iC ? str.charAt(iA) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c11 || bCharAt == 47 || bCharAt == 92 || bCharAt == c10) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (!z10) {
                            int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i11, iA, ':');
                            i10 = iA;
                            String strA = q.a(str, i11, iA2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                strA = this.f37468b + "%40" + strA;
                            }
                            this.f37468b = strA;
                            if (iA2 != i10) {
                                this.f37469c = q.a(str, iA2 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        } else {
                            i10 = iA;
                            this.f37469c += "%40" + q.a(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i11 = i10 + 1;
                        c10 = '?';
                        c11 = '#';
                    }
                }
                int iC2 = c(str, i11, iA);
                int i12 = iC2 + 1;
                if (i12 < iA) {
                    this.f37470d = a(str, i11, iC2);
                    int iB2 = b(str, i12, iA);
                    this.f37471e = iB2;
                    if (iB2 == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i12, iA) + '\"');
                    }
                } else {
                    this.f37470d = a(str, i11, iC2);
                    this.f37471e = q.a(this.f37467a);
                }
                if (this.f37470d == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i11, iC2) + '\"');
                }
                iB = iA;
            }
            int iA3 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iB, iC, "?#");
            d(str, iB, iA3);
            if (iA3 < iC && str.charAt(iA3) == '?') {
                int iA4 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iA3, iC, '#');
                this.f37473g = q.d(q.a(str, iA3 + 1, iA4, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iA3 = iA4;
            }
            if (iA3 < iC && str.charAt(iA3) == '#') {
                this.f37474h = q.a(str, 1 + iA3, iC, "", true, false, false, false, null);
            }
            return this;
        }

        private void d(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt != '/' && cCharAt != '\\') {
                List<String> list = this.f37472f;
                list.set(list.size() - 1, "");
            } else {
                this.f37472f.clear();
                this.f37472f.add("");
                i10++;
            }
            while (true) {
                int i12 = i10;
                while (i12 < i11) {
                    i10 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, i12, i11, "/\\");
                    boolean z10 = i10 < i11;
                    a(str, i12, i10, z10, true);
                    if (z10) {
                        i12 = i10 + 1;
                    }
                }
                return;
            }
        }

        private boolean d(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private void a(String str, int i10, int i11, boolean z10, boolean z11) {
            String strA = q.a(str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (c(strA)) {
                return;
            }
            if (d(strA)) {
                c();
                return;
            }
            List<String> list = this.f37472f;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f37472f;
                list2.set(list2.size() - 1, strA);
            } else {
                this.f37472f.add(strA);
            }
            if (z10) {
                this.f37472f.add("");
            }
        }

        private static String a(String str, int i10, int i11) {
            return com.mbridge.msdk.thrid.okhttp.internal.c.a(q.a(str, i10, i11, false));
        }
    }

    q(a aVar) {
        this.f37458a = aVar.f37467a;
        this.f37459b = a(aVar.f37468b, false);
        this.f37460c = a(aVar.f37469c, false);
        this.f37461d = aVar.f37470d;
        this.f37462e = aVar.b();
        this.f37463f = a(aVar.f37472f, false);
        List<String> list = aVar.f37473g;
        this.f37464g = list != null ? a(list, true) : null;
        String str = aVar.f37474h;
        this.f37465h = str != null ? a(str, false) : null;
        this.f37466i = aVar.toString();
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public String b() {
        if (this.f37460c.isEmpty()) {
            return "";
        }
        return this.f37466i.substring(this.f37466i.indexOf(58, this.f37458a.length() + 3) + 1, this.f37466i.indexOf(64));
    }

    public String c() {
        int iIndexOf = this.f37466i.indexOf(47, this.f37458a.length() + 3);
        String str = this.f37466i;
        return this.f37466i.substring(iIndexOf, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iIndexOf, str.length(), "?#"));
    }

    public List<String> d() {
        int iIndexOf = this.f37466i.indexOf(47, this.f37458a.length() + 3);
        String str = this.f37466i;
        int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i10 = iIndexOf + 1;
            int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37466i, i10, iA, '/');
            arrayList.add(this.f37466i.substring(i10, iA2));
            iIndexOf = iA2;
        }
        return arrayList;
    }

    public String e() {
        if (this.f37464g == null) {
            return null;
        }
        int iIndexOf = this.f37466i.indexOf(63) + 1;
        String str = this.f37466i;
        return this.f37466i.substring(iIndexOf, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, iIndexOf, str.length(), '#'));
    }

    public boolean equals(Object obj) {
        return (obj instanceof q) && ((q) obj).f37466i.equals(this.f37466i);
    }

    public String f() {
        if (this.f37459b.isEmpty()) {
            return "";
        }
        int length = this.f37458a.length() + 3;
        String str = this.f37466i;
        return this.f37466i.substring(length, com.mbridge.msdk.thrid.okhttp.internal.c.a(str, length, str.length(), ":@"));
    }

    public String g() {
        return this.f37461d;
    }

    public boolean h() {
        return this.f37458a.equals("https");
    }

    public int hashCode() {
        return this.f37466i.hashCode();
    }

    public a i() {
        a aVar = new a();
        aVar.f37467a = this.f37458a;
        aVar.f37468b = f();
        aVar.f37469c = b();
        aVar.f37470d = this.f37461d;
        aVar.f37471e = this.f37462e != a(this.f37458a) ? this.f37462e : -1;
        aVar.f37472f.clear();
        aVar.f37472f.addAll(d());
        aVar.a(e());
        aVar.f37474h = a();
        return aVar;
    }

    public int j() {
        return this.f37462e;
    }

    public String k() {
        if (this.f37464g == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        a(sb2, this.f37464g);
        return sb2.toString();
    }

    public String l() {
        return this.f37458a;
    }

    public URI m() {
        String string = i().d().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e10) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public String toString() {
        return this.f37466i;
    }

    static void a(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            String str = list.get(i10);
            String str2 = list.get(i10 + 1);
            if (i10 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    public a c(String str) {
        try {
            return new a().a(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    static void b(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append('/');
            sb2.append(list.get(i10));
        }
    }

    public q e(String str) {
        a aVarC = c(str);
        if (aVarC != null) {
            return aVarC.a();
        }
        return null;
    }

    static List<String> d(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 <= str.length()) {
            int iIndexOf = str.indexOf(38, i10);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i10);
            if (iIndexOf2 != -1 && iIndexOf2 <= iIndexOf) {
                arrayList.add(str.substring(i10, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            } else {
                arrayList.add(str.substring(i10, iIndexOf));
                arrayList.add(null);
            }
            i10 = iIndexOf + 1;
        }
        return arrayList;
    }

    public static q b(String str) {
        return new a().a(null, str).a();
    }

    public String a() {
        if (this.f37465h == null) {
            return null;
        }
        return this.f37466i.substring(this.f37466i.indexOf(35) + 1);
    }

    static String a(String str, boolean z10) {
        return a(str, 0, str.length(), z10);
    }

    private List<String> a(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? a(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String a(String str, int i10, int i11, boolean z10) {
        for (int i12 = i10; i12 < i11; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
                cVar.a(str, i10, i12);
                a(cVar, str, i12, i11, z10);
                return cVar.p();
            }
        }
        return str.substring(i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    static void a(com.mbridge.msdk.thrid.okio.c cVar, String str, int i10, int i11, boolean z10) {
        int i12;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                int iA = com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i10 + 1));
                int iA2 = com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i12));
                if (iA != -1 && iA2 != -1) {
                    cVar.writeByte((iA << 4) + iA2);
                    i10 = i12;
                } else {
                    cVar.f(iCodePointAt);
                }
            } else if (iCodePointAt == 43 && z10) {
                cVar.writeByte(32);
            } else {
                cVar.f(iCodePointAt);
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    static boolean a(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i10 + 1)) != -1 && com.mbridge.msdk.thrid.okhttp.internal.c.a(str.charAt(i12)) != -1;
    }

    static String a(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int iCharCount = i10;
        while (iCharCount < i11) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && (iCodePointAt < 128 || !z13)) {
                if (str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z10 && (!z11 || a(str, iCharCount, i11)))) && (iCodePointAt != 43 || !z12))) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
            }
            com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
            cVar.a(str, i10, iCharCount);
            a(cVar, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
            return cVar.p();
        }
        return str.substring(i10, i11);
    }

    static void a(com.mbridge.msdk.thrid.okio.c cVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.mbridge.msdk.thrid.okio.c cVar2 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z12) {
                    cVar.a(z10 ? "+" : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z13) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z10 && (!z11 || a(str, i10, i11)))))) {
                    cVar.f(iCodePointAt);
                } else {
                    if (cVar2 == null) {
                        cVar2 = new com.mbridge.msdk.thrid.okio.c();
                    }
                    if (charset != null && !charset.equals(com.mbridge.msdk.thrid.okhttp.internal.c.f37078j)) {
                        cVar2.a(str, i10, Character.charCount(iCodePointAt) + i10, charset);
                    } else {
                        cVar2.f(iCodePointAt);
                    }
                    while (!cVar2.f()) {
                        byte b10 = cVar2.readByte();
                        cVar.writeByte(37);
                        char[] cArr = f37457j;
                        cVar.writeByte((int) cArr[((b10 & 255) >> 4) & 15]);
                        cVar.writeByte((int) cArr[b10 & 15]);
                    }
                }
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    static String a(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return a(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }
}
