package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.internal.framed.ErrorCode;
import com.squareup.okhttp.internal.framed.FramedConnection;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.ForwardingSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class e implements HttpStream {

    private static final ByteString f39647e;

    private static final ByteString f39648f;

    private static final ByteString f39649g;

    private static final ByteString f39650h;

    private static final ByteString f39651i;

    private static final ByteString f39652j;

    private static final ByteString f39653k;

    private static final ByteString f39654l;

    private static final List f39655m;

    private static final List f39656n;

    private static final List f39657o;

    private static final List f39658p;

    private final n f39659a;

    private final FramedConnection f39660b;

    private g f39661c;

    private com.squareup.okhttp.internal.framed.a f39662d;

    class a extends ForwardingSource {
        public a(Source source) {
            super(source);
        }

        @Override
        public void close() throws IOException {
            e.this.f39659a.r(e.this);
            super.close();
        }
    }

    static {
        ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8("connection");
        f39647e = byteStringEncodeUtf8;
        ByteString byteStringEncodeUtf9 = ByteString.encodeUtf8("host");
        f39648f = byteStringEncodeUtf9;
        ByteString byteStringEncodeUtf10 = ByteString.encodeUtf8("keep-alive");
        f39649g = byteStringEncodeUtf10;
        ByteString byteStringEncodeUtf11 = ByteString.encodeUtf8("proxy-connection");
        f39650h = byteStringEncodeUtf11;
        ByteString byteStringEncodeUtf12 = ByteString.encodeUtf8("transfer-encoding");
        f39651i = byteStringEncodeUtf12;
        ByteString byteStringEncodeUtf13 = ByteString.encodeUtf8("te");
        f39652j = byteStringEncodeUtf13;
        ByteString byteStringEncodeUtf14 = ByteString.encodeUtf8("encoding");
        f39653k = byteStringEncodeUtf14;
        ByteString byteStringEncodeUtf15 = ByteString.encodeUtf8("upgrade");
        f39654l = byteStringEncodeUtf15;
        ByteString byteString = com.squareup.okhttp.internal.framed.b.f39532e;
        ByteString byteString2 = com.squareup.okhttp.internal.framed.b.f39533f;
        ByteString byteString3 = com.squareup.okhttp.internal.framed.b.f39534g;
        ByteString byteString4 = com.squareup.okhttp.internal.framed.b.f39535h;
        ByteString byteString5 = com.squareup.okhttp.internal.framed.b.f39536i;
        ByteString byteString6 = com.squareup.okhttp.internal.framed.b.f39537j;
        f39655m = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf12, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f39656n = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf12);
        f39657o = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf13, byteStringEncodeUtf12, byteStringEncodeUtf14, byteStringEncodeUtf15, byteString, byteString2, byteString3, byteString4, byteString5, byteString6);
        f39658p = com.squareup.okhttp.internal.g.k(byteStringEncodeUtf8, byteStringEncodeUtf9, byteStringEncodeUtf10, byteStringEncodeUtf11, byteStringEncodeUtf13, byteStringEncodeUtf12, byteStringEncodeUtf14, byteStringEncodeUtf15);
    }

    public e(n nVar, FramedConnection framedConnection) {
        this.f39659a = nVar;
        this.f39660b = framedConnection;
    }

    public static List b(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39532e, request.method()));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39533f, j.c(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39535h, com.squareup.okhttp.internal.g.i(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39534g, request.httpUrl().scheme()));
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8(headers.name(i10).toLowerCase(Locale.US));
            if (!f39657o.contains(byteStringEncodeUtf8)) {
                arrayList.add(new com.squareup.okhttp.internal.framed.b(byteStringEncodeUtf8, headers.value(i10)));
            }
        }
        return arrayList;
    }

    private static String c(String str, String str2) {
        return str + (char) 0 + str2;
    }

    public static Response.Builder d(List list) throws ProtocolException {
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        String str = null;
        for (int i10 = 0; i10 < size; i10++) {
            ByteString byteString = ((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39538a;
            String strUtf8 = ((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39539b.utf8();
            if (byteString.equals(com.squareup.okhttp.internal.framed.b.f39531d)) {
                str = strUtf8;
            } else if (!f39658p.contains(byteString)) {
                builder.add(byteString.utf8(), strUtf8);
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a("HTTP/1.1 " + str);
        return new Response.Builder().protocol(Protocol.HTTP_2).code(mVarA.f39710b).message(mVarA.f39711c).headers(builder.build());
    }

    public static Response.Builder e(List list) throws ProtocolException {
        Headers.Builder builder = new Headers.Builder();
        int size = list.size();
        String str = null;
        String str2 = "HTTP/1.1";
        for (int i10 = 0; i10 < size; i10++) {
            ByteString byteString = ((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39538a;
            String strUtf8 = ((com.squareup.okhttp.internal.framed.b) list.get(i10)).f39539b.utf8();
            int i11 = 0;
            while (i11 < strUtf8.length()) {
                int iIndexOf = strUtf8.indexOf(0, i11);
                if (iIndexOf == -1) {
                    iIndexOf = strUtf8.length();
                }
                String strSubstring = strUtf8.substring(i11, iIndexOf);
                if (byteString.equals(com.squareup.okhttp.internal.framed.b.f39531d)) {
                    str = strSubstring;
                } else if (byteString.equals(com.squareup.okhttp.internal.framed.b.f39537j)) {
                    str2 = strSubstring;
                } else if (!f39656n.contains(byteString)) {
                    builder.add(byteString.utf8(), strSubstring);
                }
                i11 = iIndexOf + 1;
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a(str2 + " " + str);
        return new Response.Builder().protocol(Protocol.SPDY_3).code(mVarA.f39710b).message(mVarA.f39711c).headers(builder.build());
    }

    public static List f(Request request) {
        Headers headers = request.headers();
        ArrayList arrayList = new ArrayList(headers.size() + 5);
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39532e, request.method()));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39533f, j.c(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39537j, "HTTP/1.1"));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39536i, com.squareup.okhttp.internal.g.i(request.httpUrl())));
        arrayList.add(new com.squareup.okhttp.internal.framed.b(com.squareup.okhttp.internal.framed.b.f39534g, request.httpUrl().scheme()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            ByteString byteStringEncodeUtf8 = ByteString.encodeUtf8(headers.name(i10).toLowerCase(Locale.US));
            if (!f39655m.contains(byteStringEncodeUtf8)) {
                String strValue = headers.value(i10);
                if (linkedHashSet.add(byteStringEncodeUtf8)) {
                    arrayList.add(new com.squareup.okhttp.internal.framed.b(byteStringEncodeUtf8, strValue));
                } else {
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        if (((com.squareup.okhttp.internal.framed.b) arrayList.get(i11)).f39538a.equals(byteStringEncodeUtf8)) {
                            arrayList.set(i11, new com.squareup.okhttp.internal.framed.b(byteStringEncodeUtf8, c(((com.squareup.okhttp.internal.framed.b) arrayList.get(i11)).f39539b.utf8(), strValue)));
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override
    public void cancel() {
        com.squareup.okhttp.internal.framed.a aVar = this.f39662d;
        if (aVar != null) {
            aVar.n(ErrorCode.CANCEL);
        }
    }

    @Override
    public Sink createRequestBody(Request request, long j10) {
        return this.f39662d.q();
    }

    @Override
    public void finishRequest() throws IOException {
        this.f39662d.q().close();
    }

    @Override
    public ResponseBody openResponseBody(Response response) {
        return new i(response.headers(), Okio.buffer(new a(this.f39662d.r())));
    }

    @Override
    public Response.Builder readResponseHeaders() {
        return this.f39660b.d0() == Protocol.HTTP_2 ? d(this.f39662d.p()) : e(this.f39662d.p());
    }

    @Override
    public void setHttpEngine(g gVar) {
        this.f39661c = gVar;
    }

    @Override
    public void writeRequestBody(k kVar) throws IOException {
        kVar.f(this.f39662d.q());
    }

    @Override
    public void writeRequestHeaders(Request request) {
        if (this.f39662d != null) {
            return;
        }
        this.f39661c.C();
        com.squareup.okhttp.internal.framed.a aVarH0 = this.f39660b.h0(this.f39660b.d0() == Protocol.HTTP_2 ? b(request) : f(request), this.f39661c.q(request), true);
        this.f39662d = aVarH0;
        Timeout timeoutU = aVarH0.u();
        long readTimeout = this.f39661c.f39669a.getReadTimeout();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeoutU.timeout(readTimeout, timeUnit);
        this.f39662d.A().timeout(this.f39661c.f39669a.getWriteTimeout(), timeUnit);
    }
}
