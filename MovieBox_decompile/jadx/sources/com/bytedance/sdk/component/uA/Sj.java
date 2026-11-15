package com.bytedance.sdk.component.uA;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.Yf;
import com.bytedance.sdk.component.utils.uA;
import com.hisavana.common.tracking.TrackingKey;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class Sj extends TKC implements LqL.Sj {
    private volatile float Dq;
    private final List<Integer> EjP;
    private int Fmk;
    private final int HiB;
    private volatile float Jcg;
    private String RiZ;
    private final int TKC;
    private float TzV;
    private long Ym;

    private long f20293aa;
    private float dNu;
    private final int sP;
    private View.OnTouchListener sU;
    private boolean uvD;
    private final Context vS;
    private float uA = -1.0f;
    private float TEQ = -1.0f;
    private final Handler Zq = new LqL(uA.Sj().getLooper(), this);
    InterfaceC0207Sj Sj = new InterfaceC0207Sj() {
        @Override
        public void Sj() {
            if (Sj.this.uA == -1.0f && Sj.this.TEQ == -1.0f && Sj.this.f20293aa == -1) {
                float unused = Sj.this.uA;
                float unused2 = Sj.this.TEQ;
                Sj sj2 = Sj.this;
                sj2.uA = sj2.Jcg;
                Sj sj3 = Sj.this;
                sj3.TEQ = sj3.Dq;
                Sj sj4 = Sj.this;
                sj4.f20293aa = sj4.Ym;
                Sj.this.uvD = true;
            }
            float unused3 = Sj.this.uA;
            float unused4 = Sj.this.TEQ;
        }

        @Override
        public void Sj(int i10) {
            Sj.this.Fmk = i10;
            Sj.this.sP();
        }
    };

    private int f20294dx = -1;
    private final List<Integer> sef = new ArrayList();

    public interface InterfaceC0207Sj {
        void Sj();

        void Sj(int i10);
    }

    public Sj(Context context, int i10, int i11, List<Integer> list, int i12) {
        this.vS = context;
        if (i10 == -1) {
            this.sP = Yf.Sj(context);
        } else {
            this.sP = Yf.Sj(context, i10);
        }
        this.TKC = Yf.Sj(context, i11);
        this.EjP = list;
        this.HiB = i12;
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        motionEvent.getX();
        motionEvent.getY();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        this.Ym = SystemClock.elapsedRealtime();
        this.Jcg = x10;
        this.Dq = y10;
        if (action == 0) {
            this.dNu = x10;
            this.TzV = y10;
        } else if (action == 1 && Sj(x10, y10, this.dNu, this.TzV, this.vS)) {
            int iSj = Sj(this.Jcg, this.Dq, this.Ym);
            boolean zContains = this.sef.contains(Integer.valueOf(this.Fmk));
            Sj(view, motionEvent, iSj, !zContains);
            if (!zContains) {
                this.sef.add(Integer.valueOf(this.Fmk));
            }
            if (iSj == 0) {
                motionEvent.setAction(3);
            }
        }
        View.OnTouchListener onTouchListener = this.sU;
        if (onTouchListener != null) {
            return onTouchListener.onTouch(view, motionEvent);
        }
        return false;
    }

    public void sP() {
        this.uA = -1.0f;
        this.TEQ = -1.0f;
        this.f20293aa = -1L;
    }

    @Override
    public void Sj(View.OnTouchListener onTouchListener) {
        this.sU = onTouchListener;
    }

    public InterfaceC0207Sj Sj() {
        return this.Sj;
    }

    private void Sj(View view, MotionEvent motionEvent, int i10, boolean z10) {
        String url;
        JSONObject jSONObject = new JSONObject();
        WebView webView = view instanceof WebView ? (WebView) view : null;
        if (webView != null) {
            try {
                url = webView.getUrl();
            } catch (Throwable unused) {
            }
        } else {
            url = "";
        }
        jSONObject.put("arbi_current_url", url);
        jSONObject.put(TrackingKey.CLICK_X, motionEvent.getX());
        jSONObject.put(TrackingKey.CLICK_Y, motionEvent.getY());
        jSONObject.put("is_interceptor", i10 == 0 ? 1 : 0);
        jSONObject.put("is_first_click", z10 ? 1 : 0);
        jSONObject.put("click_timestamp", System.currentTimeMillis());
        jSONObject.put("arbi_interceptor_type", i10);
        jSONObject.put("current_url_index", this.Fmk);
        Message messageObtain = Message.obtain();
        messageObtain.what = 100;
        messageObtain.obj = jSONObject;
        this.Zq.sendMessageDelayed(messageObtain, 200L);
    }

    public void Sj(String str) {
        this.RiZ = str;
    }

    private int Sj(float f10, float f11, long j10) {
        if (this.uA == -1.0f && this.TEQ == -1.0f && this.f20293aa == -1) {
            return 1;
        }
        if (!this.EjP.contains(Integer.valueOf(this.Fmk))) {
            return 2;
        }
        if (j10 - this.f20293aa > this.HiB) {
            sP();
            return 3;
        }
        float fAbs = Math.abs(f10 - this.uA);
        float fAbs2 = Math.abs(f11 - this.TEQ);
        if (fAbs <= this.sP / 2.0f && fAbs2 <= this.TKC / 2.0f) {
            return 0;
        }
        sP();
        return 4;
    }

    @Override
    public void Sj(Message message) {
        int i10 = message.what;
        Object obj = message.obj;
        JSONObject jSONObject = new JSONObject();
        if (i10 == 100) {
            if (obj instanceof JSONObject) {
                jSONObject = (JSONObject) obj;
                try {
                    jSONObject.put("is_trigger_jump", this.uvD ? 1 : 0);
                    this.uvD = false;
                } catch (Throwable unused) {
                }
            }
            if (com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP() != null) {
                com.bytedance.sdk.component.uA.Sj.Sj.Sj().sP().Sj(this.RiZ, "arbitrage_click_event", jSONObject);
            }
        }
    }
}
