package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzs;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.j8;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class qef {
    public final Object a = new Object();
    public final zzj b;
    public final tef c;
    public boolean d;
    public Context e;
    public VersionInfoParcel f;
    public String g;
    public gye h;
    public Boolean i;
    public final AtomicInteger j;
    public final AtomicInteger k;
    public final mef l;
    public final Object m;
    public im5 n;
    public final AtomicBoolean o;

    public qef() {
        zzj zzjVar = new zzj();
        this.b = zzjVar;
        this.c = new tef(zzbb.zzd(), zzjVar);
        this.d = false;
        this.h = null;
        this.i = null;
        this.j = new AtomicInteger(0);
        this.k = new AtomicInteger(0);
        this.l = new mef(null);
        this.m = new Object();
        this.o = new AtomicBoolean();
    }

    public static ArrayList p(qef qefVar) {
        Context contextA = dcf.a(qefVar.e);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfoF = mpc.a(contextA).f(contextA.getApplicationInfo().packageName, 4096);
            if (packageInfoF.requestedPermissions != null && packageInfoF.requestedPermissionsFlags != null) {
                int i = 0;
                while (true) {
                    String[] strArr = packageInfoF.requestedPermissions;
                    if (i >= strArr.length) {
                        break;
                    }
                    if ((packageInfoF.requestedPermissionsFlags[i] & 2) != 0) {
                        arrayList.add(strArr[i]);
                    }
                    i++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public final void A(String str) {
        this.g = str;
    }

    public final boolean a(Context context) {
        if (d28.g()) {
            if (((Boolean) zzbd.zzc().b(cye.y8)).booleanValue()) {
                return this.o.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final int b() {
        return this.k.get();
    }

    public final int c() {
        return this.j.get();
    }

    public final Context e() {
        return this.e;
    }

    public final Resources f() {
        if (this.f.isClientJar) {
            return this.e.getResources();
        }
        try {
            if (((Boolean) zzbd.zzc().b(cye.Ya)).booleanValue()) {
                return zzs.zza(this.e).getResources();
            }
            zzs.zza(this.e).getResources();
            return null;
        } catch (zzr e) {
            int i = zze.zza;
            zzo.zzk("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final gye h() {
        gye gyeVar;
        synchronized (this.a) {
            gyeVar = this.h;
        }
        return gyeVar;
    }

    public final tef i() {
        return this.c;
    }

    public final zzg j() {
        zzj zzjVar;
        synchronized (this.a) {
            zzjVar = this.b;
        }
        return zzjVar;
    }

    public final im5 l() {
        if (this.e != null) {
            if (!((Boolean) zzbd.zzc().b(cye.d3)).booleanValue()) {
                synchronized (this.m) {
                    try {
                        im5 im5Var = this.n;
                        if (im5Var != null) {
                            return im5Var;
                        }
                        im5 im5VarM = zef.a.m(new Callable() {
                            @Override
                            public final Object call() {
                                return qef.p(this.b);
                            }
                        });
                        this.n = im5VarM;
                        return im5VarM;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        return j8.h(new ArrayList());
    }

    public final Boolean m() {
        Boolean bool;
        synchronized (this.a) {
            bool = this.i;
        }
        return bool;
    }

    public final String o() {
        return this.g;
    }

    public final void r() {
        this.l.a();
    }

    public final void s() {
        this.j.decrementAndGet();
    }

    public final void t() {
        this.k.incrementAndGet();
    }

    public final void u() {
        this.j.incrementAndGet();
    }

    public final void v(Context context, VersionInfoParcel versionInfoParcel) {
        gye gyeVar;
        synchronized (this.a) {
            try {
                if (!this.d) {
                    this.e = context.getApplicationContext();
                    this.f = versionInfoParcel;
                    zzv.zzb().c(this.c);
                    this.b.zzp(this.e);
                    uaf.d(this.e, this.f);
                    zzv.zze();
                    if (((Boolean) zzbd.zzc().b(cye.j2)).booleanValue()) {
                        gyeVar = new gye();
                    } else {
                        zze.zza("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                        gyeVar = null;
                    }
                    this.h = gyeVar;
                    if (gyeVar != null) {
                        cff.a(new kef(this).zzb(), "AppState.registerCsiReporter");
                    }
                    Context context2 = this.e;
                    if (d28.g()) {
                        if (((Boolean) zzbd.zzc().b(cye.y8)).booleanValue()) {
                            try {
                                ((ConnectivityManager) context2.getSystemService("connectivity")).registerDefaultNetworkCallback(new lef(this));
                            } catch (RuntimeException e) {
                                int i = zze.zza;
                                zzo.zzk("Failed to register network callback", e);
                                this.o.set(true);
                            }
                        }
                    }
                    this.d = true;
                    l();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzv.zzq().zzc(context, versionInfoParcel.afmaVersion);
    }

    public final void w(Throwable th, String str) {
        uaf.d(this.e, this.f).a(th, str, ((Double) i0f.f.e()).floatValue());
    }

    public final void x(Throwable th, String str) {
        uaf.d(this.e, this.f).b(th, str);
    }

    public final void y(Throwable th, String str) {
        uaf.f(this.e, this.f).b(th, str);
    }

    public final void z(Boolean bool) {
        synchronized (this.a) {
            this.i = bool;
        }
    }
}
