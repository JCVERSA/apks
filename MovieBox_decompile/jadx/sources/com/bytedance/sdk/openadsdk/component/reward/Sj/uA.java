package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.bytedance.sdk.component.utils.HomeWatcherReceiver;
import com.bytedance.sdk.component.utils.LqL;
import com.bytedance.sdk.component.utils.ib;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.logging.type.LogSeverity;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

public class uA implements Handler.Callback {
    private static final com.bytedance.sdk.openadsdk.sU.Jcg.Sj TEQ = new com.bytedance.sdk.openadsdk.sU.Jcg.Sj() {
    };
    private boolean Dq;

    @NonNull
    private final sU Fmk;
    private com.bytedance.sdk.openadsdk.core.widget.TEQ RiZ;
    private volatile boolean Ym;
    private final Sj Zq;

    private final Activity f20390aa;
    private TzV dNu;

    private HomeWatcherReceiver f20391dx;

    private boolean f20392ib;
    private volatile boolean kF;
    private final String sef;
    private boolean uA;
    private boolean uP;
    private boolean wE;
    private com.bytedance.sdk.openadsdk.sU.Dq zR;
    protected final AtomicBoolean Sj = new AtomicBoolean(false);
    private final Handler uvD = new Handler(this);
    boolean sP = false;
    boolean TKC = false;
    long EjP = 0;
    int HiB = 0;
    int vS = 0;
    int Jcg = 0;
    private int TzV = 1;
    private boolean sU = true;
    private final com.bytedance.sdk.openadsdk.aa.HiB ley = new com.bytedance.sdk.openadsdk.aa.HiB() {
        @Override
        public void Sj(int i10) {
        }

        @Override
        public void Sj() {
            if (!uA.this.Zq.Fm.isFinishing() && uA.this.Zq.sP.eEJ() && uP.uvD(uA.this.Zq.sP)) {
                uA.this.uvD.removeMessages(LogSeverity.EMERGENCY_VALUE);
                uA.this.uvD.sendMessage(uA.Sj(1, 0));
            }
        }

        @Override
        public void sP() {
        }
    };

    public uA(Sj sj2) {
        this.Dq = true;
        this.Zq = sj2;
        this.f20390aa = sj2.Fm;
        this.sef = sj2.HiB;
        sU sUVar = sj2.sP;
        this.Fmk = sUVar;
        this.Dq = uP.Jcg(sUVar);
    }

    private void dx() {
        if (this.Dq) {
            this.RiZ = (com.bytedance.sdk.openadsdk.core.widget.TEQ) this.Zq.xD.findViewById(com.bytedance.sdk.openadsdk.utils.Zq.ewz);
        }
    }

    private String ib() {
        String strKF = com.bytedance.sdk.openadsdk.core.dNu.EjP().kF();
        if (TextUtils.isEmpty(strKF) || this.Fmk.tz() == null) {
            return strKF;
        }
        String strSP = this.Fmk.tz().sP();
        double dEjP = this.Fmk.tz().EjP();
        int iHiB = this.Fmk.tz().HiB();
        String strSj = (this.Fmk.EZ() == null || TextUtils.isEmpty(this.Fmk.EZ().Sj())) ? "" : this.Fmk.EZ().Sj();
        String strAZ = this.Fmk.aZ();
        String strTKC = this.Fmk.tz().TKC();
        String strSj2 = this.Fmk.tz().Sj();
        String strSP2 = this.Fmk.tz().sP();
        String strXu = this.Fmk.xu();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("appname=");
        sb2.append(URLEncoder.encode(strSP));
        sb2.append("&stars=");
        sb2.append(dEjP);
        sb2.append("&comments=");
        sb2.append(iHiB);
        sb2.append("&icon=");
        sb2.append(URLEncoder.encode(strSj));
        sb2.append("&downloading=true&id=");
        sb2.append(URLEncoder.encode(strAZ));
        sb2.append("&packageName=");
        sb2.append(URLEncoder.encode(strTKC));
        sb2.append("&downloadUrl=");
        sb2.append(URLEncoder.encode(strSj2));
        sb2.append("&name=");
        sb2.append(URLEncoder.encode(strSP2));
        sb2.append("&orientation=");
        sb2.append(this.TzV == 1 ? "portrait" : TmcStartParams.KEY_LANDSCAPE);
        sb2.append("&apptitle=");
        sb2.append(URLEncoder.encode(strXu));
        return strKF + UrlUtils.QUESTION_MARK + ((Object) sb2);
    }

