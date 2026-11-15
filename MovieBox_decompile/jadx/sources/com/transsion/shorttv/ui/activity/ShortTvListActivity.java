package com.transsion.shorttv.ui.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.os.d;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.w;
import androidx.p009lifecycle.ViewModelLazy;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.transsion.ad.bidding.video.BiddingVideoManager;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager;
import com.transsion.shorttv.base.activity.BaseActivity;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.InvocationTargetException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import p1.a;
import qr.l;
import ur.j;
import zq.b;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 92\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001:B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u0019\u0010\u0012\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0004R\u0016\u0010\u001e\u001a\u00020\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b#\u0010\nR\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0018\u0010*\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b)\u0010'R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u001b\u00104\u001a\u00020/8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\"\u00108\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u0010\n\u001a\u0004\b6\u0010\u000e\"\u0004\b7\u0010\t¨\u0006;"}, d2 = {"Lcom/transsion/shorttv/ui/activity/ShortTvListActivity;", "Lcom/transsion/shorttv/base/activity/BaseActivity;", "Lqr/l;", "<init>", "()V", "", "forceReplace", "", "a0", "(Z)V", "Z", "X", "()Lqr/l;", "isStatusDark", "()Z", "isMonitorNetworkState", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onPause", "", "g", "I", "ep", "", "h", "J", "ms", "i", "isHistoryFirst", "", "j", "Ljava/lang/String;", "subjectId", CampaignEx.JSON_KEY_AD_K, "ops", "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "l", "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "fragment", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "m", "Lkotlin/Lazy;", "W", "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "shortTvViewModel", "n", "Y", "setActivityPaused", "isActivityPaused", "o", "a", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvListActivity extends BaseActivity<l> {

    public static final Companion INSTANCE = new Companion(null);

    public int ep = -1;

    public long ms;

    public boolean isHistoryFirst;

    public String subjectId;

    public String ops;

    private ShortTvDetailListFragment fragment;

    private final Lazy shortTvViewModel;

    private boolean isActivityPaused;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context, String subjectId, Integer num, long j10, boolean z10, String str) {
            Intrinsics.h(context, "context");
            Intrinsics.h(subjectId, "subjectId");
            Intent intent = new Intent(context, (Class<?>) ShortTvListActivity.class);
            Bundle bundleA = d.a();
            bundleA.putString("id", subjectId);
            bundleA.putString("ops", str);
            if (num != null) {
                bundleA.putInt("ep", num.intValue());
                bundleA.putLong("ms", j10);
                bundleA.putBoolean("historyFist", z10);
            }
            intent.putExtras(bundleA);
            context.startActivity(intent);
        }

        private Companion() {
        }
    }

    public ShortTvListActivity() {
        final Function0 function0 = null;
        this.shortTvViewModel = new ViewModelLazy(Reflection.b(ShortTvViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<a>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final a invoke() {
                a aVar;
                Function0 function1 = function0;
                return (function1 == null || (aVar = (a) function1.invoke()) == null) ? this.getDefaultViewModelCreationExtras() : aVar;
            }
        });
    }

    private final ShortTvViewModel W() {
        return (ShortTvViewModel) this.shortTvViewModel.getValue();
    }

    private final void Z() {
        BiddingVideoManager.Companion companion = BiddingVideoManager.f41022t;
        BiddingVideoManager.Companion.b(companion, "ShortTvPlayerUnlockPlayScene", null, 2, null);
        BiddingVideoManager.Companion.b(companion, "ShortTvPlayerUnlockDownloadScene", null, 2, null);
        k.d(v.a(this), y0.b(), null, new ShortTvListActivity$preloadAd$1("ShortTvPlayerOverlayScene", null), 2, null);
    }

    private final void a0(boolean forceReplace) {
        Fragment fragmentK0 = getSupportFragmentManager().k0("ShortTvDetailListFragment");
        ShortTvDetailListFragment shortTvDetailListFragment = fragmentK0 instanceof ShortTvDetailListFragment ? (ShortTvDetailListFragment) fragmentK0 : null;
        this.fragment = shortTvDetailListFragment;
        if (forceReplace || shortTvDetailListFragment == null) {
            ShortTvDetailListFragment shortTvDetailListFragment2 = new ShortTvDetailListFragment();
            Bundle extras = getIntent().getExtras();
            shortTvDetailListFragment2.setArguments(extras != null ? new Bundle(extras) : null);
            this.fragment = shortTvDetailListFragment2;
            w wVarP = getSupportFragmentManager().p();
            int i10 = R$id.flContent;
            ShortTvDetailListFragment shortTvDetailListFragment3 = this.fragment;
            Intrinsics.e(shortTvDetailListFragment3);
            wVarP.t(i10, shortTvDetailListFragment3, "ShortTvDetailListFragment");
            wVarP.l();
        }
    }

    static void b0(ShortTvListActivity shortTvListActivity, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        shortTvListActivity.a0(z10);
    }

    @Override
    public l getViewBinding() {
        l lVarC = l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    public final boolean getIsActivityPaused() {
        return this.isActivityPaused;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override
    public boolean isStatusDark() {
        return false;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) throws IllegalAccessException, InvocationTargetException {
        super.onCreate(savedInstanceState);
        b.f76875a.i(1, this);
        ShortTvPlayerOverlayAdManager.f50707a.d(v.a(this));
        Z();
        TheRouter.l(this);
        b0(this, false, 1, null);
        j jVarP = P();
        if (jVarP != null) {
            jVarP.d();
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        ShortTvPlayerOverlayAdManager.f50707a.b();
    }

    @Override
    protected void onNewIntent(Intent intent) throws IllegalAccessException, InvocationTargetException {
        ShortTvDetailListFragment shortTvDetailListFragment;
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        int intExtra = intent.getIntExtra("ep", -1);
        boolean zC = Intrinsics.c(this.subjectId, intent.getStringExtra("id"));
        setIntent(intent);
        TheRouter.l(this);
        if (zC) {
            if (intExtra < 0 || (shortTvDetailListFragment = this.fragment) == null) {
                return;
            }
            shortTvDetailListFragment.k1(intExtra);
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null) {
            shortTvDetailListFragment2.i1();
        }
        W().Y0();
        a0(true);
    }

    @Override
    public void onPause() {
        ShortTvDetailListFragment shortTvDetailListFragment;
        super.onPause();
        this.isActivityPaused = true;
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null) {
            shortTvDetailListFragment2.g1();
        }
        if (!isFinishing() || (shortTvDetailListFragment = this.fragment) == null) {
            return;
        }
        shortTvDetailListFragment.i1();
    }

    @Override
    public void onResume() {
        super.onResume();
        this.isActivityPaused = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.h1();
        }
    }
}
