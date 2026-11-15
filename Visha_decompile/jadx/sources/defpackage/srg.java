package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzc;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zzbs;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.l6;
import com.google.android.gms.internal.ads.zzdqm;
import com.google.android.gms.internal.ads.zzefy;
import com.google.android.gms.internal.ads.zzfgn;
import com.hisavana.common.constant.ComConstants;
import com.lzy.okgo.model.Progress;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import org.apache.commons.lang3.BooleanUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class srg {
    public static final Pattern o = Pattern.compile("\\?");
    public final lkf a;
    public final Context b;
    public final VersionInfoParcel c;
    public final enh d;
    public final Executor e;
    public final ScheduledExecutorService f;
    public final String g;
    public final zzfgn h;
    public final lmg i;
    public final wth j;
    public final Object k = new Object();
    public String l;
    public List m;
    public final ccf n;

    public srg(lkf lkfVar, Context context, VersionInfoParcel versionInfoParcel, enh enhVar, Executor executor, String str, zzfgn zzfgnVar, lmg lmgVar, ccf ccfVar, vtg vtgVar, ScheduledExecutorService scheduledExecutorService, wth wthVar) {
        this.a = lkfVar;
        this.b = context;
        this.c = versionInfoParcel;
        this.d = enhVar;
        this.e = executor;
        this.g = str;
        this.h = zzfgnVar;
        lkfVar.A();
        this.i = lmgVar;
        this.n = ccfVar;
        this.f = scheduledExecutorService;
        this.j = wthVar;
    }

    public static im5 a(srg srgVar, List list, Exception exc) {
        zzefy zzefyVar;
        zzv.zzp().w(exc, "PreloadedLoader.getTypeTwoAdResponseString");
        if (exc instanceof TimeoutException) {
            zzefyVar = new zzefy(1, "Timed out waiting for ad response.");
        } else if (exc instanceof zzefy) {
            zzefyVar = (zzefy) exc;
        } else {
            zzefyVar = new zzefy(1, exc.getMessage() == null ? "Fetch failed." : exc.getMessage());
        }
        String message = zzefyVar.getMessage() == null ? "" : zzefyVar.getMessage();
        if (list != null && !list.isEmpty()) {
            String str = "0.6.0.0";
            if (!TextUtils.isEmpty(message)) {
                if (message.contains("Timed out waiting for ad response.")) {
                    message = "timeout";
                    str = "0.2.0.0";
                } else if (message.contains("Received HTTP error code from ad server:")) {
                    List listF = l6.b(i2i.b(':')).f(message);
                    if (listF.size() == 2) {
                        message = (String) listF.get(1);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(sth.c(sth.c((String) it.next(), "@gw_adnetstatus@", str), "@error_code@", message));
            }
            srgVar.j.e(arrayList, null);
        }
        return j8.g(zzefyVar);
    }

    public static String d(srg srgVar, stg stgVar) throws zzefy {
        srgVar.g(zzdqm.RENDERING_ADSTRING_TYPE2_FETCH_START);
        int i = 0;
        int i2 = -1;
        while (true) {
            try {
                if (i >= ((Integer) zzbd.zzc().b(cye.f7)).intValue()) {
                    throw new zzefy(1, "Received HTTP error code from ad server:" + i2);
                }
                ttg ttgVarA = new utg(srgVar.b, srgVar.c.afmaVersion, srgVar.n, Binder.getCallingUid()).zza(stgVar);
                int i3 = ttgVarA.a;
                if (((Boolean) zzbd.zzc().b(cye.g7)).booleanValue()) {
                    srgVar.i.d("fr", String.valueOf(i));
                }
                if (i3 == 200) {
                    srgVar.g(zzdqm.RENDERING_ADSTRING_TYPE2_FETCH_END);
                    return ttgVarA.c;
                }
                i++;
                i2 = i3;
            } catch (Exception e) {
                throw new zzefy(1, e.getMessage() == null ? "Fetch failed." : e.getMessage(), e);
            }
        }
    }

    public static final String h(String str) {
        try {
            return new JSONObject(str).optString("request_id", "");
        } catch (JSONException unused) {
            return "";
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d1 A[Catch: all -> 0x00be, TRY_ENTER, TryCatch #4 {all -> 0x00be, blocks: (B:18:0x0051, B:20:0x006f, B:22:0x0075, B:24:0x008c, B:26:0x0094, B:34:0x00d1, B:36:0x00d9, B:38:0x00df, B:42:0x00e8, B:51:0x0120, B:45:0x00fa, B:50:0x0109, B:53:0x0125, B:31:0x00c1, B:54:0x013b, B:61:0x0154, B:64:0x015c, B:68:0x0180, B:70:0x0195, B:74:0x01b8, B:76:0x01cd, B:79:0x01e1, B:81:0x01e7, B:82:0x01f4, B:84:0x01f6, B:87:0x01ff, B:86:0x01fc, B:75:0x01c2, B:71:0x01a8, B:67:0x016a, B:58:0x0144, B:59:0x0149), top: B:120:0x0051, inners: #1, #5 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x00d9 A[Catch: all -> 0x00be, TryCatch #4 {all -> 0x00be, blocks: (B:18:0x0051, B:20:0x006f, B:22:0x0075, B:24:0x008c, B:26:0x0094, B:34:0x00d1, B:36:0x00d9, B:38:0x00df, B:42:0x00e8, B:51:0x0120, B:45:0x00fa, B:50:0x0109, B:53:0x0125, B:31:0x00c1, B:54:0x013b, B:61:0x0154, B:64:0x015c, B:68:0x0180, B:70:0x0195, B:74:0x01b8, B:76:0x01cd, B:79:0x01e1, B:81:0x01e7, B:82:0x01f4, B:84:0x01f6, B:87:0x01ff, B:86:0x01fc, B:75:0x01c2, B:71:0x01a8, B:67:0x016a, B:58:0x0144, B:59:0x0149), top: B:120:0x0051, inners: #1, #5 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00de  */
    /* JADX WARN: Code duplicated, block: B:41:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:44:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:86:0x01fc A[Catch: all -> 0x00be, TryCatch #4 {all -> 0x00be, blocks: (B:18:0x0051, B:20:0x006f, B:22:0x0075, B:24:0x008c, B:26:0x0094, B:34:0x00d1, B:36:0x00d9, B:38:0x00df, B:42:0x00e8, B:51:0x0120, B:45:0x00fa, B:50:0x0109, B:53:0x0125, B:31:0x00c1, B:54:0x013b, B:61:0x0154, B:64:0x015c, B:68:0x0180, B:70:0x0195, B:74:0x01b8, B:76:0x01cd, B:79:0x01e1, B:81:0x01e7, B:82:0x01f4, B:84:0x01f6, B:87:0x01ff, B:86:0x01fc, B:75:0x01c2, B:71:0x01a8, B:67:0x016a, B:58:0x0144, B:59:0x0149), top: B:120:0x0051, inners: #1, #5 }] */
    public final im5 c() {
        String strOptString;
        int i;
        int iLastIndexOf;
        String strSubstring;
        String string;
        String strB = this.d.d.zzx;
        if (!TextUtils.isEmpty(strB)) {
            String strH = h(strB);
            qxe qxeVar = cye.Y6;
            if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() && strH.isEmpty()) {
                int iLastIndexOf2 = strB.lastIndexOf("&request_id=");
                strH = iLastIndexOf2 != -1 ? strB.substring(iLastIndexOf2 + 12) : "";
            }
            if (TextUtils.isEmpty(strH)) {
                return j8.g(new zzefy(15, "Invalid ad string."));
            }
            synchronized (this.k) {
                try {
                    com.google.android.gms.ads.nonagon.signalgeneration.zzv zzvVarS = this.a.s();
                    lmg lmgVar = this.i;
                    String strZzb = zzvVarS.zzb(strH, lmgVar);
                    String str = null;
                    if (((Boolean) zzbd.zzc().b(qxeVar)).booleanValue() && !TextUtils.isEmpty(strZzb)) {
                        try {
                            JSONObject jSONObject = new JSONObject(strZzb);
                            if (((Boolean) zzbd.zzc().b(cye.Z6)).booleanValue()) {
                                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("extras");
                                if (jSONObjectOptJSONObject != null) {
                                    if (Arrays.asList(((String) zzbd.zzc().b(cye.a7)).split(StringUtils.COMMA)).contains(zzaa.zzb(jSONObjectOptJSONObject.optString("query_info_type", "")))) {
                                        iLastIndexOf = strB.lastIndexOf("&");
                                        if (iLastIndexOf != -1) {
                                            strSubstring = strB.substring(0, iLastIndexOf);
                                        } else {
                                            strSubstring = null;
                                        }
                                        if (!TextUtils.isEmpty(strSubstring)) {
                                            try {
                                                byte[] bArrDecode = Base64.decode(strSubstring, 11);
                                                byte[] bytes = strH.getBytes("UTF-8");
                                                if (TextUtils.isEmpty(strZzb)) {
                                                    string = null;
                                                } else {
                                                    try {
                                                        string = new JSONObject(strZzb).getString("arek");
                                                    } catch (JSONException e) {
                                                        zze.zza("Failed to get key from QueryJSONMap".concat(e.toString()));
                                                        zzv.zzp().x(e, "CryptoUtils.getKeyFromQueryJsonMap");
                                                        string = null;
                                                    }
                                                }
                                                strB = vnh.b(bArrDecode, bytes, string, lmgVar);
                                            } catch (UnsupportedEncodingException | IllegalArgumentException e2) {
                                                zze.zza("Failed to decode the adResponse. ".concat(e2.toString()));
                                                zzv.zzp().x(e2, "PreloadedLoader.decryptAdResponseIfNecessary");
                                            }
                                        }
                                    }
                                }
                            } else if (jSONObject.optString("is_gbid").equals(BooleanUtils.TRUE)) {
                                iLastIndexOf = strB.lastIndexOf("&");
                                if (iLastIndexOf != -1) {
                                    strSubstring = strB.substring(0, iLastIndexOf);
                                } else {
                                    strSubstring = null;
                                }
                                if (!TextUtils.isEmpty(strSubstring)) {
                                    byte[] bArrDecode2 = Base64.decode(strSubstring, 11);
                                    byte[] bytes2 = strH.getBytes("UTF-8");
                                    if (TextUtils.isEmpty(strZzb)) {
                                        string = null;
                                    } else {
                                        string = new JSONObject(strZzb).getString("arek");
                                    }
                                    strB = vnh.b(bArrDecode2, bytes2, string, lmgVar);
                                }
                            }
                        } catch (JSONException unused) {
                        }
                    }
                    if (TextUtils.isEmpty(strB)) {
                        strOptString = "";
                    } else {
                        try {
                            strOptString = new JSONObject(strB).optString("render_id", "");
                        } catch (JSONException unused2) {
                            strOptString = "";
                        }
                    }
                    if (TextUtils.isEmpty(strOptString)) {
                        i = 0;
                    } else {
                        String str2 = "";
                        try {
                            str2 = new String(Base64.decode(strOptString, 0), StandardCharsets.UTF_8);
                        } catch (IllegalArgumentException e3) {
                            zze.zza("Ad grouping: Has render_id, but not base64 encoded: ".concat(String.valueOf(strOptString)));
                            zzv.zzp().x(e3, "PreloadedLoader.decodeRenderId");
                        }
                        List listF = l6.b(i2i.b(':')).f(str2);
                        if (listF.size() == 2) {
                            str = (String) listF.get(0);
                            i = Integer.parseInt((String) listF.get(1));
                        } else {
                            zze.zza("Ad grouping: Has render_id, but invalid format: ".concat(String.valueOf(strOptString)));
                            i = 0;
                        }
                    }
                    Pair pair = str != null ? new Pair(str, Integer.valueOf(i)) : new Pair("", 0);
                    String str3 = (String) pair.first;
                    int iIntValue = ((Integer) pair.second).intValue();
                    if (TextUtils.isEmpty(str3) || iIntValue <= 0) {
                        zzvVarS.zzf(strH);
                    } else {
                        if (zzvVarS.zzh(strH, str3)) {
                            return j8.g(new zzefy(10, "The ad has already been shown."));
                        }
                        if (!zzvVarS.zzg(strH, str3, iIntValue)) {
                            zzvVarS.zzf(strH);
                        }
                    }
                    if (!TextUtils.isEmpty(strZzb)) {
                        return e(strB, f(strZzb));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        zzc zzcVar = this.d.d.zzs;
        if (zzcVar != null) {
            if (((Boolean) zzbd.zzc().b(cye.Q6)).booleanValue()) {
                String str4 = zzcVar.zza;
                String str5 = zzcVar.zzb;
                String strH2 = h(str4);
                String strH3 = h(str5);
                if (TextUtils.isEmpty(strH3) || !strH2.equals(strH3)) {
                    this.i.b().put("ridmm", BooleanUtils.TRUE);
                } else {
                    this.a.s().zzf(strH2);
                    this.i.b().put("request_id", strH2);
                }
            }
            return e(zzcVar.zza, f(zzcVar.zzb));
        }
        return j8.g(new zzefy(14, "Mismatch request IDs."));
    }

    public final im5 e(String str, final String str2) {
        im5 im5VarH;
        String str3 = "";
        if (TextUtils.isEmpty(str)) {
            return j8.g(new zzefy(15, "Invalid ad string."));
        }
        Context context = this.b;
        wrh wrhVarA = vrh.a(context, 11);
        wrhVarA.zzi();
        j7f j7fVarA = zzv.zzg().a(context, this.c, this.a.C());
        x6f x6fVar = a7f.b;
        final t6f t6fVarA = j7fVarA.a("google.afma.response.normalize", x6fVar, x6fVar);
        if (((Boolean) zzbd.zzc().b(cye.b7)).booleanValue()) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    this.l = jSONObject.optString("fetch_url", "");
                    this.m = zzbs.zzc(new JSONObject(jSONObject.optString("settings", "")).getJSONArray("nofill_urls"), null);
                } catch (JSONException unused) {
                    int i = zze.zza;
                    zzo.zzj("Invalid ad response.");
                }
            } catch (JSONException unused2) {
            }
            String string = this.l;
            final List list = this.m;
            if (TextUtils.isEmpty(string)) {
                im5VarH = j8.h(str);
                this.i.d("sst", "1");
            } else {
                this.i.d("sst", "2");
                String str4 = (String) zzbd.zzc().b(cye.d7);
                if (((Boolean) zzbd.zzc().b(cye.c7)).booleanValue()) {
                    List listF = l6.c(o).f(string);
                    if (listF.size() < 2) {
                        im5VarH = j8.g(new zzefy(1, "Invalid fetch URL."));
                    } else {
                        str3 = (String) listF.get(1);
                        zzv.zzq();
                        string = Uri.parse(string).buildUpon().query(null).build().toString();
                        final stg stgVar = new stg(string, ComConstants.defScheduleTime, new HashMap(), str3.getBytes(StandardCharsets.UTF_8), str4, false);
                        im5VarH = (q7i) j8.f((q7i) j8.o(q7i.zzE(zef.a.m(new Callable() {
                            @Override
                            public final Object call() {
                                return srg.d(this.b, stgVar);
                            }
                        })), ((Integer) zzbd.zzc().b(cye.e7)).intValue(), TimeUnit.MILLISECONDS, this.f), Exception.class, new k7i() {
                            @Override
                            public final im5 zza(Object obj) {
                                return srg.a(this.a, list, (Exception) obj);
                            }
                        }, this.e);
                    }
                } else {
                    final stg stgVar2 = new stg(string, ComConstants.defScheduleTime, new HashMap(), str3.getBytes(StandardCharsets.UTF_8), str4, false);
                    im5VarH = (q7i) j8.f((q7i) j8.o(q7i.zzE(zef.a.m(new Callable() {
                        @Override
                        public final Object call() {
                            return srg.d(this.b, stgVar2);
                        }
                    })), ((Integer) zzbd.zzc().b(cye.e7)).intValue(), TimeUnit.MILLISECONDS, this.f), Exception.class, new k7i() {
                        @Override
                        public final im5 zza(Object obj) {
                            return srg.a(this.a, list, (Exception) obj);
                        }
                    }, this.e);
                }
            }
        } else {
            im5VarH = j8.h(str);
            this.i.d("sst", "1");
        }
        k7i k7iVar = new k7i(this) {
            @Override
            public final im5 zza(Object obj) throws JSONException {
                String str5 = (String) obj;
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                String str6 = str2;
                try {
                    jSONObject4.put("headers", new JSONObject());
                    jSONObject4.put(TtmlNode.TAG_BODY, str5);
                    jSONObject3.put("base_url", "");
                    jSONObject3.put("signals", new JSONObject(str6));
                    jSONObject2.put(Progress.REQUEST, jSONObject3);
                    jSONObject2.put("response", jSONObject4);
                    jSONObject2.put("flags", new JSONObject());
                    return j8.h(jSONObject2);
                } catch (JSONException e) {
                    throw new JSONException("Preloaded loader: ".concat(String.valueOf(e.getCause())));
                }
            }
        };
        Executor executor = this.e;
        im5 im5VarN = j8.n(j8.n(j8.n(im5VarH, k7iVar, executor), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return t6fVarA.zzb((JSONObject) obj);
            }
        }, executor), new k7i() {
            @Override
            public final im5 zza(Object obj) {
                return j8.h(new vmh(new smh(this.a.d), umh.a(new StringReader(((JSONObject) obj).toString()), null)));
            }
        }, executor);
        gsh.a(im5VarN, this.h, wrhVarA);
        return im5VarN;
    }

    public final String f(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray("ad_types");
            if (jSONArray != null && "unknown".equals(jSONArray.getString(0))) {
                jSONObject.put("ad_types", new JSONArray().put(this.g));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            String strConcat = "Failed to update the ad types for rendering. ".concat(e.toString());
            int i = zze.zza;
            zzo.zzj(strConcat);
            return str;
        }
    }

    public final void g(zzdqm zzdqmVar) {
        Bundle bundleA = this.i.a();
        if (((Boolean) zzbd.zzc().b(cye.g7)).booleanValue()) {
            bundleA.putLong(zzdqmVar.zza(), zzv.zzC().currentTimeMillis());
        }
    }
}
