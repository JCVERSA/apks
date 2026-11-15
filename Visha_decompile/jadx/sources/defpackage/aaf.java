package defpackage;

import androidx.constraintlayout.motion.widget.Key;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import com.transsion.livecaption.constant.ICode;
import org.json.JSONException;
import org.json.JSONObject;

public class aaf {
    public final ejf a;
    public final String b;

    public aaf(ejf ejfVar, String str) {
        this.a = ejfVar;
        this.b = str;
    }

    public final void b(int i, int i2, int i3, int i4) {
        try {
            this.a.zze("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            int i5 = zze.zza;
            zzo.zzh("Error occurred while dispatching default position.", e);
        }
    }

    public final void c(String str) {
        try {
            JSONObject jSONObjectPut = new JSONObject().put("message", str).put("action", this.b);
            ejf ejfVar = this.a;
            if (ejfVar != null) {
                ejfVar.zze("onError", jSONObjectPut);
            }
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Error occurred while dispatching error event.", e);
        }
    }

    public final void d(String str) {
        try {
            this.a.zze("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Error occurred while dispatching ready Event.", e);
        }
    }

    public final void e(int i, int i2, int i3, int i4, float f, int i5) {
        try {
            this.a.zze("onScreenInfoChanged", new JSONObject().put("width", i).put("height", i2).put("maxSizeWidth", i3).put("maxSizeHeight", i4).put("density", f).put(Key.ROTATION, i5));
        } catch (JSONException e) {
            int i6 = zze.zza;
            zzo.zzh("Error occurred while obtaining screen information.", e);
        }
    }

    public final void f(int i, int i2, int i3, int i4) {
        try {
            this.a.zze("onSizeChanged", new JSONObject().put("x", i).put("y", i2).put("width", i3).put("height", i4));
        } catch (JSONException e) {
            int i5 = zze.zza;
            zzo.zzh("Error occurred while dispatching size change.", e);
        }
    }

    public final void g(String str) {
        try {
            this.a.zze("onStateChanged", new JSONObject().put(ICode.CALL.CALL_KEY_STATE, str));
        } catch (JSONException e) {
            int i = zze.zza;
            zzo.zzh("Error occurred while dispatching state change.", e);
        }
    }
}
