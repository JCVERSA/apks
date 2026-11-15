package com.yandex.mobile.ads.impl;

import androidx.webkit.ProxyConfig;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.hunantv.media.drm.IDrmSession;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.s15;
import defpackage.wn8;
import defpackage.y45;
import java.io.EOFException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.text.Regex;
import okhttp3.HttpUrl;
import okio.Buffer;
import okio.Utf8;
import org.apache.commons.io.IOUtils;
import org.mozilla.classfile.ByteCode;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;
import org.slf4j.Marker;

public final class gi0 {
    private static final char[] j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final int e;
    private final List<String> f;
    private final String g;
    private final String h;
    private final boolean i;

    public static final class a {
        private String a;
        private String d;
        private final ArrayList f;
        private ArrayList g;
        private String h;
        private String b = "";
        private String c = "";
        private int e = -1;

        public static final class C0314a {
            private C0314a() {
            }

            public static final int a(String str, int i, int i2) {
                try {
                    int i3 = Integer.parseInt(b.a(str, i, i2, "", false, false, false, false, 248));
                    if (1 > i3 || i3 >= 65536) {
                        return -1;
                    }
                    return i3;
                } catch (NumberFormatException unused) {
                }
            }

            public static final int b(String str, int i, int i2) {
                while (i < i2) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt == '[') {
                        do {
                            i++;
                            if (i >= i2) {
                                break;
                            }
                        } while (str.charAt(i) != ']');
                    } else if (cCharAt == ':') {
                        return i;
                    }
                    i++;
                }
                return i2;
            }

