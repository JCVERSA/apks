package defpackage;

import com.google.android.gms.internal.ads.zzgwn;
import java.util.NoSuchElementException;

public final class qri extends rri {
    public int b = 0;
    public final int c;
    public final zzgwn d;

    public qri(zzgwn zzgwnVar) {
        this.d = zzgwnVar;
        this.c = zzgwnVar.zzd();
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
