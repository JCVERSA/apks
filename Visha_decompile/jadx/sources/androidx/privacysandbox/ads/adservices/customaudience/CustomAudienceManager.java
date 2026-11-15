package androidx.privacysandbox.ads.adservices.customaudience;

import android.adservices.common.AdData;
import android.adservices.common.AdSelectionSignals;
import android.adservices.common.AdTechIdentifier;
import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import com.lzy.okgo.model.Progress;
import defpackage.ln1;
import defpackage.pt1;
import defpackage.rn1;
import defpackage.sn1;
import defpackage.tn1;
import defpackage.un1;
import defpackage.ur1;
import defpackage.vn1;
import defpackage.wh1;
import defpackage.wn1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH§@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager;", "", MethodDecl.initName, "()V", "Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;", Progress.REQUEST, "Lzfb;", "joinCustomAudience", "(Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;Lwh1;)Ljava/lang/Object;", "Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;", "leaveCustomAudience", "(Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;Lwh1;)Ljava/lang/Object;", "Companion", "Api33Ext4Impl", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class CustomAudienceManager {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager$Companion;", "", "()V", "obtain", "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        public final CustomAudienceManager obtain(Context context) {
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
    public static final CustomAudienceManager obtain(Context context) {
        return INSTANCE.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    public abstract Object joinCustomAudience(JoinCustomAudienceRequest joinCustomAudienceRequest, wh1<? super zfb> wh1Var);

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
    public abstract Object leaveCustomAudience(LeaveCustomAudienceRequest leaveCustomAudienceRequest, wh1<? super zfb> wh1Var);

    @Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J#\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u00162\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001b\u0010\"\u001a\u0004\u0018\u00010!2\b\u0010\u0018\u001a\u0004\u0018\u00010 H\u0002¢\u0006\u0004\b\"\u0010#J\u001b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0018\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b&\u0010'J\u001b\u0010)\u001a\u00020(2\u0006\u0010\n\u001a\u00020\tH\u0097@ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\u001b\u0010+\u001a\u00020(2\u0006\u0010\n\u001a\u00020\u000eH\u0097@ø\u0001\u0000¢\u0006\u0004\b+\u0010,R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010-\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, d2 = {"Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager$Api33Ext4Impl;", "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudienceManager;", "Landroid/adservices/customaudience/CustomAudienceManager;", "customAudienceManager", MethodDecl.initName, "(Landroid/adservices/customaudience/CustomAudienceManager;)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;)V", "Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;", Progress.REQUEST, "Landroid/adservices/customaudience/JoinCustomAudienceRequest;", "convertJoinRequest", "(Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;)Landroid/adservices/customaudience/JoinCustomAudienceRequest;", "Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;", "Landroid/adservices/customaudience/LeaveCustomAudienceRequest;", "convertLeaveRequest", "(Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;)Landroid/adservices/customaudience/LeaveCustomAudienceRequest;", "Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;", "Landroid/adservices/customaudience/CustomAudience;", "convertCustomAudience", "(Landroidx/privacysandbox/ads/adservices/customaudience/CustomAudience;)Landroid/adservices/customaudience/CustomAudience;", "", "Landroidx/privacysandbox/ads/adservices/common/AdData;", "input", "Landroid/adservices/common/AdData;", "convertAdData", "(Ljava/util/List;)Ljava/util/List;", "Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;", "Landroid/adservices/common/AdTechIdentifier;", "convertAdTechIdentifier", "(Landroidx/privacysandbox/ads/adservices/common/AdTechIdentifier;)Landroid/adservices/common/AdTechIdentifier;", "Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;", "Landroid/adservices/customaudience/TrustedBiddingData;", "convertTrustedSignals", "(Landroidx/privacysandbox/ads/adservices/customaudience/TrustedBiddingData;)Landroid/adservices/customaudience/TrustedBiddingData;", "Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;", "Landroid/adservices/common/AdSelectionSignals;", "convertBiddingSignals", "(Landroidx/privacysandbox/ads/adservices/common/AdSelectionSignals;)Landroid/adservices/common/AdSelectionSignals;", "Lzfb;", "joinCustomAudience", "(Landroidx/privacysandbox/ads/adservices/customaudience/JoinCustomAudienceRequest;Lwh1;)Ljava/lang/Object;", "leaveCustomAudience", "(Landroidx/privacysandbox/ads/adservices/customaudience/LeaveCustomAudienceRequest;Lwh1;)Ljava/lang/Object;", "Landroid/adservices/customaudience/CustomAudienceManager;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension(extension = 1000000, version = 4)
    public static final class Api33Ext4Impl extends CustomAudienceManager {
        private final android.adservices.customaudience.CustomAudienceManager customAudienceManager;

        public Api33Ext4Impl(android.adservices.customaudience.CustomAudienceManager customAudienceManager) {
            y45.j(customAudienceManager, "customAudienceManager");
            this.customAudienceManager = customAudienceManager;
        }

        private final List<AdData> convertAdData(List<androidx.privacysandbox.ads.adservices.common.AdData> input) {
            ArrayList arrayList = new ArrayList();
            for (androidx.privacysandbox.ads.adservices.common.AdData adData : input) {
                AdData adDataBuild = vn1.a().setMetadata(adData.getMetadata()).setRenderUri(adData.getRenderUri()).build();
                y45.i(adDataBuild, "Builder()\n              …                 .build()");
                arrayList.add(adDataBuild);
            }
            return arrayList;
        }

        private final AdTechIdentifier convertAdTechIdentifier(androidx.privacysandbox.ads.adservices.common.AdTechIdentifier input) {
            AdTechIdentifier adTechIdentifierFromString = AdTechIdentifier.fromString(input.getIdentifier());
            y45.i(adTechIdentifierFromString, "fromString(input.identifier)");
            return adTechIdentifierFromString;
        }

        private final AdSelectionSignals convertBiddingSignals(androidx.privacysandbox.ads.adservices.common.AdSelectionSignals input) {
            if (input == null) {
                return null;
            }
            return AdSelectionSignals.fromString(input.getSignals());
        }

        private final android.adservices.customaudience.CustomAudience convertCustomAudience(CustomAudience request) {
            android.adservices.customaudience.CustomAudience customAudienceBuild = rn1.a().setActivationTime(request.getActivationTime()).setAds(convertAdData(request.getAds())).setBiddingLogicUri(request.getBiddingLogicUri()).setBuyer(convertAdTechIdentifier(request.getBuyer())).setDailyUpdateUri(request.getDailyUpdateUri()).setExpirationTime(request.getExpirationTime()).setName(request.getName()).setTrustedBiddingData(convertTrustedSignals(request.getTrustedBiddingSignals())).setUserBiddingSignals(convertBiddingSignals(request.getUserBiddingSignals())).build();
            y45.i(customAudienceBuild, "Builder()\n              …\n                .build()");
            return customAudienceBuild;
        }

        public final android.adservices.customaudience.JoinCustomAudienceRequest convertJoinRequest(JoinCustomAudienceRequest request) {
            android.adservices.customaudience.JoinCustomAudienceRequest joinCustomAudienceRequestBuild = tn1.a().setCustomAudience(convertCustomAudience(request.getCustomAudience())).build();
            y45.i(joinCustomAudienceRequestBuild, "Builder()\n              …\n                .build()");
            return joinCustomAudienceRequestBuild;
        }

        public final android.adservices.customaudience.LeaveCustomAudienceRequest convertLeaveRequest(LeaveCustomAudienceRequest request) {
            android.adservices.customaudience.LeaveCustomAudienceRequest leaveCustomAudienceRequestBuild = sn1.a().setBuyer(convertAdTechIdentifier(request.getBuyer())).setName(request.getName()).build();
            y45.i(leaveCustomAudienceRequestBuild, "Builder()\n              …\n                .build()");
            return leaveCustomAudienceRequestBuild;
        }

        private final android.adservices.customaudience.TrustedBiddingData convertTrustedSignals(TrustedBiddingData input) {
            if (input == null) {
                return null;
            }
            return un1.a().setTrustedBiddingKeys(input.getTrustedBiddingKeys()).setTrustedBiddingUri(input.getTrustedBiddingUri()).build();
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        public Object joinCustomAudience(JoinCustomAudienceRequest joinCustomAudienceRequest, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.customAudienceManager.joinCustomAudience(convertJoinRequest(joinCustomAudienceRequest), new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_CUSTOM_AUDIENCE")
        @DoNotInline
        public Object leaveCustomAudience(LeaveCustomAudienceRequest leaveCustomAudienceRequest, wh1<? super zfb> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.customAudienceManager.leaveCustomAudience(convertLeaveRequest(leaveCustomAudienceRequest), new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result == z45.f() ? result : zfb.a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext4Impl(Context context) {
            y45.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) ln1.a());
            y45.i(systemService, "context.getSystemService…:class.java\n            )");
            this(wn1.a(systemService));
        }
    }
}
