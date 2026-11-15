package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;

public final class tbh implements deh {
    public final String a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;

    public tbh(String str, boolean z, boolean z2, boolean z3, boolean z4) {
        this.a = str;
        this.b = z;
        this.c = z2;
        this.d = z3;
        this.e = z4;
    }

    @Override
    public final void zza(Object obj) {
        Bundle bundle = ((kyf) obj).b;
        String str = this.a;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z = this.b;
        bundle.putInt("test_mode", z ? 1 : 0);
        boolean z2 = this.c;
        bundle.putInt("linked_device", z2 ? 1 : 0);
        if (z || z2) {
            if (((Boolean) zzbd.zzc().b(cye.t9)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.e);
            }
        }
    }

    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        String str = this.a;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z = this.b;
        bundle.putInt("test_mode", z ? 1 : 0);
        boolean z2 = this.c;
        bundle.putInt("linked_device", z2 ? 1 : 0);
        if (z || z2) {
            if (((Boolean) zzbd.zzc().b(cye.p9)).booleanValue()) {
                bundle.putInt("risd", !this.d ? 1 : 0);
            }
            if (((Boolean) zzbd.zzc().b(cye.t9)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.e);
            }
        }
    }
}
