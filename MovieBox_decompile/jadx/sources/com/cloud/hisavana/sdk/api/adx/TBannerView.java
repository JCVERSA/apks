package com.cloud.hisavana.sdk.api.adx;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.F;
import com.cloud.hisavana.sdk.R$styleable;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.p2;
import com.cloud.hisavana.sdk.p3;

public final class TBannerView extends ViewApi {
    public int autoRefreshNum;
    public long lastestAutoRefreshTs;

    private Integer f20984m;

    private boolean f20985n;

    private boolean f20986o;

    public TBannerView(Context context, String str) {
        super(context, str);
        this.f20984m = null;
        this.lastestAutoRefreshTs = 0L;
        this.autoRefreshNum = 1;
    }

    @Nullable
    public Integer getCloseTypeUsedForTrack() {
        return this.f20984m;
    }

    public void loadAd() {
        this.autoRefreshNum = 1;
        loadAdFromAutoRefresh(false);
    }

    public void loadAdFromAutoRefresh(boolean z10) {
        String strN = "";
        if (z10) {
            try {
                F f10 = this.f20995a;
                if (f10 != null && (f10 instanceof p2)) {
                    p2 p2Var = (p2) f10;
                    try {
                        p3 p3VarP = f10.p();
                        if (p3VarP != null) {
                            strN = p3VarP.n();
                        }
                    } catch (Throwable unused) {
                    }
                    long j10 = p2Var.f22131p;
                    long jIntValue = p2Var.f22132q.intValue();
                    if (this.autoRefreshNum > jIntValue) {
                        b4.b().d("ssp", "autoRefreshNum > autoCarouselCount, returnautoRefreshNum->" + this.autoRefreshNum + "autoCarouselCount->" + jIntValue);
                        return;
                    }
                    if (this.lastestAutoRefreshTs != 0 && j10 != 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - this.lastestAutoRefreshTs;
                        if (jCurrentTimeMillis < j10) {
                            b4.b().d("ssp", "loadNextAD auto refresh is so quickly,return interval->" + jCurrentTimeMillis + "autoRefreshTs->" + j10);
                            return;
                        }
                    }
                    this.lastestAutoRefreshTs = System.currentTimeMillis();
                    this.autoRefreshNum++;
                }
            } catch (Throwable unused2) {
            }
        }
        if (b()) {
            p2 p2Var2 = new p2(new p3.b(strN).i(2).e(this.f20996b).r(this.f20997c).l(this.f20998d).j(this.f20999e).d(this.f21004j).o(this.f21001g).v(this.f21002h).m(this.f20986o).s(this.f20985n).f(z10).c(this.f21003i).g());
            p2Var2.J(this);
            p2Var2.g(new ViewApi.a(this));
            p2Var2.N(z10);
        }
    }

    public void setCloseDirectlyWithoutJumping(boolean z10) {
        this.f20986o = z10;
    }

    public void setCloseTypeUsedForTrack(Integer num) {
        this.f20984m = num;
    }

    public void setHideAdCloseView(boolean z10) {
        this.f20985n = z10;
    }

    public void show() {
        F f10 = this.f20995a;
        if (f10 instanceof p2) {
            try {
                this.f21005k.add(f10);
            } catch (Throwable unused) {
            }
            ((p2) this.f20995a).M(this);
        }
    }

    public TBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TBannerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        String string = null;
        this.f20984m = null;
        this.lastestAutoRefreshTs = 0L;
        this.autoRefreshNum = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AdBannerView);
        for (int i11 = 0; i11 < typedArrayObtainStyledAttributes.getIndexCount(); i11++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i11);
            if (index == R$styleable.AdBannerView_placementId) {
                string = typedArrayObtainStyledAttributes.getString(index);
            }
        }
        if (typedArrayObtainStyledAttributes.getIndexCount() > 0) {
            b4.b().d("ssp", "placementId=" + string);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
