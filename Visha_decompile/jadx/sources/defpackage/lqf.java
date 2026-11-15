package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.zzab;
import com.google.android.gms.ads.internal.zzv;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class lqf implements w6f {
    public final Context a;
    public final fue b;
    public final PowerManager c;

    public lqf(Context context, fue fueVar) {
        this.a = context;
        this.b = fueVar;
        this.c = (PowerManager) context.getSystemService("power");
    }

    @Override
    public final JSONObject zzb(nqf nqfVar) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        hue hueVar = nqfVar.f;
        if (hueVar == null) {
            jSONObject = new JSONObject();
        } else {
            fue fueVar = this.b;
            if (fueVar.d() == null) {
                throw new JSONException("Active view Info cannot be null.");
            }
            boolean z = hueVar.a;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject jSONObjectPut = jSONObject3.put("afmaVersion", fueVar.b()).put("activeViewJSON", fueVar.d()).put("timestamp", nqfVar.d).put("adFormat", fueVar.a()).put("hashCode", fueVar.c()).put("isMraid", false).put("isStopped", false).put("isPaused", nqfVar.b).put("isNative", fueVar.e()).put("isScreenOn", this.c.isInteractive()).put("appMuted", zzv.zzs().zze()).put("appVolume", zzv.zzs().zza());
            Context context = this.a;
            jSONObjectPut.put("deviceVolume", zzab.zzb(context.getApplicationContext()));
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            JSONObject jSONObjectPut2 = jSONObject3.put("windowVisibility", hueVar.b).put("isAttachedToWindow", z);
            JSONObject jSONObject4 = new JSONObject();
            Rect rect = hueVar.c;
            JSONObject jSONObjectPut3 = jSONObjectPut2.put("viewBox", jSONObject4.put("top", rect.top).put("bottom", rect.bottom).put(TtmlNode.LEFT, rect.left).put(TtmlNode.RIGHT, rect.right));
            JSONObject jSONObject5 = new JSONObject();
            Rect rect2 = hueVar.d;
            JSONObject jSONObjectPut4 = jSONObjectPut3.put("adBox", jSONObject5.put("top", rect2.top).put("bottom", rect2.bottom).put(TtmlNode.LEFT, rect2.left).put(TtmlNode.RIGHT, rect2.right));
            JSONObject jSONObject6 = new JSONObject();
            Rect rect3 = hueVar.e;
            JSONObject jSONObjectPut5 = jSONObjectPut4.put("globalVisibleBox", jSONObject6.put("top", rect3.top).put("bottom", rect3.bottom).put(TtmlNode.LEFT, rect3.left).put(TtmlNode.RIGHT, rect3.right)).put("globalVisibleBoxVisible", hueVar.f);
            JSONObject jSONObject7 = new JSONObject();
            Rect rect4 = hueVar.g;
            JSONObject jSONObjectPut6 = jSONObjectPut5.put("localVisibleBox", jSONObject7.put("top", rect4.top).put("bottom", rect4.bottom).put(TtmlNode.LEFT, rect4.left).put(TtmlNode.RIGHT, rect4.right)).put("localVisibleBoxVisible", hueVar.h);
            JSONObject jSONObject8 = new JSONObject();
            Rect rect5 = hueVar.i;
            jSONObjectPut6.put("hitBox", jSONObject8.put("top", rect5.top).put("bottom", rect5.bottom).put(TtmlNode.LEFT, rect5.left).put(TtmlNode.RIGHT, rect5.right)).put("screenDensity", displayMetrics.density);
            jSONObject3.put("isVisible", nqfVar.a);
            if (((Boolean) zzbd.zzc().b(cye.C1)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = hueVar.k;
                if (list != null) {
                    for (Rect rect6 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect6.top).put("bottom", rect6.bottom).put(TtmlNode.LEFT, rect6.left).put(TtmlNode.RIGHT, rect6.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(nqfVar.e)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
