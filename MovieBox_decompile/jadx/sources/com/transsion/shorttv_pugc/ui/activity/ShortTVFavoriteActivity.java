package com.transsion.shorttv_pugc.ui.activity;

import android.widget.FrameLayout;
import androidx.activity.u;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv_pugc.base.activity.BaseNewActivity;
import com.transsion.shorttv_pugc.ui.fragment.ShortTVFavoriteFragment;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import gs.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import qr.l;

@Metadata(d1 = {"\u0000/\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;", "Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity;", "Lqr/l;", "<init>", "()V", "l0", "()Lqr/l;", "", "V", "()Ljava/lang/String;", "", "b0", "g0", "", "isTranslucent", "()Z", "isStatusDark", "c0", "a0", "f0", "retryLoadData", "com/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a", "j", "Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;", "onBackPress", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTVFavoriteActivity extends BaseNewActivity<l> {

    private final a onBackPress = new a();

    public static final class a extends u {
        a() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            wf.a.C0922a.g(wf.a.f74274a, "ShortTVFavoriteActivity --> onBackPress --> handleOnBackPressed() --> setResult(RESULT_OK)", false, 2, null);
            ShortTVFavoriteActivity.this.finish();
        }
    }

    @Override
    public String V() {
        return "";
    }

    @Override
    public void a0() {
    }

    @Override
    public void b0() {
        FrameLayout root = ((l) getMViewBinding()).getRoot();
        Intrinsics.g(root, "getRoot(...)");
        b.a(root);
        i0();
    }

    @Override
    public void c0() {
        getOnBackPressedDispatcher().i(this, this.onBackPress);
    }

    @Override
    public void f0() {
    }

    @Override
    public void g0() {
        super.g0();
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        w wVarP = supportFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wVarP.t(R$id.flContent, ShortTVFavoriteFragment.INSTANCE.a(), "ShortTVFavoriteFragment");
        wVarP.j();
    }

    @Override
    public boolean isStatusDark() {
        return false;
    }

    @Override
    public boolean isTranslucent() {
        return true;
    }

    @Override
    public l getViewBinding() {
        l lVarC = l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    @Override
    public void retryLoadData() {
    }
}
