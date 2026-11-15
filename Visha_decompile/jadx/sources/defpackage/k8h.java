package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import defpackage.j8h;
import defpackage.k8h;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class k8h implements eeh {
    public final AtomicReference a = new AtomicReference();
    public final AtomicReference b = new AtomicReference(Boolean.FALSE);
    public final fy0 c;
    public final Executor d;
    public final eeh e;
    public final long f;
    public final smg g;

    public k8h(eeh eehVar, long j, fy0 fy0Var, Executor executor, smg smgVar) {
        this.c = fy0Var;
        this.e = eehVar;
        this.f = j;
        this.d = executor;
        this.g = smgVar;
    }

    @Override
    public final int zza() {
        return this.e.zza();
    }

    @Override
    public final im5 zzb() {
        j8h j8hVar;
        if (((Boolean) zzbd.zzc().b(cye.Sb)).booleanValue()) {
            if (((Boolean) zzbd.zzc().b(cye.Rb)).booleanValue() && !((Boolean) this.b.getAndSet(Boolean.TRUE)).booleanValue()) {
                ScheduledExecutorService scheduledExecutorService = zef.d;
                Runnable runnable = new Runnable() {
                    @Override
                    public final void run() {
                        k8h k8hVar = this.zza;
                        k8hVar.d.execute(new Runnable() {
                            @Override
                            public final void run() {
                                k8h k8hVar2 = k8hVar;
                                k8hVar2.a.set(new j8h(k8hVar2.e.zzb(), k8hVar2.f, k8hVar2.c));
                            }
                        });
                    }
                };
                long j = this.f;
                scheduledExecutorService.scheduleWithFixedDelay(runnable, j, j, TimeUnit.MILLISECONDS);
            }
            synchronized (this) {
                try {
                    AtomicReference atomicReference = this.a;
                    j8hVar = (j8h) atomicReference.get();
                    if (j8hVar == null) {
                        j8h j8hVar2 = new j8h(this.e.zzb(), this.f, this.c);
                        atomicReference.set(j8hVar2);
                        return j8hVar2.a;
                    }
                    if (!((Boolean) this.b.get()).booleanValue() && j8hVar.a()) {
                        im5 im5Var = j8hVar.a;
                        eeh eehVar = this.e;
                        j8h j8hVar3 = new j8h(eehVar.zzb(), this.f, this.c);
                        this.a.set(j8hVar3);
                        if (((Boolean) zzbd.zzc().b(cye.Tb)).booleanValue()) {
                            if (((Boolean) zzbd.zzc().b(cye.Ub)).booleanValue()) {
                                rmg rmgVarA = this.g.a();
                                rmgVarA.b("action", "scs");
                                rmgVarA.b("sid", String.valueOf(eehVar.zza()));
                                rmgVarA.j();
                            }
                            return im5Var;
                        }
                        j8hVar = j8hVar3;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            AtomicReference atomicReference2 = this.a;
            j8hVar = (j8h) atomicReference2.get();
            if (j8hVar == null || j8hVar.a()) {
                eeh eehVar2 = this.e;
                j8h j8hVar4 = new j8h(eehVar2.zzb(), this.f, this.c);
                atomicReference2.set(j8hVar4);
                j8hVar = j8hVar4;
            }
        }
        return j8hVar.a;
    }
}
