package com.transsion.transfer.androidasync;

public class n implements s {

    s f53464a;

    boolean f53465b;

    st.j f53467d;

    boolean f53469f;

    final ByteBufferList f53466c = new ByteBufferList();

    int f53468e = Integer.MAX_VALUE;

    public n(s sVar) {
        m(sVar);
    }

    public void p() {
        boolean zS;
        st.j jVar;
        if (this.f53465b) {
            return;
        }
        synchronized (this.f53466c) {
            this.f53464a.n(this.f53466c);
            zS = this.f53466c.s();
        }
        if (zS && this.f53469f) {
            this.f53464a.d();
        }
        if (!zS || (jVar = this.f53467d) == null) {
            return;
        }
        jVar.a();
    }

    @Override
    public void B(st.j jVar) {
        this.f53467d = jVar;
    }

    @Override
    public AsyncServer a() {
        return this.f53464a.a();
    }

    @Override
    public void d() {
        if (a().o() != Thread.currentThread()) {
            a().D(new Runnable() {
                @Override
                public final void run() {
                    this.f53463a.d();
                }
            });
            return;
        }
        synchronized (this.f53466c) {
            try {
                if (this.f53466c.r()) {
                    this.f53469f = true;
                } else {
                    this.f53464a.d();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void g(boolean z10) {
        this.f53465b = z10;
        if (z10) {
            return;
        }
        p();
    }

    public boolean h() {
        return this.f53466c.r() || this.f53465b;
    }

    @Override
    public void i(st.a aVar) {
        this.f53464a.i(aVar);
    }

    protected void j(ByteBufferList byteBufferList) {
    }

    @Override
    public st.j k() {
        return this.f53467d;
    }

    public int l() {
        return this.f53466c.C();
    }

    public void m(s sVar) {
        this.f53464a = sVar;
        sVar.B(new st.j() {
            @Override
            public final void a() {
                this.f53461a.p();
            }
        });
    }

    @Override
    public void n(ByteBufferList byteBufferList) {
        if (a().o() == Thread.currentThread()) {
            j(byteBufferList);
            if (!h()) {
                this.f53464a.n(byteBufferList);
            }
            synchronized (this.f53466c) {
                byteBufferList.f(this.f53466c);
            }
            return;
        }
        synchronized (this.f53466c) {
            try {
                if (this.f53466c.C() >= this.f53468e) {
                    return;
                }
                j(byteBufferList);
                byteBufferList.f(this.f53466c);
                a().D(new Runnable() {
                    @Override
                    public final void run() {
                        this.f53462a.p();
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void o(int i10) {
        this.f53468e = i10;
    }
}
