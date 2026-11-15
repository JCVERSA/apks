package com.bytedance.sdk.component.vS.Sj.EjP.Sj;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONException;
import org.json.JSONObject;

public class Sj implements com.bytedance.sdk.component.vS.Sj.EjP.Sj {
    private String Dq;
    private byte EjP;
    private long HiB;
    private long Jcg;
    protected JSONObject Sj;
    private byte TEQ;
    private byte TKC;
    private String Ym;

    private int f20300aa;
    private sP sP;
    private String uA;
    private long vS;

    public Sj(String str, JSONObject jSONObject) {
        this.uA = str;
        this.Sj = jSONObject;
    }

    public static com.bytedance.sdk.component.vS.Sj.EjP.Sj TKC(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int iOptInt = jSONObject.optInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
            int iOptInt2 = jSONObject.optInt(TrackingKey.PRIORITY);
            Sj sj2 = new Sj();
            sj2.Sj((byte) iOptInt);
            sj2.sP((byte) iOptInt2);
            sj2.Sj(jSONObject.optJSONObject(NotificationCompat.CATEGORY_EVENT));
            sj2.Sj(jSONObject.optString("localId"));
            sj2.sP(jSONObject.optString("genTime"));
            sj2.Sj(jSONObject.optInt("channel"));
            return sj2;
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override
    public long Dq() {
        return this.HiB;
    }

    @Override
    public byte EjP() {
        return this.TKC;
    }

    @Override
    public byte HiB() {
        return this.EjP;
    }

    @Override
    public synchronized JSONObject Jcg() {
        sP sPVar;
        try {
            if (this.Sj == null && (sPVar = this.sP) != null) {
                this.Sj = sPVar.Sj(Ym());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.Sj;
    }

    @Override
    public sP Sj() {
        return this.sP;
    }

    @Override
    public int TEQ() {
        return this.f20300aa;
    }

    public String Ym() {
        return this.Ym;
    }

    public String aa() {
        return this.Dq;
    }

    @Override
    public byte sP() {
        return this.TEQ;
    }

    @Override
    public long uA() {
        return this.vS;
    }

    @Override
    public String vS() {
        if (TextUtils.isEmpty(this.uA)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.uA);
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, Jcg());
            jSONObject.put("genTime", aa());
            jSONObject.put(TrackingKey.PRIORITY, (int) this.EjP);
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, (int) this.TKC);
            jSONObject.put("channel", this.f20300aa);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override
    public void Sj(JSONObject jSONObject) {
        this.Sj = jSONObject;
    }

    @Override
    public void sP(String str) {
        this.Dq = str;
    }

    @Override
    public void Sj(byte b10) {
        this.TKC = b10;
    }

    @Override
    public void sP(long j10) {
        this.vS = j10;
    }

    public Sj(String str, sP sPVar) {
        this.uA = str;
        this.sP = sPVar;
    }

    @Override
    public void Sj(String str) {
        this.uA = str;
    }

    @Override
    public void sP(byte b10) {
        this.EjP = b10;
    }

    @Override
    public void Sj(long j10) {
        this.HiB = j10;
    }

    @Override
    public void Sj(int i10) {
        this.f20300aa = i10;
    }

    private Sj() {
    }

    public void TKC(byte b10) {
        this.TEQ = b10;
    }

    @Override
    public String TKC() {
        return this.uA;
    }

    @Override
    public void TKC(long j10) {
        this.Jcg = j10;
    }
}
