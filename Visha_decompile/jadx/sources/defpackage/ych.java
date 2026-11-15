package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import java.io.IOException;
import java.util.concurrent.Callable;

public final class ych implements eeh {
    public final Context a;
    public final g8i b;
    public final enh c;
    public final VersionInfoParcel d;

    public ych(Context context, g8i g8iVar, enh enhVar, VersionInfoParcel versionInfoParcel) {
        this.a = context;
        this.b = g8iVar;
        this.c = enhVar;
        this.d = versionInfoParcel;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0045 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x0047 A[Catch: IOException -> 0x002e, TryCatch #0 {IOException -> 0x002e, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:10:0x0033, B:15:0x0059, B:16:0x007d, B:18:0x008f, B:20:0x00a5, B:22:0x00ae, B:27:0x00d4, B:29:0x00f2, B:30:0x0116, B:32:0x0121, B:25:0x00c2, B:13:0x0047), top: B:36:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:15:0x0059 A[Catch: IOException -> 0x002e, TryCatch #0 {IOException -> 0x002e, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:10:0x0033, B:15:0x0059, B:16:0x007d, B:18:0x008f, B:20:0x00a5, B:22:0x00ae, B:27:0x00d4, B:29:0x00f2, B:30:0x0116, B:32:0x0121, B:25:0x00c2, B:13:0x0047), top: B:36:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x00c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x00c2 A[Catch: IOException -> 0x002e, TryCatch #0 {IOException -> 0x002e, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:10:0x0033, B:15:0x0059, B:16:0x007d, B:18:0x008f, B:20:0x00a5, B:22:0x00ae, B:27:0x00d4, B:29:0x00f2, B:30:0x0116, B:32:0x0121, B:25:0x00c2, B:13:0x0047), top: B:36:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00d4 A[Catch: IOException -> 0x002e, TryCatch #0 {IOException -> 0x002e, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:10:0x0033, B:15:0x0059, B:16:0x007d, B:18:0x008f, B:20:0x00a5, B:22:0x00ae, B:27:0x00d4, B:29:0x00f2, B:30:0x0116, B:32:0x0121, B:25:0x00c2, B:13:0x0047), top: B:36:0x0000 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00f2 A[Catch: IOException -> 0x002e, TryCatch #0 {IOException -> 0x002e, blocks: (B:2:0x0000, B:4:0x0015, B:6:0x0027, B:10:0x0033, B:15:0x0059, B:16:0x007d, B:18:0x008f, B:20:0x00a5, B:22:0x00ae, B:27:0x00d4, B:29:0x00f2, B:30:0x0116, B:32:0x0121, B:25:0x00c2, B:13:0x0047), top: B:36:0x0000 }] */
    public static zch a(ych ychVar) {
        tzh tzhVar;
        boolean z;
        boolean zE;
        yzh yzhVarJ;
        uzh uzhVarA;
        try {
            Context context = ychVar.a;
            boolean zA = ychVar.c.a();
            tzh tzhVar2 = new tzh();
            tzh tzhVar3 = new tzh();
            boolean zD = true;
            if (zA) {
                if (!((Boolean) zzbd.zzc().b(cye.p3)).booleanValue()) {
                    return new zch(true);
                }
            }
            if (!zA) {
                if (((Boolean) zzbd.zzc().b(cye.l3)).booleanValue()) {
                    tzhVar2 = xzh.k(context).i(((Long) zzbd.zzc().b(cye.w3)).longValue(), zzv.zzp().j().zzN());
                } else if (zA) {
                    if (((Boolean) zzbd.zzc().b(cye.n3)).booleanValue()) {
                        tzhVar2 = xzh.k(context).i(((Long) zzbd.zzc().b(cye.w3)).longValue(), zzv.zzp().j().zzN());
                    }
                }
            } else if (zA) {
                if (((Boolean) zzbd.zzc().b(cye.n3)).booleanValue()) {
                    tzhVar2 = xzh.k(context).i(((Long) zzbd.zzc().b(cye.w3)).longValue(), zzv.zzp().j().zzN());
                }
            }
            if (((Boolean) zzbd.zzc().b(cye.t3)).booleanValue()) {
                if (ychVar.d.clientJarVersion < ((Integer) zzbd.zzc().b(cye.s3)).intValue()) {
                    yzh.j(context).k();
                }
            }
            if (zA) {
                if (zA) {
                    if (((Boolean) zzbd.zzc().b(cye.o3)).booleanValue()) {
                        yzhVarJ = yzh.j(context);
                        uzhVarA = uzh.a(context);
                        if (ychVar.d.clientJarVersion >= ((Integer) zzbd.zzc().b(cye.s3)).intValue()) {
                            tzhVar3 = yzhVarJ.i(((Long) zzbd.zzc().b(cye.x3)).longValue(), zzv.zzp().j().zzN());
                            zD = uzhVarA.d();
                        }
                        zE = uzhVarA.e();
                        tzhVar = tzhVar3;
                        z = zD;
                    }
                }
                tzhVar = tzhVar3;
                z = true;
                zE = true;
            } else {
                if (((Boolean) zzbd.zzc().b(cye.m3)).booleanValue()) {
                    yzhVarJ = yzh.j(context);
                    uzhVarA = uzh.a(context);
                    if (ychVar.d.clientJarVersion >= ((Integer) zzbd.zzc().b(cye.s3)).intValue()) {
                        tzhVar3 = yzhVarJ.i(((Long) zzbd.zzc().b(cye.x3)).longValue(), zzv.zzp().j().zzN());
                        zD = uzhVarA.d();
                    }
                    zE = uzhVarA.e();
                    tzhVar = tzhVar3;
                    z = zD;
                } else {
                    if (zA) {
                        if (((Boolean) zzbd.zzc().b(cye.o3)).booleanValue()) {
                            yzhVarJ = yzh.j(context);
                            uzhVarA = uzh.a(context);
                            if (ychVar.d.clientJarVersion >= ((Integer) zzbd.zzc().b(cye.s3)).intValue()) {
                                tzhVar3 = yzhVarJ.i(((Long) zzbd.zzc().b(cye.x3)).longValue(), zzv.zzp().j().zzN());
                                zD = uzhVarA.d();
                            }
                            zE = uzhVarA.e();
                            tzhVar = tzhVar3;
                            z = zD;
                        }
                    }
                    tzhVar = tzhVar3;
                    z = true;
                    zE = true;
                }
            }
            return new zch(tzhVar2, tzhVar, z, zE, zA);
        } catch (IOException e) {
            zzv.zzp().x(e, "PerAppIdSignal");
            return new zch(ychVar.c.a());
        }
    }

    @Override
    public final int zza() {
        return 53;
    }

    @Override
    public final im5 zzb() {
        return this.b.m(new Callable() {
            @Override
            public final Object call() {
                return ych.a(this.b);
            }
        });
    }
}
