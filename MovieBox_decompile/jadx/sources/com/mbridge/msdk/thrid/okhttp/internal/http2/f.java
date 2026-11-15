package com.mbridge.msdk.thrid.okhttp.internal.http2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.thrid.okhttp.p;
import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.u;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import com.mbridge.msdk.thrid.okhttp.z;
import com.mbridge.msdk.thrid.okio.s;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.Header;

public final class f implements com.mbridge.msdk.thrid.okhttp.internal.http.c {

    private static final List<String> f37254f = com.mbridge.msdk.thrid.okhttp.internal.c.a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", Header.TARGET_METHOD_UTF8, Header.TARGET_PATH_UTF8, Header.TARGET_SCHEME_UTF8, Header.TARGET_AUTHORITY_UTF8);

    private static final List<String> f37255g = com.mbridge.msdk.thrid.okhttp.internal.c.a("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");

    private final r.a f37256a;

    final com.mbridge.msdk.thrid.okhttp.internal.connection.g f37257b;

    private final g f37258c;

    private i f37259d;

    private final u f37260e;

    class a extends com.mbridge.msdk.thrid.okio.h {

        boolean f37261b;

        long f37262c;

        a(s sVar) {
            super(sVar);
            this.f37261b = false;
            this.f37262c = 0L;
        }

        private void a(IOException iOException) {
            if (this.f37261b) {
                return;
            }
            this.f37261b = true;
            f fVar = f.this;
            fVar.f37257b.a(false, fVar, this.f37262c, iOException);
        }

        @Override
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            try {
                long jB = d().b(cVar, j10);
                if (jB > 0) {
                    this.f37262c += jB;
                }
                return jB;
            } catch (IOException e10) {
                a(e10);
                throw e10;
            }
        }

        @Override
        public void close() throws IOException {
            super.close();
            a(null);
        }
    }

    public f(t tVar, r.a aVar, com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar, g gVar2) {
        this.f37256a = aVar;
        this.f37257b = gVar;
        this.f37258c = gVar2;
        List<u> listU = tVar.u();
        u uVar = u.H2_PRIOR_KNOWLEDGE;
        this.f37260e = listU.contains(uVar) ? uVar : u.HTTP_2;
    }

    @Override
    public com.mbridge.msdk.thrid.okio.r a(w wVar, long j10) {
        return this.f37259d.d();
    }

    @Override
    public void b() throws IOException {
        this.f37258c.flush();
    }

    @Override
    public void cancel() {
        i iVar = this.f37259d;
        if (iVar != null) {
            iVar.c(b.CANCEL);
        }
    }

    public static List<c> b(w wVar) {
        p pVarC = wVar.c();
        ArrayList arrayList = new ArrayList(pVarC.b() + 4);
        arrayList.add(new c(c.f37223f, wVar.e()));
        arrayList.add(new c(c.f37224g, com.mbridge.msdk.thrid.okhttp.internal.http.i.a(wVar.g())));
        String strA = wVar.a(HttpHeaders.HOST);
        if (strA != null) {
            arrayList.add(new c(c.f37226i, strA));
        }
        arrayList.add(new c(c.f37225h, wVar.g().l()));
        int iB = pVarC.b();
        for (int i10 = 0; i10 < iB; i10++) {
            com.mbridge.msdk.thrid.okio.f fVarC = com.mbridge.msdk.thrid.okio.f.c(pVarC.a(i10).toLowerCase(Locale.US));
            if (!f37254f.contains(fVarC.h())) {
                arrayList.add(new c(fVarC, pVarC.b(i10)));
            }
        }
        return arrayList;
    }

    @Override
    public void a(w wVar) throws IOException {
        if (this.f37259d != null) {
            return;
        }
        i iVarA = this.f37258c.a(b(wVar), wVar.a() != null);
        this.f37259d = iVarA;
        com.mbridge.msdk.thrid.okio.t tVarH = iVarA.h();
        long jB = this.f37256a.b();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        tVarH.a(jB, timeUnit);
        this.f37259d.l().a(this.f37256a.c(), timeUnit);
    }

    @Override
    public void a() throws IOException {
        this.f37259d.d().close();
    }

    @Override
    public y.a a(boolean z10) throws IOException {
        y.a aVarA = a(this.f37259d.j(), this.f37260e);
        if (z10 && com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(aVarA) == 100) {
            return null;
        }
        return aVarA;
    }

    public static y.a a(p pVar, u uVar) throws IOException {
        p.a aVar = new p.a();
        int iB = pVar.b();
        com.mbridge.msdk.thrid.okhttp.internal.http.k kVarA = null;
        for (int i10 = 0; i10 < iB; i10++) {
            String strA = pVar.a(i10);
            String strB = pVar.b(i10);
            if (strA.equals(Header.RESPONSE_STATUS_UTF8)) {
                kVarA = com.mbridge.msdk.thrid.okhttp.internal.http.k.a("HTTP/1.1 " + strB);
            } else if (!f37255g.contains(strA)) {
                com.mbridge.msdk.thrid.okhttp.internal.a.f37067a.a(aVar, strA, strB);
            }
        }
        if (kVarA != null) {
            return new y.a().a(uVar).a(kVarA.f37181b).a(kVarA.f37182c).a(aVar.a());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override
    public z a(y yVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.connection.g gVar = this.f37257b;
        gVar.f37142f.responseBodyStart(gVar.f37141e);
        return new com.mbridge.msdk.thrid.okhttp.internal.http.h(yVar.b(HttpHeaders.CONTENT_TYPE), com.mbridge.msdk.thrid.okhttp.internal.http.e.a(yVar), com.mbridge.msdk.thrid.okio.l.a(new a(this.f37259d.e())));
    }
}
