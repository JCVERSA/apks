package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.util.zzaa;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.l6;
import com.google.android.gms.internal.ads.zzcuv;
import com.google.android.gms.internal.ads.zzfgs;
import java.util.Iterator;

public final class yrh implements wrh {
    public final Context a;
    public final int p;
    public long b = 0;
    public long c = -1;
    public boolean d = false;
    public int q = 2;
    public int r = 2;
    public int e = 0;
    public String f = "";
    public String g = "";
    public String h = "";
    public String i = "";
    public zzfgs j = zzfgs.SCAR_REQUEST_TYPE_UNSPECIFIED;
    public String k = "";
    public String l = "";
    public String m = "";
    public boolean n = false;
    public boolean o = false;

    public yrh(Context context, int i) {
        this.a = context;
        this.p = i;
    }

    public final synchronized yrh A(String str) {
        this.i = str;
        return this;
    }

    public final synchronized yrh B(zzfgs zzfgsVar) {
        this.j = zzfgsVar;
        return this;
    }

    public final synchronized yrh C(boolean z) {
        this.d = z;
        return this;
    }

    public final synchronized yrh D(Throwable th) {
        if (((Boolean) zzbd.zzc().b(cye.U8)).booleanValue()) {
            this.l = uaf.h(th);
            this.k = (String) l6.b(i2i.b('\n')).d(uaf.g(th)).iterator().next();
        }
        return this;
    }

    public final synchronized yrh E() {
        Configuration configuration;
        zzaa zzaaVarZzr = zzv.zzr();
        Context context = this.a;
        this.e = zzaaVarZzr.zzm(context);
        Resources resources = context.getResources();
        int i = 2;
        if (resources != null && (configuration = resources.getConfiguration()) != null) {
            i = configuration.orientation == 2 ? 4 : 3;
        }
        this.r = i;
        this.b = zzv.zzC().elapsedRealtime();
        this.o = true;
        return this;
    }

    @Override
    public final wrh a(zze zzeVar) {
        w(zzeVar);
        return this;
    }

    public final synchronized yrh b() {
        this.c = zzv.zzC().elapsedRealtime();
        return this;
    }

    @Override
    public final wrh c(int i) {
        p(i);
        return this;
    }

    @Override
    public final wrh d(zzfgs zzfgsVar) {
        B(zzfgsVar);
        return this;
    }

    @Override
    public final wrh e(umh umhVar) {
        x(umhVar);
        return this;
    }

    @Override
    public final wrh f(Throwable th) {
        D(th);
        return this;
    }

    public final synchronized yrh p(int i) {
        this.q = i;
        return this;
    }

    public final synchronized yrh w(zze zzeVar) {
        try {
            IBinder iBinder = zzeVar.zze;
            if (iBinder != null) {
                zzcuv zzcuvVar = (zzcuv) iBinder;
                String strZzl = zzcuvVar.zzl();
                if (!TextUtils.isEmpty(strZzl)) {
                    this.f = strZzl;
                }
                String strZzi = zzcuvVar.zzi();
                if (!TextUtils.isEmpty(strZzi)) {
                    this.g = strZzi;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized yrh x(umh umhVar) {
        try {
            String str = umhVar.b.b;
            if (!TextUtils.isEmpty(str)) {
                this.f = str;
            }
            Iterator it = umhVar.a.iterator();
            while (it.hasNext()) {
                String str2 = ((hmh) it.next()).b0;
                if (!TextUtils.isEmpty(str2)) {
                    this.g = str2;
                    break;
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final synchronized yrh y(String str) {
        if (((Boolean) zzbd.zzc().b(cye.U8)).booleanValue()) {
            this.m = str;
        }
        return this;
    }

    public final synchronized yrh z(String str) {
        this.h = str;
        return this;
    }

    @Override
    public final wrh zzc(String str) {
        y(str);
        return this;
    }

    @Override
    public final wrh zzd(String str) {
        z(str);
        return this;
    }

    @Override
    public final wrh zze(String str) {
        A(str);
        return this;
    }

    @Override
    public final wrh zzg(boolean z) {
        C(z);
        return this;
    }

    @Override
    public final wrh zzi() {
        E();
        return this;
    }

    @Override
    public final wrh zzj() {
        b();
        return this;
    }

    @Override
    public final synchronized boolean zzk() {
        return this.o;
    }

    @Override
    public final boolean zzl() {
        return !TextUtils.isEmpty(this.h);
    }

    @Override
    public final synchronized ash zzm() {
        try {
            zrh zrhVar = null;
            if (this.n) {
                return null;
            }
            this.n = true;
            if (!this.o) {
                E();
            }
            if (this.c < 0) {
                b();
            }
            return new ash(this, zrhVar);
        } catch (Throwable th) {
            throw th;
        }
    }
}
