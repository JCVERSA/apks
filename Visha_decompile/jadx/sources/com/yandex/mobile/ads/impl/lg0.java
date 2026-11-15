package com.yandex.mobile.ads.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.webkit.ProxyConfig;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.lzy.okgo.cookie.SerializableCookie;
import com.lzy.okgo.model.HttpHeaders;
import com.lzy.okgo.model.Progress;
import com.transsion.retrofit.reponse.ResponseUtil;
import com.transsion.socket.pkgdata.SocketData;
import defpackage.y45;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import org.mozilla.javascript.ES6Iterator;

public final class lg0 {
    private static final lf0[] a;
    private static final Map<ByteString, Integer> b;
    public static final int c = 0;

    public static final class a {
        private int a;
        private final ArrayList b;
        private final BufferedSource c;
        public lf0[] d;
        private int e;
        public int f;
        public int g;

        public a(nh0.b bVar) {
            this(bVar, 4096);
        }

        private final int a(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.d.length;
                while (true) {
                    length--;
                    i2 = this.e;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    lf0 lf0Var = this.d[length];
                    y45.g(lf0Var);
                    int i4 = lf0Var.c;
                    i -= i4;
                    this.g -= i4;
                    this.f--;
                    i3++;
                }
                lf0[] lf0VarArr = this.d;
                int i5 = i2 + 1;
                System.arraycopy(lf0VarArr, i5, lf0VarArr, i5 + i3, this.f);
                this.e += i3;
            }
            return i3;
        }

