package com.bytedance.sdk.openadsdk;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.Zq;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Map;
import org.json.JSONObject;
import y5.c;

public class AdSlot {
    public static final int ANCHORED_BANNER = 2;
    public static final int FIX_BANNER = 1;
    public static final int INLINE_BANNER = 3;
    public static final int TYPE_BANNER = 1;
    public static final int TYPE_CACHED_SPLASH = 4;
    public static final int TYPE_FEED = 5;
    public static final int TYPE_FULL_SCREEN_VIDEO = 8;
    public static final int TYPE_INTERACTION_AD = 2;
    public static final int TYPE_OPEN_AD = 3;
    public static final int TYPE_REWARD_VIDEO = 7;
    private String Dq;
    private float EjP;
    private boolean Fmk;
    private float HiB;
    private boolean Jcg;
    private String RiZ;
    private String Sj;
    private String TEQ;
    private int TKC;
    private String TzV;
    private String Ym;
    private String Zq;

    private int f20314aa;
    private String dNu;

    private int f20315dx;

    private int f20316ib;
    private int kF;
    private int sP;
    private int sU;
    private boolean sef;
    private int uA;
    private boolean uP;
    private String uvD;
    private int vS;
    private Map<String, Object> wE;
    private int zR;

    public static int getPosition(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return (i10 == 3 || i10 == 4 || i10 == 7 || i10 == 8) ? 5 : 3;
        }
        return 4;
    }

    public static AdSlot getSlot(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        Builder builder = new Builder();
        try {
            int iOptInt = jSONObject.optInt("mImgAcceptedWidth", 640);
            int iOptInt2 = jSONObject.optInt("mImgAcceptedHeight", Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE);
            double dOptDouble = jSONObject.optDouble("mExpressViewAcceptedWidth", 0.0d);
            double dOptDouble2 = jSONObject.optDouble("mExpressViewAcceptedHeight", 0.0d);
            builder.setCodeId(jSONObject.optString("mCodeId", null));
            builder.setAdCount(jSONObject.optInt("mAdCount", 1));
            builder.setIsAutoPlay(jSONObject.optBoolean("mIsAutoPlay"));
            builder.setImageAcceptedSize(iOptInt, iOptInt2);
            builder.setExpressViewAcceptedSize(Double.valueOf(dOptDouble).floatValue(), Double.valueOf(dOptDouble2).floatValue());
            builder.setSupportDeepLink(jSONObject.optBoolean("mSupportDeepLink", false));
            builder.setRewardName(jSONObject.optString("mRewardName", null));
            builder.setRewardAmount(jSONObject.optInt("mRewardAmount"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra", null));
            builder.setUserID(jSONObject.optString("mUserID", null));
            builder.setNativeAdType(jSONObject.optInt("mNativeAdType"));
            builder.isExpressAd(jSONObject.optBoolean("mIsExpressAd"));
            builder.withBid(jSONObject.optString("mBidAdm"));
            builder.setAdId(jSONObject.optString("mAdId"));
            builder.setCreativeId(jSONObject.optString("mCreativeId"));
            builder.setExt(jSONObject.optString("mExt"));
            builder.setMediaExtra(jSONObject.optString("mMediaExtra"));
            builder.setBannerType(jSONObject.optInt("mBannerType"));
        } catch (Exception unused) {
        }
        AdSlot adSlotBuild = builder.build();
        adSlotBuild.setDurationSlotType(jSONObject.optInt("mDurationSlotType"));
        return adSlotBuild;
    }

    public int getAdCount() {
        return this.vS;
    }

    public String getAdId() {
        return this.uvD;
    }

    public int getBannerType() {
        return this.kF;
    }

    public String getBidAdm() {
        return this.Zq;
    }

    public String getCodeId() {
        return this.Sj;
    }

    public String getCreativeId() {
        return this.dNu;
    }

    public int getDurationSlotType() {
        return this.f20316ib;
    }

    public float getExpressViewAcceptedHeight() {
        return this.HiB;
    }

    public float getExpressViewAcceptedWidth() {
        return this.EjP;
    }

    public String getExt() {
        return this.TzV;
    }

    public int getImgAcceptedHeight() {
        return this.TKC;
    }

    public int getImgAcceptedWidth() {
        return this.sP;
    }

    public int getIsRotateBanner() {
        return this.sU;
    }

    public String getMediaExtra() {
        return this.TEQ;
    }

    public int getNativeAdType() {
        return this.f20314aa;
    }

    @Nullable
    public Map<String, Object> getRequestExtraMap() {
        return this.wE;
    }

    @Deprecated
    public int getRewardAmount() {
        return this.uA;
    }

    @Deprecated
    public String getRewardName() {
        return this.Dq;
    }

    public int getRotateOrder() {
        return this.zR;
    }

    public int getRotateTime() {
        return this.f20315dx;
    }

    public String getUserData() {
        return this.RiZ;
    }

    public String getUserID() {
        return this.Ym;
    }

    public boolean isAutoPlay() {
        return this.Fmk;
    }

    public boolean isExpressAd() {
        return this.sef;
    }

    public boolean isPreload() {
        return this.uP;
    }

    public boolean isSupportDeepLink() {
        return this.Jcg;
    }

    public void setAdCount(int i10) {
        this.vS = i10;
    }

    public void setDurationSlotType(int i10) {
        this.f20316ib = i10;
    }

    public void setExpressViewAccepted(float f10, float f11) {
        this.EjP = f10;
        this.HiB = f11;
    }

    public void setIsRotateBanner(int i10) {
        this.sU = i10;
    }

    public void setNativeAdType(int i10) {
        this.f20314aa = i10;
    }

    public void setPreload(boolean z10) {
        this.uP = z10;
    }

    public void setRotateOrder(int i10) {
        this.zR = i10;
    }

    public void setRotateTime(int i10) {
        this.f20315dx = i10;
    }

    public void setUserData(String str) {
        this.RiZ = str;
    }

    public JSONObject toJsonObj() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("mCodeId", this.Sj);
            jSONObject.put("mAdCount", this.vS);
            jSONObject.put("mIsAutoPlay", this.Fmk);
            jSONObject.put("mImgAcceptedWidth", this.sP);
            jSONObject.put("mImgAcceptedHeight", this.TKC);
            jSONObject.put("mExpressViewAcceptedWidth", this.EjP);
            jSONObject.put("mExpressViewAcceptedHeight", this.HiB);
            jSONObject.put("mSupportDeepLink", this.Jcg);
            jSONObject.put("mRewardName", this.Dq);
            jSONObject.put("mRewardAmount", this.uA);
            jSONObject.put("mMediaExtra", this.TEQ);
            jSONObject.put("mUserID", this.Ym);
            jSONObject.put("mNativeAdType", this.f20314aa);
            jSONObject.put("mIsExpressAd", this.sef);
            jSONObject.put("mAdId", this.uvD);
            jSONObject.put("mCreativeId", this.dNu);
            jSONObject.put("mExt", this.TzV);
            jSONObject.put("mBidAdm", this.Zq);
            jSONObject.put("mUserData", this.RiZ);
            jSONObject.put("mDurationSlotType", this.f20316ib);
            jSONObject.put("mBannerType", this.kF);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String toString() {
        return super.toString();
    }

    private AdSlot() {
        this.Fmk = true;
        this.sef = false;
        this.sU = 0;
        this.f20315dx = 0;
        this.zR = 0;
        this.kF = 1;
    }

    public static class Builder {
        private String Dq;
        private boolean Fmk;
        private String Sj;
        private int TEQ;
        private String TzV;
        private float Ym;
        private String Zq;

        private float f20317aa;
        private String dNu;

        private int f20318dx;
        private String sef;
        private String uvD;
        private int sP = 640;
        private int TKC = Sdk$SDKError.Reason.WEBVIEW_ERROR_VALUE;
        private final boolean EjP = true;
        private int HiB = 1;
        private final String vS = "";
        private final int Jcg = 0;
        private String uA = "defaultUser";
        private boolean RiZ = true;
        private Map<String, Object> sU = null;
        private int zR = 1;

        public AdSlot build() {
            AdSlot adSlot = new AdSlot();
            adSlot.Sj = this.Sj;
            adSlot.vS = this.HiB;
            adSlot.Jcg = true;
            adSlot.sP = this.sP;
            adSlot.TKC = this.TKC;
            float f10 = this.Ym;
            if (f10 <= 0.0f) {
                adSlot.EjP = this.sP;
                adSlot.HiB = this.TKC;
            } else {
                adSlot.EjP = f10;
                adSlot.HiB = this.f20317aa;
            }
            adSlot.Dq = "";
            adSlot.uA = 0;
            adSlot.TEQ = this.Dq;
            adSlot.Ym = this.uA;
            adSlot.f20314aa = this.TEQ;
            adSlot.Fmk = this.RiZ;
            adSlot.sef = this.Fmk;
            adSlot.Zq = this.sef;
            adSlot.uvD = this.Zq;
            adSlot.dNu = this.uvD;
            adSlot.TzV = this.dNu;
            adSlot.RiZ = this.TzV;
            adSlot.wE = this.sU;
            adSlot.f20316ib = this.f20318dx;
            adSlot.kF = this.zR;
            return adSlot;
        }

        public Builder isExpressAd(boolean z10) {
            this.Fmk = z10;
            return this;
        }

        public Builder setAdCount(int i10) {
            if (i10 <= 0) {
                i10 = 1;
            }
            if (i10 > 20) {
                i10 = 20;
            }
            this.HiB = i10;
            return this;
        }

        public Builder setAdId(String str) {
            this.Zq = str;
            return this;
        }

        public Builder setBannerType(int i10) {
            this.zR = i10;
            return this;
        }

        public Builder setCodeId(String str) {
            this.Sj = str;
            return this;
        }

        public Builder setCreativeId(String str) {
            this.uvD = str;
            return this;
        }

        public Builder setDurationSlotType(int i10) {
            this.f20318dx = i10;
            return this;
        }

        public Builder setExpressViewAcceptedSize(float f10, float f11) {
            this.Ym = f10;
            this.f20317aa = f11;
            return this;
        }

        public Builder setExt(String str) {
            this.dNu = str;
            return this;
        }

        public Builder setImageAcceptedSize(int i10, int i11) {
            this.sP = i10;
            this.TKC = i11;
            return this;
        }

        public Builder setIsAutoPlay(boolean z10) {
            this.RiZ = z10;
            return this;
        }

        public Builder setMediaExtra(String str) {
            this.Dq = str;
            return this;
        }

        public Builder setNativeAdType(int i10) {
            this.TEQ = i10;
            return this;
        }

        public Builder setRequestExtraMap(Map<String, Object> map) {
            this.sU = map;
            return this;
        }

        public Builder setUserData(String str) {
            this.TzV = str;
            return this;
        }

        public Builder setUserID(String str) {
            this.uA = str;
            return this;
        }

        public Builder withBid(String str) {
            if (TextUtils.isEmpty(str)) {
                return this;
            }
            if (Zq.EjP()) {
                c.a(str);
            }
            this.sef = str;
            return this;
        }

        @Deprecated
        public Builder setRewardAmount(int i10) {
            return this;
        }

        @Deprecated
        public Builder setRewardName(String str) {
            return this;
        }

        @Deprecated
        public Builder setSupportDeepLink(boolean z10) {
            return this;
        }
    }
}
