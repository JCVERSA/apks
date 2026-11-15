package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.SdkVersionTooLow;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.internal.bidding.BidTokenEncoder;
import com.vungle.ads.internal.privacy.PrivacyManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.n;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.x;
import com.vungle.ads.z;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class VungleInternal {
    private static final com.vungle.ads.internal.util.c m383getAvailableBidTokens$lambda0(Lazy<com.vungle.ads.internal.util.c> lazy) {
        return (com.vungle.ads.internal.util.c) lazy.getValue();
    }

    private static final com.vungle.ads.internal.executor.d m384getAvailableBidTokens$lambda1(Lazy<com.vungle.ads.internal.executor.d> lazy) {
        return (com.vungle.ads.internal.executor.d) lazy.getValue();
    }

    private static final BidTokenEncoder m385getAvailableBidTokens$lambda2(Lazy<BidTokenEncoder> lazy) {
        return (BidTokenEncoder) lazy.getValue();
    }

    public static final String m386getAvailableBidTokens$lambda3(Lazy bidTokenEncoder$delegate) {
        Intrinsics.h(bidTokenEncoder$delegate, "$bidTokenEncoder$delegate");
        return m385getAvailableBidTokens$lambda2(bidTokenEncoder$delegate).encode().getBidToken();
    }

    private static final BidTokenEncoder m387getAvailableBidTokensAsync$lambda4(Lazy<BidTokenEncoder> lazy) {
        return (BidTokenEncoder) lazy.getValue();
    }

    private static final com.vungle.ads.internal.executor.d m388getAvailableBidTokensAsync$lambda5(Lazy<com.vungle.ads.internal.executor.d> lazy) {
        return (com.vungle.ads.internal.executor.d) lazy.getValue();
    }

    public static final void m389getAvailableBidTokensAsync$lambda6(com.vungle.ads.i callback, Lazy bidTokenEncoder$delegate) {
        Intrinsics.h(callback, "$callback");
        Intrinsics.h(bidTokenEncoder$delegate, "$bidTokenEncoder$delegate");
        x xVar = new x(Sdk$SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS);
        xVar.markStart();
        BidTokenEncoder.b bVarEncode = m387getAvailableBidTokensAsync$lambda4(bidTokenEncoder$delegate).encode();
        xVar.markEnd();
        if (bVarEncode.getBidToken().length() > 0) {
            callback.b(bVarEncode.getBidToken());
        } else {
            xVar.setMetricType(Sdk$SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS);
            xVar.setMeta(bVarEncode.getErrorMessage());
            callback.a(bVarEncode.getErrorMessage());
        }
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, xVar, (n) null, (String) null, 6, (Object) null);
    }

    public final String getAvailableBidTokens(final Context context) {
        Intrinsics.h(context, "context");
        if (v.INSTANCE.isOSVersionInvalid()) {
            new SdkVersionTooLow("Deprecated RTB: SDK is supported only for API versions 25 and above.").logErrorNoReturnValue$vungle_ads_release();
            return null;
        }
        x xVar = new x(Sdk$SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_RESPONSE_DURATION_MS);
        xVar.markStart();
        if (!z.Companion.isInitialized()) {
            PrivacyManager privacyManager = PrivacyManager.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "context.applicationContext");
            privacyManager.init(applicationContext);
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.util.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.util.c, java.lang.Object] */
            @Override
            public final com.vungle.ads.internal.util.c invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.util.c.class);
            }
        });
        Lazy lazyA2 = LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.d>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.d, java.lang.Object] */
            @Override
            public final com.vungle.ads.internal.executor.d invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.executor.d.class);
            }
        });
        final Lazy lazyA3 = LazyKt.a(lazyThreadSafetyMode, new Function0<BidTokenEncoder>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.bidding.BidTokenEncoder, java.lang.Object] */
            @Override
            public final BidTokenEncoder invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(BidTokenEncoder.class);
            }
        });
        String str = (String) new com.vungle.ads.internal.executor.b(m384getAvailableBidTokens$lambda1(lazyA2).getApiExecutor().submit(new Callable() {
            @Override
            public final Object call() {
                return VungleInternal.m386getAvailableBidTokens$lambda3(lazyA3);
            }
        })).get(m383getAvailableBidTokens$lambda0(lazyA).getTimeout(), TimeUnit.MILLISECONDS);
        if (str == null || str.length() == 0) {
            xVar.setMetricType(Sdk$SDKMetric.SDKMetricType.BID_TOKEN_REQUEST_TO_FAIL_DURATION_MS);
            xVar.setMeta("Bid token is null or empty");
        }
        xVar.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, xVar, (n) null, (String) null, 6, (Object) null);
        return str;
    }

    public final void getAvailableBidTokensAsync(final Context context, final com.vungle.ads.i callback) {
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        if (v.INSTANCE.isOSVersionInvalid()) {
            new SdkVersionTooLow("RTB: SDK is supported only for API versions 25 and above.").logErrorNoReturnValue$vungle_ads_release();
            callback.a("RTB: SDK is supported only for API versions 25 and above.");
            return;
        }
        if (!z.Companion.isInitialized()) {
            PrivacyManager privacyManager = PrivacyManager.INSTANCE;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.g(applicationContext, "context.applicationContext");
            privacyManager.init(applicationContext);
        }
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Lazy lazyA = LazyKt.a(lazyThreadSafetyMode, new Function0<BidTokenEncoder>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.bidding.BidTokenEncoder, java.lang.Object] */
            @Override
            public final BidTokenEncoder invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(BidTokenEncoder.class);
            }
        });
        m388getAvailableBidTokensAsync$lambda5(LazyKt.a(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.d>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.d, java.lang.Object] */
            @Override
            public final com.vungle.ads.internal.executor.d invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(com.vungle.ads.internal.executor.d.class);
            }
        })).getApiExecutor().execute(new Runnable(callback, lazyA) {

            public final Lazy f58370a;

            {
                this.f58370a = lazyA;
            }

            @Override
            public final void run() {
                VungleInternal.m389getAvailableBidTokensAsync$lambda6(null, this.f58370a);
            }
        });
    }

    public final String getSdkVersion() {
        return "7.5.0";
    }
}
