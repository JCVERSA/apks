package com.cloud.hisavana.sdk.api.adx;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.R;
import defpackage.and;
import defpackage.ied;
import defpackage.ikd;

public final class TBannerView extends ViewApi {
    public int autoRefreshNum;
    public long lastestAutoRefreshTs;
    public Integer o;
    public boolean p;
    public boolean q;

    public TBannerView(Context context, String str) {
        super(context, str);
        this.o = null;
        this.lastestAutoRefreshTs = 0L;
        this.autoRefreshNum = 1;
    }

    @Override
    public int getAdType() {
        return 2;
    }

    @Nullable
    public Integer getCloseTypeUsedForTrack() {
        return this.o;
    }

    public void loadAd() {
        this.autoRefreshNum = 1;
        loadAdFromAutoRefresh(false);
    }

    public void loadAdFromAutoRefresh(boolean z) {
        String strP = "";
        if (z) {
            try {
                G g = this.b;
                if (g != null && (g instanceof and)) {
                    and andVar = (and) g;
                    try {
                        ied iedVarP = g.p();
                        if (iedVarP != null) {
                            strP = iedVarP.p();
                        }
                    } catch (Throwable unused) {
                    }
                    long j = andVar.p;
                    long jIntValue = andVar.q.intValue();
                    if (this.autoRefreshNum > jIntValue) {
                        ikd.b().d("ssp", "autoRefreshNum > autoCarouselCount, returnautoRefreshNum->" + this.autoRefreshNum + "autoCarouselCount->" + jIntValue);
                        return;
                    }
                    if (this.lastestAutoRefreshTs != 0 && j != 0) {
                        long jCurrentTimeMillis = System.currentTimeMillis() - this.lastestAutoRefreshTs;
                        if (jCurrentTimeMillis < j) {
                            ikd.b().d("ssp", "loadNextAD auto refresh is so quickly,return interval->" + jCurrentTimeMillis + "autoRefreshTs->" + j);
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
            and andVar2 = new and(new ied.b(strP).i(getAdType()).e(this.c).s(this.d).m(this.e).k(this.f).c(this.k).j(this.n).p(this.h).w(this.i).n(this.q).t(this.p).f(z).b(this.j).g());
            andVar2.I(this);
            andVar2.g(new ViewApi.a(this));
            andVar2.N(z);
        }
    }

    public void setCloseDirectlyWithoutJumping(boolean z) {
        this.q = z;
    }

    public void setCloseTypeUsedForTrack(Integer num) {
        this.o = num;
    }

    public void setHideAdCloseView(boolean z) {
        this.p = z;
    }

    public void show() {
        G g = this.b;
        if (g instanceof and) {
            ied iedVarP = g.p();
            if (iedVarP != null && TextUtils.isEmpty(iedVarP.m())) {
                iedVarP.f(this.n);
            }
            try {
                this.l.add(this.b);
            } catch (Throwable unused) {
            }
            ((and) this.b).M(this);
        }
    }

    public TBannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TBannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String string = null;
        this.o = null;
        this.lastestAutoRefreshTs = 0L;
        this.autoRefreshNum = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AdBannerView);
        for (int i2 = 0; i2 < typedArrayObtainStyledAttributes.getIndexCount(); i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.AdBannerView_placementId) {
                string = typedArrayObtainStyledAttributes.getString(index);
            }
        }
        if (typedArrayObtainStyledAttributes.getIndexCount() > 0) {
            ikd.b().d("ssp", "placementId=" + string);
        }
        typedArrayObtainStyledAttributes.recycle();
    }
}
