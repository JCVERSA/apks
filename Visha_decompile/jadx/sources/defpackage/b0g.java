package defpackage;

import java.util.Set;

public final class b0g extends a6g {
    public boolean c;

    public b0g(Set set) {
        super(set);
        this.c = false;
    }

    public final synchronized void zza() {
        if (this.c) {
            return;
        }
        E(new z5g() {
            @Override
            public final void zza(Object obj) {
                ((d0g) obj).zzs();
            }
        });
        this.c = true;
    }
}
