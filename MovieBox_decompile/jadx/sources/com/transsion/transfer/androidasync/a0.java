package com.transsion.transfer.androidasync;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.nio.ByteBuffer;

public class a0 {

    public static boolean f53102a;

    class a implements st.j {

        final s f53103a;

        final ByteBufferList f53104b;

        final st.a f53105c;

        a(s sVar, ByteBufferList byteBufferList, st.a aVar) {
            this.f53103a = sVar;
            this.f53104b = byteBufferList;
            this.f53105c = aVar;
        }

        @Override
        public void a() {
            this.f53103a.n(this.f53104b);
            if (this.f53104b.C() != 0 || this.f53105c == null) {
                return;
            }
            this.f53103a.B(null);
            this.f53105c.g(null);
        }
    }

    class b implements st.a {

        boolean f53106a;

        final st.a f53107b;

        b(st.a aVar) {
            this.f53107b = aVar;
        }

        @Override
        public void g(Exception exc) {
            if (this.f53106a) {
                return;
            }
            this.f53106a = true;
            this.f53107b.g(exc);
        }
    }

    class c implements st.j {

        int f53108a = 0;

        ByteBufferList f53109b = new ByteBufferList();

        com.transsion.transfer.androidasync.util.a f53110c;

        final s f53111d;

        final InputStream f53112e;

        final long f53113f;

        final st.a f53114g;

        c(s sVar, InputStream inputStream, long j10, st.a aVar) {
            this.f53111d = sVar;
            this.f53112e = inputStream;
            this.f53113f = j10;
            this.f53114g = aVar;
            this.f53110c = new com.transsion.transfer.androidasync.util.a().d((int) Math.min(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED, j10));
        }

        private void b() {
            this.f53111d.i(null);
            this.f53111d.B(null);
            this.f53109b.B();
            com.transsion.transfer.androidasync.util.d.a(this.f53112e);
        }

        @Override
        public void a() {
            do {
                try {
                    if (!this.f53109b.r()) {
                        ByteBuffer byteBufferA = this.f53110c.a();
                        int i10 = this.f53112e.read(byteBufferA.array(), 0, (int) Math.min(this.f53113f - ((long) this.f53108a), byteBufferA.capacity()));
                        if (i10 != -1 && this.f53108a != this.f53113f) {
                            this.f53110c.e(i10);
                            this.f53108a += i10;
                            byteBufferA.position(0);
                            byteBufferA.limit(i10);
                            this.f53109b.a(byteBufferA);
                        }
                        b();
                        this.f53114g.g(null);
                        return;
                    }
                    this.f53111d.n(this.f53109b);
                } catch (Exception e10) {
                    b();
                    this.f53114g.g(e10);
                    return;
                }
            } while (!this.f53109b.r());
        }
    }

    class d implements st.a {

        boolean f53115a;

        final st.a f53116b;

        d(st.a aVar) {
            this.f53116b = aVar;
        }

        @Override
        public void g(Exception exc) {
            if (this.f53115a) {
                return;
            }
            this.f53115a = true;
            this.f53116b.g(exc);
        }
    }

    class e implements st.j {

        int f53117a = 0;

        ByteBufferList f53118b = new ByteBufferList();

        com.transsion.transfer.androidasync.util.a f53119c;

        final s f53120d;

        final InputStream f53121e;

        final long f53122f;

        final st.a f53123g;

        final st.e f53124h;

        e(s sVar, InputStream inputStream, long j10, st.a aVar, st.e eVar) {
            this.f53120d = sVar;
            this.f53121e = inputStream;
            this.f53122f = j10;
            this.f53123g = aVar;
            this.f53124h = eVar;
            this.f53119c = new com.transsion.transfer.androidasync.util.a().d((int) Math.min(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED, j10));
        }

        private void b() {
            this.f53120d.i(null);
            this.f53120d.B(null);
            this.f53118b.B();
            com.transsion.transfer.androidasync.util.d.a(this.f53121e);
        }

        @Override
        public void a() {
            do {
                try {
                    if (!this.f53118b.r()) {
                        ByteBuffer byteBufferA = this.f53119c.a();
                        int i10 = this.f53121e.read(byteBufferA.array(), 0, (int) Math.min(this.f53122f - ((long) this.f53117a), byteBufferA.capacity()));
                        if (i10 != -1 && this.f53117a != this.f53122f) {
                            this.f53119c.e(i10);
                            int i11 = this.f53117a + i10;
                            this.f53117a = i11;
                            st.e eVar = this.f53124h;
                            if (eVar != null) {
                                eVar.a(i11, this.f53122f);
                            }
                            byteBufferA.position(0);
                            byteBufferA.limit(i10);
                            this.f53118b.a(byteBufferA);
                        }
                        b();
                        this.f53123g.g(null);
                        st.e eVar2 = this.f53124h;
                        if (eVar2 != null) {
                            eVar2.b(null);
                            return;
                        }
                        return;
                    }
                    this.f53120d.n(this.f53118b);
                } catch (Exception e10) {
                    b();
                    this.f53123g.g(e10);
                    st.e eVar3 = this.f53124h;
                    if (eVar3 != null) {
                        eVar3.b(e10);
                        return;
                    }
                    return;
                }
            } while (!this.f53118b.r());
        }
    }

