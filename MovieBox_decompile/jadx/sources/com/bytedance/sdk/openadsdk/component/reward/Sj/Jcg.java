package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.os.Handler;
import android.os.Message;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;

public class Jcg extends TEQ implements Handler.Callback {
    int EjP;
    int HiB;
    private final Handler RiZ;
    boolean Sj;
    int TKC;
    long sP;
    boolean vS;

    public Jcg(Sj sj2) {
        super(sj2);
        this.RiZ = new Handler(this);
        this.Sj = false;
        this.sP = 0L;
        this.TKC = 0;
        this.EjP = 0;
        this.HiB = 0;
        this.vS = false;
    }

    public void aa() {
        boolean z10 = false;
        boolean z11 = (1.0f - (((float) this.TKC) / ((float) this.EjP))) * 100.0f >= ((float) com.bytedance.sdk.openadsdk.core.dNu.EjP().ley(String.valueOf(this.Ym.vS)).vS);
        int iSj = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(String.valueOf(this.Ym.vS));
        if (iSj == 0) {
            com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.dNu;
            boolean zVS = sj2 != null ? sj2.vS() : false;
            if (this.sef) {
                zVS = true;
            }
            if (z11 && zVS) {
                z10 = true;
            }
        } else if (iSj == 1) {
            z10 = z11;
        }
        if (z10) {
            this.Ym.f20377jb.Sj(true);
        }
    }

    @Override
    public void Dq() {
        if (this.Fmk) {
            this.RiZ.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
            this.RiZ.removeMessages(600);
        }
    }

    @Override
    public void EjP() {
        com.bytedance.sdk.openadsdk.core.widget.sP sPVar;
        if (this.Fmk) {
            super.EjP();
            if (DeviceUtils.Jcg() == 0) {
                this.Ym.ndK = true;
            }
            Sj sj2 = this.Ym;
            if (sj2.ndK) {
                sj2.Mts.sP(true);
                TKC(true);
            }
            com.bytedance.sdk.openadsdk.component.reward.sP.sP sPVar2 = this.Ym.f20378kb;
            if ((sPVar2 == null || (sPVar = sPVar2.Fmk) == null || !sPVar.isShowing()) && Jcg() > 0) {
                Sj(0L);
            }
        }
    }

    @Override
    public void HiB() {
        if (this.Fmk) {
            super.HiB();
            if (uP.TKC(this.Ym.sP)) {
                this.Ym.HpB.removeMessages(600);
            }
            this.RiZ.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        }
    }

    public int Jcg() {
        return this.TKC;
    }

    @Override
    public void TKC() {
        if (this.Fmk) {
            this.Jcg = true;
            this.dNu.Sj();
            if (uP.TEQ(this.uA)) {
                this.Ym.JcM.vS();
            }
            this.EjP = this.uA.oWa();
            this.HiB = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(String.valueOf(this.Ym.vS), this.uA.TT());
            this.sP = System.currentTimeMillis();
            Handler handler = this.RiZ;
            handler.sendMessage(handler.obtainMessage(DescriptorProtos$Edition.EDITION_LEGACY_VALUE, this.EjP, 0));
            this.Ym.f20377jb.Ym();
            com.bytedance.sdk.openadsdk.component.reward.Ym ym2 = this.Ym.f20379tz;
            if (ym2 != null) {
                ym2.Sj(this.EjP);
            }
        }
    }

    @Override
    public boolean handleMessage(Message message) {
        if (message.what == 900 && this.Jcg && uP.TKC(this.Ym.sP) && !this.TzV.get()) {
            int i10 = message.arg1;
            if (i10 > 0) {
                this.Ym.Mts.EjP(true);
                int i11 = this.HiB - (this.EjP - i10);
                if (i11 == i10) {
                    this.Ym.Mts.Sj(String.valueOf(i10), null);
                } else if (i11 > 0) {
                    this.Ym.Mts.Sj(String.valueOf(i10), String.format(ib.Sj(this.Ym.Fm.getApplicationContext(), "tt_skip_ad_time_text"), Integer.valueOf(i11)));
                } else {
                    this.vS = true;
                    if (uP.TEQ(this.Ym.sP)) {
                        this.Ym.Mts.TKC();
                        this.Ym.Mts.HiB(true);
                    } else {
                        this.Ym.RiZ.set(true);
                        this.Ym.f20378kb.Zq();
                    }
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
                int i12 = i10 - 1;
                messageObtain.arg1 = i12;
                this.RiZ.sendMessageDelayed(messageObtain, 1000L);
                this.TKC = i12;
            } else {
                this.vS = true;
                if (!uP.TEQ(this.uA) || (uP.ib(this.uA) && this.dNu.HiB())) {
                    this.Ym.Mts.EjP(false);
                    this.Ym.RiZ.set(true);
                    this.Ym.f20378kb.Zq();
                } else {
                    this.Ym.Mts.TKC();
                    this.Ym.Mts.HiB(true);
                }
                com.bytedance.sdk.openadsdk.sU.Sj.Sj sj2 = this.dNu;
                if (sj2 == null || sj2.HiB()) {
                    this.sef = true;
                }
            }
            aa();
        }
        return true;
    }

    @Override
    protected com.bytedance.sdk.openadsdk.aa.vS sP() {
        return new com.bytedance.sdk.openadsdk.aa.vS() {
            @Override
            public void Sj() {
                Jcg.this.aa();
            }
        };
    }

    @Override
    public boolean uA() {
        return this.vS;
    }

    @Override
    public void vS() {
        if (this.Fmk && !this.Zq) {
            super.vS();
            this.RiZ.removeCallbacksAndMessages(null);
        }
    }

    @Override
    public void Sj() {
        if (this.Fmk && !this.f20381aa) {
            super.Sj();
        }
    }

    @Override
    protected void Sj(boolean z10) {
        if (this.uvD != null) {
            try {
                com.bytedance.sdk.openadsdk.sU.Sj.sP sPVarSj = com.bytedance.sdk.openadsdk.sU.Sj.EjP.Sj().Sj(this.uA, this.uvD, sP());
                this.dNu = sPVarSj;
                sPVarSj.Sj(this.Ym.f20377jb);
            } catch (Throwable unused) {
                sU.sP("RVIVPlayableNewManager", "PreRender injection exception");
            }
            if (this.dNu == null) {
                super.Sj(z10);
            }
        }
    }

    @Override
    public void Sj(int i10) {
        this.TKC = i10;
    }

    @Override
    public void Sj(long j10) {
        if (this.Fmk && this.Jcg) {
            Message messageObtain = Message.obtain();
            messageObtain.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
            messageObtain.arg1 = Jcg();
            this.RiZ.sendMessageDelayed(messageObtain, j10);
        }
    }
}
