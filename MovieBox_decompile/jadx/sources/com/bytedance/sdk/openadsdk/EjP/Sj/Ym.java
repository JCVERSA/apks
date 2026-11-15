package com.bytedance.sdk.openadsdk.EjP.Sj;

import android.content.Context;
import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.multipro.aidl.BinderPoolService;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class Ym implements com.bytedance.sdk.component.vS.Sj.HiB {
    private final String Sj = "[7114]";

    @Override
    public boolean Dq() {
        return true;
    }

    @Override
    public Executor EjP() {
        return JcM.EjP();
    }

    @Override
    public void Fmk() {
        Sj.Sj(Sj.vS);
    }

    @Override
    public Executor HiB() {
        return JcM.Dq();
    }

    @Override
    public boolean Jcg() {
        return false;
    }

    @Override
    public com.bytedance.sdk.component.vS.Sj.EjP.Sj Sj(JSONObject jSONObject) {
        return null;
    }

    @Override
    public com.bytedance.sdk.component.vS.Sj.HiB.TKC TEQ() {
        return new Jcg();
    }

    @Override
    public boolean TKC() {
        return true;
    }

    @Override
    public com.bytedance.sdk.component.vS.Sj.vS Ym() {
        com.bytedance.sdk.component.vS.Sj.vS vSVarSj;
        synchronized (this) {
            vSVarSj = com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(dNu.Sj());
        }
        return vSVarSj;
    }

    @Override
    public long Zq() {
        long jSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("log_queue_timeout", 40000);
        if (jSj < 30000 || jSj > TmcConstants.DEBUG_REQUEST_TIME_INTERVAL) {
            return 40000L;
        }
        return jSj;
    }

    @Override
    public com.bytedance.sdk.component.vS.Sj.Jcg aa() {
        return null;
    }

    @Override
    public boolean sP() {
        return false;
    }

    @Override
    public boolean sef() {
        return BinderPoolService.Sj;
    }

    @Override
    public String uA() {
        return Mts.TKC();
    }

    @Override
    public int vS() {
        return 1;
    }

    @Override
    public boolean Sj() {
        return false;
    }

    @Override
    public int TKC(String str) {
        sef sefVarTFd = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().TFd();
        if (sefVarTFd == null) {
            return 3;
        }
        return sefVarTFd.Sj(str);
    }

    @Override
    public String sP(String str) {
        return com.bytedance.sdk.component.EjP.Sj.Sj(str, com.bytedance.sdk.openadsdk.core.Sj.Sj());
    }

    @Override
    public boolean Sj(Context context) {
        return TzV.Sj(context);
    }

    @Override
    public String Sj(String str) {
        return com.bytedance.sdk.component.EjP.Sj.sP(str, com.bytedance.sdk.openadsdk.core.Sj.Sj());
    }

    @Override
    public void Sj(boolean z10, int i10, long j10, com.bytedance.sdk.component.vS.Sj.vS.EjP ejP) {
        Runnable runnableSj;
        if (ejP == null) {
            return;
        }
        Sj.Sj(Sj.TKC, z10, i10, j10);
        if (z10) {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("track_link_result", false, (com.bytedance.sdk.openadsdk.Zq.sP) new Fmk(true, ejP));
            return;
        }
        sef sefVarTFd = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().TFd();
        if (sefVarTFd == null || ejP.EjP() >= sefVarTFd.Sj(ejP.vS())) {
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("track_link_result", false, (com.bytedance.sdk.openadsdk.Zq.sP) new Fmk(false, ejP));
        } else {
            if (!sefVarTFd.Sj() || (runnableSj = ejP.Sj(com.bytedance.sdk.openadsdk.core.aa.Sj(dNu.Sj()), null)) == null) {
                return;
            }
            JcM.Sj().schedule(runnableSj, sefVarTFd.sP(ejP.vS()), TimeUnit.SECONDS);
        }
    }

    @Override
    public void Sj(boolean z10) {
        Sj.Sj(Sj.vS, z10);
    }

    @Override
    public HandlerThread Sj(String str, int i10) {
        return com.bytedance.sdk.component.utils.Dq.Sj(str, i10);
    }
}
