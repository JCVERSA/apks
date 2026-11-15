package androidx.privacysandbox.ads.adservices.adselection;

import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.lzy.okgo.model.Progress;
import defpackage.f7;
import defpackage.g7;
import defpackage.h7;
import defpackage.i7;
import defpackage.k7;
import defpackage.pt1;
import defpackage.ur1;
import defpackage.wh1;
import defpackage.x6;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH§@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;", "", MethodDecl.initName, "()V", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;", "adSelectionConfig", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;", "selectAds", "(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lwh1;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;", "reportImpressionRequest", "Lzfb;", "reportImpression", "(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lwh1;)Ljava/lang/Object;", "Companion", "Api33Ext4Impl", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class AdSelectionManager {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Companion;", "", "()V", "obtain", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        public final AdSelectionManager obtain(Context context) {
            y45.j(context, "context");
            if (AdServicesInfo.INSTANCE.version() >= 4) {
                return new Api33Ext4Impl(context);
            }
            return null;
        }

        private Companion() {
        }
    }

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    public static final AdSelectionManager obtain(Context context) {
        return INSTANCE.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    public abstract Object reportImpression(ReportImpressionRequest reportImpressionRequest, wh1<? super zfb> wh1Var);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    public abstract Object selectAds(AdSelectionConfig adSelectionConfig, wh1<? super AdSelectionOutcome> wh1Var);

    @Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u001b\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0083@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00192\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ1\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u001d2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00120\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u000bH\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J\u001b\u0010(\u001a\u00020!2\u0006\u0010\n\u001a\u00020\u000eH\u0097@ø\u0001\u0000¢\u0006\u0004\b(\u0010)J\u001b\u0010,\u001a\u00020+2\u0006\u0010*\u001a\u00020$H\u0097@ø\u0001\u0000¢\u0006\u0004\b,\u0010-R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010.\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006/"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager$Api33Ext4Impl;", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionManager;", "Landroid/adservices/adselection/AdSelectionManager;", "mAdSelectionManager", MethodDecl.initName, "(Landroid/adservices/adselection/AdSelectionManager;)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;)V", "Landroid/adservices/adselection/AdSelectionConfig;", "adSelectionConfig", "Landroid/adservices/adselection/AdSelectionOutcome;", "selectAdsInternal", "(Landroid/adservices/adselection/AdSelectionConfig;Lwh1;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;", Progress.REQUEST, "convertAdSelectionConfig", "(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;)Landroid/adservices/adselection/AdSelectionConfig;", "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;", "Landroid/adservices/common/AdSelectionSignals;", "convertAdSelectionSignals", "(Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)Landroid/adservices/common/AdSelectionSignals;", "", "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;", "buyers", "", "Landroid/adservices/common/AdTechIdentifier;", "convertBuyers", "(Ljava/util/List;)Ljava/util/List;", "", "convertPerBuyerSignals", "(Ljava/util/Map;)Ljava/util/Map;", "response", "Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;", "convertResponse", "(Landroid/adservices/adselection/AdSelectionOutcome;)Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionOutcome;", "Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;", "Landroid/adservices/adselection/ReportImpressionRequest;", "convertReportImpressionRequest", "(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;)Landroid/adservices/adselection/ReportImpressionRequest;", "selectAds", "(Landroidx/privacysandbox/ads/adservices/adselection/AdSelectionConfig;Lwh1;)Ljava/lang/Object;", "reportImpressionRequest", "Lzfb;", "reportImpression", "(Landroidx/privacysandbox/ads/adservices/adselection/ReportImpressionRequest;Lwh1;)Ljava/lang/Object;", "Landroid/adservices/adselection/AdSelectionManager;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    @RequiresExtension(extension = 1000000, version = 4)
    public static final class Api33Ext4Impl extends AdSelectionManager {
        private final android.adservices.adselection.AdSelectionManager mAdSelectionManager;

        public Api33Ext4Impl(android.adservices.adselection.AdSelectionManager adSelectionManager) {
            y45.j(adSelectionManager, "mAdSelectionManager");
            this.mAdSelectionManager = adSelectionManager;
        }

        private final android.adservices.adselection.AdSelectionConfig convertAdSelectionConfig(AdSelectionConfig request) {
            android.adservices.adselection.AdSelectionConfig adSelectionConfigBuild = h7.a().setAdSelectionSignals(convertAdSelectionSignals(request.getAdSelectionSignals())).setCustomAudienceBuyers(convertBuyers(request.getCustomAudienceBuyers())).setDecisionLogicUri(request.getDecisionLogicUri()).setSeller(AdTechIdentifier.fromString(request.getSeller().getIdentifier())).setPerBuyerSignals(convertPerBuyerSignals(request.getPerBuyerSignals())).setSellerSignals(convertAdSelectionSignals(request.getSellerSignals())).setTrustedScoringSignalsUri(request.getTrustedScoringSignalsUri()).build();
            y45.i(adSelectionConfigBuild, "Builder()\n              …\n                .build()");
            return adSelectionConfigBuild;
        }

        private final AdSelectionSignals convertAdSelectionSignals(androidx.privacysandbox.ads.adservices.common.AdSelectionSignals request) {
            AdSelectionSignals adSelectionSignalsFromString = AdSelectionSignals.fromString(request.getSignals());
            y45.i(adSelectionSignalsFromString, "fromString(request.signals)");
            return adSelectionSignalsFromString;
        }

        private final List<AdTechIdentifier> convertBuyers(List<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier> buyers) {
            ArrayList arrayList = new ArrayList();
            Iterator<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier> it = buyers.iterator();
            while (it.hasNext()) {
                AdTechIdentifier adTechIdentifierFromString = AdTechIdentifier.fromString(it.next().getIdentifier());
                y45.i(adTechIdentifierFromString, "fromString(buyer.identifier)");
                arrayList.add(adTechIdentifierFromString);
            }
            return arrayList;
        }

        private final Map<AdTechIdentifier, AdSelectionSignals> convertPerBuyerSignals(Map<androidx.privacysandbox.ads.adservices.common.AdTechIdentifier, androidx.privacysandbox.ads.adservices.common.AdSelectionSignals> request) {
            AdSelectionSignals adSelectionSignalsConvertAdSelectionSignals;
            HashMap map = new HashMap();
            for (androidx.privacysandbox.ads.adservices.common.AdTechIdentifier adTechIdentifier : request.keySet()) {
                AdTechIdentifier adTechIdentifierFromString = AdTechIdentifier.fromString(adTechIdentifier.getIdentifier());
                y45.i(adTechIdentifierFromString, "fromString(key.identifier)");
                if (request.get(adTechIdentifier) != null) {
                    androidx.privacysandbox.ads.adservices.common.AdSelectionSignals adSelectionSignals = request.get(adTechIdentifier);
                    y45.g(adSelectionSignals);
                    adSelectionSignalsConvertAdSelectionSignals = convertAdSelectionSignals(adSelectionSignals);
                } else {
                    adSelectionSignalsConvertAdSelectionSignals = null;
                }
                map.put(adTechIdentifierFromString, adSelectionSignalsConvertAdSelectionSignals);
            }
            return map;
        }

        public final android.adservices.adselection.ReportImpressionRequest convertReportImpressionRequest(ReportImpressionRequest request) {
            g7.a();
            return f7.a(request.getAdSelectionId(), convertAdSelectionConfig(request.getAdSelectionConfig()));
        }

        private final AdSelectionOutcome convertResponse(android.adservices.adselection.AdSelectionOutcome response) {
            long adSelectionId = response.getAdSelectionId();
            Uri renderUri = response.getRenderUri();
            y45.i(renderUri, "response.renderUri");
            return new AdSelectionOutcome(adSelectionId, renderUri);
        }

        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        public final Object selectAdsInternal(android.adservices.adselection.AdSelectionConfig adSelectionConfig, wh1<? super android.adservices.adselection.AdSelectionOutcome> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mAdSelectionManager.selectAds(adSelectionConfig, new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        public Object reportImpression(ReportImpressionRequest reportImpressionRequest, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mAdSelectionManager.reportImpression(convertReportImpressionRequest(reportImpressionRequest), new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        public Object selectAds(AdSelectionConfig adSelectionConfig, wh1<? super AdSelectionOutcome> wh1Var) {
            AdSelectionManager$Api33Ext4Impl$selectAds$1 adSelectionManager$Api33Ext4Impl$selectAds$1;
            if (wh1Var instanceof AdSelectionManager$Api33Ext4Impl$selectAds$1) {
                adSelectionManager$Api33Ext4Impl$selectAds$1 = (AdSelectionManager$Api33Ext4Impl$selectAds$1) wh1Var;
                int i = adSelectionManager$Api33Ext4Impl$selectAds$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    adSelectionManager$Api33Ext4Impl$selectAds$1.label = i - Integer.MIN_VALUE;
                } else {
                    adSelectionManager$Api33Ext4Impl$selectAds$1 = new AdSelectionManager$Api33Ext4Impl$selectAds$1(this, wh1Var);
                }
            } else {
                adSelectionManager$Api33Ext4Impl$selectAds$1 = new AdSelectionManager$Api33Ext4Impl$selectAds$1(this, wh1Var);
            }
            Object objSelectAdsInternal = adSelectionManager$Api33Ext4Impl$selectAds$1.result;
            Object objF = z45.f();
            int i2 = adSelectionManager$Api33Ext4Impl$selectAds$1.label;
            if (i2 == 0) {
                c.b(objSelectAdsInternal);
                android.adservices.adselection.AdSelectionConfig adSelectionConfigConvertAdSelectionConfig = convertAdSelectionConfig(adSelectionConfig);
                adSelectionManager$Api33Ext4Impl$selectAds$1.L$0 = this;
                adSelectionManager$Api33Ext4Impl$selectAds$1.label = 1;
                objSelectAdsInternal = selectAdsInternal(adSelectionConfigConvertAdSelectionConfig, adSelectionManager$Api33Ext4Impl$selectAds$1);
                if (objSelectAdsInternal == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this = (Api33Ext4Impl) adSelectionManager$Api33Ext4Impl$selectAds$1.L$0;
                c.b(objSelectAdsInternal);
            }
            return this.convertResponse(k7.a(objSelectAdsInternal));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext4Impl(Context context) {
            y45.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) x6.a());
            y45.i(systemService, "context.getSystemService…:class.java\n            )");
            this(i7.a(systemService));
        }
    }
}
