package com.transsion.transfer.androidasync;

import android.util.Log;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;

public class AsyncNetworkSocket implements j {

    InetSocketAddress f53020a;

    private o f53021b;

    private SelectionKey f53022c;

    private AsyncServer f53023d;

    com.transsion.transfer.androidasync.util.a f53025f;

    boolean f53026g;

    st.j f53027h;

    st.d f53028i;

    st.a f53029j;

    boolean f53030k;

    Exception f53031l;

    private st.a f53032m;

    private ByteBufferList f53024e = new ByteBufferList();

    boolean f53033n = false;

    AsyncNetworkSocket() {
    }

    private void E() {
        if (this.f53024e.r()) {
            a0.a(this, this.f53024e);
        }
    }

    private void g() {
        this.f53022c.cancel();
        try {
            this.f53021b.close();
        } catch (IOException unused) {
        }
    }

    private void m(int i10) throws IOException {
        if (!this.f53022c.isValid()) {
            throw new IOException(new CancelledKeyException());
        }
        if (i10 > 0) {
            SelectionKey selectionKey = this.f53022c;
            selectionKey.interestOps(selectionKey.interestOps() | 4);
        } else {
            SelectionKey selectionKey2 = this.f53022c;
            selectionKey2.interestOps(selectionKey2.interestOps() & (-5));
        }
    }

    @Override
    public void B(st.j jVar) {
        this.f53027h = jVar;
    }

    void C(AsyncServer asyncServer, SelectionKey selectionKey) {
        this.f53023d = asyncServer;
        this.f53022c = selectionKey;
    }

    @Override
    public void F(st.d dVar) {
        this.f53028i = dVar;
    }

    @Override
    public st.d G() {
        return this.f53028i;
    }

    @Override
    public AsyncServer a() {
        return this.f53023d;
    }

    @Override
    public void close() {
        g();
        r(null);
    }

    @Override
    public void d() {
        this.f53021b.l();
    }

    void f(SocketChannel socketChannel, InetSocketAddress inetSocketAddress) {
        this.f53020a = inetSocketAddress;
        this.f53025f = new com.transsion.transfer.androidasync.util.a();
        this.f53021b = new z(socketChannel);
    }

    @Override
    public void h(st.a aVar) {
        this.f53032m = aVar;
    }

    @Override
    public void i(st.a aVar) {
        this.f53029j = aVar;
    }

    @Override
    public boolean isOpen() {
        return this.f53021b.h() && this.f53022c.isValid();
    }

    @Override
    public boolean isPaused() {
        return this.f53033n;
    }

    @Override
    public st.j k() {
        return this.f53027h;
    }

    o l() {
        return this.f53021b;
    }

    @Override
    public void n(final ByteBufferList byteBufferList) {
        if (this.f53023d.o() != Thread.currentThread()) {
            this.f53023d.H(new Runnable() {
                @Override
                public void run() {
                    AsyncNetworkSocket.this.n(byteBufferList);
                }
            });
            return;
        }
        if (this.f53021b.h()) {
            try {
                int iC = byteBufferList.C();
                ByteBuffer[] byteBufferArrK = byteBufferList.k();
                this.f53021b.m(byteBufferArrK);
                byteBufferList.b(byteBufferArrK);
                m(byteBufferList.C());
                this.f53023d.C(iC - byteBufferList.C());
            } catch (IOException e10) {
                g();
                v(e10);
                r(e10);
            }
        }
    }

    public void o() {
        if (!this.f53021b.d()) {
            SelectionKey selectionKey = this.f53022c;
            selectionKey.interestOps(selectionKey.interestOps() & (-5));
        }
        st.j jVar = this.f53027h;
        if (jVar != null) {
            jVar.a();
        }
    }

    int p() {
        long j10;
        int i10;
        E();
        boolean z10 = false;
        if (this.f53033n) {
            return 0;
        }
        ByteBuffer byteBufferA = this.f53025f.a();
        try {
            j10 = this.f53021b.read(byteBufferA);
        } catch (Exception e10) {
            g();
            v(e10);
            r(e10);
            j10 = -1;
        }
        if (j10 < 0) {
            g();
            i10 = 0;
            z10 = true;
        } else {
            i10 = (int) (((long) 0) + j10);
        }
        if (j10 > 0) {
            this.f53025f.e(j10);
            byteBufferA.flip();
            this.f53024e.a(byteBufferA);
            a0.a(this, this.f53024e);
        } else {
            ByteBufferList.A(byteBufferA);
        }
        if (z10) {
            v(null);
            r(null);
        }
        return i10;
    }

    @Override
    public void pause() {
        if (this.f53023d.o() != Thread.currentThread()) {
            this.f53023d.H(new Runnable() {
                @Override
                public void run() {
                    AsyncNetworkSocket.this.pause();
                }
            });
        } else {
            if (this.f53033n) {
                return;
            }
            this.f53033n = true;
            try {
                SelectionKey selectionKey = this.f53022c;
                selectionKey.interestOps(selectionKey.interestOps() & (-2));
            } catch (Exception unused) {
            }
        }
    }

    protected void r(Exception exc) {
        if (this.f53026g) {
            return;
        }
        this.f53026g = true;
        st.a aVar = this.f53029j;
        if (aVar != null) {
            aVar.g(exc);
            this.f53029j = null;
        }
    }

    @Override
    public void resume() {
        if (this.f53023d.o() != Thread.currentThread()) {
            this.f53023d.H(new Runnable() {
                @Override
                public void run() {
                    AsyncNetworkSocket.this.resume();
                }
            });
            return;
        }
        if (this.f53033n) {
            this.f53033n = false;
            try {
                SelectionKey selectionKey = this.f53022c;
                selectionKey.interestOps(selectionKey.interestOps() | 1);
            } catch (Exception unused) {
            }
            E();
            if (isOpen()) {
                return;
            }
            v(this.f53031l);
        }
    }

    @Override
    public String s() {
        return null;
    }

    void t(Exception exc) {
        if (this.f53030k) {
            return;
        }
        this.f53030k = true;
        st.a aVar = this.f53032m;
        if (aVar != null) {
            aVar.g(exc);
        } else if (exc != null) {
            Log.e("NIO", "Unhandled exception", exc);
        }
    }

    void v(Exception exc) {
        if (this.f53024e.r()) {
            this.f53031l = exc;
        } else {
            t(exc);
        }
    }
}
