package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import java.util.NoSuchElementException;
import java.util.Objects;

public final class nsh extends hth {
    public int b;
    public final int c;
    public final zzfp d;

    public nsh(zzfp zzfpVar) {
        Objects.requireNonNull(zzfpVar);
        this.d = zzfpVar;
        this.b = 0;
        this.c = zzfpVar.zzd();
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
        return this.d.zza(i);
    }
}
