package com.bytedance.adsdk.ugeno.EjP.EjP;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Map;

public class Dq extends Sj implements com.bytedance.adsdk.ugeno.Jcg.uA.Sj {
    private Handler Fmk;
    private int Ym;

    private int f20190aa;
    private int sef;

    public Dq(Context context) {
        super(context);
        this.f20190aa = 0;
        this.Fmk = new com.bytedance.adsdk.ugeno.Jcg.uA(Looper.getMainLooper(), this);
        this.sef = 0;
    }

    @Override
    public boolean Sj(Object... objArr) {
        Map<String, String> map = this.HiB;
        if (map != null) {
            int iSj = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(map.get("loop"), 0);
            this.Ym = iSj;
            if (iSj <= 0) {
                this.sef = -1;
            } else {
                this.sef = iSj;
            }
            this.f20190aa = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(this.HiB.get("duration"), 0);
        }
        this.Fmk.sendEmptyMessageDelayed(1001, this.f20190aa);
        return true;
    }

    @Override
    public void Sj(Message message) {
        int i10;
        int i11;
        if (message.what != 1001) {
            return;
        }
        new StringBuilder("handleMsg: execute timer event").append(this.sef);
        this.Sj.Sj(this.sP, this.vS, this.TKC.sP());
        int i12 = this.sef - 1;
        this.sef = i12;
        if (i12 < 0 && (i11 = this.f20190aa) != 0) {
            this.Fmk.sendEmptyMessageDelayed(1001, i11);
        } else if (i12 > 0 && (i10 = this.f20190aa) != 0) {
            this.Fmk.sendEmptyMessageDelayed(1001, i10);
        } else {
            this.Fmk.removeMessages(1001);
        }
    }
}
