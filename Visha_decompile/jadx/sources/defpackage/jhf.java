package defpackage;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbap;
import com.google.android.gms.internal.ads.zzbas;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

public final class jhf implements v9i {
    public final Context a;
    public final v9i b;
    public final String c;
    public final int d;
    public final boolean e;
    public InputStream f;
    public boolean g;
    public Uri h;
    public volatile zzbas i;
    public boolean j = false;
    public boolean k = false;
    public cfi l;

    public jhf(Context context, v9i v9iVar, String str, int i, ixi ixiVar, ghf ghfVar) {
        this.a = context;
        this.b = v9iVar;
        this.c = str;
        this.d = i;
        new AtomicLong(-1L);
        this.e = ((Boolean) zzbd.zzc().b(cye.c2)).booleanValue();
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws IOException {
        if (!this.g) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.f;
        return inputStream != null ? inputStream.read(bArr, i, i2) : this.b.b(bArr, i, i2);
    }

    @Override
    public final void c(ixi ixiVar) {
    }

    @Override
    public final long j(cfi cfiVar) throws IOException {
        Long l;
        if (this.g) {
            throw new IOException("Attempt to open an already open CacheDataSource.");
        }
        this.g = true;
        Uri uri = cfiVar.a;
        this.h = uri;
        this.l = cfiVar;
        this.i = zzbas.zza(uri);
        zzbap zzbapVarB = null;
        if (!((Boolean) zzbd.zzc().b(cye.x4)).booleanValue()) {
            if (this.i != null) {
                this.i.zzh = cfiVar.e;
                this.i.zzi = j3i.c(this.c);
                this.i.zzj = this.d;
                zzbapVarB = zzv.zzc().b(this.i);
            }
            if (zzbapVarB != null && zzbapVarB.zze()) {
                this.j = zzbapVarB.zzg();
                this.k = zzbapVarB.zzf();
                if (!k()) {
                    this.f = zzbapVarB.zzc();
                    return -1L;
                }
            }
        } else if (this.i != null) {
            this.i.zzh = cfiVar.e;
            this.i.zzi = j3i.c(this.c);
            this.i.zzj = this.d;
            if (this.i.zzg) {
                l = (Long) zzbd.zzc().b(cye.z4);
            } else {
                l = (Long) zzbd.zzc().b(cye.y4);
            }
            long jLongValue = l.longValue();
            zzv.zzC().elapsedRealtime();
            zzv.zzd();
            Future futureA = zwe.a(this.a, this.i);
            try {
                try {
                    axe axeVar = (axe) futureA.get(jLongValue, TimeUnit.MILLISECONDS);
                    axeVar.d();
                    this.j = axeVar.f();
                    this.k = axeVar.e();
                    axeVar.a();
                    if (!k()) {
                        this.f = axeVar.c();
                    }
                } catch (InterruptedException unused) {
                    futureA.cancel(false);
                    Thread.currentThread().interrupt();
                } catch (ExecutionException | TimeoutException unused2) {
                    futureA.cancel(false);
                }
            } catch (Throwable unused3) {
            }
            zzv.zzC().elapsedRealtime();
            throw null;
        }
        if (this.i != null) {
            zci zciVarA = cfiVar.a();
            zciVarA.d(Uri.parse(this.i.zza));
            this.l = zciVarA.e();
        }
        return this.b.j(this.l);
    }

    public final boolean k() {
        if (!this.e) {
            return false;
        }
        if (!((Boolean) zzbd.zzc().b(cye.A4)).booleanValue() || this.j) {
            return ((Boolean) zzbd.zzc().b(cye.B4)).booleanValue() && !this.k;
        }
        return true;
    }

    @Override
    public final Uri zzc() {
        return this.h;
    }

    @Override
    public final void zzd() throws IOException {
        if (!this.g) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.g = false;
        this.h = null;
        InputStream inputStream = this.f;
        if (inputStream == null) {
            this.b.zzd();
        } else {
            pv4.a(inputStream);
            this.f = null;
        }
    }

    @Override
    public final Map zze() {
        return Collections.emptyMap();
    }
}
