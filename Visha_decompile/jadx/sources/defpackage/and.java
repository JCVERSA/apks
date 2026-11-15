package defpackage;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.cloud.hisavana.sdk.G;
import com.cloud.hisavana.sdk.api.adx.TBannerView;
import com.cloud.hisavana.sdk.api.listener.AdCallback;
import com.cloud.hisavana.sdk.b;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.tranmeasure.e;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.Preconditions;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class and extends G {
    public b i;
    public volatile AdsDTO j;
    public a k;
    public ViewGroup l;
    public CopyOnWriteArrayList m;
    public boolean n;
    public WeakReference o;
    public long p;
    public Integer q;

    public static class a extends Handler {
        public final WeakReference a;
        public final int b;
        public int c;

        public a(and andVar, Looper looper, int i) {
            super(looper);
            this.c = 1;
            this.a = new WeakReference(andVar);
            this.b = i;
        }

        public void a() {
            this.c = 1;
        }

        @Override
        public void handleMessage(Message message) {
            and andVar;
            super.handleMessage(message);
            int i = this.c;
            if (i >= this.b) {
                return;
            }
            this.c = i + 1;
            WeakReference weakReference = this.a;
            if (weakReference == null || weakReference.get() == null || (andVar = (and) this.a.get()) == null) {
                return;
            }
            andVar.T();
        }
    }

    public and(ied iedVar) {
        super(iedVar);
        this.j = null;
        this.m = new CopyOnWriteArrayList();
        this.o = null;
        this.p = 0L;
        this.q = 0;
    }

    private void G() {
        this.i = new b(this);
    }

    private void O(AdsDTO adsDTO) {
        if (adsDTO == null) {
            return;
        }
        e.c().g(adsDTO);
        atd.a.j(adsDTO.getUuid());
    }

    private void Q() {
        ViewGroup viewGroup;
        AdCallback adCallback = this.e;
        if (adCallback == null || (viewGroup = this.l) == null || !(viewGroup instanceof TBannerView)) {
            return;
        }
        adCallback.n((TBannerView) viewGroup, this.j);
    }

    private void R() {
        b bVar;
        if (this.j != null && (bVar = this.i) != null) {
            bVar.j(this.l, this.b.y(), this.b.v(), this.j);
            return;
        }
        if (this.j == null) {
            J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
        }
        ikd.b().d("TranBanner", "no ad show, set visible gone");
        ViewGroup viewGroup = this.l;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public void T() {
        a aVar = this.k;
        if (aVar != null) {
            aVar.a();
        }
        ikd.b().d("TranBanner", "loadNextAD");
        this.b.d(DeviceUtil.p());
        WeakReference weakReference = this.o;
        if (weakReference == null) {
            ikd.b().d("TranBanner", "loadNextAD weakTBannerView is null ,not show");
            return;
        }
        TBannerView tBannerView = (TBannerView) weakReference.get();
        if (tBannerView != null) {
            ikd.b().d("TranBanner", "loadNextAD loadAdFromAutoRefresh true");
            tBannerView.loadAdFromAutoRefresh(true);
        }
    }

    public final void F() {
        ikd.b().d("TranBanner", "postDelayRefresh");
        if (!S() || this.j == null) {
            return;
        }
        this.b.g();
        try {
            this.q = this.b.g().getCarouselCount();
        } catch (Throwable unused) {
        }
        if (this.k == null) {
            this.k = new a(this, Looper.getMainLooper(), this.q.intValue());
        }
        long carouselTime = ((long) this.b.g().getCarouselTime()) * 1000;
        this.p = carouselTime;
        this.k.sendEmptyMessageDelayed(1, carouselTime);
    }

    public void H(int i) {
        ViewGroup viewGroup = this.l;
        if (viewGroup instanceof TBannerView) {
            ((TBannerView) viewGroup).setCloseTypeUsedForTrack(Integer.valueOf(i));
        }
        Q();
    }

    public void I(TBannerView tBannerView) {
        this.o = new WeakReference(tBannerView);
    }

    public void J(TaErrorCode taErrorCode) {
        try {
            AdCallback adCallback = this.e;
            if (adCallback != null) {
                adCallback.t(taErrorCode, this);
            }
        } catch (Throwable unused) {
        }
    }

    public void K(TaErrorCode taErrorCode, Bundle bundle) {
        try {
            AdCallback adCallback = this.e;
            if (adCallback != null) {
                adCallback.u(taErrorCode, this, bundle);
            }
        } catch (Throwable unused) {
        }
    }

    public void M(TBannerView tBannerView) {
        Preconditions.a();
        this.l = tBannerView;
        G();
        if (this.l == null || this.j == null) {
            if (this.l == null) {
                J(TaErrorCode.ERROR_SHOW_VIEWGROUP_NULL);
            } else if (this.j == null) {
                J(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            }
            ikd.b().d("TranBanner", "bannerView or mAdBean = null");
            return;
        }
        AdxImpBean impBeanRequest = this.j.getImpBeanRequest();
        if (this.b != null && impBeanRequest != null && TextUtils.isEmpty(impBeanRequest.mSceneId)) {
            impBeanRequest.mSceneId = this.b.m();
        }
        if (r() == 0 && !z()) {
            R();
        } else {
            J(TaErrorCode.ERROR_SHOW_INNER_INVALID);
            ikd.b().d("TranBanner", "ad not condition to use");
        }
    }

    public void N(boolean z) {
        this.n = z;
        E();
    }

    public void P() {
        ViewGroup viewGroup = this.l;
        if (viewGroup instanceof TBannerView) {
            ((TBannerView) viewGroup).setCloseTypeUsedForTrack(null);
        }
        Q();
    }

    public final boolean S() {
        return this.b.g() != null && this.b.g().getCarouselTime() > 0 && this.b.g().getCarouselCount().intValue() > 1;
    }

    public void U() {
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.m(this.j);
            AdCallback adCallback2 = this.e;
            if (adCallback2 != null) {
                adCallback2.k(this.j);
            }
        }
    }

    public void V() {
        f();
        F();
        k(true);
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.s();
        }
    }

    @Override
    public void b(TaErrorCode taErrorCode, Bundle bundle) {
        if (!this.n) {
            AdCallback adCallback = this.e;
            if (adCallback != null) {
                adCallback.x(this, taErrorCode, bundle);
                return;
            }
            return;
        }
        WeakReference weakReference = this.o;
        if (weakReference == null || ((TBannerView) weakReference.get()) == null) {
            return;
        }
        F();
    }

    @Override
    public void d(List list, Bundle bundle) {
        AdsDTO adsDTO = this.j;
        this.j = (list == null || list.isEmpty()) ? null : (AdsDTO) list.get(0);
        if (!this.n) {
            super.d(list, bundle);
            return;
        }
        this.f = list;
        if (list == null || list.isEmpty()) {
            b(TaErrorCode.ERROR_AD_FETCHED_AD_IS_NULL, bundle);
            return;
        }
        WeakReference weakReference = this.o;
        if (weakReference == null) {
            ikd.b().d("TranBanner", "weakTBannerView is null ,not show");
            return;
        }
        TBannerView tBannerView = (TBannerView) weakReference.get();
        if (tBannerView == null) {
            ikd.b().d("TranBanner", "tBannerView is null ,not show");
            return;
        }
        AdCallback adCallback = this.e;
        if (adCallback != null) {
            adCallback.D(this);
        }
        k(false);
        M(tBannerView);
        O(adsDTO);
    }

    @Override
    public void m() {
        super.m();
        b bVar = this.i;
        if (bVar != null) {
            bVar.y();
        }
        ViewGroup viewGroup = this.l;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        e.c().g(this.j);
        a aVar = this.k;
        if (aVar != null) {
            aVar.removeMessages(1);
            this.k = null;
        }
    }
}
