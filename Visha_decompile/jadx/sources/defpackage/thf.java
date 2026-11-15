package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.zzv;
import com.google.android.gms.internal.ads.a4;
import com.google.android.gms.internal.ads.y3;
import com.google.android.gms.internal.ads.z3;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class thf implements n3f {
    public static final Integer b(Map map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = "Precache invalid numeric parameter '" + str + "': " + ((String) map.get(str));
            int i = zze.zza;
            zzo.zzj(str2);
            return null;
        }
    }

    @Override
    public final void a(Object obj, Map map) {
        z3 a4Var;
        y3 y3VarB;
        chf chfVar = (chf) obj;
        if (zzo.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            zzo.zze("Precache GMSG: ".concat(jSONObject.toString()));
        }
        shf shfVarZzz = zzv.zzz();
        if (map.containsKey("abort")) {
            if (shfVarZzz.i(chfVar)) {
                return;
            }
            zzo.zzj("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        Integer numB = b(map, "periodicReportIntervalMs");
        Integer numB2 = b(map, "exoPlayerRenderingIntervalMs");
        Integer numB3 = b(map, "exoPlayerIdleIntervalMs");
        bhf bhfVar = new bhf((String) map.get("flags"));
        boolean z = bhfVar.k;
        if (str != null) {
            String[] strArr = {str};
            String str2 = (String) map.get("demuxed");
            if (str2 != null) {
                try {
                    JSONArray jSONArray = new JSONArray(str2);
                    String[] strArr2 = new String[jSONArray.length()];
                    for (int i = 0; i < jSONArray.length(); i++) {
                        strArr2[i] = jSONArray.getString(i);
                    }
                    strArr = strArr2;
                } catch (JSONException unused) {
                    zzo.zzj("Malformed demuxed URL list for precache: ".concat(str2));
                    strArr = null;
                }
            }
            if (strArr == null) {
                strArr = new String[]{str};
            }
            if (z) {
                Iterator it = shfVarZzz.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        y3VarB = null;
                        break;
                    }
                    y3 y3Var = (y3) it.next();
                    if (y3Var.c == chfVar && str.equals(y3Var.c())) {
                        y3VarB = y3Var;
                        break;
                    }
                }
            } else {
                y3VarB = shfVarZzz.b(chfVar);
            }
            if (y3VarB != null) {
                zzo.zzj("Precache task is already running.");
                return;
            }
            if (chfVar.zzj() == null) {
                zzo.zzj("Precache requires a dependency provider.");
                return;
            }
            Integer numB4 = b(map, "player");
            if (numB4 == null) {
                numB4 = 0;
            }
            if (numB != null) {
                chfVar.zzA(numB.intValue());
            }
            if (numB2 != null) {
                chfVar.zzy(numB2.intValue());
            }
            if (numB3 != null) {
                chfVar.zzx(numB3.intValue());
            }
            int iIntValue = numB4.intValue();
            mhf mhfVar = chfVar.zzj().zzb;
            if (iIntValue > 0) {
                int i2 = bhfVar.g;
                int iQ = ugf.Q();
                if (iQ < i2) {
                    a4Var = new aif(chfVar, bhfVar);
                } else {
                    if (((Boolean) zzbd.zzc().b(cye.o)).booleanValue()) {
                        iQ = xhf.s();
                    }
                    a4Var = iQ < bhfVar.b ? new xhf(chfVar, bhfVar) : new vhf(chfVar);
                }
            } else {
                a4Var = new a4(chfVar);
            }
            new y3(chfVar, a4Var, str, strArr).zzb();
        } else {
            y3 y3VarB2 = shfVarZzz.b(chfVar);
            if (y3VarB2 == null) {
                zzo.zzj("Precache must specify a source.");
                return;
            }
            a4Var = y3VarB2.d;
        }
        Integer numB5 = b(map, "minBufferMs");
        if (numB5 != null) {
            a4Var.m(numB5.intValue());
        }
        Integer numB6 = b(map, "maxBufferMs");
        if (numB6 != null) {
            a4Var.l(numB6.intValue());
        }
        Integer numB7 = b(map, "bufferForPlaybackMs");
        if (numB7 != null) {
            a4Var.i(numB7.intValue());
        }
        Integer numB8 = b(map, "bufferForPlaybackAfterRebufferMs");
        if (numB8 != null) {
            a4Var.k(numB8.intValue());
        }
    }
}
