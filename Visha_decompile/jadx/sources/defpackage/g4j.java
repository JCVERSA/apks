package defpackage;

import com.google.android.gms.ads.internal.zzk;

public final class g4j implements rxh {
    public final zzk a;

    public g4j(zzk zzkVar) {
        this.a = zzkVar;
    }

    @Override
    public final void a(int i, long j, String str) {
        this.a.zzj.e(i, System.currentTimeMillis() - j, str);
    }

    @Override
    public final void b(int i, long j) {
        this.a.zzj.d(i, System.currentTimeMillis() - j);
    }
}
