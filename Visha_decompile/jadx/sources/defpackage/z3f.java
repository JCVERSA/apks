package defpackage;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.browser.customtabs.CustomTabsClient;
import androidx.core.app.NotificationManagerCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.overlay.zzaa;
import com.google.android.gms.ads.internal.overlay.zzc;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.client.zzu;
import com.google.android.gms.ads.internal.util.client.zzw;
import com.google.android.gms.ads.internal.util.zzbr;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzs;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzauz;
import com.google.android.gms.internal.ads.zzebe;
import com.google.android.gms.internal.ads.zzfwz;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.commons.lang3.BooleanUtils;

public final class z3f implements n3f {
    public final zzb a;
    public final smg b;
    public final q9f d;
    public final dwg e;
    public final wpf f;
    public zzaa g = null;
    public final g8i h = zef.g;
    public final zzu c = new zzu(null);

    public z3f(zzb zzbVar, q9f q9fVar, dwg dwgVar, smg smgVar, wpf wpfVar) {
        this.a = zzbVar;
        this.d = q9fVar;
        this.e = dwgVar;
        this.b = smgVar;
        this.f = wpfVar;
    }

    public static int b(Map map) {
        String str = (String) map.get("o");
        if (str == null) {
            return -1;
        }
        if (TtmlNode.TAG_P.equalsIgnoreCase(str)) {
            return 7;
        }
        if (CmcdData.STREAM_TYPE_LIVE.equalsIgnoreCase(str)) {
            return 6;
        }
        return "c".equalsIgnoreCase(str) ? 14 : -1;
    }

    public static Uri c(Context context, fre freVar, Uri uri, View view, Activity activity, inh inhVar) {
        if (freVar == null) {
            return uri;
        }
        try {
            if (!((Boolean) zzbd.zzc().b(cye.dc)).booleanValue() || inhVar == null) {
                if (freVar.e(uri)) {
                    uri = freVar.a(uri, context, view, activity);
                }
            } else if (freVar.e(uri)) {
                uri = inhVar.a(uri, context, view, activity);
            }
        } catch (zzauz unused) {
        } catch (Exception e) {
            zzv.zzp().x(e, "OpenGmsgHandler.maybeAddClickSignalsToUri");
        }
        return uri;
    }

