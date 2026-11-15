package defpackage;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbap;
import com.google.android.gms.internal.ads.zzbas;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

public final class fif extends p4i {
    public final Context e;
    public final v9i f;
    public final String g;
    public final int h;
    public final boolean i;
    public InputStream j;
    public boolean k;
    public Uri l;
    public volatile zzbas m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public long r;
    public im5 s;
    public final AtomicLong t;
    public final oif u;

    public fif(Context context, v9i v9iVar, String str, int i, ixi ixiVar, oif oifVar) {
        super(false);
        this.e = context;
        this.f = v9iVar;
        this.u = oifVar;
        this.g = str;
        this.h = i;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = 0L;
        this.t = new AtomicLong(-1L);
        this.s = null;
        this.i = ((Boolean) zzbd.zzc().b(cye.c2)).booleanValue();
        c(ixiVar);
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws IOException {
        if (!this.k) {
            throw new IOException("Attempt to read closed GcacheDataSource.");
        }
        InputStream inputStream = this.j;
        int iB = inputStream != null ? inputStream.read(bArr, i, i2) : this.f.b(bArr, i, i2);
        if (!this.i || this.j != null) {
            zzg(iB);
        }
        return iB;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.StringBuilder] */
    @Override
    public final long j(cfi cfiVar) throws Throwable {
        zzbap zzbapVarB;
        Long l;
        boolean z;
        boolean z2;
        long jElapsedRealtime;
        String string = "ms";
        if (this.k) {
            throw new IOException("Attempt to open an already open GcacheDataSource.");
        }
        ?? r2 = 1;
        this.k = true;
        Uri uri = cfiVar.a;
        this.l = uri;
        ?? sb = this.i;
        if (sb == 0) {
            m(cfiVar);
        }
        this.m = zzbas.zza(uri);
        if (!((Boolean) zzbd.zzc().b(cye.x4)).booleanValue()) {
            if (this.m != null) {
                this.m.zzh = cfiVar.e;
                this.m.zzi = j3i.c(this.g);
                this.m.zzj = this.h;
                zzbapVarB = zzv.zzc().b(this.m);
            } else {
                zzbapVarB = null;
            }
            if (zzbapVarB != null && zzbapVarB.zze()) {
                this.n = zzbapVarB.zzd();
                this.p = zzbapVarB.zzg();
                this.q = zzbapVarB.zzf();
                this.r = zzbapVarB.zza();
                this.o = true;
                if (!u()) {
                    this.j = zzbapVarB.zzc();
                    if (this.i) {
                        m(cfiVar);
                    }
                    return -1L;
                }
            }
        } else if (this.m != null) {
            this.m.zzh = cfiVar.e;
            this.m.zzi = j3i.c(this.g);
            this.m.zzj = this.h;
            if (this.m.zzg) {
                l = (Long) zzbd.zzc().b(cye.z4);
            } else {
                l = (Long) zzbd.zzc().b(cye.y4);
            }
            long jLongValue = l.longValue();
            long jElapsedRealtime2 = zzv.zzC().elapsedRealtime();
            zzv.zzd();
            Future futureA = zwe.a(this.e, this.m);
            try {
                try {
                    axe axeVar = (axe) futureA.get(jLongValue, TimeUnit.MILLISECONDS);
                    try {
                        this.n = axeVar.d();
                        this.p = axeVar.f();
                        this.q = axeVar.e();
                        this.r = axeVar.a();
                        if (!u()) {
                            this.j = axeVar.c();
                            if (sb != 0) {
                                m(cfiVar);
                            }
                            long jElapsedRealtime3 = zzv.zzC().elapsedRealtime() - jElapsedRealtime2;
                            rif.b0(this.u.a, true, jElapsedRealtime3);
                            this.o = true;
                            zze.zza("Cache connection took " + jElapsedRealtime3 + "ms");
                            return -1L;
                        }
                        long jElapsedRealtime4 = zzv.zzC().elapsedRealtime() - jElapsedRealtime2;
                        rif.b0(this.u.a, true, jElapsedRealtime4);
                        this.o = true;
                        string = "Cache connection took " + jElapsedRealtime4 + "ms";
                    } catch (InterruptedException unused) {
                        z2 = true;
                        futureA.cancel(true);
                        Thread.currentThread().interrupt();
                        jElapsedRealtime = zzv.zzC().elapsedRealtime() - jElapsedRealtime2;
                        rif.b0(this.u.a, z2, jElapsedRealtime);
                        this.o = z2;
                        sb = new StringBuilder();
                        sb.append("Cache connection took ");
                        sb.append(jElapsedRealtime);
                        sb.append("ms");
                        string = sb.toString();
                    } catch (ExecutionException | TimeoutException unused2) {
                        z = true;
                        futureA.cancel(true);
                        jElapsedRealtime = zzv.zzC().elapsedRealtime() - jElapsedRealtime2;
                        rif.b0(this.u.a, z, jElapsedRealtime);
                        this.o = z;
                        sb = new StringBuilder();
                        sb.append("Cache connection took ");
                        sb.append(jElapsedRealtime);
                        sb.append("ms");
                        string = sb.toString();
                    } catch (Throwable th) {
                        th = th;
                        long jElapsedRealtime5 = zzv.zzC().elapsedRealtime() - jElapsedRealtime2;
                        rif.b0(this.u.a, r2, jElapsedRealtime5);
                        this.o = r2;
                        zze.zza("Cache connection took " + jElapsedRealtime5 + string);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r2 = sb;
                }
            } catch (InterruptedException unused3) {
                z2 = false;
            } catch (ExecutionException | TimeoutException unused4) {
                z = false;
            } catch (Throwable th3) {
                th = th3;
                r2 = 0;
            }
            zze.zza(string);
        }
        this.o = false;
        if (this.m != null) {
            zci zciVarA = cfiVar.a();
            zciVarA.d(Uri.parse(this.m.zza));
            cfiVar = zciVarA.e();
        }
        return this.f.j(cfiVar);
    }

    public final long n() {
        return this.r;
    }

    public final long o() {
        if (this.m != null) {
            AtomicLong atomicLong = this.t;
            if (atomicLong.get() != -1) {
                return atomicLong.get();
            }
            synchronized (this) {
                try {
                    if (this.s == null) {
                        this.s = zef.a.m(new Callable() {
                            @Override
                            public final Object call() {
                                return Long.valueOf(zzv.zzc().a(this.b.m));
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.s.isDone()) {
                try {
                    this.t.compareAndSet(-1L, ((Long) this.s.get()).longValue());
                    return this.t.get();
                } catch (InterruptedException | ExecutionException unused) {
                }
            }
        }
        return -1L;
    }

    public final boolean q() {
        return this.n;
    }

    public final boolean r() {
        return this.q;
    }

    public final boolean s() {
        return this.p;
    }

    public final boolean t() {
        return this.o;
    }

    public final boolean u() {
        if (!this.i) {
            return false;
        }
        if (!((Boolean) zzbd.zzc().b(cye.A4)).booleanValue() || this.p) {
            return ((Boolean) zzbd.zzc().b(cye.B4)).booleanValue() && !this.q;
        }
        return true;
    }

    @Override
    public final Uri zzc() {
        return this.l;
    }

    @Override
    public final void zzd() throws IOException {
        if (!this.k) {
            throw new IOException("Attempt to close an already closed GcacheDataSource.");
        }
        this.k = false;
        this.l = null;
        boolean z = (this.i && this.j == null) ? false : true;
        InputStream inputStream = this.j;
        if (inputStream != null) {
            pv4.a(inputStream);
            this.j = null;
        } else {
            this.f.zzd();
        }
        if (z) {
            k();
        }
    }
}
