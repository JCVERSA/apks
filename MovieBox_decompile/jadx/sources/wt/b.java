package wt;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.future.w;
import com.transsion.transfer.androidasync.p;

public class b implements wt.a {

    class a extends w {

        final p f74760f;

        a(p pVar) {
            this.f74760f = pVar;
        }

        @Override
        protected void cancelCleanup() {
            this.f74760f.close();
        }
    }

    class C0928b implements st.d {

        final ByteBufferList f74762a;

        C0928b(ByteBufferList byteBufferList) {
            this.f74762a = byteBufferList;
        }

        @Override
        public void C(p pVar, ByteBufferList byteBufferList) {
            byteBufferList.f(this.f74762a);
        }
    }

    class c implements st.a {

        final w f74764a;

        final ByteBufferList f74765b;

        c(w wVar, ByteBufferList byteBufferList) {
            this.f74764a = wVar;
            this.f74765b = byteBufferList;
        }

        @Override
        public void g(Exception exc) {
            if (exc != null) {
                this.f74764a.G(exc);
                return;
            }
            try {
                this.f74764a.J(this.f74765b);
            } catch (Exception e10) {
                this.f74764a.G(e10);
            }
        }
    }

    @Override
    public com.transsion.transfer.androidasync.future.f a(p pVar) {
        ByteBufferList byteBufferList = new ByteBufferList();
        a aVar = new a(pVar);
        pVar.F(new C0928b(byteBufferList));
        pVar.h(new c(aVar, byteBufferList));
        return aVar;
    }
}
