package com.cloud.hisavana.sdk.api.adx;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import androidx.collection.ArraySet;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.athena.SSPTrackingHelper;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.BidInfo;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import defpackage.d29;
import defpackage.ikd;
import defpackage.n6;
import defpackage.o02;
import defpackage.r6;
import defpackage.spc;
import defpackage.ul4;
import defpackage.w6;
import java.util.Map;

public class ViewApi extends RelativeLayout {
    public G b;
    public String c;
    public boolean d;
    public int e;
    public boolean f;
    public n6 g;
    public boolean h;
    public boolean i;
    public w6 j;
    public d29 k;
    public ArraySet l;
    public long m;
    public String n;

    public static class a extends AdCallback {
        public final ViewApi a;

        public a(ViewApi viewApi) {
            this.a = viewApi;
        }

        @Override
        public void D(G g) {
            ViewApi viewApi = this.a;
            if (viewApi != null) {
                viewApi.b = g;
            }
        }

        @Override
        public n6 d() {
            ViewApi viewApi = this.a;
            if (viewApi != null) {
                return viewApi.g;
            }
            return null;
        }

        @Override
        public String e() {
            ViewApi viewApi = this.a;
            return viewApi != null ? SSPTrackingHelper.a.o(viewApi.b) : "";
        }

        @Override
        public String g() {
            ViewApi viewApi = this.a;
            return viewApi != null ? SSPTrackingHelper.a.q(viewApi.b) : "";
        }

        @Override
        public void q(G g, Bundle bundle) {
            ViewApi viewApi = this.a;
            if (viewApi != null) {
                viewApi.b = g;
            }
            super.q(g, bundle);
        }
    }

    public ViewApi(Context context, String str) {
        super(context);
        this.l = new ArraySet();
        this.m = 0L;
        this.c = str;
    }

