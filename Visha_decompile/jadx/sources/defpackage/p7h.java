package defpackage;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.Callable;

public final class p7h implements eeh {
    public final g8i a;
    public final VersionInfoParcel b;

    public p7h(VersionInfoParcel versionInfoParcel, g8i g8iVar) {
        this.b = versionInfoParcel;
        this.a = g8iVar;
    }

    @Override
    public final int zza() {
        return 54;
    }

    @Override
    public final im5 zzb() {
        return this.a.m(new Callable() {
            @Override
            public final Object call() {
                return q7h.a(this.b.b);
            }
        });
    }
}
