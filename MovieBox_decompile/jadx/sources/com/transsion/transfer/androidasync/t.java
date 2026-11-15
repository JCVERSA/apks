package com.transsion.transfer.androidasync;

public class t extends q implements p, st.d {

    private p f53478d;

    private int f53479e;

    boolean f53480f;

    class a implements st.a {
        a() {
        }

        @Override
        public void g(Exception exc) {
            t.this.M(exc);
        }
    }

    public void C(p pVar, ByteBufferList byteBufferList) {
        if (this.f53480f) {
            byteBufferList.B();
            return;
        }
        if (byteBufferList != null) {
            this.f53479e += byteBufferList.C();
        }
        a0.a(this, byteBufferList);
        if (byteBufferList != null) {
            this.f53479e -= byteBufferList.C();
        }
    }

    public void N(p pVar) {
        p pVar2 = this.f53478d;
        if (pVar2 != null) {
            pVar2.F(null);
        }
        this.f53478d = pVar;
        pVar.F(this);
        this.f53478d.h(new a());
    }

    @Override
    public AsyncServer a() {
        return this.f53478d.a();
    }

    @Override
    public void close() {
        this.f53480f = true;
        p pVar = this.f53478d;
        if (pVar != null) {
            pVar.close();
        }
    }

    @Override
    public boolean isPaused() {
        return this.f53478d.isPaused();
    }

    @Override
    public void pause() {
        this.f53478d.pause();
    }

    @Override
    public void resume() {
        this.f53478d.resume();
    }

    @Override
    public String s() {
        p pVar = this.f53478d;
        if (pVar == null) {
            return null;
        }
        return pVar.s();
    }
}
