package com.vungle.ads.internal.ui;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.AdCantPlayWithoutWebView;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.ConcurrentPlaybackUnsupported;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.presenter.l;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.ui.view.MRAIDAdWidget;
import com.vungle.ads.internal.util.RingerModeReceiver;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.o;
import com.vungle.ads.w;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000\u0083\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001@\b&\u0018\u0000 C2\u00020\u0001:\u0001DB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0019\u0010\f\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0013\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\u0013\u0010\u0003J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0018\u0010\u0003J\u0017\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010 \u001a\u00020\u001dH\u0011¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020\u0006H\u0014¢\u0006\u0004\b!\u0010\u0003R(\u0010\"\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b\"\u0010#\u0012\u0004\b'\u0010\u0003\u001a\u0004\b$\u0010%\"\u0004\b&\u0010\bR*\u0010)\u001a\u0004\u0018\u00010(8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b)\u0010*\u0012\u0004\b/\u0010\u0003\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R*\u00101\u001a\u0004\u0018\u0001008\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b1\u00102\u0012\u0004\b7\u0010\u0003\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0014\u0010<\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010>\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006M²\u0006\f\u0010F\u001a\u00020E8\nX\u008a\u0084\u0002²\u0006\f\u0010H\u001a\u00020G8\nX\u008a\u0084\u0002²\u0006\f\u0010J\u001a\u00020I8\nX\u008a\u0084\u0002²\u0006\f\u0010L\u001a\u00020K8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/ui/AdActivity;", "Landroid/app/Activity;", "<init>", "()V", "", "placement", "", "onConcurrentPlaybackError", "(Ljava/lang/String;)V", "hideSystemUi", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/Intent;", "intent", "onNewIntent", "(Landroid/content/Intent;)V", "onResume", "onPause", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onBackPressed", "", "requestedOrientation", "setRequestedOrientation", "(I)V", "", "canRotate$vungle_ads_release", "()Z", "canRotate", "onDestroy", "placementRefId", "Ljava/lang/String;", "getPlacementRefId$vungle_ads_release", "()Ljava/lang/String;", "setPlacementRefId$vungle_ads_release", "getPlacementRefId$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "mraidPresenter", "Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "getMraidPresenter$vungle_ads_release", "()Lcom/vungle/ads/internal/presenter/MRAIDPresenter;", "setMraidPresenter$vungle_ads_release", "(Lcom/vungle/ads/internal/presenter/MRAIDPresenter;)V", "getMraidPresenter$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "mraidAdWidget", "Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "getMraidAdWidget$vungle_ads_release", "()Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;", "setMraidAdWidget$vungle_ads_release", "(Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget;)V", "getMraidAdWidget$vungle_ads_release$annotations", "Lcom/vungle/ads/internal/model/j;", "unclosedAd", "Lcom/vungle/ads/internal/model/j;", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "ringerModeReceiver", "Lcom/vungle/ads/internal/util/RingerModeReceiver;", "isReceiverRegistered", "Z", "com/vungle/ads/internal/ui/AdActivity$b", "lifeCycleCallback", "Lcom/vungle/ads/internal/ui/AdActivity$b;", "Companion", "a", "Lcom/vungle/ads/internal/signals/SignalManager;", "signalManager", "Lcom/vungle/ads/internal/executor/a;", "executors", "Lcom/vungle/ads/internal/platform/d;", TrackingKey.PLATFORM, "Lcom/vungle/ads/internal/omsdk/c$b;", "omTrackerFactory", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class AdActivity extends Activity {
    public static final String AD_INVISIBLE_LOGGED_KEY = "ad_invisible_logged";

    public static final Companion INSTANCE = new Companion(null);
    public static final String REQUEST_KEY_EVENT_ID_EXTRA = "request_eventId";
    public static final String REQUEST_KEY_EXTRA = "request";
    private static final String TAG = "AdActivity";
    private static AdPayload advertisement;
    private static BidPayload bidPayload;
    private static com.vungle.ads.internal.presenter.a eventListener;
    private static l presenterDelegate;
    private boolean isReceiverRegistered;
    private MRAIDAdWidget mraidAdWidget;
    private MRAIDPresenter mraidPresenter;
    private com.vungle.ads.internal.model.j unclosedAd;
    private String placementRefId = "";
    private final RingerModeReceiver ringerModeReceiver = new RingerModeReceiver();
    private final b lifeCycleCallback = new b();

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getEventId(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    return extras.getString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA);
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        public final String getPlacement(Intent intent) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    return extras.getString("request");
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        public static void getREQUEST_KEY_EVENT_ID_EXTRA$vungle_ads_release$annotations() {
        }

        public static void getREQUEST_KEY_EXTRA$vungle_ads_release$annotations() {
        }

        public final Intent createIntent(Context context, String placement, String str) {
            Intrinsics.h(placement, "placement");
            Intent intent = new Intent(context, (Class<?>) VungleActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(ASTNode.DEOP);
            }
            Bundle bundle = new Bundle();
            bundle.putString("request", placement);
            bundle.putString(AdActivity.REQUEST_KEY_EVENT_ID_EXTRA, str);
            intent.putExtras(bundle);
            return intent;
        }

        public final AdPayload getAdvertisement$vungle_ads_release() {
            return AdActivity.advertisement;
        }

        public final BidPayload getBidPayload$vungle_ads_release() {
            return AdActivity.bidPayload;
        }

        public final com.vungle.ads.internal.presenter.a getEventListener$vungle_ads_release() {
            return AdActivity.eventListener;
        }

        public final l getPresenterDelegate$vungle_ads_release() {
            return AdActivity.presenterDelegate;
        }

        public final void setAdvertisement$vungle_ads_release(AdPayload adPayload) {
            AdActivity.advertisement = adPayload;
        }

        public final void setBidPayload$vungle_ads_release(BidPayload bidPayload) {
            AdActivity.bidPayload = bidPayload;
        }

        public final void setEventListener$vungle_ads_release(com.vungle.ads.internal.presenter.a aVar) {
            AdActivity.eventListener = aVar;
        }

        public final void setPresenterDelegate$vungle_ads_release(l lVar) {
            AdActivity.presenterDelegate = lVar;
        }

        private Companion() {
        }
    }

    public static final class b extends com.vungle.ads.internal.util.a.b {
        b() {
        }

        @Override
        public void onBackground() {
            MRAIDPresenter mraidPresenter = AdActivity.this.getMraidPresenter();
            Long viewStatus = mraidPresenter != null ? mraidPresenter.getViewStatus() : null;
            o.Companion.d(AdActivity.TAG, "App is in background, status: " + viewStatus);
            if (viewStatus != null) {
                long jLongValue = viewStatus.longValue();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                Sdk$SDKMetric.SDKMetricType sDKMetricType = Sdk$SDKMetric.SDKMetricType.AD_BACKGROUND_BEFORE_IMPRESSION;
                AdPayload advertisement$vungle_ads_release = AdActivity.INSTANCE.getAdvertisement$vungle_ads_release();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, jLongValue, advertisement$vungle_ads_release != null ? advertisement$vungle_ads_release.getLogEntry$vungle_ads_release() : null, null, 8, null);
            }
        }

        @Override
        public void onForeground() {
        }
    }

    public static final class c implements MRAIDAdWidget.a {
        final Lazy<SignalManager> $signalManager$delegate;

        c(Lazy<SignalManager> lazy) {
            this.$signalManager$delegate = lazy;
        }

        @Override
        public void close() {
            MRAIDPresenter mraidPresenter = AdActivity.this.getMraidPresenter();
            Long viewStatus = mraidPresenter != null ? mraidPresenter.getViewStatus() : null;
            if (viewStatus != null) {
                long jLongValue = viewStatus.longValue();
                AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                Sdk$SDKMetric.SDKMetricType sDKMetricType = Sdk$SDKMetric.SDKMetricType.AD_CLOSED_BEFORE_IMPRESSION;
                AdPayload advertisement$vungle_ads_release = AdActivity.INSTANCE.getAdvertisement$vungle_ads_release();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, sDKMetricType, jLongValue, advertisement$vungle_ads_release != null ? advertisement$vungle_ads_release.getLogEntry$vungle_ads_release() : null, null, 8, null);
            }
            com.vungle.ads.internal.model.j jVar = AdActivity.this.unclosedAd;
            if (jVar != null) {
                AdActivity.m435onCreate$lambda0(this.$signalManager$delegate).removeUnclosedAd(jVar);
            }
            AdActivity.this.finish();
        }
    }

    public static final class d implements MRAIDAdWidget.c {
        d() {
        }

        @Override
        public boolean onTouch(MotionEvent motionEvent) {
            MRAIDPresenter mraidPresenter = AdActivity.this.getMraidPresenter();
            if (mraidPresenter == null) {
                return false;
            }
            mraidPresenter.onViewTouched(motionEvent);
            return false;
        }
    }

    public static final class e implements MRAIDAdWidget.d {
        e() {
        }

        @Override
        public void setOrientation(int i10) {
            AdActivity.this.setRequestedOrientation(i10);
        }
    }

    public static void getMraidAdWidget$vungle_ads_release$annotations() {
    }

    public static void getMraidPresenter$vungle_ads_release$annotations() {
    }

    public static void getPlacementRefId$vungle_ads_release$annotations() {
    }

    private final void hideSystemUi() {
        WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
        Intrinsics.g(insetsController, "getInsetsController(window, window.decorView)");
        insetsController.setSystemBarsBehavior(2);
        insetsController.hide(WindowInsetsCompat.Type.systemBars());
    }

    private final void onConcurrentPlaybackError(String placement) {
        ConcurrentPlaybackUnsupported concurrentPlaybackUnsupported = new ConcurrentPlaybackUnsupported("Trying to show " + placement + " but " + this.placementRefId + " is already showing");
        AdPayload adPayload = advertisement;
        VungleError vungleErrorLogError$vungle_ads_release = concurrentPlaybackUnsupported.setLogEntry$vungle_ads_release(adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : null).logError$vungle_ads_release();
        com.vungle.ads.internal.presenter.a aVar = eventListener;
        if (aVar != null) {
            aVar.onError(vungleErrorLogError$vungle_ads_release, placement);
        }
        o.Companion.e(TAG, "onConcurrentPlaybackError: " + vungleErrorLogError$vungle_ads_release.getLocalizedMessage());
    }

    public static final SignalManager m435onCreate$lambda0(Lazy<SignalManager> lazy) {
        return (SignalManager) lazy.getValue();
    }

    private static final com.vungle.ads.internal.executor.a m436onCreate$lambda4(Lazy<? extends com.vungle.ads.internal.executor.a> lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    private static final com.vungle.ads.internal.platform.d m437onCreate$lambda5(Lazy<? extends com.vungle.ads.internal.platform.d> lazy) {
        return (com.vungle.ads.internal.platform.d) lazy.getValue();
    }

    private static final com.vungle.ads.internal.omsdk.c.b m438onCreate$lambda6(Lazy<com.vungle.ads.internal.omsdk.c.b> lazy) {
        return (com.vungle.ads.internal.omsdk.c.b) lazy.getValue();
    }

    public static final WindowInsetsCompat m439onCreate$lambda7(View v10, WindowInsetsCompat insets) {
        Intrinsics.h(v10, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        Intrinsics.g(insets2, "insets.getInsets(\n      …utout()\n                )");
        if (insets.isVisible(WindowInsetsCompat.Type.statusBars())) {
            v10.setPadding(insets2.f76465a, insets2.f76466b, insets2.f76467c, insets2.f76468d);
        }
        return insets;
    }

    public boolean canRotate$vungle_ads_release() {
        return false;
    }

    public final MRAIDAdWidget getMraidAdWidget() {
        return this.mraidAdWidget;
    }

    public final MRAIDPresenter getMraidPresenter() {
        return this.mraidPresenter;
    }

    public final String getPlacementRefId() {
        return this.placementRefId;
    }

    @Override
    public void onBackPressed() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.handleExit();
        }
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        try {
            super.onConfigurationChanged(newConfig);
            int i10 = newConfig.orientation;
            if (i10 == 2) {
                o.Companion.d(TAG, TmcStartParams.KEY_LANDSCAPE);
            } else if (i10 == 1) {
                o.Companion.d(TAG, "portrait");
            }
            MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
            if (mRAIDPresenter != null) {
                mRAIDPresenter.onViewConfigurationChanged();
            }
        } catch (Exception e10) {
            o.Companion.e(TAG, "onConfigurationChanged: " + e10.getLocalizedMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r2v14 */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        String watermark$vungle_ads_release;
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        getWindow().setFlags(16777216, 16777216);
        Companion companion = INSTANCE;
        Intent intent = getIntent();
        Intrinsics.g(intent, "intent");
        String placement = companion.getPlacement(intent);
        if (placement == null) {
            placement = "";
        }
        this.placementRefId = placement;
        AdPayload adPayload = advertisement;
        com.vungle.ads.internal.model.g placement2 = ConfigManager.INSTANCE.getPlacement(placement);
        n nVar = 0;
        if (placement2 == null || adPayload == null) {
            com.vungle.ads.internal.presenter.a aVar = eventListener;
            if (aVar != null) {
                aVar.onError(new AdNotLoadedCantPlay("Can not play fullscreen ad. placement=" + placement2 + " adv=" + adPayload).setLogEntry$vungle_ads_release(adPayload != null ? adPayload.getLogEntry$vungle_ads_release() : 0).logError$vungle_ads_release(), this.placementRefId);
            }
            finish();
            return;
        }
        getWindow().getDecorView().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        try {
            MRAIDAdWidget mRAIDAdWidget = new MRAIDAdWidget(this);
            String str = getIntent().getBooleanExtra(AD_INVISIBLE_LOGGED_KEY, false) ? "3" : "2";
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new w(Sdk$SDKMetric.SDKMetricType.AD_VISIBILITY), adPayload.getLogEntry$vungle_ads_release(), str);
            o.Companion.d(TAG, "Log metric AD_VISIBILITY: " + str);
            ServiceLocator.Companion companion2 = ServiceLocator.Companion;
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<SignalManager>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
                @Override
                public final SignalManager invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(SignalManager.class);
                }
            });
            Intent intent2 = getIntent();
            Intrinsics.g(intent2, "intent");
            String eventId = companion.getEventId(intent2);
            com.vungle.ads.internal.model.j jVar = eventId != null ? new com.vungle.ads.internal.model.j(eventId, (String) nVar, 2, (DefaultConstructorMarker) nVar) : null;
            this.unclosedAd = jVar;
            if (jVar != null) {
                m435onCreate$lambda0(lazyA).recordUnclosedAd(jVar);
            }
            mRAIDAdWidget.setCloseDelegate(new c(lazyA));
            mRAIDAdWidget.setOnViewTouchListener(new d());
            mRAIDAdWidget.setOrientationDelegate(new e());
            Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
                @Override
                public final com.vungle.ads.internal.executor.a invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(com.vungle.ads.internal.executor.a.class);
                }
            });
            Lazy lazyA3 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.platform.d>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.platform.d, java.lang.Object] */
                @Override
                public final com.vungle.ads.internal.platform.d invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(com.vungle.ads.internal.platform.d.class);
                }
            });
            j jVar2 = new j(adPayload, placement2, m436onCreate$lambda4(lazyA2).getOffloadExecutor(), m435onCreate$lambda0(lazyA), m437onCreate$lambda5(lazyA3));
            com.vungle.ads.internal.omsdk.c cVarMake = m438onCreate$lambda6(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.omsdk.c.b>() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.c$b, java.lang.Object] */
                @Override
                public final com.vungle.ads.internal.omsdk.c.b invoke() {
                    return ServiceLocator.Companion.getInstance(this).getService(com.vungle.ads.internal.omsdk.c.b.class);
                }
            })).make(adPayload.omEnabled());
            VungleThreadPoolExecutor jobExecutor = m436onCreate$lambda4(lazyA2).getJobExecutor();
            jVar2.setWebViewObserver(cVarMake);
            this.ringerModeReceiver.setWebClient(jVar2);
            MRAIDPresenter mRAIDPresenter = new MRAIDPresenter(mRAIDAdWidget, adPayload, placement2, jVar2, jobExecutor, cVarMake, bidPayload, m437onCreate$lambda5(lazyA3));
            mRAIDPresenter.setEventListener(eventListener);
            mRAIDPresenter.setPresenterDelegate$vungle_ads_release(presenterDelegate);
            mRAIDPresenter.prepare();
            setContentView(mRAIDAdWidget, mRAIDAdWidget.getLayoutParams());
            ViewCompat.setOnApplyWindowInsetsListener(mRAIDAdWidget, new OnApplyWindowInsetsListener() {
                @Override
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    return AdActivity.m439onCreate$lambda7(view, windowInsetsCompat);
                }
            });
            com.vungle.ads.b adConfig = adPayload.getAdConfig();
            if (adConfig != null && (watermark$vungle_ads_release = adConfig.getWatermark$vungle_ads_release()) != null) {
                WatermarkView watermarkView = new WatermarkView(this, watermark$vungle_ads_release);
                ((FrameLayout) getWindow().getDecorView().findViewById(R.id.content)).addView(watermarkView);
                watermarkView.bringToFront();
            }
            this.mraidAdWidget = mRAIDAdWidget;
            this.mraidPresenter = mRAIDPresenter;
            com.vungle.ads.internal.util.a.Companion.addLifecycleListener(this.lifeCycleCallback);
        } catch (InstantiationException unused) {
            com.vungle.ads.internal.presenter.a aVar2 = eventListener;
            if (aVar2 != null) {
                aVar2.onError(new AdCantPlayWithoutWebView().setLogEntry$vungle_ads_release(adPayload.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.placementRefId);
            }
            finish();
        }
    }

    @Override
    protected void onDestroy() {
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.detach((isChangingConfigurations() ? 1 : 0) | 2);
        }
        com.vungle.ads.internal.util.a.Companion.removeLifecycleListener(this.lifeCycleCallback);
        super.onDestroy();
    }

    @Override
    protected void onNewIntent(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.onNewIntent(intent);
        Companion companion = INSTANCE;
        Intent intent2 = getIntent();
        Intrinsics.g(intent2, "getIntent()");
        String placement = companion.getPlacement(intent2);
        String placement2 = companion.getPlacement(intent);
        Intent intent3 = getIntent();
        Intrinsics.g(intent3, "getIntent()");
        String eventId = companion.getEventId(intent3);
        String eventId2 = companion.getEventId(intent);
        if ((placement == null || placement2 == null || Intrinsics.c(placement, placement2)) && (eventId == null || eventId2 == null || Intrinsics.c(eventId, eventId2))) {
            return;
        }
        o.Companion.d(TAG, "Tried to play another placement " + placement2 + " while playing " + placement);
        onConcurrentPlaybackError(placement2);
    }

    @Override
    protected void onPause() {
        super.onPause();
        try {
            if (this.isReceiverRegistered) {
                unregisterReceiver(this.ringerModeReceiver);
                this.isReceiverRegistered = false;
                o.Companion.d(TAG, "unregisterReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e10) {
            o.Companion.e(TAG, "unregisterReceiver error: " + e10.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.stop();
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        hideSystemUi();
        try {
            if (!this.isReceiverRegistered) {
                registerReceiver(this.ringerModeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                this.isReceiverRegistered = true;
                o.Companion.d(TAG, "registerReceiver(): " + this.ringerModeReceiver.hashCode());
            }
        } catch (Exception e10) {
            o.Companion.e(TAG, "registerReceiver error: " + e10.getLocalizedMessage());
        }
        MRAIDPresenter mRAIDPresenter = this.mraidPresenter;
        if (mRAIDPresenter != null) {
            mRAIDPresenter.start();
        }
    }

    public final void setMraidAdWidget$vungle_ads_release(MRAIDAdWidget mRAIDAdWidget) {
        this.mraidAdWidget = mRAIDAdWidget;
    }

    public final void setMraidPresenter$vungle_ads_release(MRAIDPresenter mRAIDPresenter) {
        this.mraidPresenter = mRAIDPresenter;
    }

    public final void setPlacementRefId$vungle_ads_release(String str) {
        Intrinsics.h(str, "<set-?>");
        this.placementRefId = str;
    }

    @Override
    public void setRequestedOrientation(int requestedOrientation) {
        if (canRotate$vungle_ads_release()) {
            super.setRequestedOrientation(requestedOrientation);
        }
    }
}
