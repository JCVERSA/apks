package com.bytedance.sdk.openadsdk.api.init;

import android.text.TextUtils;
import com.bytedance.sdk.component.Jcg.TKC.TKC;
import com.bytedance.sdk.component.utils.Zq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.InitConfig;
import com.bytedance.sdk.openadsdk.api.PAGConstant;
import com.bytedance.sdk.openadsdk.core.ley;
import com.bytedance.sdk.openadsdk.utils.Mts;

public final class PAGConfig implements InitConfig {
    private static String TEQ;
    private String Dq;
    private boolean Jcg;
    private String Sj;
    private int TKC;
    private String Ym;
    private boolean sP;
    private String uA;
    private int EjP = -1;
    private int HiB = -1;
    private int vS = 0;

    public static void debugLog(boolean z10) {
        if (ley.Sj() != null) {
            if (z10) {
                ley.Sj().TKC(1);
                ley.Sj().Sj();
                return;
            }
            ley.Sj().TKC(0);
            TKC.Sj(TKC.Sj.OFF);
            Zq.TKC();
            y5.b.d();
            sU.sP();
        }
    }

    public static int getGDPRConsent() {
        if (!Mts.uA("getGdpr")) {
            return -1;
        }
        int iSP = ley.Sj().sP();
        if (iSP == 1) {
            return 0;
        }
        if (iSP == 0) {
            return 1;
        }
        return iSP;
    }

    public static int getPAConsent() {
        if (Mts.uA("getPAConsent")) {
            return ley.Sj().HiB();
        }
        return -1;
    }

    public static void setAppIconId(int i10) {
        if (ley.Sj() != null) {
            ley.Sj().EjP(i10);
        }
    }

    public static void setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i10) {
        Mts.uA("setGdpr");
        if (i10 < -1 || i10 > 1) {
            i10 = -1;
        }
        ley.Sj().sP(i10);
    }

    public static void setPAConsent(@PAGConstant.PAGPAConsentType int i10) {
        if (Mts.uA("setPAConsent")) {
            if (i10 == 1 || i10 == 0) {
                ley.Sj().HiB(i10);
            } else {
                ley.Sj().HiB(-2);
            }
        }
    }

    public static void setPackageName(String str) {
        TEQ = str;
    }

    public static void setUserData(String str) {
        if (ley.Sj() != null) {
            ley.Sj().sP(str);
        }
    }

    @Override
    public String getAdxId() {
        return this.Ym;
    }

    @Override
    public int getAppIconId() {
        return this.TKC;
    }

    @Override
    public String getAppId() {
        return this.Sj;
    }

    @Override
    public String getData() {
        return this.uA;
    }

    public boolean getDebugLog() {
        return this.sP;
    }

    @Override
    public int getGdpr() {
        return this.EjP;
    }

    @Override
    public int getPA() {
        return this.HiB;
    }

    @Override
    public String getPackageName() {
        return TextUtils.isEmpty(this.Dq) ? TEQ : this.Dq;
    }

    @Override
    public int getTitleBarTheme() {
        return this.vS;
    }

    @Override
    public boolean isSupportMultiProcess() {
        return this.Jcg;
    }

    @Override
    public boolean isUseTextureView() {
        return true;
    }

    @Deprecated
    public void EjP(int i10) {
        this.vS = i10;
    }

    public void TKC(int i10) {
        this.HiB = i10;
    }

    public void EjP(String str) {
        this.Ym = str;
    }

    public void Sj(String str) {
        this.uA = str;
    }

    public void TKC(String str) {
        this.Dq = str;
    }

    public void sP(String str) {
        this.Sj = str;
    }

    public void Sj(boolean z10) {
        this.sP = z10;
    }

    public void sP(int i10) {
        if (i10 < -1 || i10 > 1) {
            i10 = -1;
        }
        this.EjP = i10;
    }

    public void Sj(int i10) {
        this.TKC = i10;
    }

    public void sP(boolean z10) {
        this.Jcg = z10;
        v5.b.g(z10);
    }

    public static class Builder {
        private String[] Dq;
        private String Sj;
        private String TEQ;
        private int TKC;
        private boolean sP;
        private String uA;
        private int EjP = -1;
        private int HiB = -1;
        private int vS = 0;
        private boolean Jcg = false;
        private String Ym = "";

        public Builder appIcon(int i10) {
            this.TKC = i10;
            return this;
        }

        public Builder appId(String str) {
            this.Sj = str;
            return this;
        }

        public PAGConfig build() {
            PAGConfig pAGConfig = new PAGConfig();
            pAGConfig.sP(this.Sj);
            pAGConfig.Sj(this.TKC);
            pAGConfig.EjP(this.vS);
            pAGConfig.sP(this.Jcg);
            pAGConfig.sP(this.EjP);
            pAGConfig.TKC(this.HiB);
            pAGConfig.Sj(this.sP);
            pAGConfig.TKC(this.uA);
            pAGConfig.Sj(this.TEQ);
            pAGConfig.EjP(this.Ym);
            return pAGConfig;
        }

        public Builder debugLog(boolean z10) {
            this.sP = z10;
            return this;
        }

        public Builder needClearTaskReset(String... strArr) {
            this.Dq = strArr;
            return this;
        }

        public Builder setAdxId(String str) {
            this.Ym = str;
            return this;
        }

        public Builder setGDPRConsent(@PAGConstant.PAGGDPRConsentType int i10) {
            this.EjP = i10;
            return this;
        }

        public Builder setPAConsent(@PAGConstant.PAGPAConsentType int i10) {
            if (i10 == 0 || i10 == 1) {
                this.HiB = i10;
            } else {
                this.HiB = -2;
            }
            return this;
        }

        public Builder setPackageName(String str) {
            this.uA = str;
            return this;
        }

        public Builder setUserData(String str) {
            this.TEQ = str;
            return this;
        }

        public Builder supportMultiProcess(boolean z10) {
            this.Jcg = z10;
            return this;
        }

        public Builder titleBarTheme(int i10) {
            this.vS = i10;
            return this;
        }

        public Builder useTextureView(boolean z10) {
            return this;
        }
    }
}
