package defpackage;

import com.google.android.gms.internal.measurement.zzjd;
import java.util.NoSuchElementException;

public final class p3j extends u3j {
    public int b = 0;
    public final int c;
    public final zzjd d;

    public p3j(zzjd zzjdVar) {
        this.d = zzjdVar;
        this.c = zzjdVar.zzd();
    }

    @Override
    public final boolean hasNext() {
        return this.b < this.c;
    }

    @Override
    public final byte zza() {
        int i = this.b;
        if (i >= this.c) {
            throw new NoSuchElementException();
        }
        this.b = i + 1;
        return this.d.zzb(i);
    }
}
