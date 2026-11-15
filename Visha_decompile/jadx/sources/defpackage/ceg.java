package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.zza;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbfd;
import com.google.android.gms.internal.ads.zzbfe;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbfq;
import com.google.android.gms.internal.ads.zzcex;
import com.google.android.gms.internal.ads.zzdim;
import com.google.android.gms.internal.ads.zzfww;
import defpackage.ceg;
import java.util.concurrent.Executor;

public final class ceg {
    public static final ImageView.ScaleType k = ImageView.ScaleType.CENTER_INSIDE;
    public final zzg a;
    public final enh b;
    public final idg c;
    public final ddg d;
    public final teg e;
    public final bfg f;
    public final Executor g;
    public final Executor h;
    public final zzbfi i;
    public final bdg j;

    public ceg(zzg zzgVar, enh enhVar, idg idgVar, ddg ddgVar, teg tegVar, bfg bfgVar, Executor executor, Executor executor2, bdg bdgVar) {
        this.a = zzgVar;
        this.b = enhVar;
        this.i = enhVar.i;
        this.c = idgVar;
        this.d = ddgVar;
        this.e = tegVar;
        this.f = bfgVar;
        this.g = executor;
        this.h = executor2;
        this.j = bdgVar;
    }

    public static void a(ceg cegVar, ViewGroup viewGroup) {
        ddg ddgVar = cegVar.d;
        if (ddgVar.S() != null) {
            boolean z = viewGroup != null;
            if (ddgVar.P() == 2 || ddgVar.P() == 1) {
                cegVar.a.zzF(cegVar.b.f, String.valueOf(ddgVar.P()), z);
            } else if (ddgVar.P() == 6) {
                zzg zzgVar = cegVar.a;
                String str = cegVar.b.f;
                zzgVar.zzF(str, "2", z);
                zzgVar.zzF(str, "1", z);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:82:0x018f  */
    public static void b(final ceg cegVar, dfg dfgVar) {
        ViewGroup viewGroup;
        View viewR;
        final ViewGroup viewGroup2;
        zzbfq zzbfqVarA;
        Drawable drawable;
        idg idgVar = cegVar.c;
        if (!idgVar.f() && !idgVar.e()) {
            viewGroup = null;
            break;
        }
        String[] strArr = {NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"};
        int i = 0;
        while (true) {
            if (i >= 2) {
                viewGroup = null;
                break;
            }
            View viewZzg = dfgVar.zzg(strArr[i]);
            if (viewZzg != null && (viewZzg instanceof ViewGroup)) {
                viewGroup = (ViewGroup) viewZzg;
                break;
            }
            i++;
        }
        Context context = dfgVar.zzf().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        ddg ddgVar = cegVar.d;
        if (ddgVar.R() != null) {
            viewR = ddgVar.R();
            zzbfi zzbfiVar = cegVar.i;
            if (zzbfiVar != null && viewGroup == null) {
                h(layoutParams, zzbfiVar.zze);
                viewR.setLayoutParams(layoutParams);
                viewGroup = null;
            }
        } else if (ddgVar.Y() instanceof zzbfd) {
            zzbfd zzbfdVar = (zzbfd) ddgVar.Y();
            if (viewGroup == null) {
                h(layoutParams, zzbfdVar.zzc());
                viewGroup = null;
            }
            View zzbfeVar = new zzbfe(context, zzbfdVar, layoutParams);
            zzbfeVar.setContentDescription((CharSequence) zzbd.zzc().b(cye.a4));
            viewR = zzbfeVar;
        } else {
            viewR = null;
        }
        if (viewR != null) {
            if (viewR.getParent() instanceof ViewGroup) {
                ((ViewGroup) viewR.getParent()).removeView(viewR);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(viewR);
            } else {
                zza zzaVar = new zza(dfgVar.zzf().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(viewR);
                FrameLayout frameLayoutZzh = dfgVar.zzh();
                if (frameLayoutZzh != null) {
                    frameLayoutZzh.addView(zzaVar);
                }
            }
            dfgVar.zzq(dfgVar.zzk(), viewR, true);
        }
        zzfww zzfwwVar = zzdim.zza;
        int size = zzfwwVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View viewZzg2 = dfgVar.zzg((String) zzfwwVar.get(i2));
            i2++;
            if (viewZzg2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) viewZzg2;
                break;
            }
        }
        cegVar.h.execute(new Runnable() {
            @Override
            public final void run() {
                ceg.a(this.zza, viewGroup2);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (cegVar.i(viewGroup2, true)) {
            if (ddgVar.f0() != null) {
                ddgVar.f0().zzar(new beg(dfgVar, viewGroup2));
                return;
            }
            return;
        }
        if (((Boolean) zzbd.zzc().b(cye.fa)).booleanValue() && cegVar.i(viewGroup2, false)) {
            if (ddgVar.d0() != null) {
                ddgVar.d0().zzar(new beg(dfgVar, viewGroup2));
                return;
            }
            return;
        }
        viewGroup2.removeAllViews();
        View viewZzf = dfgVar.zzf();
        Context context2 = viewZzf != null ? viewZzf.getContext() : null;
        if (context2 == null || (zzbfqVarA = cegVar.j.a()) == null) {
            return;
        }
        try {
            IObjectWrapper iObjectWrapperZzi = zzbfqVarA.zzi();
            if (iObjectWrapperZzi == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapperZzi)) == null) {
                return;
            }
            ImageView imageView = new ImageView(context2);
            imageView.setImageDrawable(drawable);
            IObjectWrapper iObjectWrapperZzj = dfgVar.zzj();
            if (iObjectWrapperZzj == null) {
                imageView.setScaleType(k);
            } else if (((Boolean) zzbd.zzc().b(cye.h6)).booleanValue()) {
                imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(iObjectWrapperZzj));
            } else {
                imageView.setScaleType(k);
            }
            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            viewGroup2.addView(imageView);
        } catch (RemoteException unused) {
            int i3 = zze.zza;
            zzo.zzj("Could not get main image drawable");
        }
    }

    public static void h(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    public final void c(dfg dfgVar) {
        teg tegVar;
        if (dfgVar == null || (tegVar = this.e) == null || dfgVar.zzh() == null || !this.c.g()) {
            return;
        }
        try {
            dfgVar.zzh().addView(tegVar.a());
        } catch (zzcex e) {
            zze.zzb("web view can not be obtained", e);
        }
    }

    public final void d(dfg dfgVar) {
        if (dfgVar == null) {
            return;
        }
        Context context = dfgVar.zzf().getContext();
        if (zzbv.zzh(context, this.c.a)) {
            if (!(context instanceof Activity)) {
                int i = zze.zza;
                zzo.zze("Activity context is needed for policy validator.");
                return;
            }
            bfg bfgVar = this.f;
            if (bfgVar == null || dfgVar.zzh() == null) {
                return;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(bfgVar.a(dfgVar.zzh(), windowManager), zzbv.zzb());
            } catch (zzcex e) {
                zze.zzb("web view can not be obtained", e);
            }
        }
    }

    public final void e(final dfg dfgVar) {
        this.g.execute(new Runnable() {
            @Override
            public final void run() {
                ceg.b(this.zza, dfgVar);
            }
        });
    }

    public final boolean f(ViewGroup viewGroup) {
        return i(viewGroup, false);
    }

    public final boolean g(ViewGroup viewGroup) {
        return i(viewGroup, true);
    }

    public final boolean i(ViewGroup viewGroup, boolean z) {
        View viewS = z ? this.d.S() : this.d.T();
        if (viewS == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (viewS.getParent() instanceof ViewGroup) {
            ((ViewGroup) viewS.getParent()).removeView(viewS);
        }
        viewGroup.addView(viewS, ((Boolean) zzbd.zzc().b(cye.c4)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }
}
