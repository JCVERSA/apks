package com.transsion.transfer.androidasync;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.LinkedList;

public class w implements st.d {

    static Hashtable f53500n = new Hashtable();

    p f53509i;

    private l f53501a = new a(0);

    private l f53502b = new b(1);

    private l f53503c = new c(2);

    private l f53504d = new d(4);

    private l f53505e = new e(8);

    private j f53506f = new f();

    private j f53507g = new g();

    private j f53508h = new h();

    private LinkedList f53510j = new LinkedList();

    private ArrayList f53511k = new ArrayList();

    ByteOrder f53512l = ByteOrder.BIG_ENDIAN;

    ByteBufferList f53513m = new ByteBufferList();

    class a extends l {
        a(int i10) {
            super(i10);
        }

        @Override
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f53511k.add(null);
            return null;
        }
    }

    class b extends l {
        b(int i10) {
            super(i10);
        }

        @Override
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f53511k.add(Byte.valueOf(byteBufferList.e()));
            return null;
        }
    }

    class c extends l {
        c(int i10) {
            super(i10);
        }

        @Override
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f53511k.add(Short.valueOf(byteBufferList.q()));
            return null;
        }
    }

    class d extends l {
        d(int i10) {
            super(i10);
        }

        @Override
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f53511k.add(Integer.valueOf(byteBufferList.n()));
            return null;
        }
    }

    class e extends l {
        e(int i10) {
            super(i10);
        }

        @Override
        public l a(p pVar, ByteBufferList byteBufferList) {
            w.this.f53511k.add(Long.valueOf(byteBufferList.o()));
            return null;
        }
    }

    class f implements j {
        f() {
        }

        @Override
        public void a(byte[] bArr) {
            w.this.f53511k.add(bArr);
        }
    }

    class g implements j {
        g() {
        }

        @Override
        public void a(ByteBufferList byteBufferList) {
            w.this.f53511k.add(byteBufferList);
        }
    }

    class h implements j {
        h() {
        }

        @Override
        public void a(byte[] bArr) {
            w.this.f53511k.add(new String(bArr));
        }
    }

    static class i extends l {

        j f53522b;

        public i(int i10, j jVar) {
            super(i10);
            if (i10 <= 0) {
                throw new IllegalArgumentException("length should be > 0");
            }
            this.f53522b = jVar;
        }

        @Override
        public l a(p pVar, ByteBufferList byteBufferList) {
            byte[] bArr = new byte[this.f53525a];
            byteBufferList.h(bArr);
            this.f53522b.a(bArr);
            return null;
        }
    }

    public interface j {
        void a(Object obj);
    }

    static class k extends l {

        byte f53523b;

        st.d f53524c;

        public k(byte b10, st.d dVar) {
            super(1);
            this.f53523b = b10;
            this.f53524c = dVar;
        }

        @Override
        public l a(p pVar, ByteBufferList byteBufferList) {
            ByteBufferList byteBufferList2 = new ByteBufferList();
            boolean z10 = true;
            while (byteBufferList.E() > 0) {
                ByteBuffer byteBufferD = byteBufferList.D();
                byteBufferD.mark();
                int i10 = 0;
                while (byteBufferD.remaining() > 0) {
                    z10 = byteBufferD.get() == this.f53523b;
                    if (z10) {
                        break;
                    }
                    i10++;
                }
                byteBufferD.reset();
                if (z10) {
                    byteBufferList.c(byteBufferD);
                    byteBufferList.g(byteBufferList2, i10);
                    byteBufferList.e();
                    break;
                }
                byteBufferList2.a(byteBufferD);
            }
            this.f53524c.C(pVar, byteBufferList2);
            if (z10) {
                return null;
            }
            return this;
        }
    }

    static abstract class l {

        int f53525a;

        public l(int i10) {
            this.f53525a = i10;
        }

        public abstract l a(p pVar, ByteBufferList byteBufferList);
    }

    public w(p pVar) {
        this.f53509i = pVar;
        pVar.F(this);
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        byteBufferList.f(this.f53513m);
        while (this.f53510j.size() > 0 && this.f53513m.C() >= ((l) this.f53510j.peek()).f53525a) {
            this.f53513m.u(this.f53512l);
            l lVarA = ((l) this.f53510j.poll()).a(pVar, this.f53513m);
            if (lVarA != null) {
                this.f53510j.addFirst(lVarA);
            }
        }
        if (this.f53510j.size() == 0) {
            this.f53513m.f(byteBufferList);
        }
    }

    public w b(int i10, j jVar) {
        this.f53510j.add(new i(i10, jVar));
        return this;
    }

    public w c(byte b10, st.d dVar) {
        this.f53510j.add(new k(b10, dVar));
        return this;
    }
}
