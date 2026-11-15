package defpackage;

import com.google.android.gms.measurement.internal.zzau;
import java.util.Iterator;

public final class jpe implements Iterator {
    public final Iterator b;
    public final zzau c;

    public jpe(zzau zzauVar) {
        this.c = zzauVar;
        this.b = zzauVar.zza.keySet().iterator();
    }

    @Override
    public final String next() {
        return (String) this.b.next();
    }

    @Override
    public final boolean hasNext() {
        return this.b.hasNext();
    }

    @Override
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
