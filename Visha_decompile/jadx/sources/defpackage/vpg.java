package defpackage;

import com.google.android.gms.internal.auth.zzee;
import java.util.NoSuchElementException;

public final class vpg extends wrg {
    public int b = 0;
    public final int c;
    public final zzee d;

    public vpg(zzee zzeeVar) {
        this.d = zzeeVar;
        this.c = zzeeVar.zzd();
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
