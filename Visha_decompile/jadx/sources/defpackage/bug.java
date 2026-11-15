package defpackage;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.internal.ads.zzdvg;
import com.google.android.gms.internal.ads.zzfgn;
import com.hisavana.common.constant.ComConstants;
import com.lzy.okgo.model.HttpHeaders;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

public final class bug implements pqh {
    public static final Pattern d = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);
    public final String a;
    public final wrh b;
    public final zzfgn c;

    public bug(String str, zzfgn zzfgnVar, wrh wrhVar) {
        this.a = str;
        this.c = zzfgnVar;
        this.b = wrhVar;
    }

    @Override
    public final Object zza(Object obj) throws zzdvg {
        zzdvg zzdvgVar;
        JSONObject jSONObject;
        String strConcat;
        aug augVar = (aug) obj;
        int iOptInt = augVar.a.optInt("http_timeout_millis", ComConstants.defScheduleTime);
        wbf wbfVar = augVar.b;
        String strJoin = "";
        if (wbfVar.a() != -2) {
            if (wbfVar.a() == 1) {
                if (wbfVar.h() != null) {
                    strJoin = TextUtils.join(", ", wbfVar.h());
                    int i = zze.zza;
                    zzo.zzg(strJoin);
                }
                zzdvgVar = new zzdvg(2, "Error building request URL: ".concat(String.valueOf(strJoin)));
            } else {
                zzdvgVar = new zzdvg(1);
            }
            zzfgn zzfgnVar = this.c;
            wrh wrhVar = this.b;
            wrhVar.f(zzdvgVar);
            wrhVar.zzg(false);
            zzfgnVar.zza(wrhVar);
            throw zzdvgVar;
        }
        HashMap map = new HashMap();
        if (augVar.b.j()) {
            String str = this.a;
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) zzbd.zzc().b(cye.d1)).booleanValue()) {
                    if (TextUtils.isEmpty(str)) {
                        strConcat = "";
                    } else {
                        Matcher matcher = d.matcher(str);
                        strConcat = "";
                        while (matcher.find()) {
                            String strGroup = matcher.group(1);
                            if (strGroup != null) {
                                Locale locale = Locale.ROOT;
                                if (strGroup.toLowerCase(locale).startsWith("id=") || strGroup.toLowerCase(locale).startsWith("ide=")) {
                                    if (!TextUtils.isEmpty(strConcat)) {
                                        strConcat = strConcat.concat("; ");
                                    }
                                    strConcat = strConcat.concat(strGroup);
                                }
                            }
                        }
                    }
                    if (!TextUtils.isEmpty(strConcat)) {
                        map.put(HttpHeaders.HEAD_KEY_COOKIE, strConcat);
                    }
                } else {
                    map.put(HttpHeaders.HEAD_KEY_COOKIE, str);
                }
            }
        }
        if (augVar.b.k() && (jSONObject = augVar.a) != null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("pii");
            if (jSONObjectOptJSONObject != null) {
                if (!TextUtils.isEmpty(jSONObjectOptJSONObject.optString("doritos", ""))) {
                    map.put("x-afma-drt-cookie", jSONObjectOptJSONObject.optString("doritos", ""));
                }
                if (!TextUtils.isEmpty(jSONObjectOptJSONObject.optString("doritos_v2", ""))) {
                    map.put("x-afma-drt-v2-cookie", jSONObjectOptJSONObject.optString("doritos_v2", ""));
                }
            } else {
                zze.zza("DSID signal does not exist.");
            }
        }
        if (augVar.b != null && !TextUtils.isEmpty(augVar.b.f())) {
            strJoin = augVar.b.f();
        }
        zzfgn zzfgnVar2 = this.c;
        wrh wrhVar2 = this.b;
        wrhVar2.zzg(true);
        zzfgnVar2.zza(wrhVar2);
        return new stg(augVar.b.g(), iOptInt, map, strJoin.getBytes(StandardCharsets.UTF_8), "", augVar.b.k());
    }
}