            public static final int c(String str, int i, int i2) {
                if (i2 - i >= 2) {
                    char cCharAt = str.charAt(i);
                    if ((y45.l(cCharAt, 97) >= 0 && y45.l(cCharAt, 122) <= 0) || (y45.l(cCharAt, 65) >= 0 && y45.l(cCharAt, 90) <= 0)) {
                        while (true) {
                            i++;
                            if (i >= i2) {
                                break;
                            }
                            char cCharAt2 = str.charAt(i);
                            if ('a' > cCharAt2 || cCharAt2 >= '{') {
                                if ('A' > cCharAt2 || cCharAt2 >= '[') {
                                    if ('0' > cCharAt2 || cCharAt2 >= ':') {
                                        if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                            if (cCharAt2 == ':') {
                                                return i;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return -1;
            }

            public static final int d(String str, int i, int i2) {
                int i3 = 0;
                while (i < i2) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt != '\\' && cCharAt != '/') {
                        break;
                    }
                    i3++;
                    i++;
                }
                return i3;
            }

            public C0314a(int i) {
                this();
            }
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add("");
        }

        public final gi0 a() {
            ArrayList arrayList;
            String str = this.a;
            if (str == null) {
                throw new IllegalStateException("scheme == null");
            }
            String strA = b.a(this.b, 0, 0, false, 7);
            String strA2 = b.a(this.c, 0, 0, false, 7);
            String str2 = this.d;
            if (str2 == null) {
                throw new IllegalStateException("host == null");
            }
            int i = this.e;
            int i2 = -1;
            if (i != -1) {
                i2 = i;
            } else {
                String str3 = this.a;
                y45.g(str3);
                y45.j(str3, "scheme");
                if (y45.e(str3, ProxyConfig.MATCH_HTTP)) {
                    i = 80;
                } else if (y45.e(str3, ProxyConfig.MATCH_HTTPS)) {
                    i = TranSceneConfig.SCENE_TYPE_GAME_FF_KILL;
                }
                i2 = i;
            }
            ArrayList arrayList2 = this.f;
            ArrayList arrayList3 = new ArrayList(defpackage.z71.v(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(b.a((String) it.next(), 0, 0, false, 7));
            }
            ArrayList<String> arrayList4 = this.g;
            if (arrayList4 != null) {
                arrayList = new ArrayList(defpackage.z71.v(arrayList4, 10));
                for (String str4 : arrayList4) {
                    arrayList.add(str4 != null ? b.a(str4, 0, 0, true, 3) : null);
                }
            } else {
                arrayList = null;
            }
            String str5 = this.h;
            return new gi0(str, strA, strA2, str2, i2, arrayList3, arrayList, str5 != null ? b.a(str5, 0, 0, false, 7) : null, toString());
        }

        public final ArrayList b() {
            return this.f;
        }

        public final a c() {
            y45.j("", "password");
            this.c = b.a("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, 251);
            return this;
        }

        public final a d() {
            String str = this.d;
            this.d = str != null ? new Regex("[\"<>^`{|}]").replace(str, "") : null;
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                ArrayList arrayList = this.f;
                arrayList.set(i, b.a((String) arrayList.get(i), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, 227));
            }
            ArrayList arrayList2 = this.g;
            if (arrayList2 != null) {
                int size2 = arrayList2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str2 = (String) arrayList2.get(i2);
                    arrayList2.set(i2, str2 != null ? b.a(str2, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, ByteCode.MONITOREXIT) : null);
                }
            }
            String str3 = this.h;
            this.h = str3 != null ? b.a(str3, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, 163) : null;
            return this;
        }

        public final void e(String str) {
            y45.j(str, "<set-?>");
            this.c = str;
        }

        public final void f(String str) {
            y45.j(str, "<set-?>");
            this.b = str;
        }

        public final void g(String str) {
            this.d = str;
        }

        public final void h(String str) {
            this.a = str;
        }

        /* JADX WARN: Code duplicated, block: B:44:0x00b3  */
        public final String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (this.b.length() > 0 || this.c.length() > 0) {
                sb.append(this.b);
                if (this.c.length() > 0) {
                    sb.append(':');
                    sb.append(this.c);
                }
                sb.append('@');
            }
            String str2 = this.d;
            if (str2 != null) {
                y45.g(str2);
                if (j1a.W(str2, ':', false, 2, null)) {
                    sb.append('[');
                    sb.append(this.d);
                    sb.append(']');
                } else {
                    sb.append(this.d);
                }
            }
            int i = this.e;
            int i2 = -1;
            if (i != -1 || this.a != null) {
                if (i == -1) {
                    String str3 = this.a;
                    y45.g(str3);
                    y45.j(str3, "scheme");
                    i = y45.e(str3, ProxyConfig.MATCH_HTTP) ? 80 : y45.e(str3, ProxyConfig.MATCH_HTTPS) ? 443 : -1;
                }
                String str4 = this.a;
                if (str4 != null) {
                    y45.g(str4);
                    y45.j(str4, "scheme");
                    if (y45.e(str4, ProxyConfig.MATCH_HTTP)) {
                        i2 = 80;
                    } else if (y45.e(str4, ProxyConfig.MATCH_HTTPS)) {
                        i2 = 443;
                    }
                    if (i != i2) {
                        sb.append(':');
                        sb.append(i);
                    }
                } else {
                    sb.append(':');
                    sb.append(i);
                }
            }
            ArrayList arrayList = this.f;
            y45.j(arrayList, "<this>");
            y45.j(sb, "out");
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                sb.append(IOUtils.DIR_SEPARATOR_UNIX);
                sb.append((String) arrayList.get(i3));
            }
            if (this.g != null) {
                sb.append('?');
                ArrayList arrayList2 = this.g;
                y45.g(arrayList2);
                y45.j(arrayList2, "<this>");
                y45.j(sb, "out");
                s15 s15VarP = wn8.p(wn8.q(0, arrayList2.size()), 2);
                int iB = s15VarP.b();
                int iC = s15VarP.c();
                int iF = s15VarP.f();
                if ((iF > 0 && iB <= iC) || (iF < 0 && iC <= iB)) {
                    while (true) {
                        String str5 = (String) arrayList2.get(iB);
                        String str6 = (String) arrayList2.get(iB + 1);
                        if (iB > 0) {
                            sb.append('&');
                        }
                        sb.append(str5);
                        if (str6 != null) {
                            sb.append('=');
                            sb.append(str6);
                        }
                        if (iB == iC) {
                            break;
                        }
                        iB += iF;
                    }
                }
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            String string = sb.toString();
            y45.i(string, "toString(...)");
            return string;
        }

        public final a b(String str) {
            y45.j(str, SerializableCookie.HOST);
            String strA = jg0.a(b.a(str, 0, 0, false, 7));
            if (strA != null) {
                this.d = strA;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        public final a c(String str) {
            y45.j(str, "scheme");
            if (g1a.E(str, ProxyConfig.MATCH_HTTP, true)) {
                this.a = ProxyConfig.MATCH_HTTP;
            } else if (g1a.E(str, ProxyConfig.MATCH_HTTPS, true)) {
                this.a = ProxyConfig.MATCH_HTTPS;
            } else {
                throw new IllegalArgumentException("unexpected scheme: " + str);
            }
            return this;
        }

        public final a e() {
            y45.j("", "username");
            this.b = b.a("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, 251);
            return this;
        }

        public final void b(int i) {
            this.e = i;
        }

        public final void d(String str) {
            this.h = str;
        }

        public final void a(String str) {
            String strA;
            this.g = (str == null || (strA = b.a(str, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, IDrmSession.ERROR_SESSION_PROVISION_PROVIDE_NONE)) == null) ? null : b.b(strA);
        }

        public final a a(gi0 gi0Var, String str) throws EOFException {
            int iA;
            int i;
            char c;
            y45.j(str, "input");
            int iA2 = g92.a(0, str.length(), str);
            int iB = g92.b(iA2, str.length(), str);
            int iC = C0314a.c(str, iA2, iB);
            boolean z = false;
            byte b = -1;
            if (iC != -1) {
                if (g1a.O(str, "https:", iA2, true)) {
                    this.a = ProxyConfig.MATCH_HTTPS;
                    iA2 += 6;
                } else if (g1a.O(str, "http:", iA2, true)) {
                    this.a = ProxyConfig.MATCH_HTTP;
                    iA2 += 5;
                } else {
                    String strSubstring = str.substring(0, iC);
                    y45.i(strSubstring, "substring(...)");
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + strSubstring + "'");
                }
            } else if (gi0Var != null) {
                this.a = gi0Var.k();
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int iD = C0314a.d(str, iA2, iB);
            byte b2 = Utf8.REPLACEMENT_BYTE;
            byte b3 = 92;
            byte b4 = 47;
            byte b5 = 35;
            if (iD < 2 && gi0Var != null && y45.e(gi0Var.k(), this.a)) {
                this.b = gi0Var.f();
                this.c = gi0Var.b();
                this.d = gi0Var.g();
                this.e = gi0Var.i();
                this.f.clear();
                this.f.addAll(gi0Var.d());
                if (iA2 == iB || str.charAt(iA2) == '#') {
                    a(gi0Var.e());
                }
            } else {
                int i2 = iA2 + iD;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    iA = g92.a(i2, iB, str, "@/\\?#");
                    byte bCharAt = iA != iB ? str.charAt(iA) : b;
                    if (bCharAt == b || bCharAt == b5 || bCharAt == b4 || bCharAt == b3 || bCharAt == b2) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (!z2) {
                            int iA3 = g92.a(str, ':', i2, iA);
                            i = iA;
                            String strA = b.a(str, i2, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 240);
                            if (z3) {
                                strA = this.b + "%40" + strA;
                            }
                            this.b = strA;
                            if (iA3 != i) {
                                this.c = b.a(str, iA3 + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 240);
                                z2 = true;
                            }
                            z3 = true;
                        } else {
                            i = iA;
                            this.c = this.c + "%40" + b.a(str, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, 240);
                        }
                        i2 = i + 1;
                        b5 = 35;
                        b4 = 47;
                        b3 = 92;
                        b2 = Utf8.REPLACEMENT_BYTE;
                        b = -1;
                    }
                }
                int iB2 = C0314a.b(str, i2, iA);
                int i3 = iB2 + 1;
                if (i3 < iA) {
                    this.d = jg0.a(b.a(str, i2, iB2, false, 4));
                    int iA4 = C0314a.a(str, i3, iA);
                    this.e = iA4;
                    if (iA4 == -1) {
                        String strSubstring2 = str.substring(i3, iA);
                        y45.i(strSubstring2, "substring(...)");
                        throw new IllegalArgumentException(("Invalid URL port: \"" + strSubstring2 + "\"").toString());
                    }
                    z = false;
                } else {
                    z = false;
                    this.d = jg0.a(b.a(str, i2, iB2, false, 4));
                    String str2 = this.a;
                    y45.g(str2);
                    this.e = b.a(str2);
                }
                if (this.d == null) {
                    String strSubstring3 = str.substring(i2, iB2);
                    y45.i(strSubstring3, "substring(...)");
                    throw new IllegalArgumentException(("Invalid URL host: \"" + strSubstring3 + "\"").toString());
                }
                iA2 = iA;
            }
            int iA5 = g92.a(iA2, iB, str, "?#");
            if (iA2 != iA5) {
                char cCharAt = str.charAt(iA2);
                if (cCharAt != '/' && cCharAt != '\\') {
                    ArrayList arrayList = this.f;
                    arrayList.set(arrayList.size() - 1, "");
                } else {
                    this.f.clear();
                    this.f.add("");
                    iA2++;
                }
                int i4 = iA2;
                while (i4 < iA5) {
                    int iA6 = g92.a(i4, iA5, str, "/\\");
                    boolean z4 = iA6 < iA5 ? true : z;
                    String strA2 = b.a(str, i4, iA6, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, 240);
                    if (!y45.e(strA2, Consts.DOT) && !g1a.E(strA2, "%2e", true)) {
                        if (!y45.e(strA2, FileTree.PARENT_DIR) && !g1a.E(strA2, "%2e.", true) && !g1a.E(strA2, ".%2e", true) && !g1a.E(strA2, "%2e%2e", true)) {
                            ArrayList arrayList2 = this.f;
                            if (((CharSequence) arrayList2.get(arrayList2.size() - 1)).length() == 0) {
                                ArrayList arrayList3 = this.f;
                                arrayList3.set(arrayList3.size() - 1, strA2);
                            } else {
                                this.f.add(strA2);
                            }
                            if (z4) {
                                this.f.add("");
                            }
                        } else {
                            ArrayList arrayList4 = this.f;
                            if (((String) arrayList4.remove(arrayList4.size() - 1)).length() == 0 && !this.f.isEmpty()) {
                                ArrayList arrayList5 = this.f;
                                arrayList5.set(arrayList5.size() - 1, "");
                            } else {
                                this.f.add("");
                            }
                        }
                    }
                    i4 = z4 ? iA6 + 1 : iA6;
                }
            }
            if (iA5 >= iB || str.charAt(iA5) != '?') {
                c = '#';
            } else {
                c = '#';
                int iA7 = g92.a(str, '#', iA5, iB);
                this.g = b.b(b.a(str, iA5 + 1, iA7, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, IDrmSession.ERROR_SESSION_DRM_PSSHS_EMPTY));
                iA5 = iA7;
            }
            if (iA5 < iB && str.charAt(iA5) == c) {
                this.h = b.a(str, iA5 + 1, iB, "", true, false, false, true, 176);
            }
            return this;
        }

        public final a a(int i) {
            if (1 <= i && i < 65536) {
                this.e = i;
                return this;
            }
            throw new IllegalArgumentException(("unexpected port: " + i).toString());
        }
    }

    public static final class b {
        private b() {
        }

        /* JADX WARN: Code duplicated, block: B:102:0x0122 A[LOOP:2: B:100:0x011c->B:102:0x0122, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:78:0x00d6  */
        /* JADX WARN: Code duplicated, block: B:94:0x010b  */
        /* JADX WARN: Code duplicated, block: B:98:0x0114  */
        public static String a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, int i3) throws EOFException {
            int i4;
            boolean z5 = false;
            int i5 = (i3 & 1) != 0 ? 0 : i;
            int length = (i3 & 2) != 0 ? str.length() : i2;
            boolean z6 = (i3 & 8) != 0 ? false : z;
            boolean z7 = (i3 & 16) != 0 ? false : z2;
            boolean z8 = (i3 & 32) != 0 ? false : z3;
            boolean z9 = (i3 & 64) != 0 ? false : z4;
            y45.j(str, "<this>");
            y45.j(str2, "encodeSet");
            int iCharCount = i5;
            while (iCharCount < length) {
                int iCodePointAt = str.codePointAt(iCharCount);
                int i6 = 127;
                if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z9) || j1a.W(str2, (char) iCodePointAt, z5, 2, null) || ((iCodePointAt == 37 && (!z6 || (z7 && ((i4 = iCharCount + 2) >= length || str.charAt(iCharCount) != '%' || g92.a(str.charAt(iCharCount + 1)) == -1 || g92.a(str.charAt(i4)) == -1)))) || (iCodePointAt == 43 && z8)))) {
                    Buffer buffer = new Buffer();
                    buffer.writeUtf8(str, i5, iCharCount);
                    Buffer buffer2 = null;
                    while (iCharCount < length) {
                        int iCodePointAt2 = str.codePointAt(iCharCount);
                        if (!z6 || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                            if (iCodePointAt2 == 43 && z8) {
                                buffer.writeUtf8(z6 ? Marker.ANY_NON_NULL_MARKER : "%2B");
                            } else if (iCodePointAt2 < 32 || iCodePointAt2 == i6 || ((iCodePointAt2 >= 128 && !z9) || j1a.W(str2, (char) iCodePointAt2, false, 2, null))) {
                                if (buffer2 == null) {
                                    buffer2 = new Buffer();
                                }
                                buffer2.writeUtf8CodePoint(iCodePointAt2);
                                while (!buffer2.exhausted()) {
                                    byte b = buffer2.readByte();
                                    buffer.writeByte(37);
                                    buffer.writeByte((int) gi0.j[((b & 255) >> 4) & 15]);
                                    buffer.writeByte((int) gi0.j[b & 15]);
                                }
                            } else {
                                if (iCodePointAt2 == 37) {
                                    if (z6) {
                                        if (z7) {
                                            int i7 = iCharCount + 2;
                                            if (i7 < length && str.charAt(iCharCount) == '%') {
                                                if (g92.a(str.charAt(iCharCount + 1)) == -1 || g92.a(str.charAt(i7)) == -1) {
                                                }
                                            }
                                        }
                                    }
                                    if (buffer2 == null) {
                                        buffer2 = new Buffer();
                                    }
                                    buffer2.writeUtf8CodePoint(iCodePointAt2);
                                    while (!buffer2.exhausted()) {
                                        byte b2 = buffer2.readByte();
                                        buffer.writeByte(37);
                                        buffer.writeByte((int) gi0.j[((b2 & 255) >> 4) & 15]);
                                        buffer.writeByte((int) gi0.j[b2 & 15]);
                                    }
                                }
                                buffer.writeUtf8CodePoint(iCodePointAt2);
                            }
                        }
                        iCharCount += Character.charCount(iCodePointAt2);
                        i6 = 127;
                    }
                    return buffer.readUtf8();
                }
                iCharCount += Character.charCount(iCodePointAt);
                z5 = false;
            }
            String strSubstring = str.substring(i5, length);
            y45.i(strSubstring, "substring(...)");
            return strSubstring;
        }

