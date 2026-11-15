package com.cloud.hisavana.sdk.api.adx;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.api.listener.d;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.sdk.commonutil.util.e;
import d7.b;
import java.util.Map;

public class ViewApi extends RelativeLayout {

    protected F f20995a;

    protected String f20996b;

    protected boolean f20997c;

    protected int f20998d;

    protected boolean f20999e;

    protected d f21000f;

    protected boolean f21001g;

    protected boolean f21002h;

    protected d7.a f21003i;

    protected b f21004j;

    protected androidx.collection.b f21005k;

    private long f21006l;

    protected static class a extends AdCallback {

        protected final ViewApi f21007a;

        a(ViewApi viewApi) {
            this.f21007a = viewApi;
        }

        @Override
        public d d() {
            ViewApi viewApi = this.f21007a;
            if (viewApi != null) {
                return viewApi.f21000f;
            }
            return null;
        }

        @Override
        public String e() {
            ViewApi viewApi = this.f21007a;
            return viewApi != null ? SSPTrackingHelper.f21368a.o(viewApi.f20995a) : "";
        }

        @Override
        public String g() {
            ViewApi viewApi = this.f21007a;
            return viewApi != null ? SSPTrackingHelper.f21368a.q(viewApi.f20995a) : "";
        }

        @Override
        public void q(F f10, Bundle bundle) {
            ViewApi viewApi = this.f21007a;
            if (viewApi != null) {
                viewApi.f20995a = f10;
            }
            super.q(f10, bundle);
        }
    }

    public ViewApi(Context context, String str) {
        super(context);
        this.f21005k = new androidx.collection.b();
        this.f21006l = 0L;
        this.f20996b = str;
    }

    protected void a(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.f21368a;
            sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), sSPTrackingHelper.q(this.f20995a), this.f20996b, sSPTrackingHelper.m(this.f20995a), bundle);
        } catch (Throwable unused) {
        }
    }

    protected boolean b() {
        if (TextUtils.isEmpty(c7.b.f16688b)) {
            b4.b().e("ssp", "AppId is empty, please check your config.");
            d dVar = this.f21000f;
            if (dVar != null) {
                dVar.onError(TaErrorCode.ERROR_INVALID_APP_ID);
            }
            return false;
        }
        if (!e.h()) {
            b4.b().e("ssp", "You should init first");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jN = SSPTrackingHelper.f21368a.n();
        if (jCurrentTimeMillis - this.f21006l > jN) {
            this.f21006l = jCurrentTimeMillis;
            return true;
        }
        b4.b().d("ssp", "Ad request rate limit exceeded，current interval is" + jN);
        return false;
    }

    public void destroy() {
        this.f21000f = null;
        try {
            F f10 = this.f20995a;
            if (f10 != null) {
                this.f21005k.remove(f10);
                if (b4.c()) {
                    b4.b().i("ssp", "ViewApi mLoadedAd destroy");
                }
                this.f20995a.m();
            }
            if (this.f21005k.isEmpty()) {
                return;
            }
            for (int i10 = 0; i10 < this.f21005k.size(); i10++) {
                F f11 = (F) this.f21005k.o(i10);
                if (f11 != null) {
                    f11.m();
                }
            }
            this.f21005k.clear();
        } catch (Throwable unused) {
        }
    }

    public int getAdSource() {
        F f10 = this.f20995a;
        if (f10 != null) {
            return f10.q();
        }
        return 1;
    }

    public double getBidPrice() {
        F f10 = this.f20995a;
        if (f10 != null) {
            return f10.t();
        }
        return 0.0d;
    }

    public Map<String, Object> getExtInfo() {
        F f10 = this.f20995a;
        if (f10 == null || f10.p() == null || this.f20995a.p().l() == null) {
            return null;
        }
        return this.f20995a.p().l().a();
    }

    public int getFillAdType() {
        F f10 = this.f20995a;
        if (f10 != null) {
            return f10.u();
        }
        return 0;
    }

    public String getGameName() {
        F f10 = this.f20995a;
        if (f10 == null || f10.p() == null || this.f20995a.p().l() == null) {
            return null;
        }
        return this.f20995a.p().l().b();
    }

    public String getGameScene() {
        F f10 = this.f20995a;
        if (f10 == null || f10.p() == null || this.f20995a.p().l() == null) {
            return null;
        }
        return this.f20995a.p().l().c();
    }

    public d7.a getRequest() {
        return this.f21003i;
    }

    @Deprecated(since = "3.5.1.0")
    public boolean isAdValid() {
        return isReady();
    }

    public boolean isDefaultAd() {
        F f10 = this.f20995a;
        return f10 != null && f10.A();
    }

    public boolean isLoaded() {
        return this.f20995a != null;
    }

    public boolean isMatchVulgarBrand() {
        F f10 = this.f20995a;
        if (f10 != null) {
            return f10.B();
        }
        return false;
    }

    public boolean isOfflineAd() {
        F f10 = this.f20995a;
        return f10 != null && f10.C();
    }

    public boolean isReady() {
        F f10 = this.f20995a;
        if (f10 == null) {
            return false;
        }
        int iR = f10.r();
        boolean z10 = iR == 0;
        if (!z10) {
            Bundle bundle = new Bundle();
            bundle.putString("s_err_code", iR + "");
            a(TaErrorCode.ERROR_SHOW_OUTER_INVALID, bundle);
        }
        return z10;
    }

    public void loadAd(BidInfo bidInfo) {
        F f10 = this.f20995a;
        if (f10 != null) {
            f10.j(bidInfo);
        }
    }

    public void setAdLoadScenes(@Nullable String str, @Nullable String str2, @Nullable Map<String, Object> map) {
        this.f21004j = new b(str, str2, map);
    }

    public void setBidding(boolean z10) {
        this.f20999e = z10;
    }

    public void setContainVulgarContent(boolean z10) {
        this.f21001g = z10;
    }

    public void setCurrActivityFullscreen(boolean z10) {
        this.f20997c = z10;
    }

    public void setDefaultFillTimeoutDuration(int i10) {
        this.f20998d = i10;
    }

    public void setListener(d dVar) {
        this.f21000f = dVar;
    }

    public void setOnlyFetchDefaultAd(Boolean bool) {
        this.f21002h = bool.booleanValue();
    }

    public void setPlacementId(String str) {
        this.f20996b = str;
    }

    public void setRequest(d7.a aVar) {
        this.f21003i = aVar;
    }

    public ViewApi(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewApi(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21005k = new androidx.collection.b();
        this.f21006l = 0L;
    }
}
