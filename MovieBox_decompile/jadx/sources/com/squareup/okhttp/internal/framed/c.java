package com.squareup.okhttp.internal.framed;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.integration.cronet.BufferQueue;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.transsion.push.bean.MsgShowStatus;
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
import okio.Source;

abstract class c {

    private static final com.squareup.okhttp.internal.framed.b[] f39541a;

    private static final Map f39542b;

    static final class a {

        private final BufferedSource f39544b;

        private int f39545c;

        private int f39546d;

        com.squareup.okhttp.internal.framed.b[] f39547e;

        int f39548f;

        private final List f39543a = new ArrayList();

        int f39549g = 0;

        int f39550h = 0;

        a(int i10, Source source) {
            com.squareup.okhttp.internal.framed.b[] bVarArr = new com.squareup.okhttp.internal.framed.b[8];
            this.f39547e = bVarArr;
            this.f39548f = bVarArr.length - 1;
            this.f39545c = i10;
            this.f39546d = i10;
            this.f39544b = Okio.buffer(source);
        }

        private void a() {
            int i10 = this.f39546d;
            int i11 = this.f39550h;
            if (i10 < i11) {
                if (i10 == 0) {
                    b();
                } else {
                    d(i11 - i10);
                }
            }
        }

        private void b() {
            this.f39543a.clear();
            Arrays.fill(this.f39547e, (Object) null);
            this.f39548f = this.f39547e.length - 1;
            this.f39549g = 0;
            this.f39550h = 0;
        }

        private int c(int i10) {
            return this.f39548f + 1 + i10;
        }

        private int d(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f39547e.length;
                while (true) {
                    length--;
                    i11 = this.f39548f;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f39547e[length].f39540c;
                    i10 -= i13;
                    this.f39550h -= i13;
                    this.f39549g--;
                    i12++;
                }
                com.squareup.okhttp.internal.framed.b[] bVarArr = this.f39547e;
                System.arraycopy(bVarArr, i11 + 1, bVarArr, i11 + 1 + i12, this.f39549g);
                this.f39548f += i12;
            }
            return i12;
        }

        private ByteString f(int i10) {
            return i(i10) ? c.f39541a[i10].f39538a : this.f39547e[c(i10 - c.f39541a.length)].f39538a;
        }

        private void h(int i10, com.squareup.okhttp.internal.framed.b bVar) {
            this.f39543a.add(bVar);
            int i11 = bVar.f39540c;
            if (i10 != -1) {
                i11 -= this.f39547e[c(i10)].f39540c;
            }
            int i12 = this.f39546d;
            if (i11 > i12) {
                b();
                return;
            }
            int iD = d((this.f39550h + i11) - i12);
            if (i10 == -1) {
                int i13 = this.f39549g + 1;
                com.squareup.okhttp.internal.framed.b[] bVarArr = this.f39547e;
                if (i13 > bVarArr.length) {
                    com.squareup.okhttp.internal.framed.b[] bVarArr2 = new com.squareup.okhttp.internal.framed.b[bVarArr.length * 2];
                    System.arraycopy(bVarArr, 0, bVarArr2, bVarArr.length, bVarArr.length);
                    this.f39548f = this.f39547e.length - 1;
                    this.f39547e = bVarArr2;
                }
                int i14 = this.f39548f;
                this.f39548f = i14 - 1;
                this.f39547e[i14] = bVar;
                this.f39549g++;
            } else {
                this.f39547e[i10 + c(i10) + iD] = bVar;
            }
            this.f39550h += i11;
        }

        private boolean i(int i10) {
            return i10 >= 0 && i10 <= c.f39541a.length - 1;
        }

        private int j() {
            return this.f39544b.readByte() & 255;
        }