    class f implements st.d {

        final s f53125a;

        f(s sVar) {
            this.f53125a = sVar;
        }

        @Override
        public void C(p pVar, ByteBufferList byteBufferList) {
            this.f53125a.n(byteBufferList);
            if (byteBufferList.C() > 0) {
                pVar.pause();
            }
        }
    }

    class g implements st.j {

        final p f53126a;

        g(p pVar) {
            this.f53126a = pVar;
        }

        @Override
        public void a() {
            this.f53126a.resume();
        }
    }

    class h implements st.a {

        boolean f53127a;

        final p f53128b;

        final s f53129c;

        final st.a f53130d;

        h(p pVar, s sVar, st.a aVar) {
            this.f53128b = pVar;
            this.f53129c = sVar;
            this.f53130d = aVar;
        }

        @Override
        public void g(Exception exc) {
            if (this.f53127a) {
                return;
            }
            this.f53127a = true;
            this.f53128b.F(null);
            this.f53128b.h(null);
            this.f53129c.i(null);
            this.f53129c.B(null);
            this.f53130d.g(exc);
        }
    }

    class i implements st.a {

        final st.a f53131a;

        i(st.a aVar) {
            this.f53131a = aVar;
        }

        @Override
        public void g(Exception exc) {
            if (exc == null) {
                exc = new IOException("sink was closed before emitter ended");
            }
            this.f53131a.g(exc);
        }
    }

    public static void a(p pVar, ByteBufferList byteBufferList) {
        int iC;
        st.d dVarG = null;
        while (!pVar.isPaused() && (dVarG = pVar.G()) != null && (iC = byteBufferList.C()) > 0) {
            dVarG.C(pVar, byteBufferList);
            if (iC == byteBufferList.C() && dVarG == pVar.G() && !pVar.isPaused()) {
                System.out.println("handler: " + dVarG);
                byteBufferList.B();
                if (!f53102a) {
                    throw new RuntimeException("mDataHandler failed to consume data, yet remains the mDataHandler.");
                }
                return;
            }
        }
        if (byteBufferList.C() == 0 || pVar.isPaused()) {
            return;
        }
        PrintStream printStream = System.out;
        printStream.println("handler: " + dVarG);
        printStream.println("emitter: " + pVar);
        byteBufferList.B();
    }

    public static void b(st.a aVar, Exception exc) {
        if (aVar != null) {
            aVar.g(exc);
        }
    }

    public static void c(p pVar, s sVar, st.a aVar) {
        pVar.F(new f(sVar));
        sVar.B(new g(pVar));
        h hVar = new h(pVar, sVar, aVar);
        pVar.h(hVar);
        sVar.i(new i(hVar));
    }

    public static void d(InputStream inputStream, long j10, s sVar, st.a aVar) {
        b bVar = new b(aVar);
        c cVar = new c(sVar, inputStream, j10, bVar);
        sVar.B(cVar);
        sVar.i(bVar);
        cVar.a();
    }

    public static void e(InputStream inputStream, long j10, s sVar, st.a aVar, st.e eVar) {
        d dVar = new d(aVar);
        e eVar2 = new e(sVar, inputStream, j10, dVar, eVar);
        sVar.B(eVar2);
        sVar.i(dVar);
        eVar2.a();
    }

    public static void f(InputStream inputStream, s sVar, st.a aVar) {
        d(inputStream, 2147483647L, sVar, aVar);
    }

    public static void g(s sVar, ByteBufferList byteBufferList, st.a aVar) {
        a aVar2 = new a(sVar, byteBufferList, aVar);
        sVar.B(aVar2);
        aVar2.a();
    }

    public static void h(s sVar, byte[] bArr, st.a aVar) {
        ByteBuffer byteBufferT = ByteBufferList.t(bArr.length);
        byteBufferT.put(bArr);
        byteBufferT.flip();
        ByteBufferList byteBufferList = new ByteBufferList();
        byteBufferList.a(byteBufferT);
        g(sVar, byteBufferList, aVar);
    }
}