    @NonNull
    public static com.bytedance.sdk.openadsdk.sU.EjP sU() {
        String strVS = com.bytedance.sdk.openadsdk.common.sP.vS();
        strVS.hashCode();
        switch (strVS) {
            case "2g":
                return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_2G;
            case "3g":
                return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_3G;
            case "4g":
                return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_4G;
            case "5g":
                return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_5G;
            case "wifi":
                return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_WIFI;
            default:
                return com.bytedance.sdk.openadsdk.sU.EjP.TYPE_UNKNOWN;
        }
    }

    private boolean zR() {
        if (this.RiZ == null) {
            return false;
        }
        if (this.Fmk.eEJ() && uP.TzV(this.Fmk)) {
            this.RiZ.sP(this.Fmk, this.TzV);
            return true;
        }
        this.RiZ.TKC();
        return false;
    }

    public boolean Dq() {
        return this.Ym;
    }

    public void Fmk() {
        if (this.Dq) {
            this.uvD.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
            this.uvD.removeMessages(600);
        }
    }

    public void Jcg() {
        if (this.Dq && !this.RiZ.isShown()) {
            com.bytedance.sdk.openadsdk.core.widget.TEQ teq = this.RiZ;
            if (teq != null) {
                teq.sP(this.Fmk, this.TzV);
                this.RiZ.setProgress(this.Zq.JcM.TEQ() != null ? this.Zq.JcM.TEQ().getProgress() : 0);
            }
            com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
            if (dq2 != null) {
                dq2.Yf();
            }
        }
    }

    public int TEQ() {
        return this.HiB;
    }

    public com.bytedance.sdk.openadsdk.sU.Dq TzV() {
        return this.zR;
    }

    public void Ym() {
        if (this.Dq && this.zR != null && FPG.EjP(this.Zq.JcM.TEQ())) {
            this.zR.TKC(true);
        }
    }

    public boolean Zq() {
        return this.kF;
    }

    public void aa() {
        if (this.Dq) {
            com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
            if (dq2 != null) {
                dq2.TKC(false);
            }
            this.uvD.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        }
    }

    public boolean dNu() {
        com.bytedance.sdk.openadsdk.core.widget.TEQ teq = this.RiZ;
        return teq != null && teq.isShown();
    }

