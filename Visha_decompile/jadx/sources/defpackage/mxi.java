package defpackage;

import java.io.IOException;
import java.nio.ByteBuffer;

public abstract class mxi implements qne {
    public static final xxi i = xxi.b(mxi.class);
    public final String b;
    public ByteBuffer e;
    public long f;
    public rxi h;
    public long g = -1;
    public boolean d = true;
    public boolean c = true;

    public mxi(String str) {
        this.b = str;
    }

    @Override
    public final void a(rxi rxiVar, ByteBuffer byteBuffer, long j, nne nneVar) {
        this.f = rxiVar.zzb();
        byteBuffer.remaining();
        this.g = j;
        this.h = rxiVar;
        rxiVar.c(rxiVar.zzb() + j);
        this.d = false;
        this.c = false;
        d();
    }

    public final synchronized void b() {
        try {
            if (this.d) {
                return;
            }
            try {
                xxi xxiVar = i;
                String str = this.b;
                xxiVar.a(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
                this.e = this.h.j(this.f, this.g);
                this.d = true;
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract void c(ByteBuffer byteBuffer);

    public final synchronized void d() {
        try {
            b();
            xxi xxiVar = i;
            String str = this.b;
            xxiVar.a(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.e;
            if (byteBuffer != null) {
                this.c = true;
                byteBuffer.rewind();
                c(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.e = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override
    public final String zza() {
        return this.b;
    }
}
