package com.transsion.transfer.androidasync;

public class r implements st.d {

    st.d f53474a;

    int f53475b;

    ByteBufferList f53476c = new ByteBufferList();

    private boolean a(p pVar) {
        if (this.f53475b > this.f53476c.C()) {
            return false;
        }
        st.d dVar = this.f53474a;
        this.f53474a = null;
        dVar.C(pVar, this.f53476c);
        return true;
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        do {
            byteBufferList.g(this.f53476c, Math.min(byteBufferList.C(), this.f53475b - this.f53476c.C()));
            byteBufferList.C();
            if (!a(pVar)) {
                break;
            }
        } while (this.f53474a != null);
        byteBufferList.C();
    }

    public void b(int i10, st.d dVar) {
        this.f53475b = i10;
        this.f53474a = dVar;
        this.f53476c.B();
    }
}
