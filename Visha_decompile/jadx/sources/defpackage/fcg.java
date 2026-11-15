package defpackage;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzdc;
import com.google.android.gms.ads.internal.client.zzdg;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbhk;
import com.google.android.gms.internal.ads.zzebe;
import com.google.android.gms.internal.ads.zzfgn;
import com.transsion.push.PushConstants;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class fcg implements ldg {
    public zzdc C;
    public final a2g D;
    public final eeg E;
    public final Context a;
    public final sdg b;
    public final JSONObject c;
    public final hig d;
    public final ddg e;
    public final fre f;
    public final b0g g;
    public final izf h;
    public final r8g i;
    public final hmh j;
    public final VersionInfoParcel k;
    public final enh l;
    public final oqf m;
    public final ieg n;
    public final fy0 o;
    public final k8g p;
    public final wth q;
    public final yjg r;
    public final zzfgn s;
    public final zzebe t;
    public boolean v;
    public boolean u = false;
    public boolean w = false;
    public boolean x = false;
    public Point y = new Point();
    public Point z = new Point();
    public long A = 0;
    public long B = 0;

    public fcg(Context context, sdg sdgVar, JSONObject jSONObject, hig higVar, ddg ddgVar, fre freVar, b0g b0gVar, izf izfVar, r8g r8gVar, hmh hmhVar, VersionInfoParcel versionInfoParcel, enh enhVar, oqf oqfVar, ieg iegVar, fy0 fy0Var, k8g k8gVar, wth wthVar, zzfgn zzfgnVar, zzebe zzebeVar, yjg yjgVar, eeg eegVar, a2g a2gVar) {
        this.a = context;
        this.b = sdgVar;
        this.c = jSONObject;
        this.d = higVar;
        this.e = ddgVar;
        this.f = freVar;
        this.g = b0gVar;
        this.h = izfVar;
        this.i = r8gVar;
        this.j = hmhVar;
        this.k = versionInfoParcel;
        this.l = enhVar;
        this.m = oqfVar;
        this.n = iegVar;
        this.o = fy0Var;
        this.p = k8gVar;
        this.q = wthVar;
        this.s = zzfgnVar;
        this.t = zzebeVar;
        this.r = yjgVar;
        this.E = eegVar;
        this.D = a2gVar;
    }

    @Override
    public final void a(Bundle bundle) {
        if (bundle == null) {
            int i = zze.zza;
            zzo.zze("Touch event data is null. No touch event is reported.");
        } else if (!r("touch_reporting")) {
            int i2 = zze.zza;
            zzo.zzg("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
        } else {
            this.f.c().zzl((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
        }
    }

    @Override
    public final boolean b() {
        if (zza() == 0) {
            return true;
        }
        if (((Boolean) zzbd.zzc().b(cye.Fb)).booleanValue()) {
            return this.l.i.zzj;
        }
        return true;
    }

    @Override
    public final void c(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType, int i) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = this.c;
        boolean z2 = false;
        if (jSONObject2.optBoolean("allow_sdk_custom_click_gesture", false)) {
            if (((Boolean) zzbd.zzc().b(cye.Fb)).booleanValue()) {
                z2 = true;
            }
        }
        if (!z2) {
            if (!this.x) {
                int i2 = zze.zza;
                zzo.zze("Custom click reporting failed. enableCustomClickGesture is not set.");
                return;
            } else if (!s()) {
                int i3 = zze.zza;
                zzo.zze("Custom click reporting failed. Ad unit id not in the allow list.");
                return;
            }
        }
        Context context = this.a;
        JSONObject jSONObjectZzd = zzbv.zzd(context, map, map2, view2, scaleType);
        JSONObject jSONObjectZzg = zzbv.zzg(context, view2);
        JSONObject jSONObjectZzf = zzbv.zzf(view2);
        JSONObject jSONObjectZze = zzbv.zze(context, view2);
        String strQ = q(view, map);
        JSONObject jSONObjectZzc = zzbv.zzc(strQ, context, this.z, this.y);
        if (z2) {
            try {
                Point point = this.z;
                Point point2 = this.y;
                try {
                    jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject3 = new JSONObject();
                        JSONObject jSONObject4 = new JSONObject();
                        if (point != null) {
                            jSONObject3.put("x", point.x);
                            jSONObject3.put("y", point.y);
                        }
                        if (point2 != null) {
                            jSONObject4.put("x", point2.x);
                            jSONObject4.put("y", point2.y);
                        }
                        jSONObject.put("start_point", jSONObject3);
                        jSONObject.put("end_point", jSONObject4);
                        jSONObject.put("duration_ms", i);
                    } catch (Exception e) {
                        e = e;
                        int i4 = zze.zza;
                        zzo.zzh("Error occurred while grabbing custom click gesture signals.", e);
                    }
                } catch (Exception e2) {
                    e = e2;
                    jSONObject = null;
                }
                jSONObject2.put("custom_click_gesture_signal", jSONObject);
            } catch (JSONException e3) {
                int i5 = zze.zza;
                zzo.zzh("Error occurred while adding CustomClickGestureSignals to adJson.", e3);
                zzv.zzp().x(e3, "FirstPartyNativeAdCore.performCustomClickGesture");
            }
        }
        z(view2, jSONObjectZzg, jSONObjectZzd, jSONObjectZzf, jSONObjectZze, strQ, jSONObjectZzc, null, z, true);
    }

    @Override
    public final void d(zzdc zzdcVar) {
        this.C = zzdcVar;
    }

    @Override
    public final void e(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.y = new Point();
        this.z = new Point();
        if (!this.v) {
            this.p.F(view);
            this.v = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.m.d(this);
        boolean zZzi = zzbv.zzi(this.k.clientJarVersion);
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (view2 != null) {
                    if (zZzi) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                if (view3 != null) {
                    if (zZzi) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override
    public final boolean f(Bundle bundle) {
        if (r("impression_reporting")) {
            return t(null, null, null, null, ((Boolean) zzbd.zzc().b(cye.Bb)).booleanValue() ? p(null) : null, zzbb.zzb().zzl(bundle, null), false, null);
        }
        int i = zze.zza;
        zzo.zzg("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
        return false;
    }

    @Override
    public final void g(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType) {
        View view3 = view2;
        Context context = this.a;
        JSONObject jSONObjectZzd = zzbv.zzd(context, map, map2, view2, scaleType);
        JSONObject jSONObjectZzg = zzbv.zzg(context, view2);
        JSONObject jSONObjectZzf = zzbv.zzf(view2);
        JSONObject jSONObjectZze = zzbv.zze(context, view2);
        String strQ = q(view, map);
        JSONObject jSONObjectZzc = zzbv.zzc(strQ, context, this.z, this.y);
        if (true != ((Boolean) zzbd.zzc().b(cye.S3)).booleanValue()) {
            view3 = view;
        }
        z(view3, jSONObjectZzg, jSONObjectZzd, jSONObjectZzf, jSONObjectZze, strQ, jSONObjectZzc, null, z, false);
    }

    @Override
    public final JSONObject h(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        JSONObject jSONObjectI = i(view, map, map2, scaleType);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.x && s()) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (jSONObjectI != null) {
                jSONObject.put("nas", jSONObjectI);
            }
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Unable to create native click meta data JSON.", e);
        }
        return jSONObject;
    }

    @Override
    public final JSONObject i(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.a;
        JSONObject jSONObjectZzd = zzbv.zzd(context, map, map2, view, scaleType);
        JSONObject jSONObjectZzg = zzbv.zzg(context, view);
        JSONObject jSONObjectZzf = zzbv.zzf(view);
        JSONObject jSONObjectZze = zzbv.zze(context, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", jSONObjectZzd);
            jSONObject.put("ad_view_signal", jSONObjectZzg);
            jSONObject.put("scroll_view_signal", jSONObjectZzf);
            jSONObject.put("lock_screen_signal", jSONObjectZze);
            return jSONObject;
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override
    public final void j(View view, Map map) {
        this.y = new Point();
        this.z = new Point();
        if (view != null) {
            this.p.G(view);
        }
        this.v = false;
    }

    @Override
    public final void k(View view, MotionEvent motionEvent, View view2) {
        this.y = zzbv.zza(motionEvent, view2);
        long jCurrentTimeMillis = this.o.currentTimeMillis();
        this.B = jCurrentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.r.b(motionEvent);
            this.A = jCurrentTimeMillis;
            this.z = this.y;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        Point point = this.y;
        motionEventObtain.setLocation(point.x, point.y);
        this.f.d(motionEventObtain);
        motionEventObtain.recycle();
    }

    @Override
    public final void l(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.a;
        t(zzbv.zzg(context, view), zzbv.zzd(context, map, map2, view, scaleType), zzbv.zzf(view), zzbv.zze(context, view), p(view), null, zzbv.zzh(context, this.j), view);
    }

    @Override
    public final void m(View view) {
        if (!this.c.optBoolean("custom_one_point_five_click_enabled", false)) {
            int i = zze.zza;
            zzo.zzj("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        ieg iegVar = this.n;
        if (view == null) {
            return;
        }
        view.setOnClickListener(iegVar);
        view.setClickable(true);
        iegVar.h = new WeakReference(view);
    }

    @Override
    public final void n(zzbhk zzbhkVar) {
        if (this.c.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.n.c(zzbhkVar);
        } else {
            int i = zze.zza;
            zzo.zzj("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        }
    }

    @Override
    public final void o(zzdg zzdgVar) {
        try {
            if (this.w) {
                return;
            }
            if (zzdgVar == null) {
                ddg ddgVar = this.e;
                if (ddgVar.X() != null) {
                    this.w = true;
                    this.q.d(ddgVar.X().zzf(), this.j.x0, this.s, null);
                    zzi();
                    return;
                }
            }
            this.w = true;
            this.q.d(zzdgVar.zzf(), this.j.x0, this.s, null);
            zzi();
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    public final String p(View view) {
        if (!((Boolean) zzbd.zzc().b(cye.L3)).booleanValue()) {
            return null;
        }
        try {
            return this.f.c().zzh(this.a, view, null);
        } catch (Exception unused) {
            int i = zze.zza;
            zzo.zzg("Exception getting data.");
            return null;
        }
    }

    public final String q(View view, Map map) {
        if (map != null && view != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    return (String) entry.getKey();
                }
            }
        }
        int iP = this.e.P();
        if (iP == 1) {
            return "1099";
        }
        if (iP == 2) {
            return "2099";
        }
        if (iP != 6) {
            return null;
        }
        return "3099";
    }

    public final boolean r(String str) {
        JSONObject jSONObjectOptJSONObject = this.c.optJSONObject("allow_pub_event_reporting");
        return jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean(str, false);
    }

    public final boolean s() {
        return this.c.optBoolean("allow_custom_click_gesture", false);
    }

    public final boolean t(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z, View view) {
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) zzbd.zzc().b(cye.L3)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            Context context = this.a;
            JSONObject jSONObject7 = new JSONObject();
            zzv.zzq();
            DisplayMetrics displayMetricsZzu = zzs.zzu((WindowManager) context.getSystemService("window"));
            ecg ecgVar = null;
            try {
                jSONObject7.put("width", zzbb.zzb().zzb(context, displayMetricsZzu.widthPixels));
                jSONObject7.put("height", zzbb.zzb().zzb(context, displayMetricsZzu.heightPixels));
            } catch (JSONException unused) {
                jSONObject7 = null;
            }
            jSONObject6.put("screen", jSONObject7);
            if (((Boolean) zzbd.zzc().b(cye.J8)).booleanValue()) {
                this.d.l("/clickRecorded", new bcg(this, ecgVar));
            } else {
                this.d.l("/logScionEvent", new acg(this, ecgVar));
            }
            hig higVar = this.d;
            higVar.l("/nativeImpression", new ccg(this, view, ecgVar));
            higVar.l("/nativeImpressionFlowControl", new dcg(this, this.q, this.j.x0, this.s, null));
            cff.a(higVar.g("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.u) {
                return true;
            }
            this.u = zzv.zzt().zzn(this.a, this.k.afmaVersion, this.j.C.toString(), this.l.f);
            return true;
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Unable to create impression JSON.", e);
            return false;
        }
    }

    public final void z(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        String strZzd;
        try {
            JSONObject jSONObject7 = new JSONObject();
            JSONObject jSONObject8 = this.c;
            jSONObject7.put("ad", jSONObject8);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            sdg sdgVar = this.b;
            ddg ddgVar = this.e;
            jSONObject7.put("has_custom_click_handler", sdgVar.c(ddgVar.a()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("asset_id", str);
            jSONObject9.put("template", ddgVar.P());
            jSONObject9.put("view_aware_api_used", z);
            zzbfi zzbfiVar = this.l.i;
            jSONObject9.put("custom_mute_requested", zzbfiVar != null && zzbfiVar.zzg);
            jSONObject9.put("custom_mute_enabled", (ddgVar.h().isEmpty() || ddgVar.X() == null) ? false : true);
            if (this.n.a() != null && jSONObject8.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject9.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject9.put("timestamp", this.o.currentTimeMillis());
            if (this.x && s()) {
                jSONObject9.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject9.put("is_custom_click_gesture", true);
            }
            jSONObject9.put("has_custom_click_handler", sdgVar.c(ddgVar.a()) != null);
            try {
                JSONObject jSONObjectOptJSONObject = jSONObject8.optJSONObject("tracking_urls_and_actions");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                strZzd = this.f.c().zzd(this.a, jSONObjectOptJSONObject.optString("click_string"), view);
            } catch (Exception e) {
                int i = zze.zza;
                zzo.zzh("Exception obtaining click signals", e);
                strZzd = null;
            }
            jSONObject9.put("click_signals", strZzd);
            jSONObject9.put("open_chrome_custom_tab", true);
            if (((Boolean) zzbd.zzc().b(cye.N8)).booleanValue() && d28.j()) {
                jSONObject9.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) zzbd.zzc().b(cye.O8)).booleanValue() && d28.j()) {
                jSONObject9.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put(PushConstants.PUSH_SERVICE_TYPE_CLICK, jSONObject9);
            JSONObject jSONObject10 = new JSONObject();
            long jCurrentTimeMillis = this.o.currentTimeMillis();
            jSONObject10.put("time_from_last_touch_down", jCurrentTimeMillis - this.A);
            jSONObject10.put("time_from_last_touch", jCurrentTimeMillis - this.B);
            jSONObject7.put("touch_signal", jSONObject10);
            if (this.j.b()) {
                JSONObject jSONObject11 = (JSONObject) this.c.get("tracking_urls_and_actions");
                String string = jSONObject11 != null ? jSONObject11.getString("gws_query_id") : null;
                if (string != null) {
                    this.t.zzq(string, this.e);
                }
            }
            cff.a(this.d.g("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e2) {
            int i2 = zze.zza;
            zzo.zzh("Unable to create click JSON.", e2);
        }
    }

    @Override
    public final boolean zzD() {
        return s();
    }

    @Override
    public final int zza() {
        zzbfi zzbfiVar = this.l.i;
        if (zzbfiVar == null) {
            return 0;
        }
        if (((Boolean) zzbd.zzc().b(cye.Fb)).booleanValue()) {
            return zzbfiVar.zzi;
        }
        return 0;
    }

    @Override
    public final void zzi() {
        try {
            zzdc zzdcVar = this.C;
            if (zzdcVar != null) {
                zzdcVar.zze();
            }
        } catch (RemoteException e) {
            int i = zze.zza;
            zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override
    public final void zzj() {
        if (this.c.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.n.b();
        }
    }

    @Override
    public final void zzk() {
        this.d.i();
    }

    @Override
    public final void zzn(String str) {
        z(null, null, null, null, null, str, null, null, false, false);
    }

    @Override
    public final void zzo(Bundle bundle) {
        if (bundle == null) {
            int i = zze.zza;
            zzo.zze("Click data is null. No click is reported.");
        } else if (r("click_reporting")) {
            Bundle bundle2 = bundle.getBundle("click_signal");
            z(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, zzbb.zzb().zzl(bundle, null), false, false);
        } else {
            int i2 = zze.zza;
            zzo.zzg("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        }
    }

    @Override
    public final void zzr() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.c);
            cff.a(this.d.g("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("", e);
        }
    }

    @Override
    public final void zzt() {
        t(null, null, null, null, null, null, false, null);
    }

    @Override
    public final void zzx() {
        this.x = true;
    }
}