        public static ArrayList b(String str) {
            y45.j(str, "<this>");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int iL0 = j1a.l0(str, '&', i, false, 4, null);
                if (iL0 == -1) {
                    iL0 = str.length();
                }
                int i2 = iL0;
                int iL1 = j1a.l0(str, '=', i, false, 4, null);
                if (iL1 == -1 || iL1 > i2) {
                    String strSubstring = str.substring(i, i2);
                    y45.i(strSubstring, "substring(...)");
                    arrayList.add(strSubstring);
                    arrayList.add(null);
                } else {
                    String strSubstring2 = str.substring(i, iL1);
                    y45.i(strSubstring2, "substring(...)");
                    arrayList.add(strSubstring2);
                    String strSubstring3 = str.substring(iL1 + 1, i2);
                    y45.i(strSubstring3, "substring(...)");
                    arrayList.add(strSubstring3);
                }
                i = i2 + 1;
            }
            return arrayList;
        }

        public b(int i) {
            this();
        }

        public static int a(String str) {
            y45.j(str, "scheme");
            if (y45.e(str, ProxyConfig.MATCH_HTTP)) {
                return 80;
            }
            if (y45.e(str, ProxyConfig.MATCH_HTTPS)) {
                return TranSceneConfig.SCENE_TYPE_GAME_FF_KILL;
            }
            return -1;
        }

        public static String a(String str, int i, int i2, boolean z, int i3) {
            int i4;
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) != 0) {
                z = false;
            }
            y45.j(str, "<this>");
            int iCharCount = i;
            while (iCharCount < i2) {
                char cCharAt = str.charAt(iCharCount);
                if (cCharAt == '%' || (cCharAt == '+' && z)) {
                    Buffer buffer = new Buffer();
                    buffer.writeUtf8(str, i, iCharCount);
                    while (iCharCount < i2) {
                        int iCodePointAt = str.codePointAt(iCharCount);
                        if (iCodePointAt == 37 && (i4 = iCharCount + 2) < i2) {
                            int iA = g92.a(str.charAt(iCharCount + 1));
                            int iA2 = g92.a(str.charAt(i4));
                            if (iA != -1 && iA2 != -1) {
                                buffer.writeByte((iA << 4) + iA2);
                                iCharCount = Character.charCount(iCodePointAt) + i4;
                            } else {
                                buffer.writeUtf8CodePoint(iCodePointAt);
                                iCharCount += Character.charCount(iCodePointAt);
                            }
                        } else if (iCodePointAt == 43 && z) {
                            buffer.writeByte(32);
                            iCharCount++;
                        } else {
                            buffer.writeUtf8CodePoint(iCodePointAt);
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                    }
                    return buffer.readUtf8();
                }
                iCharCount++;
            }
            String strSubstring = str.substring(i, i2);
            y45.i(strSubstring, "substring(...)");
            return strSubstring;
        }
    }

    public gi0(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        y45.j(str, "scheme");
        y45.j(str2, "username");
        y45.j(str3, "password");
        y45.j(str4, SerializableCookie.HOST);
        y45.j(arrayList, "pathSegments");
        y45.j(str6, "url");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = i;
        this.f = arrayList2;
        this.g = str5;
        this.h = str6;
        this.i = y45.e(str, ProxyConfig.MATCH_HTTPS);
    }

    public final String b() {
        if (this.c.length() == 0) {
            return "";
        }
        String strSubstring = this.h.substring(j1a.l0(this.h, ':', this.a.length() + 3, false, 4, null) + 1, j1a.l0(this.h, '@', 0, false, 6, null));
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String c() {
        int iL0 = j1a.l0(this.h, IOUtils.DIR_SEPARATOR_UNIX, this.a.length() + 3, false, 4, null);
        String str = this.h;
        String strSubstring = this.h.substring(iL0, g92.a(iL0, str.length(), str, "?#"));
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final ArrayList d() {
        int iL0 = j1a.l0(this.h, IOUtils.DIR_SEPARATOR_UNIX, this.a.length() + 3, false, 4, null);
        String str = this.h;
        int iA = g92.a(iL0, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (iL0 < iA) {
            int i = iL0 + 1;
            int iA2 = g92.a(this.h, IOUtils.DIR_SEPARATOR_UNIX, i, iA);
            String strSubstring = this.h.substring(i, iA2);
            y45.i(strSubstring, "substring(...)");
            arrayList.add(strSubstring);
            iL0 = iA2;
        }
        return arrayList;
    }

    public final String e() {
        if (this.f == null) {
            return null;
        }
        int iL0 = j1a.l0(this.h, '?', 0, false, 6, null) + 1;
        String str = this.h;
        String strSubstring = this.h.substring(iL0, g92.a(str, '#', iL0, str.length()));
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof gi0) && y45.e(((gi0) obj).h, this.h);
    }

    public final String f() {
        if (this.b.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.h;
        String strSubstring = this.h.substring(length, g92.a(length, str.length(), str, ":@"));
        y45.i(strSubstring, "substring(...)");
        return strSubstring;
    }

    public final String g() {
        return this.d;
    }

    public final boolean h() {
        return this.i;
    }

    public final int hashCode() {
        return this.h.hashCode();
    }

    public final int i() {
        return this.e;
    }

    public final String j() throws EOFException {
        a aVarA;
        y45.j("/...", AuthInfo.Component.CODE_LINK);
        try {
            aVarA = new a().a(this, "/...");
        } catch (IllegalArgumentException unused) {
            aVarA = null;
        }
        y45.g(aVarA);
        return aVarA.e().c().a().h;
    }

    public final String k() {
        return this.a;
    }

    public final URI l() {
        String strSubstring;
        a aVar = new a();
        aVar.h(this.a);
        aVar.f(f());
        aVar.e(b());
        aVar.g(this.d);
        aVar.b(this.e != b.a(this.a) ? this.e : -1);
        aVar.b().clear();
        aVar.b().addAll(d());
        aVar.a(e());
        if (this.g == null) {
            strSubstring = null;
        } else {
            strSubstring = this.h.substring(j1a.l0(this.h, '#', 0, false, 6, null) + 1);
            y45.i(strSubstring, "substring(...)");
        }
        aVar.d(strSubstring);
        String string = aVar.d().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                URI uriCreate = URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").replace(string, ""));
                y45.g(uriCreate);
                return uriCreate;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    public final URL m() {
        try {
            return new URL(this.h);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    public final String toString() {
        return this.h;
    }
}