        private void m(int i10) throws IOException {
            if (i(i10)) {
                this.f39543a.add(c.f39541a[i10]);
                return;
            }
            int iC = c(i10 - c.f39541a.length);
            if (iC >= 0) {
                com.squareup.okhttp.internal.framed.b[] bVarArr = this.f39547e;
                if (iC <= bVarArr.length - 1) {
                    this.f39543a.add(bVarArr[iC]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private void o(int i10) {
            h(-1, new com.squareup.okhttp.internal.framed.b(f(i10), k()));
        }

        private void p() {
            h(-1, new com.squareup.okhttp.internal.framed.b(c.d(k()), k()));
        }

        private void q(int i10) {
            this.f39543a.add(new com.squareup.okhttp.internal.framed.b(f(i10), k()));
        }

        private void r() throws IOException {
            this.f39543a.add(new com.squareup.okhttp.internal.framed.b(c.d(k()), k()));
        }

        public List e() {
            ArrayList arrayList = new ArrayList(this.f39543a);
            this.f39543a.clear();
            return arrayList;
        }

        void g(int i10) {
            this.f39545c = i10;
            this.f39546d = i10;
            a();
        }

        ByteString k() {
            int iJ = j();
            boolean z10 = (iJ & 128) == 128;
            int iN = n(iJ, 127);
            return z10 ? ByteString.of(e.d().c(this.f39544b.readByteArray(iN))) : this.f39544b.readByteString(iN);
        }

        void l() throws IOException {
            while (!this.f39544b.exhausted()) {
                byte b10 = this.f39544b.readByte();
                int i10 = b10 & 255;
                if (i10 == 128) {
                    throw new IOException("index == 0");
                }
                if ((b10 & 128) == 128) {
                    m(n(i10, 127) - 1);
                } else if (i10 == 64) {
                    p();
                } else if ((b10 & 64) == 64) {
                    o(n(i10, 63) - 1);
                } else if ((b10 & 32) == 32) {
                    int iN = n(i10, 31);
                    this.f39546d = iN;
                    if (iN < 0 || iN > this.f39545c) {
                        throw new IOException("Invalid dynamic table size update " + this.f39546d);
                    }
                    a();
                } else if (i10 == 16 || i10 == 0) {
                    r();
                } else {
                    q(n(i10, 15) - 1);
                }
            }
        }

        int n(int i10, int i11) {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int iJ = j();
                if ((iJ & 128) == 0) {
                    return i11 + (iJ << i13);
                }
                i11 += (iJ & 127) << i13;
                i13 += 7;
            }
        }
    }

    static final class b {

        private final Buffer f39551a;

        b(Buffer buffer) {
            this.f39551a = buffer;
        }

        void a(ByteString byteString) {
            c(byteString.size(), 127, 0);
            this.f39551a.write(byteString);
        }

        void b(List list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                ByteString asciiLowercase = ((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39538a.toAsciiLowercase();
                Integer num = (Integer) c.f39542b.get(asciiLowercase);
                if (num != null) {
                    c(num.intValue() + 1, 15, 0);
                    a(((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39539b);
                } else {
                    this.f39551a.writeByte(0);
                    a(asciiLowercase);
                    a(((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39539b);
                }
            }
        }

        void c(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.f39551a.writeByte(i10 | i12);
                return;
            }
            this.f39551a.writeByte(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.f39551a.writeByte(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.f39551a.writeByte(i13);
        }
    }

    static {
        com.squareup.okhttp.internal.framed.b bVar = new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39535h, "");
        ByteString byteString = com.squareup.okhttp.internal.framed.b.f39532e;
        com.squareup.okhttp.internal.framed.b bVar2 = new com.squareup.okhttp.internal.framed.b(byteString, "GET");
        com.squareup.okhttp.internal.framed.b bVar3 = new com.squareup.okhttp.internal.framed.b(byteString, "POST");
        ByteString byteString2 = com.squareup.okhttp.internal.framed.b.f39533f;
        com.squareup.okhttp.internal.framed.b bVar4 = new com.squareup.okhttp.internal.framed.b(byteString2, "/");
        com.squareup.okhttp.internal.framed.b bVar5 = new com.squareup.okhttp.internal.framed.b(byteString2, "/index.html");
        ByteString byteString3 = com.squareup.okhttp.internal.framed.b.f39534g;
        com.squareup.okhttp.internal.framed.b bVar6 = new com.squareup.okhttp.internal.framed.b(byteString3, "http");
        com.squareup.okhttp.internal.framed.b bVar7 = new com.squareup.okhttp.internal.framed.b(byteString3, "https");
        ByteString byteString4 = com.squareup.okhttp.internal.framed.b.f39531d;
        f39541a = new com.squareup.okhttp.internal.framed.b[]{bVar, bVar2, bVar3, bVar4, bVar5, bVar6, bVar7, new com.squareup.okhttp.internal.framed.b(byteString4, MsgShowStatus.STATUS_OK), new com.squareup.okhttp.internal.framed.b(byteString4, "204"), new com.squareup.okhttp.internal.framed.b(byteString4, "206"), new com.squareup.okhttp.internal.framed.b(byteString4, "304"), new com.squareup.okhttp.internal.framed.b(byteString4, "400"), new com.squareup.okhttp.internal.framed.b(byteString4, "404"), new com.squareup.okhttp.internal.framed.b(byteString4, "500"), new com.squareup.okhttp.internal.framed.b("accept-charset", ""), new com.squareup.okhttp.internal.framed.b("accept-encoding", "gzip, deflate"), new com.squareup.okhttp.internal.framed.b("accept-language", ""), new com.squareup.okhttp.internal.framed.b("accept-ranges", ""), new com.squareup.okhttp.internal.framed.b("accept", ""), new com.squareup.okhttp.internal.framed.b("access-control-allow-origin", ""), new com.squareup.okhttp.internal.framed.b("age", ""), new com.squareup.okhttp.internal.framed.b("allow", ""), new com.squareup.okhttp.internal.framed.b("authorization", ""), new com.squareup.okhttp.internal.framed.b("cache-control", ""), new com.squareup.okhttp.internal.framed.b("content-disposition", ""), new com.squareup.okhttp.internal.framed.b(BufferQueue.CONTENT_ENCODING, ""), new com.squareup.okhttp.internal.framed.b("content-language", ""), new com.squareup.okhttp.internal.framed.b(BufferQueue.CONTENT_LENGTH, ""), new com.squareup.okhttp.internal.framed.b("content-location", ""), new com.squareup.okhttp.internal.framed.b("content-range", ""), new com.squareup.okhttp.internal.framed.b("content-type", ""), new com.squareup.okhttp.internal.framed.b("cookie", ""), new com.squareup.okhttp.internal.framed.b("date", ""), new com.squareup.okhttp.internal.framed.b(DownloadModel.ETAG, ""), new com.squareup.okhttp.internal.framed.b("expect", ""), new com.squareup.okhttp.internal.framed.b("expires", ""), new com.squareup.okhttp.internal.framed.b("from", ""), new com.squareup.okhttp.internal.framed.b("host", ""), new com.squareup.okhttp.internal.framed.b("if-match", ""), new com.squareup.okhttp.internal.framed.b("if-modified-since", ""), new com.squareup.okhttp.internal.framed.b("if-none-match", ""), new com.squareup.okhttp.internal.framed.b("if-range", ""), new com.squareup.okhttp.internal.framed.b("if-unmodified-since", ""), new com.squareup.okhttp.internal.framed.b("last-modified", ""), new com.squareup.okhttp.internal.framed.b("link", ""), new com.squareup.okhttp.internal.framed.b(RequestParameters.SUBRESOURCE_LOCATION, ""), new com.squareup.okhttp.internal.framed.b("max-forwards", ""), new com.squareup.okhttp.internal.framed.b("proxy-authenticate", ""), new com.squareup.okhttp.internal.framed.b("proxy-authorization", ""), new com.squareup.okhttp.internal.framed.b("range", ""), new com.squareup.okhttp.internal.framed.b(RequestParameters.SUBRESOURCE_REFERER, ""), new com.squareup.okhttp.internal.framed.b(ToolBar.REFRESH, ""), new com.squareup.okhttp.internal.framed.b("retry-after", ""), new com.squareup.okhttp.internal.framed.b(TmcConstants.CHANNEL_REQUEST_SERVER, ""), new com.squareup.okhttp.internal.framed.b("set-cookie", ""), new com.squareup.okhttp.internal.framed.b("strict-transport-security", ""), new com.squareup.okhttp.internal.framed.b("transfer-encoding", ""), new com.squareup.okhttp.internal.framed.b("user-agent", ""), new com.squareup.okhttp.internal.framed.b("vary", ""), new com.squareup.okhttp.internal.framed.b("via", ""), new com.squareup.okhttp.internal.framed.b("www-authenticate", "")};
        f39542b = e();
    }

    public static ByteString d(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i10 = 0; i10 < size; i10++) {
            byte b10 = byteString.getByte(i10);
            if (b10 >= 65 && b10 <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }

    private static Map e() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f39541a.length);
        int i10 = 0;
        while (true) {
            com.squareup.okhttp.internal.framed.b[] bVarArr = f39541a;
            if (i10 >= bVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(bVarArr[i10].f39538a)) {
                linkedHashMap.put(bVarArr[i10].f39538a, Integer.valueOf(i10));
            }
            i10++;
        }
    }
}
