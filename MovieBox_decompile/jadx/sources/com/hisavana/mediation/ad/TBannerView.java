package com.hisavana.mediation.ad;

import android.content.Context;
import android.util.AttributeSet;
import com.hisavana.common.base.WrapTadView;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.utils.AdLogUtil;
import java.util.Map;

public class TBannerView extends WrapTadView {

    public TBannerAd f32352a;

    public TBannerView(Context context) {
        this(context, null);
    }

    public void destroy() {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.destroy();
        }
    }

    public void enterScene(String str, int i10) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.enterScene(str, i10);
        }
    }

    public double getTopPrice(int i10) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd == null) {
            return 0.0d;
        }
        return tBannerAd.getTopPrice(i10);
    }

    public void loadAd() {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.loadAd();
        }
    }

    public void pause() {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.pause();
        }
    }

    public void resume() {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.resume();
        }
    }

    public void setAdLoadScenes(String str, String str2, Map<String, Object> map) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.setAdLoadScenes(str, str2, map);
        }
    }

    public void setAdSize(int i10) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.c(i10);
        }
    }

    public void setAdUnitId(String str) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.setAdUnitId(str);
        }
    }

    public void setBannerType(int i10) {
        if (i10 >= 0 && i10 <= 2) {
            TBannerAd tBannerAd = this.f32352a;
            if (tBannerAd != null) {
                tBannerAd.setBannerType(i10);
                return;
            }
            return;
        }
        AdLogUtil.Log().d("TBannerView", "setBannerType --> invalid banner type " + i10);
    }

    public void setCloseDirectlyWithoutJumping(boolean z10) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.setCloseDirectlyWithoutJumping(z10);
        }
    }

    public void setContainVulgarContent(boolean z10) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.setContainVulgarContent(z10);
        }
    }

    public void setCurrActivityFullscreen(boolean z10) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.setCurrActivityFullscreen(z10);
        }
    }

    public void setCustomSizeForYandexAndLiftoff(int i10, int i11) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.e(i10);
            this.f32352a.d(i11);
        }
    }

    public void setHideAdCloseView(boolean z10) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.setHideAdCloseView(z10);
        }
    }

    public void setRequestBody(TAdRequestBody tAdRequestBody) {
        TBannerAd tBannerAd = this.f32352a;
        if (tBannerAd != null) {
            tBannerAd.setRequestBody(tAdRequestBody);
        }
    }

    public TBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public TBannerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f32352a = null;
        this.f32352a = new TBannerAd(context, this);
    }
}
