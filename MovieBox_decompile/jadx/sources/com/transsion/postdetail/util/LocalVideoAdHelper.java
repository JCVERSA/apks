package com.transsion.postdetail.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.v;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.postdetail.ad.AdInterceptTimerView;
import com.transsion.postdetail.ad.BaseVideoAdHelper;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.postdetail.ui.view.AdCountDownView;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import wn.w;

public final class LocalVideoAdHelper extends BaseVideoAdHelper {
    private wn.j Q;
    private DownloadBean R;

    public static final Unit v2(LocalVideoAdHelper localVideoAdHelper) {
        LifecycleCoroutineScope lifecycleCoroutineScopeW0 = localVideoAdHelper.w0();
        if (lifecycleCoroutineScopeW0 != null) {
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeW0, null, null, new LocalVideoAdHelper$onCompletion$1$1(localVideoAdHelper, null), 3, null);
        }
        return Unit.f64096a;
    }

    public final void A2() {
        if (O0()) {
            I(b0());
        }
    }

    public final void B2(DownloadBean downloadBean) {
        Long lastAdEndTimeStamp;
        Long lastAdStartTimeStamp;
        this.R = downloadBean;
        long jLongValue = 0;
        long jLongValue2 = (downloadBean == null || (lastAdStartTimeStamp = downloadBean.getLastAdStartTimeStamp()) == null) ? 0L : lastAdStartTimeStamp.longValue();
        if (downloadBean != null && (lastAdEndTimeStamp = downloadBean.getLastAdEndTimeStamp()) != null) {
            jLongValue = lastAdEndTimeStamp.longValue();
        }
        D0(jLongValue2, jLongValue);
        F0("localVideo");
    }

    @Override
    protected ViewGroup C0() {
        w wVar;
        wn.j jVar = this.Q;
        if (jVar == null || (wVar = jVar.f74424l) == null) {
            return null;
        }
        return wVar.R;
    }

    @Override
    protected NativeWrapperAdView V() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74415c;
        }
        return null;
    }

    @Override
    protected AdCountDownView W() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74416d;
        }
        return null;
    }

    @Override
    protected AdInterceptTimerView e0() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74417e;
        }
        return null;
    }

    @Override
    protected NativeWrapperAdView f0() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74418f;
        }
        return null;
    }

    @Override
    protected ViewGroup g0() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74419g;
        }
        return null;
    }

    @Override
    protected ViewGroup h0() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74420h;
        }
        return null;
    }

    @Override
    protected View k0() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74421i;
        }
        return null;
    }

    @Override
    public void l2() {
        ConstraintLayout root;
        wn.j jVar = this.Q;
        Context context = (jVar == null || (root = jVar.getRoot()) == null) ? null : root.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            kotlinx.coroutines.k.d(v.a(appCompatActivity), null, null, new LocalVideoAdHelper$updateAdStartLastShowTime$1$1(this, null), 3, null);
        }
    }

    public final void r2() {
        BiddingNativeManager biddingNativeManagerU0 = u0();
        if (biddingNativeManagerU0 != null) {
            biddingNativeManagerU0.U();
        }
        u1(null);
        BiddingInterstitialManager biddingInterstitialManagerV0 = v0();
        if (biddingInterstitialManagerV0 != null) {
            biddingInterstitialManagerV0.U();
        }
        y1(null);
        this.Q = null;
        Q();
        R();
    }

    public final void s2() {
        D1(x0() + ((System.currentTimeMillis() - B0()) / ((long) 1000)));
        J1(System.currentTimeMillis());
        C1(true);
        T1();
    }

    @Override
    protected ImageView t0() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74422j;
        }
        return null;
    }

    public final void t2(wn.j jVar, String str, Function1 adShowCallback) {
        Intrinsics.h(adShowCallback, "adShowCallback");
        E0(jVar, str, adShowCallback);
        this.Q = jVar;
    }

    public final void u2() {
        D1(0L);
        J1(0L);
        R();
        d2(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoAdHelper.v2(this.f48069a);
            }
        });
    }

    public final void w2() {
        j1(null);
        P();
        E1(0);
    }

    public final void x2(LocalUiType uiType, com.transsion.player.orplayer.f fVar) {
        Intrinsics.h(uiType, "uiType");
        A1(uiType == LocalUiType.LAND);
        e1();
        if (P0()) {
            return;
        }
        O();
        if (fVar != null && !fVar.isPlaying() && !fVar.isComplete() && T0()) {
            T1();
        }
        if (O0()) {
            V0();
            l1(false);
        }
    }

    public final void y2() {
        J1(System.currentTimeMillis());
        C1(false);
        O();
    }

    @Override
    protected ImageView z0() {
        wn.j jVar = this.Q;
        if (jVar != null) {
            return jVar.f74426n;
        }
        return null;
    }

    public final void z2() {
        Q();
        R();
    }
}