    public void a(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.N(Integer.valueOf(taErrorCode.getErrorCode()), sSPTrackingHelper.q(this.b), this.c, sSPTrackingHelper.m(this.b), bundle);
        } catch (Throwable unused) {
        }
    }

    public boolean b() {
        if (TextUtils.isEmpty(r6.b)) {
            ikd.b().e("ssp", "AppId is empty, please check your config.");
            n6 n6Var = this.g;
            if (n6Var != null) {
                n6Var.onError(TaErrorCode.ERROR_INVALID_APP_ID);
            }
            return false;
        }
        if (!ul4.i()) {
            ikd.b().e("ssp", "You should init first");
            return false;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jN = SSPTrackingHelper.a.n();
        if (jCurrentTimeMillis - this.m > jN) {
            this.m = jCurrentTimeMillis;
            return true;
        }
        ikd.b().d("ssp", "Ad request rate limit exceeded，current interval is" + jN);
        return false;
    }

    public final boolean c(ConfigCodeSeatDTO configCodeSeatDTO) {
        int iIntValue = configCodeSeatDTO.getShowInterval().intValue();
        long lastShowAdTime = configCodeSeatDTO.getLastShowAdTime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        ikd.b().d("ssp", "calculateDownloadCount, current " + jCurrentTimeMillis + ",lastShowAdTime " + lastShowAdTime + ",showInterval " + iIntValue);
        return iIntValue <= 0 || Math.abs(lastShowAdTime - jCurrentTimeMillis) >= ((long) iIntValue) * 1000;
    }

    public void destroy() {
        this.g = null;
        try {
            G g = this.b;
            if (g != null) {
                this.l.remove(g);
                if (ikd.c()) {
                    ikd.b().i("ssp", "ViewApi mLoadedAd destroy");
                }
                this.b.m();
            }
            if (this.l.isEmpty()) {
                return;
            }
            for (int i = 0; i < this.l.size(); i++) {
                G g2 = (G) this.l.valueAt(i);
                if (g2 != null) {
                    g2.m();
                }
            }
            this.l.clear();
        } catch (Throwable unused) {
        }
    }

    public void enterScene(String str, int i) {
        try {
            this.n = str;
            if (TextUtils.isEmpty(r6.b)) {
                ikd.b().e("ssp", "AppId is empty, please check your config.");
                return;
            }
            if (!ul4.i()) {
                ikd.b().e("ssp", "you should init first");
                return;
            }
            if (TextUtils.isEmpty(this.c)) {
                ikd.b().d("ssp", "enterScene,mPlacementId is null");
                return;
            }
            ConfigCodeSeatDTO configCodeSeatDTOB = spc.f().b(this.c);
            if (configCodeSeatDTOB == null) {
                if (spc.f().k()) {
                    ikd.b().d("ssp", "The local machine has cloud control data, but the current code location configuration does not exist");
                    return;
                }
                ConfigCodeSeatDTO configCodeSeatDTO = new ConfigCodeSeatDTO();
                configCodeSeatDTO.setCodeSeatId(this.c);
                configCodeSeatDTO.setCodeSeatType(Integer.valueOf(getAdType()));
                configCodeSeatDTO.setOfflineAdEnable(false);
                int i2 = this.e;
                if (i2 >= 0) {
                    configCodeSeatDTO.setFillTimeoutDuration(Integer.valueOf(i2));
                }
                configCodeSeatDTOB = o02.a.a(configCodeSeatDTO);
            }
            ikd.b().d("ssp", "current adType = " + getAdType());
            if (configCodeSeatDTOB.getAdShowCountLimit().intValue() <= -1 || configCodeSeatDTOB.getCurrentShowTimes() < configCodeSeatDTOB.getAdShowCountLimit().intValue()) {
                if (c(configCodeSeatDTOB)) {
                    AthenaTracker.S(str, i, this.c);
                    return;
                } else {
                    ikd.b().d("ssp", "ad show not in interval");
                    return;
                }
            }
            ikd.b().d("ssp", "The current code segment has reached its maximum display limit. ----- Display counts = " + configCodeSeatDTOB.getCurrentShowTimes() + ", display limit = " + configCodeSeatDTOB.getAdShowCountLimit());
        } catch (Exception unused) {
        }
    }

    public int getAdReadyStatusWithoutTracking() {
        G g = this.b;
        if (g == null) {
            return 1115;
        }
        return g.r();
    }

    public int getAdSource() {
        G g = this.b;
        if (g != null) {
            return g.q();
        }
        return 1;
    }

    public int getAdType() {
        return 0;
    }

    public double getBidPrice() {
        G g = this.b;
        if (g != null) {
            return g.t();
        }
        return 0.0d;
    }

    public Map<String, Object> getExtInfo() {
        G g = this.b;
        if (g == null || g.p() == null || this.b.p().n() == null) {
            return null;
        }
        return this.b.p().n().a();
    }

    public int getFillAdType() {
        G g = this.b;
        if (g != null) {
            return g.u();
        }
        return 0;
    }

    public String getGameName() {
        G g = this.b;
        if (g == null || g.p() == null || this.b.p().n() == null) {
            return null;
        }
        return this.b.p().n().b();
    }

    public String getGameScene() {
        G g = this.b;
        if (g == null || g.p() == null || this.b.p().n() == null) {
            return null;
        }
        return this.b.p().n().c();
    }

    public w6 getRequest() {
        return this.j;
    }

    @Deprecated(since = "3.5.1.0")
    public boolean isAdValid() {
        return isReady();
    }

    public boolean isDefaultAd() {
        G g = this.b;
        return g != null && g.A();
    }

    public boolean isLoaded() {
        return this.b != null;
    }

    public boolean isMatchVulgarBrand() {
        G g = this.b;
        if (g != null) {
            return g.B();
        }
        return false;
    }

    public boolean isOfflineAd() {
        G g = this.b;
        return g != null && g.C();
    }

    public boolean isReady() {
        G g = this.b;
        if (g == null) {
            return false;
        }
        int iR = g.r();
        boolean z = iR == 0;
        if (!z) {
            Bundle bundle = new Bundle();
            bundle.putString("s_err_code", iR + "");
            a(TaErrorCode.ERROR_SHOW_OUTER_INVALID, bundle);
        }
        return z;
    }

    public void loadAd(BidInfo bidInfo) {
        G g = this.b;
        if (g != null) {
            g.j(bidInfo);
        }
    }

    public void setAdLoadScenes(@Nullable String str, @Nullable String str2, @Nullable Map<String, Object> map) {
        this.k = new d29(str, str2, map);
    }

    public void setBidding(boolean z) {
        this.f = z;
    }

    public void setContainVulgarContent(boolean z) {
        this.h = z;
    }

    public void setCurrActivityFullscreen(boolean z) {
        this.d = z;
    }

    public void setDefaultFillTimeoutDuration(int i) {
        this.e = i;
    }

    public void setListener(n6 n6Var) {
        this.g = n6Var;
    }

    public void setOnlyFetchDefaultAd(Boolean bool) {
        this.i = bool.booleanValue();
    }

    public void setPlacementId(String str) {
        this.c = str;
    }

    public void setRequest(w6 w6Var) {
        this.j = w6Var;
    }

    public ViewApi(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewApi(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = new ArraySet();
        this.m = 0L;
    }
}
