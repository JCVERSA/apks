package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.bhf;
import defpackage.chf;
import defpackage.cye;
import defpackage.dhf;
import defpackage.qgf;
import defpackage.qxe;
import defpackage.qye;
import defpackage.rgf;
import defpackage.smg;
import defpackage.wd8;
import defpackage.zef;
import java.util.HashMap;

public final class zzcau extends FrameLayout implements qgf {
    public final chf b;
    public final FrameLayout c;
    public final View d;
    public final qye e;
    public final zzcbi f;
    public final long g;
    public final zzcam h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public long m;
    public long n;
    public String o;
    public String[] p;
    public Bitmap q;
    public final ImageView r;
    public boolean s;

    public zzcau(Context context, chf chfVar, int i, boolean z, qye qyeVar, bhf bhfVar, @Nullable smg smgVar) {
        super(context);
        this.b = chfVar;
        this.e = qyeVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.c = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        wd8.l(chfVar.zzj());
        rgf rgfVar = chfVar.zzj().zza;
        dhf dhfVar = new dhf(context, chfVar.zzm(), chfVar.zzs(), qyeVar, chfVar.zzk());
        zzcam zzceaVar = i == 3 ? new zzcea(context, dhfVar) : i == 2 ? new zzcby(context, dhfVar, chfVar, z, rgf.a(chfVar), bhfVar, smgVar) : new zzcak(context, chfVar, z, rgf.a(chfVar), bhfVar, new dhf(context, chfVar.zzm(), chfVar.zzs(), qyeVar, chfVar.zzk()), smgVar);
        this.h = zzceaVar;
        View view = new View(context);
        this.d = view;
        view.setBackgroundColor(0);
        frameLayout.addView(zzceaVar, new FrameLayout.LayoutParams(-1, -1, 17));
        if (((Boolean) zzbd.zzc().b(cye.V)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) zzbd.zzc().b(cye.S)).booleanValue()) {
            zzp();
        }
        this.r = new ImageView(context);
        this.g = ((Long) zzbd.zzc().b(cye.X)).longValue();
        boolean zBooleanValue = ((Boolean) zzbd.zzc().b(cye.U)).booleanValue();
        this.l = zBooleanValue;
        if (qyeVar != null) {
            qyeVar.d("spinner_used", true != zBooleanValue ? "0" : "1");
        }
        this.f = new zzcbi(this);
        zzceaVar.zzr(this);
    }

    public final void a() {
        chf chfVar = this.b;
        if (chfVar.zzi() == null || !this.j || this.k) {
            return;
        }
        chfVar.zzi().getWindow().clearFlags(128);
        this.j = false;
    }

    public final void b(String str, String... strArr) {
        HashMap map = new HashMap();
        Integer numZzl = zzl();
        if (numZzl != null) {
            map.put("playerId", numZzl.toString());
        }
        map.put(NotificationCompat.CATEGORY_EVENT, str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                map.put(str2, str3);
                str2 = null;
            }
        }
        this.b.zzd("onVideoEvent", map);
    }

    public final boolean c() {
        return this.r.getParent() != null;
    }

    public final void e() {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        long jZza = zzcamVar.zza();
        if (this.m == jZza || jZza <= 0) {
            return;
        }
        float f = jZza / 1000.0f;
        if (((Boolean) zzbd.zzc().b(cye.c2)).booleanValue()) {
            b(VkConstant.VK_EVENT_TIME_UPDATE, "time", String.valueOf(f), "totalBytes", String.valueOf(zzcamVar.zzh()), "qoeCachedBytes", String.valueOf(zzcamVar.zzf()), "qoeLoadedBytes", String.valueOf(zzcamVar.zzg()), "droppedFrames", String.valueOf(zzcamVar.zzb()), "reportTime", String.valueOf(zzv.zzC().currentTimeMillis()));
        } else {
            b(VkConstant.VK_EVENT_TIME_UPDATE, "time", String.valueOf(f));
        }
        this.m = jZza;
    }

    public final void finalize() throws Throwable {
        try {
            this.f.zza();
            final zzcam zzcamVar = this.h;
            if (zzcamVar != null) {
                zef.f.execute(new Runnable() {
                    @Override
                    public final void run() {
                        zzcamVar.zzt();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    @Override
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.f.zzb();
        } else {
            this.f.zza();
            this.n = this.m;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                this.zza.b("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
            }
        });
    }

    @Override
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.f.zzb();
            z = true;
        } else {
            this.f.zza();
            this.n = this.m;
            z = false;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcat(this, z));
    }

    public final void zzA(int i) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzz(i);
    }

    public final void zzB(int i) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzA(i);
    }

    public final void zzC(int i) {
        if (((Boolean) zzbd.zzc().b(cye.V)).booleanValue()) {
            this.c.setBackgroundColor(i);
            this.d.setBackgroundColor(i);
        }
    }

    public final void zzD(int i) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzB(i);
    }

    public final void zzE(String str, String[] strArr) {
        this.o = str;
        this.p = strArr;
    }

    public final void zzF(int i, int i2, int i3, int i4) {
        if (zze.zzc()) {
            zze.zza("Set video bounds to x:" + i + ";y:" + i2 + ";w:" + i3 + ";h:" + i4);
        }
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.c.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void zzG(float f) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.c.e(f);
        zzcamVar.zzn();
    }

    public final void zzH(float f, float f2) {
        zzcam zzcamVar = this.h;
        if (zzcamVar != null) {
            zzcamVar.zzu(f, f2);
        }
    }

    public final void zzI() {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.c.d(false);
        zzcamVar.zzn();
    }

    @Override
    public final void zza() {
        if (((Boolean) zzbd.zzc().b(cye.e2)).booleanValue()) {
            this.f.zza();
        }
        b("ended", new String[0]);
        a();
    }

    @Override
    public final void zzb(String str, @Nullable String str2) {
        b("error", "what", str, "extra", str2);
    }

    @Override
    public final void zzc(String str, @Nullable String str2) {
        b("exception", "what", "ExoPlayerAdapter exception", "extra", str2);
    }

    @Override
    public final void zzd() {
        b("pause", new String[0]);
        a();
        this.i = false;
    }

    @Override
    public final void zze() {
        if (((Boolean) zzbd.zzc().b(cye.e2)).booleanValue()) {
            this.f.zzb();
        }
        chf chfVar = this.b;
        if (chfVar.zzi() != null && !this.j) {
            boolean z = (chfVar.zzi().getWindow().getAttributes().flags & 128) != 0;
            this.k = z;
            if (!z) {
                chfVar.zzi().getWindow().addFlags(128);
                this.j = true;
            }
        }
        this.i = true;
    }

    @Override
    public final void zzf() {
        zzcam zzcamVar = this.h;
        if (zzcamVar != null && this.n == 0) {
            b("canplaythrough", "duration", String.valueOf(zzcamVar.zzc() / 1000.0f), "videoWidth", String.valueOf(zzcamVar.zze()), "videoHeight", String.valueOf(zzcamVar.zzd()));
        }
    }

    @Override
    public final void zzg() {
        this.d.setVisibility(4);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() {
            @Override
            public final void run() {
                this.zza.b("firstFrameRendered", new String[0]);
            }
        });
    }

    @Override
    public final void zzh() {
        this.f.zzb();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcar(this));
    }

    @Override
    public final void zzi() {
        if (this.s && this.q != null && !c()) {
            ImageView imageView = this.r;
            imageView.setImageBitmap(this.q);
            imageView.invalidate();
            FrameLayout frameLayout = this.c;
            frameLayout.addView(imageView, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(imageView);
        }
        this.f.zza();
        this.n = this.m;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcas(this));
    }

    @Override
    public final void zzj(int i, int i2) {
        if (this.l) {
            qxe qxeVar = cye.W;
            int iMax = Math.max(i / ((Integer) zzbd.zzc().b(qxeVar)).intValue(), 1);
            int iMax2 = Math.max(i2 / ((Integer) zzbd.zzc().b(qxeVar)).intValue(), 1);
            Bitmap bitmap = this.q;
            if (bitmap != null && bitmap.getWidth() == iMax && this.q.getHeight() == iMax2) {
                return;
            }
            this.q = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.s = false;
        }
    }

    @Override
    public final void zzk() {
        if (this.i && c()) {
            this.c.removeView(this.r);
        }
        zzcam zzcamVar = this.h;
        if (zzcamVar == null || this.q == null) {
            return;
        }
        long jElapsedRealtime = zzv.zzC().elapsedRealtime();
        if (zzcamVar.getBitmap(this.q) != null) {
            this.s = true;
        }
        long jElapsedRealtime2 = zzv.zzC().elapsedRealtime() - jElapsedRealtime;
        if (zze.zzc()) {
            zze.zza("Spinner frame grab took " + jElapsedRealtime2 + "ms");
        }
        if (jElapsedRealtime2 > this.g) {
            zzo.zzj("Spinner frame grab crossed jank threshold! Suspending spinner.");
            this.l = false;
            this.q = null;
            qye qyeVar = this.e;
            if (qyeVar != null) {
                qyeVar.d("spinner_jank", Long.toString(jElapsedRealtime2));
            }
        }
    }

    @Nullable
    public final Integer zzl() {
        zzcam zzcamVar = this.h;
        if (zzcamVar != null) {
            return zzcamVar.zzw();
        }
        return null;
    }

    public final void zzp() {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        TextView textView = new TextView(zzcamVar.getContext());
        Resources resourcesF = zzv.zzp().f();
        textView.setText(String.valueOf(resourcesF == null ? "AdMob - " : resourcesF.getString(R.string.watermark_label_prefix)).concat(zzcamVar.zzj()));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
        textView.setBackgroundColor(InputDeviceCompat.SOURCE_ANY);
        FrameLayout frameLayout = this.c;
        frameLayout.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        frameLayout.bringChildToFront(textView);
    }

    public final void zzq() {
        this.f.zza();
        zzcam zzcamVar = this.h;
        if (zzcamVar != null) {
            zzcamVar.zzt();
        }
        a();
    }

    public final void zzr(Integer num) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        if (TextUtils.isEmpty(this.o)) {
            b("no_src", new String[0]);
        } else {
            zzcamVar.zzC(this.o, this.p, num);
        }
    }

    public final void zzs() {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.c.d(true);
        zzcamVar.zzn();
    }

    public final void zzu() {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzo();
    }

    public final void zzv() {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzp();
    }

    public final void zzw(int i) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzq(i);
    }

    public final void zzx(MotionEvent motionEvent) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.dispatchTouchEvent(motionEvent);
    }

    public final void zzy(int i) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzx(i);
    }

    public final void zzz(int i) {
        zzcam zzcamVar = this.h;
        if (zzcamVar == null) {
            return;
        }
        zzcamVar.zzy(i);
    }
}
