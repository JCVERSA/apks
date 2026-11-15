package vt;

import com.transsion.transfer.androidasync.ByteBufferList;
import com.transsion.transfer.androidasync.p;
import com.transsion.transfer.androidasync.w;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public class c extends d {

    boolean f73803i;

    protected CRC32 f73804j;

    class a implements w.j {

        int f73805a;

        boolean f73806b;

        final p f73807c;

        final w f73808d;

        class C0914a implements w.j {

            class C0915a implements w.j {
                C0915a() {
                }

                @Override
                public void a(byte[] bArr) {
                    a aVar = a.this;
                    if (aVar.f73806b) {
                        c.this.f73804j.update(bArr, 0, bArr.length);
                    }
                    a.this.e();
                }
            }

            C0914a() {
            }

            @Override
            public void a(byte[] bArr) {
                a aVar = a.this;
                if (aVar.f73806b) {
                    c.this.f73804j.update(bArr, 0, 2);
                }
                a.this.f73808d.b(c.O(bArr, 0, ByteOrder.LITTLE_ENDIAN) & 65535, new C0915a());
            }
        }

        class b implements st.d {
            b() {
            }

            @Override
            public void C(p pVar, ByteBufferList byteBufferList) {
                if (a.this.f73806b) {
                    while (byteBufferList.E() > 0) {
                        ByteBuffer byteBufferD = byteBufferList.D();
                        c.this.f73804j.update(byteBufferD.array(), byteBufferD.arrayOffset() + byteBufferD.position(), byteBufferD.remaining());
                        ByteBufferList.A(byteBufferD);
                    }
                }
                byteBufferList.B();
                a.this.d();
            }
        }

        class C0916c implements w.j {
            C0916c() {
            }

            @Override
            public void a(byte[] bArr) {
                if (((short) c.this.f73804j.getValue()) != c.O(bArr, 0, ByteOrder.LITTLE_ENDIAN)) {
                    c.this.M(new IOException("CRC mismatch"));
                    return;
                }
                c.this.f73804j.reset();
                a aVar = a.this;
                c cVar = c.this;
                cVar.f73803i = false;
                cVar.N(aVar.f73807c);
            }
        }

        a(p pVar, w wVar) {
            this.f73807c = pVar;
            this.f73808d = wVar;
        }

        public void d() {
            if (this.f73806b) {
                this.f73808d.b(2, new C0916c());
                return;
            }
            c cVar = c.this;
            cVar.f73803i = false;
            cVar.N(this.f73807c);
        }

        public void e() {
            w wVar = new w(this.f73807c);
            b bVar = new b();
            int i10 = this.f73805a;
            if ((i10 & 8) != 0) {
                wVar.c((byte) 0, bVar);
            } else if ((i10 & 16) != 0) {
                wVar.c((byte) 0, bVar);
            } else {
                d();
            }
        }

        @Override
        public void a(byte[] bArr) {
            short sO = c.O(bArr, 0, ByteOrder.LITTLE_ENDIAN);
            if (sO != -29921) {
                c.this.M(new IOException(String.format(Locale.ENGLISH, "unknown format (magic number %x)", Short.valueOf(sO))));
                this.f73807c.F(new st.d.a());
                return;
            }
            byte b10 = bArr[3];
            this.f73805a = b10;
            boolean z10 = (b10 & 2) != 0;
            this.f73806b = z10;
            if (z10) {
                c.this.f73804j.update(bArr, 0, bArr.length);
            }
            if ((this.f73805a & 4) != 0) {
                this.f73808d.b(2, new C0914a());
            } else {
                e();
            }
        }
    }

    public c() {
        super(new Inflater(true));
        this.f73803i = true;
        this.f73804j = new CRC32();
    }

    static short O(byte[] bArr, int i10, ByteOrder byteOrder) {
        int i11;
        byte b10;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            i11 = bArr[i10] << 8;
            b10 = bArr[i10 + 1];
        } else {
            i11 = bArr[i10 + 1] << 8;
            b10 = bArr[i10];
        }
        return (short) ((b10 & 255) | i11);
    }

    @Override
    public void C(p pVar, ByteBufferList byteBufferList) {
        if (!this.f73803i) {
            super.C(pVar, byteBufferList);
        } else {
            w wVar = new w(pVar);
            wVar.b(10, new a(pVar, wVar));
        }
    }
}
