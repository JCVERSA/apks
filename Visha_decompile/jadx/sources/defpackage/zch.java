package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzbd;

public final class zch implements deh {
    public tzh a;
    public tzh b;
    public boolean c;
    public boolean d;
    public final boolean e = false;
    public final boolean f;

    public zch(tzh tzhVar, tzh tzhVar2, boolean z, boolean z2, boolean z3) {
        this.a = tzhVar;
        this.b = tzhVar2;
        this.c = z;
        this.d = z2;
        this.f = z3;
    }

    @Override
    public final void zza(Object obj) {
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0028  */
    /* JADX WARN: Code duplicated, block: B:12:0x003a  */
    /* JADX WARN: Code duplicated, block: B:14:0x0042  */
    /* JADX WARN: Code duplicated, block: B:18:0x006c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x006e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0080  */
    /* JADX WARN: Code duplicated, block: B:23:0x0088  */
    /* JADX WARN: Code duplicated, block: B:9:0x0026 A[DONT_INVERT] */
    @Override
    public final void zzb(Object obj) {
        Bundle bundle = ((kyf) obj).a;
        if (this.e) {
            return;
        }
        Bundle bundleA = unh.a(bundle, "pii");
        boolean z = this.f;
        if (!z) {
            if (((Boolean) zzbd.zzc().b(cye.l3)).booleanValue()) {
                if (this.a.c()) {
                    bundleA.putString("paidv1_id_android", this.a.b());
                    bundleA.putLong("paidv1_creation_time_android", this.a.a());
                }
            } else if (z) {
                if (((Boolean) zzbd.zzc().b(cye.n3)).booleanValue()) {
                    if (this.a.c()) {
                        bundleA.putString("paidv1_id_android", this.a.b());
                        bundleA.putLong("paidv1_creation_time_android", this.a.a());
                    }
                }
            }
        } else if (z) {
            if (((Boolean) zzbd.zzc().b(cye.n3)).booleanValue()) {
                if (this.a.c()) {
                    bundleA.putString("paidv1_id_android", this.a.b());
                    bundleA.putLong("paidv1_creation_time_android", this.a.a());
                }
            }
        }
        if (!z) {
            if (((Boolean) zzbd.zzc().b(cye.m3)).booleanValue()) {
                if (this.b.c()) {
                    bundleA.putString("paidv2_id_android", this.b.b());
                    bundleA.putLong("paidv2_creation_time_android", this.b.a());
                }
                bundleA.putBoolean("paidv2_pub_option_android", this.c);
                bundleA.putBoolean("paidv2_user_option_android", this.d);
            } else if (z) {
                if (((Boolean) zzbd.zzc().b(cye.o3)).booleanValue()) {
                    if (this.b.c()) {
                        bundleA.putString("paidv2_id_android", this.b.b());
                        bundleA.putLong("paidv2_creation_time_android", this.b.a());
                    }
                    bundleA.putBoolean("paidv2_pub_option_android", this.c);
                    bundleA.putBoolean("paidv2_user_option_android", this.d);
                }
            }
        } else if (z) {
            if (((Boolean) zzbd.zzc().b(cye.o3)).booleanValue()) {
                if (this.b.c()) {
                    bundleA.putString("paidv2_id_android", this.b.b());
                    bundleA.putLong("paidv2_creation_time_android", this.b.a());
                }
                bundleA.putBoolean("paidv2_pub_option_android", this.c);
                bundleA.putBoolean("paidv2_user_option_android", this.d);
            }
        }
        if (bundleA.isEmpty()) {
            return;
        }
        bundle.putBundle("pii", bundleA);
    }

    public zch(boolean z) {
        this.f = z;
    }
}