        private final ByteString b(int i) throws IOException {
            if (i >= 0 && i <= lg0.b().length - 1) {
                return lg0.b()[i].a;
            }
            int length = this.e + 1 + (i - lg0.b().length);
            if (length >= 0) {
                lf0[] lf0VarArr = this.d;
                if (length < lf0VarArr.length) {
                    lf0 lf0Var = lf0VarArr[length];
                    y45.g(lf0Var);
                    return lf0Var.a;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        public final void c() throws IOException {
            while (!this.c.exhausted()) {
                int iA = g92.a(this.c.readByte());
                if (iA == 128) {
                    throw new IOException("index == 0");
                }
                if ((iA & 128) == 128) {
                    c(a(iA, 127) - 1);
                } else if (iA == 64) {
                    int i = lg0.c;
                    a(new lf0(lg0.a(b()), b()));
                } else if ((iA & 64) == 64) {
                    a(new lf0(b(a(iA, 63) - 1), b()));
                } else if ((iA & 32) == 32) {
                    int iA2 = a(iA, 31);
                    this.a = iA2;
                    if (iA2 < 0 || iA2 > 4096) {
                        throw new IOException("Invalid dynamic table size update " + this.a);
                    }
                    int i2 = this.g;
                    if (iA2 < i2) {
                        if (iA2 == 0) {
                            defpackage.fi.y(this.d, null, 0, 0, 6, null);
                            this.e = this.d.length - 1;
                            this.f = 0;
                            this.g = 0;
                        } else {
                            a(i2 - iA2);
                        }
                    }
                } else if (iA == 16 || iA == 0) {
                    int i3 = lg0.c;
                    this.b.add(new lf0(lg0.a(b()), b()));
                } else {
                    this.b.add(new lf0(b(a(iA, 15) - 1), b()));
                }
            }
        }

        public a(nh0.b bVar, int i) {
            y45.j(bVar, "source");
            this.a = i;
            this.b = new ArrayList();
            this.c = Okio.buffer(bVar);
            this.d = new lf0[8];
            this.e = 7;
        }

        public final ByteString b() throws IOException {
            byte b = this.c.readByte();
            byte[] bArr = g92.a;
            int i = b & 255;
            boolean z = (b & SocketData.CLAZZ_TYPE_END_SOCKET) == 128;
            long jA = a(i, 127);
            if (z) {
                Buffer buffer = new Buffer();
                int i2 = ii0.d;
                ii0.a(this.c, jA, buffer);
                return buffer.readByteString();
            }
            return this.c.readByteString(jA);
        }

        public final List<lf0> a() {
            List<lf0> listB1 = defpackage.i81.b1(this.b);
            this.b.clear();
            return listB1;
        }

        private final void a(lf0 lf0Var) {
            this.b.add(lf0Var);
            int i = lf0Var.c;
            int i2 = this.a;
            if (i > i2) {
                defpackage.fi.y(this.d, null, 0, 0, 6, null);
                this.e = this.d.length - 1;
                this.f = 0;
                this.g = 0;
                return;
            }
            a((this.g + i) - i2);
            int i3 = this.f + 1;
            lf0[] lf0VarArr = this.d;
            if (i3 > lf0VarArr.length) {
                lf0[] lf0VarArr2 = new lf0[lf0VarArr.length * 2];
                System.arraycopy(lf0VarArr, 0, lf0VarArr2, lf0VarArr.length, lf0VarArr.length);
                this.e = this.d.length - 1;
                this.d = lf0VarArr2;
            }
            int i4 = this.e;
            this.e = i4 - 1;
            this.d[i4] = lf0Var;
            this.f++;
            this.g += i;
        }

        private final void c(int i) throws IOException {
            if (i >= 0 && i <= lg0.b().length - 1) {
                this.b.add(lg0.b()[i]);
                return;
            }
            int length = this.e + 1 + (i - lg0.b().length);
            if (length >= 0) {
                lf0[] lf0VarArr = this.d;
                if (length < lf0VarArr.length) {
                    ArrayList arrayList = this.b;
                    lf0 lf0Var = lf0VarArr[length];
                    y45.g(lf0Var);
                    arrayList.add(lf0Var);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        public final int a(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                byte b = this.c.readByte();
                byte[] bArr = g92.a;
                int i5 = b & 255;
                if ((b & SocketData.CLAZZ_TYPE_END_SOCKET) == 0) {
                    return i2 + (i5 << i4);
                }
                i2 += (b & 127) << i4;
                i4 += 7;
            }
        }
    }

    static {
        lf0 lf0Var = new lf0(lf0.i, "");
        ByteString byteString = lf0.f;
        lf0 lf0Var2 = new lf0(byteString, ShareTarget.METHOD_GET);
        y45.j(byteString, "name");
        y45.j("POST", ES6Iterator.VALUE_PROPERTY);
        ByteString.Companion companion = ByteString.INSTANCE;
        lf0 lf0Var3 = new lf0(byteString, companion.encodeUtf8("POST"));
        ByteString byteString2 = lf0.g;
        lf0 lf0Var4 = new lf0(byteString2, "/");
        y45.j(byteString2, "name");
        y45.j("/index.html", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var5 = new lf0(byteString2, companion.encodeUtf8("/index.html"));
        ByteString byteString3 = lf0.h;
        lf0 lf0Var6 = new lf0(byteString3, ProxyConfig.MATCH_HTTP);
        y45.j(byteString3, "name");
        y45.j(ProxyConfig.MATCH_HTTPS, ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var7 = new lf0(byteString3, companion.encodeUtf8(ProxyConfig.MATCH_HTTPS));
        ByteString byteString4 = lf0.e;
        lf0 lf0Var8 = new lf0(byteString4, ResponseUtil.CODE_SUCESS);
        y45.j(byteString4, "name");
        y45.j("204", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var9 = new lf0(byteString4, companion.encodeUtf8("204"));
        y45.j(byteString4, "name");
        y45.j("206", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var10 = new lf0(byteString4, companion.encodeUtf8("206"));
        y45.j(byteString4, "name");
        y45.j("304", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var11 = new lf0(byteString4, companion.encodeUtf8("304"));
        y45.j(byteString4, "name");
        y45.j("400", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var12 = new lf0(byteString4, companion.encodeUtf8("400"));
        y45.j(byteString4, "name");
        y45.j(ResponseUtil.CODE_NO_NETWORK, ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var13 = new lf0(byteString4, companion.encodeUtf8(ResponseUtil.CODE_NO_NETWORK));
        y45.j(byteString4, "name");
        y45.j("500", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var14 = new lf0(byteString4, companion.encodeUtf8("500"));
        y45.j("accept-charset", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var15 = new lf0(companion.encodeUtf8("accept-charset"), companion.encodeUtf8(""));
        y45.j("accept-encoding", "name");
        y45.j(HttpHeaders.HEAD_VALUE_ACCEPT_ENCODING, ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var16 = new lf0(companion.encodeUtf8("accept-encoding"), companion.encodeUtf8(HttpHeaders.HEAD_VALUE_ACCEPT_ENCODING));
        y45.j("accept-language", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var17 = new lf0(companion.encodeUtf8("accept-language"), companion.encodeUtf8(""));
        y45.j("accept-ranges", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var18 = new lf0(companion.encodeUtf8("accept-ranges"), companion.encodeUtf8(""));
        y45.j("accept", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var19 = new lf0(companion.encodeUtf8("accept"), companion.encodeUtf8(""));
        y45.j("access-control-allow-origin", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var20 = new lf0(companion.encodeUtf8("access-control-allow-origin"), companion.encodeUtf8(""));
        y45.j("age", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var21 = new lf0(companion.encodeUtf8("age"), companion.encodeUtf8(""));
        y45.j("allow", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var22 = new lf0(companion.encodeUtf8("allow"), companion.encodeUtf8(""));
        y45.j("authorization", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var23 = new lf0(companion.encodeUtf8("authorization"), companion.encodeUtf8(""));
        y45.j("cache-control", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var24 = new lf0(companion.encodeUtf8("cache-control"), companion.encodeUtf8(""));
        y45.j("content-disposition", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var25 = new lf0(companion.encodeUtf8("content-disposition"), companion.encodeUtf8(""));
        y45.j("content-encoding", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var26 = new lf0(companion.encodeUtf8("content-encoding"), companion.encodeUtf8(""));
        y45.j("content-language", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var27 = new lf0(companion.encodeUtf8("content-language"), companion.encodeUtf8(""));
        y45.j("content-length", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var28 = new lf0(companion.encodeUtf8("content-length"), companion.encodeUtf8(""));
        y45.j("content-location", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var29 = new lf0(companion.encodeUtf8("content-location"), companion.encodeUtf8(""));
        y45.j("content-range", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var30 = new lf0(companion.encodeUtf8("content-range"), companion.encodeUtf8(""));
        y45.j("content-type", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var31 = new lf0(companion.encodeUtf8("content-type"), companion.encodeUtf8(""));
        y45.j("cookie", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var32 = new lf0(companion.encodeUtf8("cookie"), companion.encodeUtf8(""));
        y45.j("date", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var33 = new lf0(companion.encodeUtf8("date"), companion.encodeUtf8(""));
        y45.j("etag", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var34 = new lf0(companion.encodeUtf8("etag"), companion.encodeUtf8(""));
        y45.j("expect", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var35 = new lf0(companion.encodeUtf8("expect"), companion.encodeUtf8(""));
        y45.j("expires", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var36 = new lf0(companion.encodeUtf8("expires"), companion.encodeUtf8(""));
        y45.j("from", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var37 = new lf0(companion.encodeUtf8("from"), companion.encodeUtf8(""));
        y45.j(SerializableCookie.HOST, "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var38 = new lf0(companion.encodeUtf8(SerializableCookie.HOST), companion.encodeUtf8(""));
        y45.j("if-match", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var39 = new lf0(companion.encodeUtf8("if-match"), companion.encodeUtf8(""));
        y45.j("if-modified-since", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var40 = new lf0(companion.encodeUtf8("if-modified-since"), companion.encodeUtf8(""));
        y45.j("if-none-match", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var41 = new lf0(companion.encodeUtf8("if-none-match"), companion.encodeUtf8(""));
        y45.j("if-range", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var42 = new lf0(companion.encodeUtf8("if-range"), companion.encodeUtf8(""));
        y45.j("if-unmodified-since", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var43 = new lf0(companion.encodeUtf8("if-unmodified-since"), companion.encodeUtf8(""));
        y45.j("last-modified", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var44 = new lf0(companion.encodeUtf8("last-modified"), companion.encodeUtf8(""));
        y45.j(AuthInfo.Component.CODE_LINK, "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var45 = new lf0(companion.encodeUtf8(AuthInfo.Component.CODE_LINK), companion.encodeUtf8(""));
        y45.j("location", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var46 = new lf0(companion.encodeUtf8("location"), companion.encodeUtf8(""));
        y45.j("max-forwards", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var47 = new lf0(companion.encodeUtf8("max-forwards"), companion.encodeUtf8(""));
        y45.j("proxy-authenticate", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var48 = new lf0(companion.encodeUtf8("proxy-authenticate"), companion.encodeUtf8(""));
        y45.j("proxy-authorization", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var49 = new lf0(companion.encodeUtf8("proxy-authorization"), companion.encodeUtf8(""));
        y45.j(SessionDescription.ATTR_RANGE, "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var50 = new lf0(companion.encodeUtf8(SessionDescription.ATTR_RANGE), companion.encodeUtf8(""));
        y45.j(Progress.REFERER, "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var51 = new lf0(companion.encodeUtf8(Progress.REFERER), companion.encodeUtf8(""));
        y45.j("refresh", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var52 = new lf0(companion.encodeUtf8("refresh"), companion.encodeUtf8(""));
        y45.j("retry-after", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var53 = new lf0(companion.encodeUtf8("retry-after"), companion.encodeUtf8(""));
        y45.j("server", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var54 = new lf0(companion.encodeUtf8("server"), companion.encodeUtf8(""));
        y45.j("set-cookie", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var55 = new lf0(companion.encodeUtf8("set-cookie"), companion.encodeUtf8(""));
        y45.j("strict-transport-security", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var56 = new lf0(companion.encodeUtf8("strict-transport-security"), companion.encodeUtf8(""));
        y45.j("transfer-encoding", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var57 = new lf0(companion.encodeUtf8("transfer-encoding"), companion.encodeUtf8(""));
        y45.j("user-agent", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var58 = new lf0(companion.encodeUtf8("user-agent"), companion.encodeUtf8(""));
        y45.j("vary", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var59 = new lf0(companion.encodeUtf8("vary"), companion.encodeUtf8(""));
        y45.j("via", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        lf0 lf0Var60 = new lf0(companion.encodeUtf8("via"), companion.encodeUtf8(""));
        y45.j("www-authenticate", "name");
        y45.j("", ES6Iterator.VALUE_PROPERTY);
        a = new lf0[]{lf0Var, lf0Var2, lf0Var3, lf0Var4, lf0Var5, lf0Var6, lf0Var7, lf0Var8, lf0Var9, lf0Var10, lf0Var11, lf0Var12, lf0Var13, lf0Var14, lf0Var15, lf0Var16, lf0Var17, lf0Var18, lf0Var19, lf0Var20, lf0Var21, lf0Var22, lf0Var23, lf0Var24, lf0Var25, lf0Var26, lf0Var27, lf0Var28, lf0Var29, lf0Var30, lf0Var31, lf0Var32, lf0Var33, lf0Var34, lf0Var35, lf0Var36, lf0Var37, lf0Var38, lf0Var39, lf0Var40, lf0Var41, lf0Var42, lf0Var43, lf0Var44, lf0Var45, lf0Var46, lf0Var47, lf0Var48, lf0Var49, lf0Var50, lf0Var51, lf0Var52, lf0Var53, lf0Var54, lf0Var55, lf0Var56, lf0Var57, lf0Var58, lf0Var59, lf0Var60, new lf0(companion.encodeUtf8("www-authenticate"), companion.encodeUtf8(""))};
        LinkedHashMap linkedHashMap = new LinkedHashMap(61);
        for (int i = 0; i < 61; i++) {
            lf0[] lf0VarArr = a;
            if (!linkedHashMap.containsKey(lf0VarArr[i].a)) {
                linkedHashMap.put(lf0VarArr[i].a, Integer.valueOf(i));
            }
        }
        Map<ByteString, Integer> mapUnmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        y45.i(mapUnmodifiableMap, "unmodifiableMap(...)");
        b = mapUnmodifiableMap;
    }

    public static ByteString a(ByteString byteString) throws IOException {
        y45.j(byteString, "name");
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b2 = byteString.getByte(i);
            if (65 <= b2 && b2 < 91) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    public static lf0[] b() {
        return a;
    }

    public static Map a() {
        return b;
    }

    public static final class b {
        private final boolean a;
        private final Buffer b;
        private int c;
        private boolean d;
        public int e;
        public lf0[] f;
        private int g;
        public int h;
        public int i;

        public b(int i, boolean z, Buffer buffer) {
            y45.j(buffer, "out");
            this.a = z;
            this.b = buffer;
            this.c = Integer.MAX_VALUE;
            this.e = i;
            this.f = new lf0[8];
            this.g = 7;
        }

        private final void a(int i) {
            int i2;
            if (i > 0) {
                int length = this.f.length - 1;
                int i3 = 0;
                while (true) {
                    i2 = this.g;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    lf0 lf0Var = this.f[length];
                    y45.g(lf0Var);
                    i -= lf0Var.c;
                    int i4 = this.i;
                    lf0 lf0Var2 = this.f[length];
                    y45.g(lf0Var2);
                    this.i = i4 - lf0Var2.c;
                    this.h--;
                    i3++;
                    length--;
                }
                lf0[] lf0VarArr = this.f;
                int i5 = i2 + 1;
                System.arraycopy(lf0VarArr, i5, lf0VarArr, i5 + i3, this.h);
                lf0[] lf0VarArr2 = this.f;
                int i6 = this.g + 1;
                Arrays.fill(lf0VarArr2, i6, i6 + i3, (Object) null);
                this.g += i3;
            }
        }

        public final void b(int i) {
            int iMin = Math.min(i, 16384);
            int i2 = this.e;
            if (i2 == iMin) {
                return;
            }
            if (iMin < i2) {
                this.c = Math.min(this.c, iMin);
            }
            this.d = true;
            this.e = iMin;
            int i3 = this.i;
            if (iMin < i3) {
                if (iMin != 0) {
                    a(i3 - iMin);
                    return;
                }
                defpackage.fi.y(this.f, null, 0, 0, 6, null);
                this.g = this.f.length - 1;
                this.h = 0;
                this.i = 0;
            }
        }

        public b(Buffer buffer) {
            this(4096, true, buffer);
        }

        private final void a(lf0 lf0Var) {
            int i = lf0Var.c;
            int i2 = this.e;
            if (i > i2) {
                defpackage.fi.y(this.f, null, 0, 0, 6, null);
                this.g = this.f.length - 1;
                this.h = 0;
                this.i = 0;
                return;
            }
            a((this.i + i) - i2);
            int i3 = this.h + 1;
            lf0[] lf0VarArr = this.f;
            if (i3 > lf0VarArr.length) {
                lf0[] lf0VarArr2 = new lf0[lf0VarArr.length * 2];
                System.arraycopy(lf0VarArr, 0, lf0VarArr2, lf0VarArr.length, lf0VarArr.length);
                this.g = this.f.length - 1;
                this.f = lf0VarArr2;
            }
            int i4 = this.g;
            this.g = i4 - 1;
            this.f[i4] = lf0Var;
            this.h++;
            this.i += i;
        }

        public final void a(ByteString byteString) throws IOException {
            y45.j(byteString, "data");
            if (this.a && ii0.a(byteString) < byteString.size()) {
                Buffer buffer = new Buffer();
                ii0.a(byteString, buffer);
                ByteString byteString2 = buffer.readByteString();
                a(byteString2.size(), 127, 128);
                this.b.write(byteString2);
                return;
            }
            a(byteString.size(), 127, 0);
            this.b.write(byteString);
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0076  */
        public final void a(ArrayList arrayList) throws IOException {
            int length;
            int length2;
            y45.j(arrayList, "headerBlock");
            if (this.d) {
                int i = this.c;
                if (i < this.e) {
                    a(i, 31, 32);
                }
                this.d = false;
                this.c = Integer.MAX_VALUE;
                a(this.e, 31, 32);
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                lf0 lf0Var = (lf0) arrayList.get(i2);
                ByteString asciiLowercase = lf0Var.a.toAsciiLowercase();
                ByteString byteString = lf0Var.b;
                Integer num = (Integer) lg0.a().get(asciiLowercase);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (2 > length2 || length2 >= 8) {
                        length = length2;
                        length2 = -1;
                    } else if (y45.e(lg0.b()[iIntValue].b, byteString)) {
                        length = length2;
                    } else if (y45.e(lg0.b()[length2].b, byteString)) {
                        length2 = iIntValue + 2;
                        length = length2;
                    } else {
                        length = length2;
                        length2 = -1;
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length2 == -1) {
                    int length3 = this.f.length;
                    for (int i3 = this.g + 1; i3 < length3; i3++) {
                        lf0 lf0Var2 = this.f[i3];
                        y45.g(lf0Var2);
                        if (y45.e(lf0Var2.a, asciiLowercase)) {
                            lf0 lf0Var3 = this.f[i3];
                            y45.g(lf0Var3);
                            if (y45.e(lf0Var3.b, byteString)) {
                                length2 = lg0.b().length + (i3 - this.g);
                                break;
                            } else if (length == -1) {
                                length = (i3 - this.g) + lg0.b().length;
                            }
                        }
                    }
                }
                if (length2 != -1) {
                    a(length2, 127, 128);
                } else if (length == -1) {
                    this.b.writeByte(64);
                    a(asciiLowercase);
                    a(byteString);
                    a(lf0Var);
                } else if (asciiLowercase.startsWith(lf0.d) && !y45.e(lf0.i, asciiLowercase)) {
                    a(length, 15, 0);
                    a(byteString);
                } else {
                    a(length, 63, 64);
                    a(byteString);
                    a(lf0Var);
                }
            }
        }

        public final void a(int i, int i2, int i3) {
            if (i < i2) {
                this.b.writeByte(i | i3);
                return;
            }
            this.b.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.b.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.b.writeByte(i4);
        }
    }
}