    @Override
    public boolean handleMessage(Message message) {
        com.bytedance.sdk.openadsdk.core.widget.TEQ teq;
        TzV tzV;
        int i10 = message.what;
        if (i10 == 900) {
            if (!this.Ym || !uP.TzV(this.Zq.sP)) {
                return true;
            }
            int i11 = message.arg1;
            if (i11 > 0) {
                this.Zq.Mts.EjP(true);
                int iSP = this.Zq.uP.sP(i11);
                if (iSP == i11) {
                    this.Zq.Mts.Sj(String.valueOf(i11), null);
                } else if (iSP > 0) {
                    this.Zq.Mts.Sj(String.valueOf(i11), String.format(ib.Sj(this.Zq.Fm.getApplicationContext(), "tt_skip_ad_time_text"), Integer.valueOf(iSP)));
                } else if (!uP.Dq(this.Fmk) || Zq()) {
                    this.Zq.RiZ.set(true);
                    this.Zq.f20378kb.Zq();
                } else {
                    this.Zq.Mts.Sj(String.valueOf(i11), ib.Sj(this.Zq.Fm.getApplicationContext(), "tt_reward_screen_skip_tx"));
                    this.Zq.Mts.HiB(true);
                }
                Message messageObtain = Message.obtain();
                messageObtain.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
                messageObtain.arg1 = i11 - 1;
                this.uvD.sendMessageDelayed(messageObtain, 1000L);
                EjP(i11);
            } else {
                if (!uP.Dq(this.Fmk) || (uP.ib(this.Fmk) && this.Zq.uP.Jcg())) {
                    this.Zq.Mts.EjP(false);
                    this.Zq.RiZ.set(true);
                    this.Zq.f20378kb.Zq();
                } else {
                    this.Zq.Mts.TKC();
                    this.Zq.Mts.HiB(true);
                }
                if (!this.uA) {
                    this.uP = true;
                }
            }
            this.Zq.f20377jb.sef();
        } else {
            if (i10 != 800 || ((teq = this.RiZ) != null && (!teq.isShown() || this.RiZ.EjP()))) {
                return true;
            }
            JSONObject jSONObject = new JSONObject();
            long displayDuration = 0;
            try {
                jSONObject.put("remove_loading_page_type", message.arg1);
                int i12 = message.arg2;
                if (i12 != 0) {
                    jSONObject.put("remove_loading_page_reason", i12);
                }
                String strAa = uP.aa(this.Fmk);
                Sj sj2 = this.Zq;
                if (sj2 != null && (tzV = sj2.JcM) != null) {
                    String strUP = tzV.uP();
                    if (!TextUtils.isEmpty(strUP)) {
                        strAa = strUP;
                    }
                }
                jSONObject.put("playable_url", strAa);
                com.bytedance.sdk.openadsdk.core.widget.TEQ teq2 = this.RiZ;
                displayDuration = teq2 != null ? teq2.getDisplayDuration() : 0L;
                jSONObject.put("duration", displayDuration);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFPM", "handleMessage json error", e10);
            }
            long j10 = displayDuration;
            Sj sj3 = this.Zq;
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sj3.sP, sj3.HiB, "remove_loading_page", jSONObject, j10);
            this.uvD.removeMessages(LogSeverity.EMERGENCY_VALUE);
            if (!this.f20390aa.isFinishing()) {
                this.Zq.uP.HiB();
            }
        }
        return true;
    }

    public com.bytedance.sdk.openadsdk.aa.HiB sef() {
        return this.ley;
    }

    public int uA() {
        return this.vS;
    }

    public boolean uvD() {
        return this.uP;
    }

    public void EjP() {
        if (this.Dq) {
            try {
                HomeWatcherReceiver homeWatcherReceiver = new HomeWatcherReceiver();
                this.f20391dx = homeWatcherReceiver;
                homeWatcherReceiver.Sj(new HomeWatcherReceiver.Sj() {
                    @Override
                    public void Sj() {
                        uA.this.TKC = true;
                    }

                    @Override
                    public void sP() {
                        uA.this.TKC = true;
                    }
                });
                this.f20390aa.getApplicationContext().registerReceiver(this.f20391dx, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            } catch (Throwable unused) {
            }
        }
    }

    public void HiB() {
        if (this.Dq && this.EjP <= 0) {
            this.EjP = System.currentTimeMillis();
            Handler handler = this.uvD;
            handler.sendMessage(handler.obtainMessage(DescriptorProtos$Edition.EDITION_LEGACY_VALUE, uA(), 0));
            TKC(true);
        }
    }

    public void TKC() {
        if (this.Dq && !this.wE) {
            this.wE = true;
            TKC(false);
            Sj(this.f20390aa.getApplicationContext());
            com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
            if (dq2 != null) {
                dq2.Mts();
            }
            this.uvD.removeCallbacksAndMessages(null);
        }
    }

    public void sP() {
        if (this.Dq && !this.Sj.getAndSet(true)) {
            this.dNu.Mts();
            if (uP.Dq(this.Fmk)) {
                this.dNu.Jcg();
            }
        }
    }

    public void vS() {
        com.bytedance.sdk.openadsdk.sU.Dq dq2;
        com.bytedance.sdk.openadsdk.utils.Fmk fmk;
        if (this.Dq) {
            if (!uP.Dq(this.Fmk) && this.RiZ.isShown() && (fmk = this.Zq.f20380xu) != null) {
                fmk.Sj(uA() * 1000);
            }
            if (uP.RiZ(this.Fmk) && this.RiZ.isShown()) {
                Sj sj2 = this.Zq;
                sj2.FPG.sP(sj2.f20378kb);
            }
            com.bytedance.sdk.openadsdk.core.widget.TEQ teq = this.RiZ;
            if (teq != null) {
                teq.TKC();
            }
            if (this.Sj.getAndSet(true)) {
                return;
            }
            if (this.Zq.JcM.Wjd() && (dq2 = this.zR) != null) {
                dq2.Sj(1);
            }
            if (uP.Jcg(this.Fmk) && uP.ib(this.Fmk)) {
                TzV tzV = this.Zq.JcM;
                if (tzV == null || tzV.Wjd()) {
                    Sj sj3 = this.Zq;
                    sj3.FPG.Sj(sj3.f20378kb);
                    return;
                }
                int i10 = !this.Zq.JcM.TzV() ? 2 : 3;
                com.bytedance.sdk.openadsdk.sU.Dq dq3 = this.zR;
                if (dq3 != null) {
                    dq3.Sj(i10);
                }
                if (uP.TzV(this.Zq.sP)) {
                    Sj sj4 = this.Zq;
                    int i11 = sj4.vS;
                    sU sUVar = sj4.sP;
                    Sj(i11, sUVar, sUVar.TT());
                    HiB();
                    this.Zq.f20377jb.Ym();
                }
                this.Zq.FPG.Sj(false);
                this.Zq.JcM.FPG();
                this.kF = true;
                this.Zq.Mts.TKC(false);
                this.Zq.uP.HiB(true);
                this.Zq.ndK = true;
                if (uP.RiZ(this.Fmk)) {
                    this.uvD.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
                    this.Zq.Mts.EjP(false);
                    LqL lqL = this.Zq.HpB;
                    if (lqL != null) {
                        lqL.removeMessages(1);
                        this.Zq.HpB.sendEmptyMessageDelayed(600, 1000L);
                    }
                }
                com.bytedance.sdk.openadsdk.sU.Dq dq4 = this.zR;
                if (dq4 != null) {
                    dq4.TKC(true);
                }
            }
        }
    }

    public static Message Sj(int i10, int i11) {
        Message messageObtain = Message.obtain();
        messageObtain.what = LogSeverity.EMERGENCY_VALUE;
        messageObtain.arg1 = i10;
        if (i10 == 3) {
            messageObtain.arg2 = i11;
        }
        return messageObtain;
    }

    public void EjP(int i10) {
        this.HiB = i10 - 1;
    }

    public void HiB(int i10) {
        this.HiB = i10;
    }

    public void Sj(int i10) {
        if (this.Dq) {
            if (i10 == 5) {
                this.uA = true;
                if (uP.ib(this.Fmk)) {
                    this.uvD.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
                    this.Zq.HpB.sendEmptyMessage(600);
                }
            }
            this.uvD.sendMessage(Sj(i10, 0));
        }
    }

    public void sP(boolean z10) {
        if (this.Dq) {
            if (z10) {
                try {
                    if (!TextUtils.isEmpty(this.dNu.uP()) && this.dNu.ib() != 0) {
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(this.dNu.uP(), this.dNu.ib(), this.dNu.kF());
                    }
                } catch (Throwable unused) {
                }
            }
            if (z10) {
                try {
                    if (TextUtils.isEmpty(this.dNu.uP())) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj().sP(this.dNu.uP());
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public void EjP(boolean z10) {
        com.bytedance.sdk.openadsdk.sU.Dq dq2;
        if (this.Dq && (dq2 = this.zR) != null) {
            dq2.TKC(z10);
        }
    }

    public void HiB(boolean z10) {
        com.bytedance.sdk.openadsdk.sU.Dq dq2;
        if (this.Dq && (dq2 = this.zR) != null) {
            dq2.Sj(z10);
        }
    }

    public void TKC(boolean z10) {
        if (this.Dq) {
            this.Ym = z10;
            if (z10) {
                return;
            }
            this.uvD.removeMessages(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        }
    }

    public void sP(int i10) {
        com.bytedance.sdk.openadsdk.core.widget.TEQ teq;
        if (this.Dq && (teq = this.RiZ) != null) {
            teq.setProgress(i10);
        }
    }

    public void Sj() {
        if (this.Dq && !this.f20392ib) {
            this.f20392ib = true;
            Sj sj2 = this.Zq;
            this.dNu = sj2.JcM;
            this.TzV = sj2.sdp;
            dx();
            if (zR() && uP.TzV(this.Fmk) && uP.uvD(this.Fmk)) {
                Handler handler = this.uvD;
                handler.sendMessageDelayed(handler.obtainMessage(LogSeverity.EMERGENCY_VALUE, 2, uP.Sj(2)), uP.sU(this.Fmk) * 1000);
            }
        }
    }

    public int TKC(int i10) {
        return this.Jcg - (this.vS - i10);
    }

    public void TKC(String str) {
        com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
        if (dq2 == null || !this.Dq) {
            return;
        }
        dq2.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(this.Fmk));
        this.zR.Dq(str);
    }

    public void sP(String str) {
        com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
        if (dq2 != null) {
            if (!this.Dq) {
                return;
            }
            dq2.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(this.Fmk));
            this.zR.uA(str);
        }
        if (Zq()) {
            this.Zq.JcM.HiB(true);
            this.Zq.fF.Sj(true);
            this.Zq.ndK = true;
        }
    }

    public void Sj(final com.bytedance.sdk.openadsdk.aa.vS vSVar, boolean z10) {
        com.bytedance.sdk.openadsdk.Zq.sP sPVar;
        com.bytedance.sdk.component.Sj.dNu dnuSP;
        if (this.Dq && uP.Jcg(this.Fmk) && this.Zq.xhi) {
            if (com.bytedance.sdk.openadsdk.core.uA.sP().RiZ()) {
                com.bytedance.sdk.openadsdk.sU.Jcg.Sj(TEQ);
            }
            com.bytedance.sdk.openadsdk.sU.Sj sj2 = new com.bytedance.sdk.openadsdk.sU.Sj() {
                @Override
                public void Sj(int i10, String str) {
                    super.Sj(i10, str);
                    if (uA.this.RiZ == null || !uA.this.RiZ.isShown()) {
                        return;
                    }
                    uA.this.uvD.sendMessage(uA.Sj(3, uP.Sj(i10)));
                }

                @Override
                public void sP() {
                    uA.this.Zq.JcM.aa().TKC(true);
                    com.bytedance.sdk.openadsdk.aa.vS vSVar2 = vSVar;
                    if (vSVar2 != null) {
                        vSVar2.Sj();
                    }
                }

                @Override
                public com.bytedance.sdk.openadsdk.sU.EjP Sj() {
                    return uA.sU();
                }

                @Override
                public void Sj(JSONObject jSONObject) {
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(uA.this.Fmk, uA.this.sef, "playable_track", jSONObject);
                }
            };
            com.bytedance.sdk.openadsdk.sU.TKC tkc = new com.bytedance.sdk.openadsdk.sU.TKC() {
                @Override
                public void Sj(String str, JSONObject jSONObject) {
                    uA.this.Zq.JcM.aa().Sj(str, jSONObject);
                }
            };
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(BidResponsedEx.KEY_CID, this.Fmk.aZ());
                jSONObject.put("log_extra", this.Fmk.mZN());
                com.bytedance.sdk.openadsdk.sU.Dq dqHiB = com.bytedance.sdk.openadsdk.sU.Dq.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), this.Zq.JcM.TEQ().getWebView(), tkc, sj2).Jcg(this.Zq.JcM.uP()).HiB(com.bytedance.sdk.openadsdk.common.sP.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj())).Sj(com.bytedance.sdk.openadsdk.common.sP.Sj()).TKC(jSONObject).Sj("sdkEdition", com.bytedance.sdk.openadsdk.common.sP.TKC()).sP(com.bytedance.sdk.openadsdk.common.sP.HiB()).EjP(com.bytedance.sdk.openadsdk.common.sP.EjP()).EjP(false).Sj(z10).Sj(uP.sU(this.Fmk)).sP(uP.sU(this.Fmk)).HiB(uP.TzV(this.Fmk));
                this.zR = dqHiB;
                if (dqHiB == null) {
                    sPVar = new com.bytedance.sdk.openadsdk.Zq.sP() {
                        @Override
                        public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("PlayablePlugin_init").sP(jSONObject2.toString());
                        }
                    };
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj("PlayablePlugin_init", false, sPVar);
                }
            } catch (Exception unused) {
                if (this.zR == null) {
                    sPVar = new com.bytedance.sdk.openadsdk.Zq.sP() {
                        @Override
                        public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("PlayablePlugin_init").sP(jSONObject2.toString());
                        }
                    };
                }
            } catch (Throwable th2) {
                if (this.zR == null) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj("PlayablePlugin_init", false, new com.bytedance.sdk.openadsdk.Zq.sP() {
                        @Override
                        public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("PlayablePlugin_init").sP(jSONObject2.toString());
                        }
                    });
                }
                throw th2;
            }
            if (this.zR != null && !TextUtils.isEmpty(uP.Ym(this.Fmk))) {
                this.zR.TKC(uP.Ym(this.Fmk));
            }
            com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
            if (dq2 != null) {
                Set<String> setYm = dq2.Ym();
                final WeakReference weakReference = new WeakReference(this.zR);
                for (String str : setYm) {
                    if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str) && (dnuSP = this.Zq.JcM.aa().sP()) != null) {
                        dnuSP.Sj(str, new com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject>() {
                            @Override
                            public JSONObject Sj(@NonNull JSONObject jSONObject2, @NonNull com.bytedance.sdk.component.Sj.vS vSVar2) {
                                try {
                                    com.bytedance.sdk.openadsdk.sU.Dq dq3 = (com.bytedance.sdk.openadsdk.sU.Dq) weakReference.get();
                                    if (dq3 == null) {
                                        return null;
                                    }
                                    return dq3.EjP(Sj(), jSONObject2);
                                } catch (Throwable unused2) {
                                    return null;
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    public void vS(boolean z10) {
        if (this.Dq && z10 && !this.Zq.uP.Jcg()) {
            com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
            if (dq2 != null) {
                dq2.Sj(1);
            }
            boolean zTzV = uP.TzV(this.Fmk);
            if ((zTzV || uP.ib(this.Fmk)) && this.Fmk.eEJ() && !uP.uvD(this.Fmk)) {
                Handler handler = this.uvD;
                handler.sendMessageDelayed(handler.obtainMessage(LogSeverity.EMERGENCY_VALUE, 0, 0), 1000L);
            }
            if (zTzV) {
                this.Zq.uP.Dq();
                this.Zq.JcM.sP(true);
                this.Zq.JcM.TKC(true);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), this.Zq.sP, this.sef, "py_loading_success");
            }
        }
    }

    public void Sj(DownloadListener downloadListener) {
        com.bytedance.sdk.component.uA.vS vSVarYm;
        if (this.Dq && (vSVarYm = this.dNu.Ym()) != null) {
            String strIb = ib();
            if (TextUtils.isEmpty(strIb)) {
                return;
            }
            vSVarYm.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.HiB(this.f20390aa, this.dNu.Fmk(), this.Fmk.aZ(), null, false) {
                @Override
                public void onPageFinished(WebView webView, String str) {
                    if (uA.this.sU) {
                        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), uA.this.Fmk, uA.this.sef, "loading_h5_success");
                    }
                    super.onPageFinished(webView, str);
                }

                @Override
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                    uA.this.sU = false;
                }

                @Override
                public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                    uA.this.sU = false;
                }

                @Override
                public void onReceivedError(WebView webView, int i10, String str, String str2) {
                    super.onReceivedError(webView, i10, str, str2);
                    uA.this.sU = false;
                }
            });
            vSVarYm.a_(strIb);
            vSVarYm.setDisplayZoomControls(false);
            vSVarYm.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Sj.EjP(this.dNu.Fmk(), this.dNu.sef()));
            vSVarYm.setDownloadListener(downloadListener);
        }
    }

    public void Sj(boolean z10) {
        if (this.Dq && z10) {
            this.dNu.TEQ().setDomStorageEnabled(true);
        }
    }

    private void Sj(Context context) {
        if (this.Dq) {
            try {
                this.f20391dx.Sj(null);
                context.getApplicationContext().unregisterReceiver(this.f20391dx);
            } catch (Throwable unused) {
            }
        }
    }

    public void Sj(String str) {
        if (this.Dq && this.TKC) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.EjP);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFPM", "sendPlayableEvent error", e10);
            }
            com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.Fmk, this.sef, str, jSONObject);
            if ("return_foreground".equals(str)) {
                this.TKC = false;
            }
        }
    }

    public void Sj(JSONObject jSONObject) {
        if (this.Dq && jSONObject != null) {
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.EjP);
            } catch (JSONException e10) {
                com.bytedance.sdk.component.utils.sU.Sj("TTAD.RFPM", "endShow json error", e10);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void Sj(com.bytedance.sdk.openadsdk.core.sP.HiB hiB) {
        com.bytedance.sdk.openadsdk.core.widget.TEQ teq;
        if (!this.Dq || (teq = this.RiZ) == null || teq.getDownloadButton() == null) {
            return;
        }
        if (uP.TzV(this.Fmk) || uP.ib(this.Fmk)) {
            this.RiZ.getDownloadButton().setOnClickListener(hiB);
            this.RiZ.getDownloadButton().setOnTouchListener(hiB);
        }
    }

    public void Sj(int i10, sU sUVar, boolean z10) {
        if (this.Dq && sUVar != null) {
            this.vS = sUVar.oWa();
            this.Jcg = com.bytedance.sdk.openadsdk.core.dNu.EjP().Sj(String.valueOf(i10), z10);
        }
    }

    public void Sj(int i10, String str, String str2) {
        if (this.Dq) {
            try {
                com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
                if (dq2 != null) {
                    dq2.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(this.Fmk));
                    this.zR.Sj(i10, str, str2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void Sj(boolean z10, String str, int i10) {
        if (this.Dq) {
            try {
                com.bytedance.sdk.openadsdk.sU.Dq dq2 = this.zR;
                if (dq2 != null) {
                    dq2.vS(com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(this.Fmk));
                    this.zR.Sj(z10, str, i10);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void Sj(long j10) {
        if (this.Dq) {
            Message messageObtain = Message.obtain();
            messageObtain.what = DescriptorProtos$Edition.EDITION_LEGACY_VALUE;
            messageObtain.arg1 = TEQ();
            this.uvD.sendMessageDelayed(messageObtain, j10);
        }
    }
}
