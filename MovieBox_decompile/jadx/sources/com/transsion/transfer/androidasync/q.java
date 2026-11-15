package com.transsion.transfer.androidasync;

public abstract class q implements p {

    private boolean f53471a;

    st.a f53472b;

    st.d f53473c;

    @Override
    public void F(st.d dVar) {
        this.f53473c = dVar;
    }

    @Override
    public st.d G() {
        return this.f53473c;
    }

    public final st.a L() {
        return this.f53472b;
    }

    protected void M(Exception exc) {
        if (this.f53471a) {
            return;
        }
        this.f53471a = true;
        if (L() != null) {
            L().g(exc);
        }
    }

    @Override
    public final void h(st.a aVar) {
        this.f53472b = aVar;
    }

    @Override
    public String s() {
        return null;
    }
}
