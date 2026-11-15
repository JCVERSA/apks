package com.bytedance.sdk.openadsdk.component.vS;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;

public class sP implements Handler.Callback {
    private boolean Jcg;
    private Sj TKC;
    private final com.bytedance.sdk.openadsdk.component.Dq.Sj sP;
    private Handler Sj = new Handler(Looper.myLooper(), this);
    private int EjP = 0;
    private int HiB = 5;
    private int vS = 0;

    public sP(com.bytedance.sdk.openadsdk.component.Dq.Sj sj2) {
        this.sP = sj2;
    }

    public void EjP() {
        Handler handler = this.Sj;
        if (handler != null) {
            handler.removeMessages(100);
        }
    }

    public void HiB() {
        this.Sj.removeCallbacksAndMessages(null);
        this.Sj = null;
    }

    public void Sj(int i10) {
        this.EjP = i10;
        int i11 = this.HiB - i10;
        this.sP.Sj(i11);
        boolean z10 = true;
        if (i10 <= 0) {
            Sj sj2 = this.TKC;
            if (sj2 != null && !this.Jcg) {
                sj2.sP();
                this.Jcg = true;
            }
            i10 = 0;
        }
        Sj sj3 = this.TKC;
        if (sj3 != null) {
            int i12 = this.vS;
            int i13 = i12 - i11;
            if (i10 != 0 && i11 < i12) {
                z10 = false;
            }
            sj3.Sj(i13, z10);
        }
    }

    public void TKC() {
        if (this.Sj != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            messageObtain.arg1 = this.EjP;
            this.Sj.sendMessage(messageObtain);
        }
    }

    @Override
    public boolean handleMessage(@NonNull Message message) {
        if (message.what == 100 && this.Sj != null) {
            int i10 = message.arg1;
            Sj(i10);
            if (i10 > 0) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 100;
                messageObtain.arg1 = i10 - 1;
                this.Sj.sendMessageDelayed(messageObtain, 1000L);
            }
        }
        return true;
    }

    public void sP(int i10) {
        this.vS = Math.min(i10, this.HiB);
    }

    public void sP() {
        Handler handler = this.Sj;
        if (handler != null) {
            handler.sendMessage(handler.obtainMessage(100, this.HiB, 0));
        }
    }

    public void Sj(float f10) {
        int i10 = (int) f10;
        this.HiB = i10;
        if (i10 <= 0) {
            this.HiB = 5;
        }
    }

    public void Sj(Sj sj2) {
        this.TKC = sj2;
    }

    public int Sj() {
        return this.vS;
    }
}
