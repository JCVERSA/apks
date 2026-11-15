package defpackage;

import java.nio.ByteBuffer;

public abstract class nxi extends qxi implements qne {
    public final String i = "moov";

    public nxi(String str) {
    }

    @Override
    public final void a(rxi rxiVar, ByteBuffer byteBuffer, long j, nne nneVar) {
        rxiVar.zzb();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.c = rxiVar;
        this.e = rxiVar.zzb();
        rxiVar.c(rxiVar.zzb() + j);
        this.f = rxiVar.zzb();
        this.b = nneVar;
    }

    @Override
    public final String zza() {
        return this.i;
    }
}
