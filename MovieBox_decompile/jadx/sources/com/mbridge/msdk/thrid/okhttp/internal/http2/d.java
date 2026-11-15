package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.integration.cronet.BufferQueue;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.thrid.okio.s;
import com.transsion.push.bean.MsgShowStatus;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

final class d {

    static final c[] f37230a;

    static final Map<com.mbridge.msdk.thrid.okio.f, Integer> f37231b;

    static final class a {

        private final List<c> f37232a;

        private final com.mbridge.msdk.thrid.okio.e f37233b;

        private final int f37234c;

        private int f37235d;

        c[] f37236e;

        int f37237f;

        int f37238g;

        int f37239h;

        a(int i10, s sVar) {
            this(i10, i10, sVar);
        }

        private void a() {
            int i10 = this.f37235d;
            int i11 = this.f37239h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    b(i11 - i10);
                }
            }
        }

        private void b() {
            Arrays.fill(this.f37236e, (Object) null);
            this.f37237f = this.f37236e.length - 1;
            this.f37238g = 0;
            this.f37239h = 0;
        }

        private boolean d(int i10) {
            return i10 >= 0 && i10 <= d.f37230a.length - 1;
        }

        private void e(int i10) throws IOException {
            if (d(i10)) {
                this.f37232a.add(d.f37230a[i10]);
                return;
            }
            int iA = a(i10 - d.f37230a.length);
            if (iA >= 0) {
                c[] cVarArr = this.f37236e;
                if (iA < cVarArr.length) {
                    this.f37232a.add(cVarArr[iA]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private void g(int i10) throws IOException {
            this.f37232a.add(new c(c(i10), e()));
        }

        private void h() throws IOException {
            this.f37232a.add(new c(d.a(e()), e()));
        }

        public List<c> c() {
            ArrayList arrayList = new ArrayList(this.f37232a);
            this.f37232a.clear();
            return arrayList;
        }

        void f() throws IOException {
            while (!this.f37233b.f()) {
                byte b10 = this.f37233b.readByte();
                int i10 = b10 & 255;
                if (i10 == 128) {
                    throw new IOException("index == 0");
                }
                if ((b10 & 128) == 128) {
                    e(a(i10, 127) - 1);
                } else if (i10 == 64) {
                    g();
                } else if ((b10 & 64) == 64) {
                    f(a(i10, 63) - 1);
                } else if ((b10 & 32) == 32) {
                    int iA = a(i10, 31);
                    this.f37235d = iA;
                    if (iA < 0 || iA > this.f37234c) {
                        throw new IOException("Invalid dynamic table size update " + this.f37235d);
                    }
                    a();
                } else if (i10 == 16 || i10 == 0) {
                    h();
                } else {
                    g(a(i10, 15) - 1);
                }
            }
        }

        a(int i10, int i11, s sVar) {
            this.f37232a = new ArrayList();
            this.f37236e = new c[8];
            this.f37237f = 7;
            this.f37238g = 0;
            this.f37239h = 0;
            this.f37234c = i10;
            this.f37235d = i11;
            this.f37233b = com.mbridge.msdk.thrid.okio.l.a(sVar);
        }

        private int d() throws IOException {
            return this.f37233b.readByte() & 255;
        }

        private com.mbridge.msdk.thrid.okio.f c(int i10) throws IOException {
            if (d(i10)) {
                return d.f37230a[i10].f37227a;
            }
            int iA = a(i10 - d.f37230a.length);
            if (iA >= 0) {
                c[] cVarArr = this.f37236e;
                if (iA < cVarArr.length) {
                    return cVarArr[iA].f37227a;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private int a(int i10) {
            return this.f37237f + 1 + i10;
        }

        private void g() throws IOException {
            a(-1, new c(d.a(e()), e()));
        }

        private void a(int i10, c cVar) {
            this.f37232a.add(cVar);
            int i11 = cVar.f37229c;
            if (i10 != -1) {
                i11 -= this.f37236e[a(i10)].f37229c;
            }
            int i12 = this.f37235d;
            if (i11 > i12) {
                b();
                return;
            }
            int iB = b((this.f37239h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f37238g + 1;
                c[] cVarArr = this.f37236e;
                if (i13 > cVarArr.length) {
                    c[] cVarArr2 = new c[cVarArr.length * 2];
                    System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                    this.f37237f = this.f37236e.length - 1;
                    this.f37236e = cVarArr2;
                }
                int i14 = this.f37237f;
                this.f37237f = i14 - 1;
                this.f37236e[i14] = cVar;
                this.f37238g++;
            } else {
                this.f37236e[i10 + a(i10) + iB] = cVar;
            }
            this.f37239h += i11;
        }

        private int b(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f37236e.length;
                while (true) {
                    length--;
                    i11 = this.f37237f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f37236e[length].f37229c;
                    i10 -= i13;
                    this.f37239h -= i13;
                    this.f37238g--;
                    i12++;
                }
                c[] cVarArr = this.f37236e;
                int i14 = i11 + 1;
                System.arraycopy(cVarArr, i14, cVarArr, i14 + i12, this.f37238g);
                this.f37237f += i12;
            }
            return i12;
        }

        com.mbridge.msdk.thrid.okio.f e() throws IOException {
            int iD = d();
            boolean z10 = (iD & 128) == 128;
            int iA = a(iD, 127);
            if (z10) {
                return com.mbridge.msdk.thrid.okio.f.a(k.b().a(this.f37233b.c(iA)));
            }
            return this.f37233b.b(iA);
        }

        private void f(int i10) throws IOException {
            a(-1, new c(c(i10), e()));
        }

        int a(int i10, int i11) throws IOException {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int iD = d();
                if ((iD & 128) == 0) {
                    return i11 + (iD << i13);
                }
                i11 += (iD & 127) << i13;
                i13 += 7;
            }
        }
    }

    static final class b {

        private final com.mbridge.msdk.thrid.okio.c f37240a;

        private final boolean f37241b;

        private int f37242c;

        private boolean f37243d;

        int f37244e;

        int f37245f;

        c[] f37246g;

        int f37247h;

        int f37248i;

        int f37249j;

        b(com.mbridge.msdk.thrid.okio.c cVar) {
            this(4096, true, cVar);
        }

        private int a(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f37246g.length;
                while (true) {
                    length--;
                    i11 = this.f37247h;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f37246g[length].f37229c;
                    i10 -= i13;
                    this.f37249j -= i13;
                    this.f37248i--;
                    i12++;
                }
                c[] cVarArr = this.f37246g;
                int i14 = i11 + 1;
                System.arraycopy(cVarArr, i14, cVarArr, i14 + i12, this.f37248i);
                c[] cVarArr2 = this.f37246g;
                int i15 = this.f37247h + 1;
                Arrays.fill(cVarArr2, i15, i15 + i12, (Object) null);
                this.f37247h += i12;
            }
            return i12;
        }

        private void b() {
            Arrays.fill(this.f37246g, (Object) null);
            this.f37247h = this.f37246g.length - 1;
            this.f37248i = 0;
            this.f37249j = 0;
        }

        b(int i10, boolean z10, com.mbridge.msdk.thrid.okio.c cVar) {
            this.f37242c = Integer.MAX_VALUE;
            this.f37246g = new c[8];
            this.f37247h = 7;
            this.f37248i = 0;
            this.f37249j = 0;
            this.f37244e = i10;
            this.f37245f = i10;
            this.f37241b = z10;
            this.f37240a = cVar;
        }

        void b(int i10) {
            this.f37244e = i10;
            int iMin = Math.min(i10, 16384);
            int i11 = this.f37245f;
            if (i11 == iMin) {
                return;
            }
            if (iMin < i11) {
                this.f37242c = Math.min(this.f37242c, iMin);
            }
            this.f37243d = true;
            this.f37245f = iMin;
            a();
        }

        private void a(c cVar) {
            int i10 = cVar.f37229c;
            int i11 = this.f37245f;
            if (i10 > i11) {
                b();
                return;
            }
            a((this.f37249j + i10) - i11);
            int i12 = this.f37248i + 1;
            c[] cVarArr = this.f37246g;
            if (i12 > cVarArr.length) {
                c[] cVarArr2 = new c[cVarArr.length * 2];
                System.arraycopy(cVarArr, 0, cVarArr2, cVarArr.length, cVarArr.length);
                this.f37247h = this.f37246g.length - 1;
                this.f37246g = cVarArr2;
            }
            int i13 = this.f37247h;
            this.f37247h = i13 - 1;
            this.f37246g[i13] = cVar;
            this.f37248i++;
            this.f37249j += i10;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x0069  */
        void a(List<c> list) throws IOException {
            int length;
            int length2;
            if (this.f37243d) {
                int i10 = this.f37242c;
                if (i10 < this.f37245f) {
                    a(i10, 31, 32);
                }
                this.f37243d = false;
                this.f37242c = Integer.MAX_VALUE;
                a(this.f37245f, 31, 32);
            }
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                c cVar = list.get(i11);
                com.mbridge.msdk.thrid.okio.f fVarF = cVar.f37227a.f();
                com.mbridge.msdk.thrid.okio.f fVar = cVar.f37228b;
                Integer num = d.f37231b.get(fVarF);
                if (num != null) {
                    int iIntValue = num.intValue();
                    length2 = iIntValue + 1;
                    if (length2 <= 1 || length2 >= 8) {
                        length = length2;
                        length2 = -1;
                    } else {
                        c[] cVarArr = d.f37230a;
                        if (com.mbridge.msdk.thrid.okhttp.internal.c.a(cVarArr[iIntValue].f37228b, fVar)) {
                            length = length2;
                        } else if (com.mbridge.msdk.thrid.okhttp.internal.c.a(cVarArr[length2].f37228b, fVar)) {
                            length2 = iIntValue + 2;
                            length = length2;
                        } else {
                            length = length2;
                            length2 = -1;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length2 == -1) {
                    int length3 = this.f37246g.length;
                    for (int i12 = this.f37247h + 1; i12 < length3; i12++) {
                        if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37246g[i12].f37227a, fVarF)) {
                            if (com.mbridge.msdk.thrid.okhttp.internal.c.a(this.f37246g[i12].f37228b, fVar)) {
                                length2 = (i12 - this.f37247h) + d.f37230a.length;
                                break;
                            } else if (length == -1) {
                                length = (i12 - this.f37247h) + d.f37230a.length;
                            }
                        }
                    }
                }
                if (length2 != -1) {
                    a(length2, 127, 128);
                } else if (length == -1) {
                    this.f37240a.writeByte(64);
                    a(fVarF);
                    a(fVar);
                    a(cVar);
                } else if (fVarF.b(c.f37221d) && !c.f37226i.equals(fVarF)) {
                    a(length, 15, 0);
                    a(fVar);
                } else {
                    a(length, 63, 64);
                    a(fVar);
                    a(cVar);
                }
            }
        }

        void a(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f37240a.writeByte(i10 | i12);
                return;
            }
            this.f37240a.writeByte(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f37240a.writeByte(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.f37240a.writeByte(i13);
        }

        void a(com.mbridge.msdk.thrid.okio.f fVar) throws IOException {
            if (this.f37241b && k.b().a(fVar) < fVar.e()) {
                com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
                k.b().a(fVar, cVar);
                com.mbridge.msdk.thrid.okio.f fVarO = cVar.o();
                a(fVarO.e(), 127, 128);
                this.f37240a.a(fVarO);
                return;
            }
            a(fVar.e(), 127, 0);
            this.f37240a.a(fVar);
        }

        private void a() {
            int i10 = this.f37245f;
            int i11 = this.f37249j;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    a(i11 - i10);
                }
            }
        }
    }

    static {
        c cVar = new c(c.f37226i, "");
        com.mbridge.msdk.thrid.okio.f fVar = c.f37223f;
        c cVar2 = new c(fVar, "GET");
        c cVar3 = new c(fVar, "POST");
        com.mbridge.msdk.thrid.okio.f fVar2 = c.f37224g;
        c cVar4 = new c(fVar2, "/");
        c cVar5 = new c(fVar2, "/index.html");
        com.mbridge.msdk.thrid.okio.f fVar3 = c.f37225h;
        c cVar6 = new c(fVar3, "http");
        c cVar7 = new c(fVar3, "https");
        com.mbridge.msdk.thrid.okio.f fVar4 = c.f37222e;
        f37230a = new c[]{cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, new c(fVar4, MsgShowStatus.STATUS_OK), new c(fVar4, "204"), new c(fVar4, "206"), new c(fVar4, "304"), new c(fVar4, "400"), new c(fVar4, "404"), new c(fVar4, "500"), new c("accept-charset", ""), new c("accept-encoding", "gzip, deflate"), new c("accept-language", ""), new c("accept-ranges", ""), new c("accept", ""), new c("access-control-allow-origin", ""), new c("age", ""), new c("allow", ""), new c("authorization", ""), new c("cache-control", ""), new c("content-disposition", ""), new c(BufferQueue.CONTENT_ENCODING, ""), new c("content-language", ""), new c(BufferQueue.CONTENT_LENGTH, ""), new c("content-location", ""), new c("content-range", ""), new c("content-type", ""), new c("cookie", ""), new c("date", ""), new c(DownloadModel.ETAG, ""), new c("expect", ""), new c("expires", ""), new c("from", ""), new c("host", ""), new c("if-match", ""), new c("if-modified-since", ""), new c("if-none-match", ""), new c("if-range", ""), new c("if-unmodified-since", ""), new c("last-modified", ""), new c("link", ""), new c(RequestParameters.SUBRESOURCE_LOCATION, ""), new c("max-forwards", ""), new c("proxy-authenticate", ""), new c("proxy-authorization", ""), new c("range", ""), new c(RequestParameters.SUBRESOURCE_REFERER, ""), new c(ToolBar.REFRESH, ""), new c("retry-after", ""), new c(TmcConstants.CHANNEL_REQUEST_SERVER, ""), new c("set-cookie", ""), new c("strict-transport-security", ""), new c("transfer-encoding", ""), new c("user-agent", ""), new c("vary", ""), new c("via", ""), new c("www-authenticate", "")};
        f37231b = a();
    }

    private static Map<com.mbridge.msdk.thrid.okio.f, Integer> a() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f37230a.length);
        int i10 = 0;
        while (true) {
            c[] cVarArr = f37230a;
            if (i10 >= cVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(cVarArr[i10].f37227a)) {
                linkedHashMap.put(cVarArr[i10].f37227a, Integer.valueOf(i10));
            }
            i10++;
        }
    }

    static com.mbridge.msdk.thrid.okio.f a(com.mbridge.msdk.thrid.okio.f fVar) throws IOException {
        int iE = fVar.e();
        for (int i10 = 0; i10 < iE; i10++) {
            byte bA = fVar.a(i10);
            if (bA >= 65 && bA <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + fVar.h());
            }
        }
        return fVar;
    }
}
