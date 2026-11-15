package tt;

import android.text.TextUtils;
import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.a0;
import com.transsion.transfer.androidasync.future.Continuation;
import com.transsion.transfer.androidasync.http.Headers;
import com.transsion.transfer.androidasync.http.Multimap;
import com.transsion.transfer.androidasync.http.j;
import com.transsion.transfer.androidasync.http.server.p;
import com.transsion.transfer.androidasync.s;
import com.transsion.transfer.androidasync.v;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public class c extends p implements tt.a {

    v f72798i;

    Headers f72799j;

    ByteBufferList f72800k;

    tt.d f72801l;

    String f72802m = "multipart/form-data";

    int f72803n;

    int f72804o;

    private ArrayList f72805p;

    class a implements v.a {

        final Headers f72806a;

        class C0891a implements st.d {
            C0891a() {
            }

            @Override
            public void C(com.transsion.transfer.androidasync.p pVar, ByteBufferList byteBufferList) {
                byteBufferList.f(c.this.f72800k);
            }
        }

        a(Headers headers) {
            this.f72806a = headers;
        }

        @Override
        public void a(String str) {
            if (!"\r".equals(str)) {
                this.f72806a.b(str);
                return;
            }
            c.this.W();
            c cVar = c.this;
            cVar.f72798i = null;
            cVar.F(null);
            tt.d dVar = new tt.d(this.f72806a);
            c.this.getClass();
            if (c.this.G() == null) {
                c cVar2 = c.this;
                cVar2.f72801l = dVar;
                cVar2.f72800k = new ByteBufferList();
                c.this.F(new C0891a());
            }
        }
    }

    class b implements st.a {

        final st.a f72809a;

        b(st.a aVar) {
            this.f72809a = aVar;
        }

        @Override
        public void g(Exception exc) {
            this.f72809a.g(exc);
        }
    }

    class C0892c implements st.c {

        final s f72811a;

        C0892c(s sVar) {
            this.f72811a = sVar;
        }

        @Override
        public void onContinue(Continuation continuation, st.a aVar) {
            byte[] bytes = "\r\n".getBytes();
            a0.h(this.f72811a, bytes, aVar);
            c.this.f72803n += bytes.length;
        }
    }

    class d implements st.c {

        final tt.d f72813a;

        final s f72814b;

        d(tt.d dVar, s sVar) {
            this.f72813a = dVar;
            this.f72814b = sVar;
        }

        @Override
        public void onContinue(Continuation continuation, st.a aVar) {
            long jC = this.f72813a.c();
            if (jC >= 0) {
                c cVar = c.this;
                cVar.f72803n = (int) (((long) cVar.f72803n) + jC);
            }
            this.f72813a.d(this.f72814b, aVar);
        }
    }

    class e implements st.c {

        final tt.d f72816a;

        final s f72817b;

        e(tt.d dVar, s sVar) {
            this.f72816a = dVar;
            this.f72817b = sVar;
        }

        @Override
        public void onContinue(Continuation continuation, st.a aVar) {
            byte[] bytes = this.f72816a.b().g(c.this.Q()).getBytes();
            a0.h(this.f72817b, bytes, aVar);
            c.this.f72803n += bytes.length;
        }
    }

    class f implements st.c {

        final s f72819a;

        f(s sVar) {
            this.f72819a = sVar;
        }

        @Override
        public void onContinue(Continuation continuation, st.a aVar) {
            byte[] bytes = c.this.P().getBytes();
            a0.h(this.f72819a, bytes, aVar);
            c.this.f72803n += bytes.length;
        }
    }

    public c(String str) {
        String string = Multimap.parseSemicolonDelimited(str).getString("boundary");
        if (string == null) {
            M(new Exception("No boundary found for multipart/form-data"));
        } else {
            T(string);
        }
    }

    @Override
    public void H(com.transsion.transfer.androidasync.p pVar, st.a aVar) {
        N(pVar);
        h(aVar);
    }

    @Override
    public void J(j jVar, s sVar, st.a aVar) {
        if (this.f72805p == null) {
            return;
        }
        Continuation continuation = new Continuation(new b(aVar));
        for (tt.d dVar : this.f72805p) {
            continuation.add(new e(dVar, sVar)).add(new d(dVar, sVar)).add(new C0892c(sVar));
        }
        continuation.add(new f(sVar));
        continuation.start();
    }

    @Override
    public boolean K() {
        return false;
    }

    @Override
    protected void R() {
        super.R();
        W();
    }

    @Override
    protected void S() {
        Headers headers = new Headers();
        v vVar = new v();
        this.f72798i = vVar;
        vVar.a(new a(headers));
        F(this.f72798i);
    }

    public void U(tt.d dVar) {
        if (this.f72805p == null) {
            this.f72805p = new ArrayList();
        }
        this.f72805p.add(dVar);
    }

    public List V() {
        if (this.f72805p == null) {
            return null;
        }
        return new ArrayList(this.f72805p);
    }

    void W() {
        if (this.f72800k == null) {
            return;
        }
        if (this.f72799j == null) {
            this.f72799j = new Headers();
        }
        String strV = this.f72800k.v();
        String strA = TextUtils.isEmpty(this.f72801l.a()) ? "unnamed" : this.f72801l.a();
        g gVar = new g(strA, strV);
        gVar.f72821a = this.f72801l.f72821a;
        U(gVar);
        this.f72799j.a(strA, strV);
        this.f72801l = null;
        this.f72800k = null;
    }

    @Override
    public String l() {
        if (O() == null) {
            T("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        return this.f72802m + "; boundary=" + O();
    }

    @Override
    public int length() {
        if (O() == null) {
            T("----------------------------" + UUID.randomUUID().toString().replace("-", ""));
        }
        int iC = 0;
        for (tt.d dVar : this.f72805p) {
            String strG = dVar.b().g(Q());
            if (dVar.c() == -1) {
                return -1;
            }
            iC = (int) (((long) iC) + dVar.c() + ((long) strG.getBytes().length) + ((long) 2));
        }
        int length = iC + P().getBytes().length;
        this.f72804o = length;
        return length;
    }

    public String toString() {
        Iterator it = V().iterator();
        return it.hasNext() ? ((tt.d) it.next()).toString() : "multipart content is empty";
    }

    public c() {
    }
}
