package defpackage;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzbk;
import com.google.android.gms.internal.ads.zzbuy;
import com.google.android.gms.internal.ads.zzfgq;
import defpackage.qwf;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public final class qwf implements p2g, f9g {
    public kbf b;
    public final Context d;
    public final zzfgq e;
    public final VersionInfoParcel f;
    public final Executor g;
    public boolean h = false;
    public boolean i = false;
    public final AtomicBoolean c = new AtomicBoolean();

    public qwf(Context context, zzfgq zzfgqVar, VersionInfoParcel versionInfoParcel, Executor executor) {
        this.d = context;
        this.e = zzfgqVar;
        this.f = versionInfoParcel;
        this.g = executor;
    }

    public static void a(qwf qwfVar) {
        jxe.e(qwfVar.d);
        qwfVar.i = true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003a  */
    public final void b() {
        kbf kbfVar;
        int i;
        j7f j7fVarA;
        if (!this.c.getAndSet(true)) {
            if (((Boolean) zze.j.e()).booleanValue()) {
                i = 2;
            } else {
                i = 3;
                if (!((Boolean) zze.k.e()).booleanValue()) {
                    if (((Boolean) zze.i.e()).booleanValue()) {
                        try {
                            String strOptString = new JSONObject(zzv.zzp().j().zzg().c()).optString("local_flag_write");
                            if (TextUtils.equals(strOptString, "client")) {
                                i = 2;
                            } else if (!TextUtils.equals(strOptString, NotificationCompat.CATEGORY_SERVICE)) {
                                i = 1;
                            }
                        } catch (JSONException unused) {
                        }
                    } else {
                        i = 1;
                    }
                }
            }
            int i2 = i - 1;
            if (i2 == 1) {
                j7fVarA = zzv.zzg().a(this.d, VersionInfoParcel.forPackage(), this.e);
            } else if (i2 == 2) {
                j7fVarA = zzv.zzg().b(this.d, VersionInfoParcel.forPackage(), this.e);
            }
            x6f x6fVar = a7f.b;
            this.b = new mbf(this.d, j7fVarA.a("google.afma.sdkConstants.getSdkConstants", x6fVar, x6fVar), this.f);
            this.h = true;
        }
        if (this.h && (kbfVar = this.b) != null) {
            im5 im5VarA = kbfVar.a();
            if (!this.i && ((Boolean) rze.i.e()).booleanValue()) {
                im5VarA.addListener(new Runnable() {
                    @Override
                    public final void run() {
                        qwf.a(this.zza);
                    }
                }, this.g);
            }
            cff.a(im5VarA, "persistFlagsClient");
        }
    }

    @Override
    public final void g(zzbuy zzbuyVar) {
        b();
    }

    @Override
    public final void w(vmh vmhVar) {
    }

    @Override
    public final void zze(zzbk zzbkVar) {
        b();
    }

    @Override
    public final void zzf(String str) {
        b();
    }
}
