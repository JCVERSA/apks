package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzbd;
import com.lzy.okgo.model.Progress;
import org.json.JSONException;
import org.json.JSONObject;

public final class ptg implements w6f {
    @Override
    public final JSONObject zzb(Object obj) throws JSONException {
        qtg qtgVar = (qtg) obj;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        if (((Boolean) zzbd.zzc().b(cye.s9)).booleanValue()) {
            wbf wbfVar = qtgVar.c;
            jSONObject2.put("ad_request_url", wbfVar.g());
            jSONObject2.put("ad_request_post_body", wbfVar.f());
        }
        wbf wbfVar2 = qtgVar.c;
        jSONObject2.put("base_url", wbfVar2.d());
        jSONObject2.put("signals", qtgVar.b);
        ttg ttgVar = qtgVar.a;
        jSONObject3.put(TtmlNode.TAG_BODY, ttgVar.c);
        jSONObject3.put("headers", zzbb.zzb().zzk(ttgVar.b));
        jSONObject3.put("response_code", ttgVar.a);
        jSONObject3.put("latency", ttgVar.d);
        jSONObject.put(Progress.REQUEST, jSONObject2);
        jSONObject.put("response", jSONObject3);
        jSONObject.put("flags", wbfVar2.i());
        return jSONObject;
    }
}
