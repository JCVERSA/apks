package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzf;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zze;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class bfg {
    public final ujg a;
    public final hig b;
    public ViewTreeObserver.OnScrollChangedListener c = null;

    public bfg(ujg ujgVar, hig higVar) {
        this.a = ujgVar;
        this.b = higVar;
    }

    public static void b(bfg bfgVar, WindowManager windowManager, View view, ejf ejfVar, Map map) {
        int i = zze.zza;
        zzo.zze("Hide native ad policy validator overlay.");
        ejfVar.zzF().setVisibility(8);
        if (ejfVar.zzF().getWindowToken() != null) {
            windowManager.removeView(ejfVar.zzF());
        }
        ejfVar.destroy();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (bfgVar.c == null || viewTreeObserver == null || !viewTreeObserver.isAlive()) {
            return;
        }
        viewTreeObserver.removeOnScrollChangedListener(bfgVar.c);
    }

    public static void c(final bfg bfgVar, final View view, final WindowManager windowManager, final ejf ejfVar, final Map map) {
        ejfVar.zzN().v(new gkf() {
            @Override
            public final void zza(boolean z, int i, String str, String str2) {
                bfg.d(this.b, map, z, i, str, str2);
            }
        });
        if (map == null) {
            return;
        }
        Context context = view.getContext();
        int iF = f(context, (String) map.get("validator_width"), ((Integer) zzbd.zzc().b(cye.h8)).intValue());
        int iF2 = f(context, (String) map.get("validator_height"), ((Integer) zzbd.zzc().b(cye.i8)).intValue());
        int iF3 = f(context, (String) map.get("validator_x"), 0);
        int iF4 = f(context, (String) map.get("validator_y"), 0);
        ejfVar.zzaj(kkf.b(iF, iF2));
        try {
            ejfVar.zzG().getSettings().setUseWideViewPort(((Boolean) zzbd.zzc().b(cye.j8)).booleanValue());
            ejfVar.zzG().getSettings().setLoadWithOverviewMode(((Boolean) zzbd.zzc().b(cye.k8)).booleanValue());
        } catch (NullPointerException unused) {
        }
        final WindowManager.LayoutParams layoutParamsZzb = zzbv.zzb();
        layoutParamsZzb.x = iF3;
        layoutParamsZzb.y = iF4;
        windowManager.updateViewLayout(ejfVar.zzF(), layoutParamsZzb);
        final String str = (String) map.get("orientation");
        Rect rect = new Rect();
        if (view.getGlobalVisibleRect(rect)) {
            final int i = (("1".equals(str) || "2".equals(str)) ? rect.bottom : rect.top) - iF4;
            bfgVar.c = new ViewTreeObserver.OnScrollChangedListener() {
                @Override
                public final void onScrollChanged() {
                    Rect rect2 = new Rect();
                    if (view.getGlobalVisibleRect(rect2)) {
                        ejf ejfVar2 = ejfVar;
                        if (ejfVar2.zzF().getWindowToken() == null) {
                            return;
                        }
                        int i2 = i;
                        WindowManager.LayoutParams layoutParams = layoutParamsZzb;
                        String str2 = str;
                        if ("1".equals(str2) || "2".equals(str2)) {
                            layoutParams.y = rect2.bottom - i2;
                        } else {
                            layoutParams.y = rect2.top - i2;
                        }
                        windowManager.updateViewLayout(ejfVar2.zzF(), layoutParams);
                    }
                }
            };
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                viewTreeObserver.addOnScrollChangedListener(bfgVar.c);
            }
        }
        String str2 = (String) map.get("overlay_url");
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        ejfVar.loadUrl(str2);
    }

    public static void d(bfg bfgVar, Map map, boolean z, int i, String str, String str2) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "validatorHtmlLoaded");
        map2.put(TtmlNode.ATTR_ID, (String) map.get(TtmlNode.ATTR_ID));
        bfgVar.b.j("sendMessageToNativeJs", map2);
    }

    public static final int f(Context context, String str, int i) {
        try {
            i = Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
        zzbb.zzb();
        return zzf.zzy(context, i);
    }

    public final View a(final View view, final WindowManager windowManager) {
        ejf ejfVarA = this.a.a(zzr.zzc(), null, null);
        ejfVarA.zzF().setVisibility(4);
        ejfVarA.zzF().setContentDescription("policy_validator");
        ejfVarA.zzag("/sendMessageToSdk", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                this.a.b.j("sendMessageToNativeJs", map);
            }
        });
        ejfVarA.zzag("/hideValidatorOverlay", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                bfg.b(this.a, windowManager, view, (ejf) obj, map);
            }
        });
        ejfVarA.zzag("/open", new z3f(null, null, null, null, null));
        WeakReference weakReference = new WeakReference(ejfVarA);
        n3f n3fVar = new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                bfg.c(this.a, view, windowManager, (ejf) obj, map);
            }
        };
        hig higVar = this.b;
        higVar.m(weakReference, "/loadNativeAdPolicyViolations", n3fVar);
        higVar.m(new WeakReference(ejfVarA), "/showValidatorOverlay", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                int i = zze.zza;
                zzo.zze("Show native ad policy validator overlay.");
                ((ejf) obj).zzF().setVisibility(0);
            }
        });
        return ejfVarA.zzF();
    }
}
