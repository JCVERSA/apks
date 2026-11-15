package com.bytedance.sdk.component.uA;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.component.utils.sU;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONObject;

public class EjP extends TKC {
    private float Dq;
    private final Context EjP;
    private final vS HiB;
    private long Jcg = -1;
    private final View.OnTouchListener Sj;
    private String TEQ;
    private final long TKC;
    private final int sP;
    private float uA;
    private View.OnTouchListener vS;

    public EjP(Context context, View.OnTouchListener onTouchListener, int i10, long j10, vS vSVar) {
        this.EjP = context;
        this.Sj = onTouchListener;
        this.sP = i10;
        this.TKC = j10;
        this.HiB = vSVar;
    }

    private boolean Sj(long j10) {
        long j11 = this.Jcg;
        if (j11 == -1) {
            this.Jcg = j10;
            return false;
        }
        int i10 = this.sP;
        if (i10 == 1) {
            if (j10 - j11 <= this.TKC) {
                return true;
            }
            this.Jcg = j10;
            return false;
        }
        if (i10 == 2) {
            if (j10 - j11 <= this.TKC) {
                this.Jcg = j10;
                return true;
            }
            this.Jcg = j10;
        }
        return false;
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        motionEvent.getX();
        motionEvent.getY();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (action == 0) {
            this.Dq = x10;
            this.uA = y10;
        } else if (action == 1 && Sj(x10, y10, this.Dq, this.uA, this.EjP)) {
            if (Sj(SystemClock.elapsedRealtime())) {
                motionEvent.setAction(3);
                Sj(1, x10, y10);
            } else {
                Sj(0, x10, y10);
            }
        }
        View.OnTouchListener onTouchListener = this.Sj;
        if (onTouchListener != null) {
            onTouchListener.onTouch(view, motionEvent);
        }
        View.OnTouchListener onTouchListener2 = this.vS;
        if (onTouchListener2 != null) {
            onTouchListener2.onTouch(view, motionEvent);
        }
        return false;
    }

    private void Sj(int i10, float f10, float f11) {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("is_interceptor", i10);
            jSONObject2.put(TrackingKey.CLICK_X, f10);
            jSONObject2.put(TrackingKey.CLICK_Y, f11);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("lp_click_type", this.sP);
            jSONObject3.put("lp_click_interval", this.TKC);
            jSONObject2.put("pag_json_data", jSONObject3.toString());
            jSONObject.put("ad_extra_data", jSONObject2.toString());
        } catch (Throwable th2) {
            sU.Sj("LpClickIntervalTouchListener", "sendLpClickInterceptEvent", th2);
        }
        if (com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP() != null) {
            com.bytedance.sdk.component.uA.Sj.sP sPVarSP = com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP();
            vS vSVar = this.HiB;
            sPVarSP.Sj(vSVar != null ? vSVar.getMaterialMeta() : null, this.TEQ, "click_interval_intercept", jSONObject);
        }
    }

    public void Sj(String str) {
        this.TEQ = str;
    }

    @Override
    public void Sj(View.OnTouchListener onTouchListener) {
        this.vS = onTouchListener;
    }
}