    public static Uri d(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
        } catch (UnsupportedOperationException e) {
            String strValueOf = String.valueOf(uri.toString());
            int i = zze.zza;
            zzo.zzh("Error adding click uptime parameter to url: ".concat(strValueOf), e);
        }
        return uri;
    }

    public static boolean f(Map map) {
        return "1".equals(map.get("custom_close"));
    }

    @Override
    public final void a(Object obj, Map map) {
        wpf wpfVar;
        zza zzaVar = (zza) obj;
        String str = (String) map.get("u");
        Map map2 = new HashMap();
        ejf ejfVar = (ejf) zzaVar;
        if (ejfVar.zzD() != null) {
            map2 = ejfVar.zzD().w0;
        }
        String strC = tdf.c(str, ejfVar.getContext(), true, map2);
        String str2 = (String) map.get(CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        if (str2 == null) {
            int i = zze.zza;
            zzo.zzj("Action missing from an open GMSG.");
            return;
        }
        zzb zzbVar = this.a;
        if (zzbVar == null || zzbVar.zzc()) {
            j8.r((((Boolean) zzbd.zzc().b(cye.ga)).booleanValue() && (wpfVar = this.f) != null && wpf.j(strC)) ? wpfVar.e(strC, zzbb.zze()) : j8.h(strC), new v3f(this, map, zzaVar, str2), this.h);
        } else {
            zzbVar.zzb(strC);
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x02f1  */
    public final void h(String str, zza zzaVar, Map map, String str2) {
        String str3;
        boolean zB;
        HashMap map2;
        boolean z;
        String string;
        ejf ejfVar = (ejf) zzaVar;
        hmh hmhVarZzD = ejfVar.zzD();
        kmh kmhVarZzR = ejfVar.zzR();
        boolean zG = false;
        if (hmhVarZzD == null || kmhVarZzR == null) {
            str3 = "";
            zB = false;
        } else {
            String str4 = kmhVarZzR.b;
            zB = hmhVarZzD.b();
            str3 = str4;
        }
        boolean z2 = (((Boolean) zzbd.zzc().b(cye.Pa)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("0")) ? false : true;
        boolean z3 = ((Boolean) zzbd.zzc().b(cye.Oc)).booleanValue() && map.containsKey("ig_cl") && ((String) map.get("ig_cl")).equals(BooleanUtils.TRUE);
        if ("expand".equalsIgnoreCase(str2)) {
            if (ejfVar.zzaF()) {
                int i = zze.zza;
                zzo.zzj("Cannot expand WebView that is already expanded.");
                return;
            } else {
                k(false);
                ((xjf) zzaVar).zzaL(f(map), b(map), z2);
                return;
            }
        }
        if ("webapp".equalsIgnoreCase(str2)) {
            k(false);
            if (((Boolean) zzbd.zzc().b(cye.Zb)).booleanValue() && Objects.equals(map.get("is_allowed_for_lock_screen"), "1")) {
                zG = true;
            }
            if (str != null) {
                ((xjf) zzaVar).zzaN(f(map), b(map), str, z2, zG);
                return;
            } else {
                ((xjf) zzaVar).zzaM(f(map), b(map), (String) map.get("html"), (String) map.get("baseurl"), z2);
                return;
            }
        }
        Intent uri = null;
        if ("chrome_custom_tab".equalsIgnoreCase(str2)) {
            Context context = ejfVar.getContext();
            if (((Boolean) zzbd.zzc().b(cye.S4)).booleanValue()) {
                zze.zza("User opt out chrome custom tab.");
                m(10);
            } else {
                if (!((Boolean) zzbd.zzc().b(cye.N4)).booleanValue()) {
                    zG = xye.g(context);
                } else if (CustomTabsClient.getPackageName(context, null) != null) {
                    zG = true;
                }
                if (zG) {
                    k(true);
                    if (TextUtils.isEmpty(str)) {
                        int i2 = zze.zza;
                        zzo.zzj("Cannot open browser with null or empty url");
                        m(7);
                        return;
                    }
                    Uri uriD = d(c(ejfVar.getContext(), ejfVar.zzI(), Uri.parse(str), ejfVar.zzF(), ejfVar.zzi(), ejfVar.zzS()));
                    if (zB && this.e != null && l(zzaVar, ejfVar.getContext(), uriD.toString(), str3)) {
                        return;
                    }
                    this.g = new w3f(this);
                    ((xjf) zzaVar).zzaJ(new zzc(null, uriD.toString(), null, null, null, null, null, null, ObjectWrapper.wrap(this.g).asBinder(), true), z2, z3, str3);
                    return;
                }
                m(4);
            }
            map.put("use_first_package", BooleanUtils.TRUE);
            map.put("use_running_process", BooleanUtils.TRUE);
            j(zzaVar, map, zB, str3, z2, z3);
            return;
        }
        if ("app".equalsIgnoreCase(str2) && BooleanUtils.TRUE.equalsIgnoreCase((String) map.get("system_browser"))) {
            j(zzaVar, map, zB, str3, z2, z3);
            return;
        }
        if ("open_app".equalsIgnoreCase(str2)) {
            if (((Boolean) zzbd.zzc().b(cye.p8)).booleanValue()) {
                k(true);
                String str5 = (String) map.get(TtmlNode.TAG_P);
                if (str5 == null) {
                    int i3 = zze.zza;
                    zzo.zzj("Package name missing from open app action.");
                    return;
                }
                if (zB && this.e != null && l(zzaVar, ejfVar.getContext(), str5, str3)) {
                    return;
                }
                PackageManager packageManager = ejfVar.getContext().getPackageManager();
                if (packageManager == null) {
                    int i4 = zze.zza;
                    zzo.zzj("Cannot get package manager from open app action.");
                    return;
                } else {
                    Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str5);
                    if (launchIntentForPackage != null) {
                        ((xjf) zzaVar).zzaJ(new zzc(launchIntentForPackage, this.g), z2, z3, str3);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        k(true);
        String str6 = (String) map.get("intent_url");
        if (!TextUtils.isEmpty(str6)) {
            try {
                uri = Intent.parseUri(str6, 0);
            } catch (URISyntaxException e) {
                String strValueOf = String.valueOf(str6);
                int i5 = zze.zza;
                zzo.zzh("Error parsing the url: ".concat(strValueOf), e);
            }
        }
        Intent intent = uri;
        if (intent != null && intent.getData() != null) {
            Uri data = intent.getData();
            if (!Uri.EMPTY.equals(data)) {
                Uri uriD2 = d(c(ejfVar.getContext(), ejfVar.zzI(), data, ejfVar.zzF(), ejfVar.zzi(), ejfVar.zzS()));
                if (TextUtils.isEmpty(intent.getType())) {
                    intent.setData(uriD2);
                } else {
                    if (((Boolean) zzbd.zzc().b(cye.q8)).booleanValue()) {
                        intent.setDataAndType(uriD2, intent.getType());
                    } else {
                        intent.setData(uriD2);
                    }
                }
            }
        }
        boolean z4 = ((Boolean) zzbd.zzc().b(cye.L8)).booleanValue() && "intent_async".equalsIgnoreCase(str2) && map.containsKey("event_id");
        HashMap map3 = new HashMap();
        if (z4) {
            this.g = new x3f(this, z2, zzaVar, map3, map);
            map2 = map3;
            z = false;
        } else {
            map2 = map3;
            z = z2;
        }
        if (intent != null) {
            if (!zB || this.e == null || !l(zzaVar, ejfVar.getContext(), intent.getData().toString(), str3)) {
                ((xjf) zzaVar).zzaJ(new zzc(intent, this.g), z, z3, str3);
                return;
            } else {
                if (z4) {
                    map2.put((String) map.get("event_id"), Boolean.TRUE);
                    ((p5f) zzaVar).zzd("openIntentAsync", map2);
                    return;
                }
                return;
            }
        }
        boolean z5 = z3;
        if (TextUtils.isEmpty(str)) {
            string = str;
        } else {
            string = d(c(ejfVar.getContext(), ejfVar.zzI(), Uri.parse(str), ejfVar.zzF(), ejfVar.zzi(), ejfVar.zzS())).toString();
        }
        if (!zB || this.e == null || !l(zzaVar, ejfVar.getContext(), string, str3)) {
            ((xjf) zzaVar).zzaJ(new zzc((String) map.get(CmcdData.OBJECT_TYPE_INIT_SEGMENT), string, (String) map.get(CmcdData.OBJECT_TYPE_MANIFEST), (String) map.get(TtmlNode.TAG_P), (String) map.get("c"), (String) map.get("f"), (String) map.get("e"), this.g), z, z5, str3);
        } else if (z4) {
            map2.put((String) map.get(r5), Boolean.TRUE);
            ((p5f) zzaVar).zzd("openIntentAsync", map2);
        }
    }

    public final void i(Context context, String str, String str2) {
        dwg dwgVar = this.e;
        dwgVar.d(str);
        smg smgVar = this.b;
        if (smgVar != null) {
            zzebe.zzp(context, smgVar, dwgVar, str, "dialog_not_shown", zzfwz.zze("dialog_not_shown_reason", str2));
        }
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0165  */
    /* JADX WARN: Code duplicated, block: B:9:0x0087  */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x010c, code lost:
    
        if (defpackage.y3f.c(r2, r12, r13, r14, r15) == null) goto L29;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(zza zzaVar, Map map, boolean z, String str, boolean z2, boolean z3) {
        Object[] objArr;
        ArrayList arrayList;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ResolveInfo resolveInfoC;
        Intent intentB;
        k(true);
        ejf ejfVar = (ejf) zzaVar;
        Context context = ejfVar.getContext();
        fre freVarZzI = ejfVar.zzI();
        View viewZzF = ejfVar.zzF();
        inh inhVarZzS = ejfVar.zzS();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        String str2 = (String) map.get("u");
        Intent intentB2 = null;
        Uri uriBuild = null;
        if (TextUtils.isEmpty(str2)) {
            intentB = intentB2;
        } else {
            Uri uriD = d(c(context, freVarZzI, Uri.parse(str2), viewZzF, null, inhVarZzS));
            boolean z4 = Boolean.parseBoolean((String) map.get("use_first_package"));
            boolean z5 = Boolean.parseBoolean((String) map.get("use_running_process"));
            if (Boolean.parseBoolean((String) map.get("use_custom_tabs"))) {
                objArr = true;
            } else if (((Boolean) zzbd.zzc().b(cye.J4)).booleanValue()) {
                objArr = true;
            } else {
                objArr = false;
            }
            if (ProxyConfig.MATCH_HTTP.equalsIgnoreCase(uriD.getScheme())) {
                uriBuild = uriD.buildUpon().scheme(ProxyConfig.MATCH_HTTPS).build();
            } else if (ProxyConfig.MATCH_HTTPS.equalsIgnoreCase(uriD.getScheme())) {
                uriBuild = uriD.buildUpon().scheme(ProxyConfig.MATCH_HTTP).build();
            }
            Uri uri = uriBuild;
            ArrayList arrayList2 = new ArrayList();
            Intent intentA = y3f.a(uriD, context, freVarZzI, viewZzF, inhVarZzS);
            Intent intentA2 = y3f.a(uri, context, freVarZzI, viewZzF, inhVarZzS);
            if (objArr != false) {
                zzv.zzq();
                zzs.zzp(context, intentA);
                zzv.zzq();
                zzs.zzp(context, intentA2);
            }
            intentB2 = intentA;
            ArrayList arrayList3 = arrayList2;
            ResolveInfo resolveInfoD = y3f.d(intentA, arrayList2, context, freVarZzI, viewZzF, inhVarZzS);
            if (resolveInfoD != null) {
                intentB2 = y3f.b(intentB2, resolveInfoD, context, freVarZzI, viewZzF, inhVarZzS);
            } else {
                if (intentA2 != null && (resolveInfoC = y3f.c(intentA2, context, freVarZzI, viewZzF, inhVarZzS)) != null) {
                    intentB = y3f.b(intentB2, resolveInfoC, context, freVarZzI, viewZzF, inhVarZzS);
                }
                if (!arrayList3.isEmpty()) {
                    if (!z5 || activityManager == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
                        arrayList = arrayList3;
                        if (z4) {
                            intentB2 = y3f.b(intentB2, (ResolveInfo) arrayList.get(0), context, freVarZzI, viewZzF, inhVarZzS);
                        }
                    } else {
                        int size = arrayList3.size();
                        int i = 0;
                        while (true) {
                            if (i < size) {
                                ArrayList arrayList4 = arrayList3;
                                ResolveInfo resolveInfo = (ResolveInfo) arrayList4.get(i);
                                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                                while (true) {
                                    int i2 = i + 1;
                                    if (!it.hasNext()) {
                                        arrayList3 = arrayList4;
                                        i = i2;
                                    } else if (it.next().processName.equals(resolveInfo.activityInfo.packageName)) {
                                        intentB2 = y3f.b(intentB2, resolveInfo, context, freVarZzI, viewZzF, inhVarZzS);
                                    }
                                }
                            } else {
                                arrayList = arrayList3;
                                if (z4) {
                                    intentB2 = y3f.b(intentB2, (ResolveInfo) arrayList.get(0), context, freVarZzI, viewZzF, inhVarZzS);
                                }
                            }
                        }
                    }
                }
            }
            intentB = intentB2;
        }
        if (!z || this.e == null || intentB == null || !l(zzaVar, ejfVar.getContext(), intentB.getData().toString(), str)) {
            try {
                ((xjf) zzaVar).zzaJ(new zzc(intentB, this.g), z2, z3, str);
            } catch (ActivityNotFoundException e) {
                String message = e.getMessage();
                int i3 = zze.zza;
                zzo.zzj(message);
            }
        }
    }

    public final void k(boolean z) {
        q9f q9fVar = this.d;
        if (q9fVar != null) {
            q9fVar.i(z);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x005e, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(defpackage.cye.F8)).booleanValue() != false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c8, code lost:
    
        if ((android.os.Build.VERSION.SDK_INT < 33 ? ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(defpackage.cye.A8)).booleanValue() : ((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().b(defpackage.cye.z8)).booleanValue()) != false) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean l(zza zzaVar, Context context, String str, String str2) {
        qaf qafVar;
        zzw zzwVar;
        smg smgVar = this.b;
        if (smgVar != null) {
            zzebe.zzo(context, smgVar, this.e, str2, "offline_open");
        }
        if (zzv.zzp().a(context)) {
            this.e.n(this.c, str2);
            return false;
        }
        ejf ejfVar = (ejf) zzaVar;
        hmh hmhVarZzD = ejfVar.zzD();
        boolean z = (hmhVarZzD == null || (zzwVar = hmhVarZzD.y0) == null || zzwVar.zzc()) ? false : true;
        boolean z2 = (hmhVarZzD == null || (qafVar = hmhVarZzD.d0) == null || !qafVar.a || qafVar.b == null || !qafVar.c) ? false : true;
        if (!z) {
            if (z2) {
            }
            zzv.zzq();
            zzbr zzbrVarZzA = zzs.zzA(context);
            zzv.zzq();
            boolean zAreNotificationsEnabled = NotificationManagerCompat.from(context).areNotificationsEnabled();
            boolean zZzi = zzv.zzr().zzi(context, "offline_notification_channel");
            boolean z3 = ejfVar.zzO().i() && ejfVar.zzi() == null;
            if (!zAreNotificationsEnabled) {
                zzv.zzq();
                if (!NotificationManagerCompat.from(context).areNotificationsEnabled()) {
                }
                i(context, str2, "notifications_disabled");
                return false;
            }
            if (zZzi) {
                i(context, str2, "notification_channel_disabled");
                return false;
            }
            if (zzbrVarZzA == null) {
                i(context, str2, "work_manager_unavailable");
                return false;
            }
            if (z3) {
                i(context, str2, "ad_no_activity");
                return false;
            }
            if (!((Boolean) zzbd.zzc().b(cye.x8)).booleanValue()) {
                i(context, str2, "notification_flow_disabled");
                return false;
            }
            if (ejfVar.zzL() == null || ejfVar.zzi() == null) {
                ((xjf) zzaVar).zzaK(str2, str, 14);
            } else {
                pwg pwgVarE = qwg.e();
                pwgVarE.a(ejfVar.zzi());
                pwgVarE.b(null);
                pwgVarE.c(str2);
                pwgVarE.d(str);
                try {
                    ejfVar.zzL().zzf(pwgVarE.e());
                } catch (Exception e) {
                    i(context, str2, e.getMessage());
                    return false;
                }
            }
            zzaVar.onAdClicked();
            return true;
        }
        smg smgVar2 = this.b;
        if (smgVar2 != null) {
            zzebe.zzo(context, smgVar2, this.e, str2, "onfs");
        }
        return false;
    }

    public final void m(int i) {
        smg smgVar;
        String str;
        if (!((Boolean) zzbd.zzc().b(cye.M4)).booleanValue() || (smgVar = this.b) == null) {
            return;
        }
        rmg rmgVarA = smgVar.a();
        rmgVarA.b("action", "cct_action");
        switch (i) {
            case 2:
                str = "CONTEXT_NOT_AN_ACTIVITY";
                break;
            case 3:
                str = "CONTEXT_NULL";
                break;
            case 4:
                str = "CCT_NOT_SUPPORTED";
                break;
            case 5:
                str = "CCT_READY_TO_OPEN";
                break;
            case 6:
                str = "ACTIVITY_NOT_FOUND";
                break;
            case 7:
                str = "EMPTY_URL";
                break;
            case 8:
                str = "UNKNOWN";
                break;
            case 9:
                str = "WRONG_EXP_SETUP";
                break;
            default:
                str = "OPT_OUT";
                break;
        }
        rmgVarA.b("cct_open_status", str);
        rmgVarA.j();
    }
}
