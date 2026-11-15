package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.facebook.ads.AdSDKNotificationListener;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zze;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.internal.ads.zzdfl;
import com.transsion.push.PushConstants;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public final class wlg implements p4g, zza, d0g, ozf, v7g {
    public final Context b;
    public final ynh c;
    public final smg d;
    public final vmh e;
    public final hmh f;
    public final dwg g;
    public final String h;
    public Boolean j;
    public long i = -1;
    public final AtomicBoolean l = new AtomicBoolean(false);
    public final AtomicBoolean m = new AtomicBoolean(false);
    public final boolean k = ((Boolean) zzbd.zzc().b(cye.M6)).booleanValue();

    public wlg(Context context, ynh ynhVar, smg smgVar, vmh vmhVar, hmh hmhVar, dwg dwgVar, String str) {
        this.b = context;
        this.c = ynhVar;
        this.d = smgVar;
        this.e = vmhVar;
        this.f = hmhVar;
        this.g = dwgVar;
        this.h = str;
    }

    private final boolean h() {
        String strZzq;
        if (this.j == null) {
            synchronized (this) {
                if (this.j == null) {
                    String str = (String) zzbd.zzc().b(cye.F1);
                    zzv.zzq();
                    try {
                        strZzq = zzs.zzq(this.b);
                    } catch (RemoteException unused) {
                        strZzq = null;
                    }
                    boolean zMatches = false;
                    if (str != null && strZzq != null) {
                        try {
                            zMatches = Pattern.matches(str, strZzq);
                        } catch (RuntimeException e) {
                            zzv.zzp().x(e, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.j = Boolean.valueOf(zMatches);
                }
            }
        }
        return this.j.booleanValue();
    }

    @Override
    public final void a(zze zzeVar) {
        zze zzeVar2;
        if (this.k) {
            rmg rmgVarB = b("ifts");
            rmgVarB.b("reason", "adapter");
            int i = zzeVar.zza;
            String str = zzeVar.zzb;
            if (zzeVar.zzc.equals(MobileAds.ERROR_DOMAIN) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                zze zzeVar3 = zzeVar.zzd;
                i = zzeVar3.zza;
                str = zzeVar3.zzb;
            }
            if (i >= 0) {
                rmgVarB.b("arec", String.valueOf(i));
            }
            String strA = this.c.a(str);
            if (strA != null) {
                rmgVarB.b("areec", strA);
            }
            rmgVarB.j();
        }
    }

    public final rmg b(String str) {
        vmh vmhVar = this.e;
        umh umhVar = vmhVar.b;
        rmg rmgVarA = this.d.a();
        rmgVarA.d(umhVar.b);
        hmh hmhVar = this.f;
        rmgVarA.c(hmhVar);
        rmgVarA.b("action", str);
        rmgVarA.b("ad_format", this.h.toUpperCase(Locale.ROOT));
        List list = hmhVar.t;
        if (!list.isEmpty()) {
            rmgVarA.b("ancn", (String) list.get(0));
        }
        if (hmhVar.b()) {
            rmgVarA.b("device_connectivity", true != zzv.zzp().a(this.b) ? "offline" : "online");
            rmgVarA.b("event_timestamp", String.valueOf(zzv.zzC().currentTimeMillis()));
            rmgVarA.b("offline_ad", "1");
        }
        if (((Boolean) zzbd.zzc().b(cye.T6)).booleanValue()) {
            boolean zZzf = zzaa.zzf(vmhVar);
            rmgVarA.b("scar", String.valueOf(zZzf));
            if (zZzf) {
                zzm zzmVar = vmhVar.a.a.d;
                rmgVarA.b("ragent", zzmVar.zzp);
                rmgVarA.b("rtype", zzaa.zzb(zzaa.zzc(zzmVar)));
            }
        }
        return rmgVarA;
    }

    public final void g(rmg rmgVar) {
        if (!this.f.b()) {
            rmgVar.j();
            return;
        }
        this.g.e(new fwg(zzv.zzC().currentTimeMillis(), this.e.b.b.b, rmgVar.e(), 2));
    }

    @Override
    public final void onAdClicked() {
        if (this.f.b()) {
            g(b(PushConstants.PUSH_SERVICE_TYPE_CLICK));
        }
    }

    @Override
    public final void y(zzdfl zzdflVar) {
        if (this.k) {
            rmg rmgVarB = b("ifts");
            rmgVarB.b("reason", "exception");
            if (!TextUtils.isEmpty(zzdflVar.getMessage())) {
                rmgVarB.b(NotificationCompat.CATEGORY_MESSAGE, zzdflVar.getMessage());
            }
            rmgVarB.j();
        }
    }

    @Override
    public final void zzb() {
        if (this.k) {
            rmg rmgVarB = b("ifts");
            rmgVarB.b("reason", "blocked");
            rmgVarB.j();
        }
    }

    @Override
    public final void zzi() {
        if (h()) {
            b("adapter_shown").j();
        }
    }

    @Override
    public final void zzj() {
        if (h()) {
            rmg rmgVarB = b("adapter_impression");
            if (this.l.get()) {
                rmgVarB.b("asc", "1");
                rmgVarB.b("sil", String.valueOf(zzv.zzC().currentTimeMillis() - this.i));
            } else {
                rmgVarB.b("asc", "0");
            }
            if (((Boolean) zzbd.zzc().b(cye.rd)).booleanValue()) {
                zzv.zzq();
                rmgVarB.b("foreground", true != zzs.zzH(this.b) ? "1" : "0");
                rmgVarB.b("fg_show", true == this.m.get() ? "1" : "0");
            }
            rmgVarB.j();
        }
    }

    @Override
    public final void zzs() {
        if (h() || this.f.b()) {
            rmg rmgVarB = b(AdSDKNotificationListener.IMPRESSION_EVENT);
            if (this.i > 0) {
                rmgVarB.b("s_imp_l", String.valueOf(zzv.zzC().currentTimeMillis() - this.i));
            }
            if (((Boolean) zzbd.zzc().b(cye.rd)).booleanValue()) {
                zzv.zzq();
                rmgVarB.b("foreground", true != zzs.zzH(this.b) ? "1" : "0");
                rmgVarB.b("fg_show", true == this.m.get() ? "1" : "0");
            }
            g(rmgVarB);
        }
    }

    @Override
    public final void zzu() {
        if (h()) {
            this.l.set(true);
            this.i = zzv.zzC().currentTimeMillis();
            rmg rmgVarB = b("iscs");
            if (((Boolean) zzbd.zzc().b(cye.rd)).booleanValue()) {
                AtomicBoolean atomicBoolean = this.m;
                zzv.zzq();
                atomicBoolean.set(!zzs.zzH(this.b));
                rmgVarB.b("foreground", true != atomicBoolean.get() ? "0" : "1");
            }
            rmgVarB.j();
        }
    }

    @Override
    public final void zzv() {
    }
}
