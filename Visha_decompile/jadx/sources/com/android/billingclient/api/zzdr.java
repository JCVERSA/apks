package com.android.billingclient.api;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.play_billing.a;
import com.google.android.gms.internal.play_billing.zzjz;
import defpackage.a9j;
import defpackage.b6j;
import defpackage.c5j;
import defpackage.c8j;
import defpackage.f5j;
import defpackage.i9j;
import defpackage.j5j;
import defpackage.k6j;
import defpackage.n5j;
import defpackage.n7j;
import defpackage.p5j;
import defpackage.p6j;
import defpackage.r6j;
import defpackage.u8j;
import defpackage.v5j;
import defpackage.v6j;
import defpackage.y7j;

final class zzdr implements zzdd {
    private v6j zzb;
    private final zzdt zzc;

    public zzdr(Context context, v6j v6jVar) {
        this.zzc = new zzdt(context);
        this.zzb = v6jVar;
    }

    private final void zzo(@Nullable f5j f5jVar, v6j v6jVar) {
        if (f5jVar == null) {
            return;
        }
        try {
            y7j y7jVarA = c8j.A();
            y7jVarA.o(v6jVar);
            y7jVarA.j(f5jVar);
            this.zzc.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    private final void zzp(@Nullable n5j n5jVar, v6j v6jVar) {
        if (n5jVar == null) {
            return;
        }
        try {
            y7j y7jVarA = c8j.A();
            y7jVarA.o(v6jVar);
            y7jVarA.k(n5jVar);
            this.zzc.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zza(@Nullable f5j f5jVar) {
        try {
            zzo(f5jVar, this.zzb);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzb(@Nullable f5j f5jVar, int i) {
        try {
            r6j r6jVar = (r6j) this.zzb.p();
            r6jVar.l(i);
            this.zzb = (v6j) r6jVar.f();
            zza(f5jVar);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzc(f5j f5jVar, int i, long j) {
        try {
            r6j r6jVar = (r6j) this.zzb.p();
            r6jVar.l(i);
            v6j v6jVar = (v6j) r6jVar.f();
            this.zzb = v6jVar;
            if (j != 0) {
                r6j r6jVar2 = (r6j) v6jVar.p();
                r6jVar2.n(j);
                v6jVar = (v6j) r6jVar2.f();
            }
            zzo(f5jVar, v6jVar);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzd(f5j f5jVar, long j, boolean z) {
        v6j v6jVar;
        try {
            c5j c5jVar = (c5j) f5jVar.p();
            n7j n7jVar = (n7j) f5jVar.E().p();
            n7jVar.j(z);
            c5jVar.m(n7jVar);
            f5j f5jVar2 = (f5j) c5jVar.f();
            if (j == 0) {
                v6jVar = this.zzb;
            } else {
                r6j r6jVar = (r6j) this.zzb.p();
                r6jVar.n(j);
                v6jVar = (v6j) r6jVar.f();
            }
            zzo(f5jVar2, v6jVar);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zze(f5j f5jVar, int i, long j, boolean z) {
        v6j v6jVar;
        try {
            r6j r6jVar = (r6j) this.zzb.p();
            r6jVar.l(i);
            this.zzb = (v6j) r6jVar.f();
            c5j c5jVar = (c5j) f5jVar.p();
            n7j n7jVar = (n7j) f5jVar.E().p();
            n7jVar.j(z);
            c5jVar.m(n7jVar);
            f5j f5jVar2 = (f5j) c5jVar.f();
            if (j == 0) {
                v6jVar = this.zzb;
            } else {
                r6j r6jVar2 = (r6j) this.zzb.p();
                r6jVar2.n(j);
                v6jVar = (v6j) r6jVar2.f();
            }
            zzo(f5jVar2, v6jVar);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzf(@Nullable n5j n5jVar) {
        try {
            zzp(n5jVar, this.zzb);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzg(@Nullable n5j n5jVar, int i) {
        try {
            r6j r6jVar = (r6j) this.zzb.p();
            r6jVar.l(i);
            this.zzb = (v6j) r6jVar.f();
            zzf(n5jVar);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzh(n5j n5jVar, long j, boolean z) {
        v6j v6jVar;
        try {
            j5j j5jVar = (j5j) n5jVar.p();
            n7j n7jVar = (n7j) n5jVar.B().p();
            n7jVar.j(z);
            j5jVar.l(n7jVar);
            n5j n5jVar2 = (n5j) j5jVar.f();
            if (j == 0) {
                v6jVar = this.zzb;
            } else {
                r6j r6jVar = (r6j) this.zzb.p();
                r6jVar.n(j);
                v6jVar = (v6j) r6jVar.f();
            }
            zzp(n5jVar2, v6jVar);
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzi(b6j b6jVar) {
        try {
            y7j y7jVarA = c8j.A();
            y7jVarA.o(this.zzb);
            y7jVarA.l(b6jVar);
            this.zzc.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzj(@Nullable BillingResult billingResult, long j) {
        v6j v6jVar;
        try {
            k6j k6jVarY = p6j.y();
            k6jVarY.n(4);
            k6jVarY.j(zzjz.IN_APP_BILLING_RESULT_UPDATE_ACTION);
            if (billingResult != null) {
                p5j p5jVarZ = v5j.z();
                p5jVarZ.o(billingResult.getResponseCode());
                p5jVarZ.k(billingResult.getDebugMessage());
                k6jVarY.k(p5jVarZ);
            }
            y7j y7jVarA = c8j.A();
            if (j == 0) {
                v6jVar = this.zzb;
            } else {
                r6j r6jVar = (r6j) this.zzb.p();
                r6jVar.n(j);
                v6jVar = (v6j) r6jVar.f();
            }
            y7jVarA.o(v6jVar);
            y7jVarA.m(k6jVarY);
            this.zzc.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzk(long j) {
        v6j v6jVar;
        try {
            k6j k6jVarY = p6j.y();
            k6jVarY.n(4);
            k6jVarY.j(zzjz.PLAY_BILLING_ACTIVITY_CREATED_ACTION);
            p6j p6jVar = (p6j) k6jVarY.f();
            y7j y7jVarA = c8j.A();
            if (j == 0) {
                v6jVar = this.zzb;
            } else {
                r6j r6jVar = (r6j) this.zzb.p();
                r6jVar.n(j);
                v6jVar = (v6j) r6jVar.f();
            }
            y7jVarA.o(v6jVar);
            y7jVarA.n(p6jVar);
            this.zzc.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzl(u8j u8jVar) {
        try {
            y7j y7jVarA = c8j.A();
            y7jVarA.o(this.zzb);
            k6j k6jVarY = p6j.y();
            k6jVarY.l("ProxyBillingBroadcastReceiver");
            k6jVarY.n(2);
            k6jVarY.m(u8jVar);
            y7jVarA.m(k6jVarY);
            this.zzc.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzm(a9j a9jVar) {
        try {
            zzdt zzdtVar = this.zzc;
            y7j y7jVarA = c8j.A();
            y7jVarA.o(this.zzb);
            y7jVarA.p(a9jVar);
            zzdtVar.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }

    @Override
    public final void zzn(@Nullable i9j i9jVar) {
        if (i9jVar == null) {
            return;
        }
        try {
            y7j y7jVarA = c8j.A();
            y7jVarA.o(this.zzb);
            y7jVarA.q(i9jVar);
            this.zzc.zza((c8j) y7jVarA.f());
        } catch (Throwable th) {
            a.o("BillingLogger", "Unable to log.", th);
        }
    }
}
