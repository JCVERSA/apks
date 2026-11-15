package com.bytedance.sdk.component.sP.Sj;

import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;

public final class Jcg {
    private static final char[] EjP = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final List<String> Dq;
    private final String HiB;
    private final List<String> Jcg;
    final String Sj;
    private final String TEQ;
    final int TKC;
    final String sP;
    private final String uA;
    private final String vS;

    public static final class Sj {
        String Dq;
        String EjP;
        List<String> Jcg;
        String Sj;
        final List<String> vS;
        String sP = "";
        String TKC = "";
        int HiB = -1;

        enum EnumC0205Sj {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Sj() {
            ArrayList arrayList = new ArrayList();
            this.vS = arrayList;
            arrayList.add("");
        }

        private boolean HiB(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean vS(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public Sj EjP(String str) {
            this.Jcg = str != null ? Jcg.sP(Jcg.Sj(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public Sj Sj(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.Sj = "http";
            } else {
                if (!str.equalsIgnoreCase("https")) {
                    throw new IllegalArgumentException("unexpected scheme: ".concat(str));
                }
                this.Sj = "https";
            }
            return this;
        }

        public Sj TKC(String str) {
            if (str != null) {
                return Sj(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        public Sj sP(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strHiB = HiB(str, 0, str.length());
            if (strHiB == null) {
                throw new IllegalArgumentException("unexpected host: ".concat(str));
            }
            this.EjP = strHiB;
            return this;
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.Sj);
            sb2.append("://");
            if (!this.sP.isEmpty() || !this.TKC.isEmpty()) {
                sb2.append(this.sP);
                if (!this.TKC.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.TKC);
                }
                sb2.append('@');
            }
            if (this.EjP.indexOf(58) != -1) {
                sb2.append('[');
                sb2.append(this.EjP);
                sb2.append(']');
            } else {
                sb2.append(this.EjP);
            }
            int iSj = Sj();
            if (iSj != Jcg.Sj(this.Sj)) {
                sb2.append(':');
                sb2.append(iSj);
            }
            Jcg.Sj(sb2, this.vS);
            if (this.Jcg != null) {
                sb2.append('?');
                Jcg.sP(sb2, this.Jcg);
            }
            if (this.Dq != null) {
                sb2.append('#');
                sb2.append(this.Dq);
            }
            return sb2.toString();
        }

        private static String HiB(String str, int i10, int i11) {
            return com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(Jcg.Sj(str, i10, i11, false));
        }

        private static int EjP(String str, int i10, int i11) {
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

        private void TKC() {
            List<String> list = this.vS;
            if (list.remove(list.size() - 1).isEmpty() && !this.vS.isEmpty()) {
                List<String> list2 = this.vS;
                list2.set(list2.size() - 1, "");
            } else {
                this.vS.add("");
            }
        }

        private static int vS(String str, int i10, int i11) {
            try {
                int i12 = Integer.parseInt(Jcg.Sj(str, i10, i11, "", false, false, false, true, null));
                if (i12 <= 0 || i12 > 65535) {
                    return -1;
                }
                return i12;
            } catch (NumberFormatException unused) {
            }
        }

        public Jcg sP() {
            if (this.Sj != null) {
                if (this.EjP != null) {
                    return new Jcg(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        private static int TKC(String str, int i10, int i11) {
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

        int Sj() {
            int i10 = this.HiB;
            return i10 != -1 ? i10 : Jcg.Sj(this.Sj);
        }

        private Sj Sj(String str, boolean z10) {
            int i10 = 0;
            do {
                int iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i10, str.length(), "/\\");
                Sj(str, i10, iSj, iSj < str.length(), z10);
                i10 = iSj + 1;
            } while (i10 <= str.length());
            return this;
        }

        private static int sP(String str, int i10, int i11) {
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

        public Sj Sj(String str, String str2) {
            if (str != null) {
                if (this.Jcg == null) {
                    this.Jcg = new ArrayList();
                }
                this.Jcg.add(Jcg.Sj(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true));
                this.Jcg.add(str2 != null ? Jcg.Sj(str2, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        EnumC0205Sj Sj(Jcg jcg, String str) {
            int iSj;
            int i10;
            int iSj2 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, 0, str.length());
            int iSP = com.bytedance.sdk.component.sP.Sj.sP.uA.sP(str, iSj2, str.length());
            if (sP(str, iSj2, iSP) != -1) {
                if (str.regionMatches(true, iSj2, "https:", 0, 6)) {
                    this.Sj = "https";
                    iSj2 += 6;
                } else if (str.regionMatches(true, iSj2, "http:", 0, 5)) {
                    this.Sj = "http";
                    iSj2 += 5;
                } else {
                    return EnumC0205Sj.UNSUPPORTED_SCHEME;
                }
            } else if (jcg != null) {
                this.Sj = jcg.Sj;
            } else {
                return EnumC0205Sj.MISSING_SCHEME;
            }
            int iTKC = TKC(str, iSj2, iSP);
            char c10 = '?';
            char c11 = '#';
            if (iTKC < 2 && jcg != null && jcg.Sj.equals(this.Sj)) {
                this.sP = jcg.sP();
                this.TKC = jcg.TKC();
                this.EjP = jcg.sP;
                this.HiB = jcg.TKC;
                this.vS.clear();
                this.vS.addAll(jcg.EjP());
                if (iSj2 == iSP || str.charAt(iSj2) == '#') {
                    EjP(jcg.HiB());
                }
            } else {
                boolean z10 = false;
                boolean z11 = false;
                int i11 = iSj2 + iTKC;
                while (true) {
                    iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i11, iSP, "@/\\?#");
                    byte bCharAt = iSj != iSP ? str.charAt(iSj) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c11 || bCharAt == 47 || bCharAt == 92 || bCharAt == c10) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (!z10) {
                            int iSj3 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i11, iSj, ':');
                            i10 = iSj;
                            String strSj = Jcg.Sj(str, i11, iSj3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                strSj = this.sP + "%40" + strSj;
                            }
                            this.sP = strSj;
                            if (iSj3 != i10) {
                                this.TKC = Jcg.Sj(str, iSj3 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        } else {
                            i10 = iSj;
                            this.TKC += "%40" + Jcg.Sj(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i11 = i10 + 1;
                        c10 = '?';
                        c11 = '#';
                    }
                }
                int iEjP = EjP(str, i11, iSj);
                int i12 = iEjP + 1;
                if (i12 < iSj) {
                    this.EjP = HiB(str, i11, iEjP);
                    int iVS = vS(str, i12, iSj);
                    this.HiB = iVS;
                    if (iVS == -1) {
                        return EnumC0205Sj.INVALID_PORT;
                    }
                } else {
                    this.EjP = HiB(str, i11, iEjP);
                    this.HiB = Jcg.Sj(this.Sj);
                }
                if (this.EjP == null) {
                    return EnumC0205Sj.INVALID_HOST;
                }
                iSj2 = iSj;
            }
            int iSj4 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iSj2, iSP, "?#");
            Sj(str, iSj2, iSj4);
            if (iSj4 < iSP && str.charAt(iSj4) == '?') {
                int iSj5 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iSj4, iSP, '#');
                this.Jcg = Jcg.sP(Jcg.Sj(str, iSj4 + 1, iSj5, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                iSj4 = iSj5;
            }
            if (iSj4 < iSP && str.charAt(iSj4) == '#') {
                this.Dq = Jcg.Sj(str, 1 + iSj4, iSP, "", true, false, false, false, null);
            }
            return EnumC0205Sj.SUCCESS;
        }

        private void Sj(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt != '/' && cCharAt != '\\') {
                List<String> list = this.vS;
                list.set(list.size() - 1, "");
            } else {
                this.vS.clear();
                this.vS.add("");
                i10++;
            }
            while (true) {
                int i12 = i10;
                if (i12 >= i11) {
                    return;
                }
                i10 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, i12, i11, "/\\");
                boolean z10 = i10 < i11;
                Sj(str, i12, i10, z10, true);
                if (z10) {
                    i10++;
                }
            }
        }

        private void Sj(String str, int i10, int i11, boolean z10, boolean z11) {
            String strSj = Jcg.Sj(str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (HiB(strSj)) {
                return;
            }
            if (vS(strSj)) {
                TKC();
                return;
            }
            List<String> list = this.vS;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.vS;
                list2.set(list2.size() - 1, strSj);
            } else {
                this.vS.add(strSj);
            }
            if (z10) {
                this.vS.add("");
            }
        }
    }

    Jcg(Sj sj2) {
        this.Sj = sj2.Sj;
        this.HiB = Sj(sj2.sP, false);
        this.vS = Sj(sj2.TKC, false);
        this.sP = sj2.EjP;
        this.TKC = sj2.Sj();
        this.Jcg = Sj(sj2.vS, false);
        List<String> list = sj2.Jcg;
        this.Dq = list != null ? Sj(list, true) : null;
        String str = sj2.Dq;
        this.uA = str != null ? Sj(str, false) : null;
        this.TEQ = sj2.toString();
    }

    public List<String> EjP() {
        int iIndexOf = this.TEQ.indexOf(47, this.Sj.length() + 3);
        String str = this.TEQ;
        int iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iSj) {
            int i10 = iIndexOf + 1;
            int iSj2 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(this.TEQ, i10, iSj, '/');
            arrayList.add(this.TEQ.substring(i10, iSj2));
            iIndexOf = iSj2;
        }
        return arrayList;
    }

    public String HiB() {
        if (this.Dq == null) {
            return null;
        }
        int iIndexOf = this.TEQ.indexOf(63) + 1;
        String str = this.TEQ;
        return this.TEQ.substring(iIndexOf, com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, iIndexOf, str.length(), '#'));
    }

    public URL Sj() {
        try {
            return new URL(this.TEQ);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String TKC() {
        if (this.vS.isEmpty()) {
            return "";
        }
        return this.TEQ.substring(this.TEQ.indexOf(58, this.Sj.length() + 3) + 1, this.TEQ.indexOf(64));
    }

    public boolean equals(Object obj) {
        return (obj instanceof Jcg) && ((Jcg) obj).TEQ.equals(this.TEQ);
    }

    public int hashCode() {
        return this.TEQ.hashCode();
    }

    public String sP() {
        if (this.HiB.isEmpty()) {
            return "";
        }
        int length = this.Sj.length() + 3;
        String str = this.TEQ;
        return this.TEQ.substring(length, com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str, length, str.length(), ":@"));
    }

    public String toString() {
        return this.TEQ;
    }

    public static int Sj(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    static void Sj(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append('/');
            sb2.append(list.get(i10));
        }
    }

    public static Jcg TKC(String str) {
        Sj sj2 = new Sj();
        if (sj2.Sj((Jcg) null, str) == Sj.EnumC0205Sj.SUCCESS) {
            return sj2.sP();
        }
        return null;
    }

    static void sP(StringBuilder sb2, List<String> list) {
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

    static String Sj(String str, boolean z10) {
        return Sj(str, 0, str.length(), z10);
    }

    private List<String> Sj(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? Sj(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static List<String> sP(String str) {
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

    static String Sj(String str, int i10, int i11, boolean z10) {
        for (int i12 = i10; i12 < i11; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                com.bytedance.sdk.component.sP.Sj.sP.Sj sj2 = new com.bytedance.sdk.component.sP.Sj.sP.Sj();
                sj2.Sj(str, i10, i12);
                Sj(sj2, str, i12, i11, z10);
                return sj2.TKC();
            }
        }
        return str.substring(i10, i11);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0039  */
    static void Sj(com.bytedance.sdk.component.sP.Sj.sP.Sj sj2, String str, int i10, int i11, boolean z10) {
        int i12;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (iCodePointAt == 37 && (i12 = i10 + 2) < i11) {
                int iSj = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i10 + 1));
                int iSj2 = com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i12));
                if (iSj != -1 && iSj2 != -1) {
                    sj2.sP((iSj << 4) + iSj2);
                    i10 = i12;
                } else {
                    sj2.Sj(iCodePointAt);
                }
            } else if (iCodePointAt == 43 && z10) {
                sj2.sP(32);
            } else {
                sj2.Sj(iCodePointAt);
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    static boolean Sj(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i10 + 1)) != -1 && com.bytedance.sdk.component.sP.Sj.sP.uA.Sj(str.charAt(i12)) != -1;
    }

    static String Sj(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int iCharCount = i10;
        while (iCharCount < i11) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && (iCodePointAt < 128 || !z13)) {
                if (str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z10 && (!z11 || Sj(str, iCharCount, i11)))) && (iCodePointAt != 43 || !z12))) {
                    iCharCount += Character.charCount(iCodePointAt);
                }
            }
            com.bytedance.sdk.component.sP.Sj.sP.Sj sj2 = new com.bytedance.sdk.component.sP.Sj.sP.Sj();
            sj2.Sj(str, i10, iCharCount);
            Sj(sj2, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
            return sj2.TKC();
        }
        return str.substring(i10, i11);
    }

    static void Sj(com.bytedance.sdk.component.sP.Sj.sP.Sj sj2, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.bytedance.sdk.component.sP.Sj.sP.Sj sj3 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z12) {
                    sj2.Sj(z10 ? "+" : "%2B");
                } else if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z13) && str2.indexOf(iCodePointAt) == -1 && (iCodePointAt != 37 || (z10 && (!z11 || Sj(str, i10, i11)))))) {
                    sj2.Sj(iCodePointAt);
                } else {
                    if (sj3 == null) {
                        sj3 = new com.bytedance.sdk.component.sP.Sj.sP.Sj();
                    }
                    if (charset != null && !charset.equals(com.bytedance.sdk.component.sP.Sj.sP.uA.Sj)) {
                        sj3.Sj(str, i10, Character.charCount(iCodePointAt) + i10, charset);
                    } else {
                        sj3.Sj(iCodePointAt);
                    }
                    while (!sj3.Sj()) {
                        byte bSP = sj3.sP();
                        sj2.sP(37);
                        char[] cArr = EjP;
                        sj2.sP((int) cArr[((bSP & 255) >> 4) & 15]);
                        sj2.sP((int) cArr[bSP & 15]);
                    }
                }
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    static String Sj(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return Sj(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }
}
