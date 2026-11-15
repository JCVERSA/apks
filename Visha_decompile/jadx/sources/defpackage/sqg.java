package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import java.util.concurrent.Callable;

public final class sqg implements fyi {
    public final qyi a;
    public final qyi b;
    public final qyi c;
    public final qyi d;

    public sqg(qyi qyiVar, qyi qyiVar2, qyi qyiVar3, qyi qyiVar4, qyi qyiVar5) {
        this.a = qyiVar;
        this.b = qyiVar2;
        this.c = qyiVar3;
        this.d = qyiVar4;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x004f  */
    /* JADX WARN: Code duplicated, block: B:8:0x006d  */
    /* JADX WARN: Code duplicated, block: B:9:0x0077  */
    @Override
    public final Object zzb() {
        im5 im5VarM;
        final fre freVar = (fre) this.a.zzb();
        final Context contextA = ((skf) this.b).a();
        enh enhVarA = ((zyf) this.c).a();
        long jLongValue = ((Long) this.d.zzb()).longValue();
        g8i g8iVarB = fqh.b();
        int iIntValue = ((Integer) zzbd.zzc().b(cye.U2)).intValue();
        if (iIntValue != -1) {
            if (Integer.toString(iIntValue).equals(zzaa.zzb(zzaa.zzc(enhVarA.d)))) {
                if (zzv.zzC().currentTimeMillis() - jLongValue < ((Integer) zzbd.zzc().b(cye.W2)).intValue()) {
                    im5VarM = g8iVarB.m(new Callable() {
                        @Override
                        public final Object call() {
                            return freVar.c().zzg(contextA);
                        }
                    });
                } else {
                    im5VarM = g8iVarB.m(new Callable() {
                        @Override
                        public final Object call() {
                            return freVar.c().zzf(contextA);
                        }
                    });
                }
            } else {
                im5VarM = g8iVarB.m(new Callable() {
                    @Override
                    public final Object call() {
                        return freVar.c().zzf(contextA);
                    }
                });
            }
        } else {
            if (zzv.zzC().currentTimeMillis() - jLongValue < ((Integer) zzbd.zzc().b(cye.W2)).intValue()) {
                im5VarM = g8iVarB.m(new Callable() {
                    @Override
                    public final Object call() {
                        return freVar.c().zzg(contextA);
                    }
                });
            } else {
                im5VarM = g8iVarB.m(new Callable() {
                    @Override
                    public final Object call() {
                        return freVar.c().zzf(contextA);
                    }
                });
            }
        }
        pyi.b(im5VarM);
        return im5VarM;
    }
}
