package com.cloud.hisavana.sdk;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class p2 extends F {

    t f22124i;

    private volatile AdsDTO f22125j;

    a f22126k;

    private ViewGroup f22127l;

    private CopyOnWriteArrayList f22128m;

    private boolean f22129n;

    private WeakReference f22130o;

    public long f22131p;

    public Integer f22132q;

    private static class a extends Handler {

        private final WeakReference f22133a;

        private final int f22134b;

        private int f22135c;

        a(p2 p2Var, Looper looper, int i10) {
            super(looper);
            this.f22135c = 1;
            this.f22133a = new WeakReference(p2Var);
            this.f22134b = i10;
        }

        public void a() {
            this.f22135c = 1;
        }

        @Override
        public void handleMessage(Message message) {
            p2 p2Var;
            super.handleMessage(message);
            int i10 = this.f22135c;
            if (i10 >= this.f22134b) {
                return;
            }
            this.f22135c = i10 + 1;
            WeakReference weakReference = this.f22133a;
            if (weakReference == null || weakReference.get() == null || (p2Var = (p2) this.f22133a.get()) == null) {
                return;
            }
            p2Var.T();
        }
    }

    public p2(p3 p3Var) {
        super(p3Var);
        this.f22125j = null;
        this.f22128m = new CopyOnWriteArrayList();
        this.f22130o = null;
        this.f22131p = 0L;
        this.f22132q = 0;
    }

    private void F() {
        b4.b().d("TranBanner", "postDelayRefresh");
        if (!S() || this.f22125j == null) {
            return;
        }
        this.f20885b.f();
        try {
            this.f22132q = this.f20885b.f().getCarouselCount();
        } catch (Throwable unused) {
        }
        if (this.f22126k == null) {
            this.f22126k = new a(this, Looper.getMainLooper(), this.f22132q.intValue());
        }
        long carouselTime = ((long) this.f20885b.f().getCarouselTime()) * 1000;
        this.f22131p = carouselTime;
        this.f22126k.sendEmptyMessageDelayed(1, carouselTime);
    }

    private void G() {
        this.f22124i = new t(this);
    }

    private void O(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(adsDTO);
        t3.f22329a.j(adsDTO.getUuid());
    }

    private void Q() {
        ViewGroup viewGroup;
        AdCallback adCallback = this.f20888e;
        if (adCallback == null || (viewGroup = this.f22127l) == null || !(viewGroup instanceof TBannerView)) {
            return;
        }
        adCallback.n((TBannerView) viewGroup, this.f22125j);
    }

    private void R() {
        t tVar;
        if (this.f22125j != null && (tVar = this.f22124i) != null) {
            tVar.g(this.f22127l, this.f20885b.w(), this.f20885b.t(), this.f22125j);
            return;
        }
        if (this.f22125j == null) {
            K(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        }
        b4.b().d("TranBanner", "no ad show, set visible gone");
        ViewGroup viewGroup = this.f22127l;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    private boolean S() {
        return this.f20885b.f() != null && this.f20885b.f().getCarouselTime() > 0 && this.f20885b.f().getCarouselCount().intValue() > 1;
    }

    public void T() {
        a aVar = this.f22126k;
        if (aVar != null) {
            aVar.a();
        }
        b4.b().d("TranBanner", "loadNextAD");
        this.f20885b.d(DeviceUtil.o());
        WeakReference weakReference = this.f22130o;
        if (weakReference == null) {
            b4.b().d("TranBanner", "loadNextAD weakTBannerView is null ,not show");
            return;
        }
        TBannerView tBannerView = (TBannerView) weakReference.get();
        if (tBannerView != null) {
            b4.b().d("TranBanner", "loadNextAD loadAdFromAutoRefresh true");
            tBannerView.loadAdFromAutoRefresh(true);
        }
    }

    public void H(int i10) {
        ViewGroup viewGroup = this.f22127l;
        if (viewGroup instanceof TBannerView) {
            ((TBannerView) viewGroup).setCloseTypeUsedForTrack(Integer.valueOf(i10));
        }
        Q();
    }

    public void J(TBannerView tBannerView) {
        this.f22130o = new WeakReference(tBannerView);
    }

    public void K(TaErrorCode taErrorCode) {
        try {
            AdCallback adCallback = this.f20888e;
            if (adCallback != null) {
                adCallback.t(taErrorCode, this);
            }
        } catch (Throwable unused) {
        }
    }

    public void L(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            AdCallback adCallback = this.f20888e;
            if (adCallback != null) {
                adCallback.u(taErrorCode, this, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    public void M(TBannerView tBannerView) {
        Preconditions.a();
        this.f22127l = tBannerView;
        G();
        if (this.f22127l == null || this.f22125j == null) {
            if (this.f22127l == null) {
                K(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            } else if (this.f22125j == null) {
                K(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            }
            b4.b().d("TranBanner", "bannerView or mAdBean = null");
            return;
        }
        if (r() == 0 && !z()) {
            R();
        } else {
            K(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            b4.b().d("TranBanner", "ad not condition to use");
        }
    }

    public void N(boolean z10) {
        this.f22129n = z10;
        E();
    }

    public void P() {
        ViewGroup viewGroup = this.f22127l;
        if (viewGroup instanceof TBannerView) {
            ((TBannerView) viewGroup).setCloseTypeUsedForTrack(null);
        }
        Q();
    }

    void U() {
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.m();
            this.f20888e.k(this.f22125j);
        }
    }

    void V() {
        f();
        F();
        k(true);
        AdCallback adCallback = this.f20888e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    @Override
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        if (!this.f22129n) {
            AdCallback adCallback = this.f20888e;
            if (adCallback != null) {
                adCallback.x(this, taErrorCode, bundle);
                return;
            }
            return;
        }
        WeakReference weakReference = this.f22130o;
        if (weakReference == null || ((TBannerView) weakReference.get()) == null) {
            return;
        }
        F();
    }

    @Override
    public void d(List list, Bundle bundle) {
        AdsDTO adsDTO = this.f22125j;
        this.f22125j = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        if (!this.f22129n) {
            super.d(list, bundle);
            return;
        }
        this.f20889f = list;
        if (list == null || list.isEmpty()) {
            b(TaErrorCode.ERROR_AD_FETCHED_AD_IS_NULL, bundle);
            return;
        }
        WeakReference weakReference = this.f22130o;
        if (weakReference == null) {
            b4.b().d("TranBanner", "weakTBannerView is null ,not show");
            return;
        }
        TBannerView tBannerView = (TBannerView) weakReference.get();
        if (tBannerView == null) {
            b4.b().d("TranBanner", "tBannerView is null ,not show");
            return;
        }
        k(false);
        M(tBannerView);
        O(adsDTO);
    }

    @Override
    public void m() {
        super.m();
        t tVar = this.f22124i;
        if (tVar != null) {
            tVar.c();
        }
        ViewGroup viewGroup = this.f22127l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.f22125j);
        a aVar = this.f22126k;
        if (aVar != null) {
            aVar.removeMessages(1);
            this.f22126k = null;
        }
    }
}
