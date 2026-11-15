package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.e;
import com.google.android.gms.measurement.internal.g;
import java.util.List;
import java.util.Map;

public final class k5e extends t4g {
    public final e a;
    public final g b;

    public k5e(e eVar) {
        super(null);
        wd8.l(eVar);
        this.a = eVar;
        this.b = eVar.I();
    }

    @Override
    public final void a(Bundle bundle) {
        this.b.C(bundle);
    }

    @Override
    public final void b(String str, String str2, Bundle bundle) {
        this.b.q(str, str2, bundle);
    }

    @Override
    public final Map c(String str, String str2, boolean z) {
        return this.b.Z(str, str2, z);
    }

    @Override
    public final void d(kti ktiVar) {
        this.b.M(ktiVar);
    }

    @Override
    public final void e(kti ktiVar) {
        this.b.w(ktiVar);
    }

    @Override
    public final List f(String str, String str2) {
        return this.b.Y(str, str2);
    }

    @Override
    public final void g(String str, String str2, Bundle bundle) {
        this.a.I().n(str, str2, bundle);
    }

    @Override
    public final int zza(String str) {
        this.b.P(str);
        return 25;
    }

    @Override
    public final long zzb() {
        return this.a.N().p0();
    }

    @Override
    public final String zzh() {
        return this.b.U();
    }

    @Override
    public final String zzi() {
        return this.b.V();
    }

    @Override
    public final String zzj() {
        return this.b.W();
    }

    @Override
    public final String zzk() {
        return this.b.U();
    }

    @Override
    public final void zzp(String str) {
        this.a.y().k(str, this.a.c().elapsedRealtime());
    }

    @Override
    public final void zzr(String str) {
        this.a.y().l(str, this.a.c().elapsedRealtime());
    }
}
