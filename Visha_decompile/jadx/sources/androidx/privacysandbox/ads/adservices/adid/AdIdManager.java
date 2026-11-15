package androidx.privacysandbox.ads.adservices.adid;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RequiresPermission;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.e6;
import defpackage.f6;
import defpackage.g6;
import defpackage.pt1;
import defpackage.ur1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CancellableContinuationImpl;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u00072\u00020\u0001:\u0002\b\u0007B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0005\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;", "", MethodDecl.initName, "()V", "Landroidx/privacysandbox/ads/adservices/adid/AdId;", "getAdId", "(Lwh1;)Ljava/lang/Object;", "Companion", "Api33Ext4Impl", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class AdIdManager {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Companion;", "", "()V", "obtain", "Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        public final AdIdManager obtain(Context context) {
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
    public static final AdIdManager obtain(Context context) {
        return INSTANCE.obtain(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
    public abstract Object getAdId(wh1<? super AdId> wh1Var);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0013\u0010\n\u001a\u00020\tH\u0083@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\rH\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/privacysandbox/ads/adservices/adid/AdIdManager$Api33Ext4Impl;", "Landroidx/privacysandbox/ads/adservices/adid/AdIdManager;", "Landroid/adservices/adid/AdIdManager;", "mAdIdManager", MethodDecl.initName, "(Landroid/adservices/adid/AdIdManager;)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;)V", "Landroid/adservices/adid/AdId;", "getAdIdAsyncInternal", "(Lwh1;)Ljava/lang/Object;", "response", "Landroidx/privacysandbox/ads/adservices/adid/AdId;", "convertResponse", "(Landroid/adservices/adid/AdId;)Landroidx/privacysandbox/ads/adservices/adid/AdId;", "getAdId", "Landroid/adservices/adid/AdIdManager;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension(extension = 1000000, version = 4)
    public static final class Api33Ext4Impl extends AdIdManager {
        private final android.adservices.adid.AdIdManager mAdIdManager;

        public Api33Ext4Impl(android.adservices.adid.AdIdManager adIdManager) {
            y45.j(adIdManager, "mAdIdManager");
            this.mAdIdManager = adIdManager;
        }

        private final AdId convertResponse(android.adservices.adid.AdId response) {
            String adId = response.getAdId();
            y45.i(adId, "response.adId");
            return new AdId(adId, response.isLimitAdTrackingEnabled());
        }

        @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
        public final Object getAdIdAsyncInternal(wh1<? super android.adservices.adid.AdId> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mAdIdManager.getAdId(new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_AD_ID")
        @DoNotInline
        public Object getAdId(wh1<? super AdId> wh1Var) {
            AdIdManager$Api33Ext4Impl$getAdId$1 adIdManager$Api33Ext4Impl$getAdId$1;
            if (wh1Var instanceof AdIdManager$Api33Ext4Impl$getAdId$1) {
                adIdManager$Api33Ext4Impl$getAdId$1 = (AdIdManager$Api33Ext4Impl$getAdId$1) wh1Var;
                int i = adIdManager$Api33Ext4Impl$getAdId$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    adIdManager$Api33Ext4Impl$getAdId$1.label = i - Integer.MIN_VALUE;
                } else {
                    adIdManager$Api33Ext4Impl$getAdId$1 = new AdIdManager$Api33Ext4Impl$getAdId$1(this, wh1Var);
                }
            } else {
                adIdManager$Api33Ext4Impl$getAdId$1 = new AdIdManager$Api33Ext4Impl$getAdId$1(this, wh1Var);
            }
            Object adIdAsyncInternal = adIdManager$Api33Ext4Impl$getAdId$1.result;
            Object objF = z45.f();
            int i2 = adIdManager$Api33Ext4Impl$getAdId$1.label;
            if (i2 == 0) {
                c.b(adIdAsyncInternal);
                adIdManager$Api33Ext4Impl$getAdId$1.L$0 = this;
                adIdManager$Api33Ext4Impl$getAdId$1.label = 1;
                adIdAsyncInternal = getAdIdAsyncInternal(adIdManager$Api33Ext4Impl$getAdId$1);
                if (adIdAsyncInternal == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this = (Api33Ext4Impl) adIdManager$Api33Ext4Impl$getAdId$1.L$0;
                c.b(adIdAsyncInternal);
            }
            return this.convertResponse(e6.a(adIdAsyncInternal));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext4Impl(Context context) {
            y45.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) f6.a());
            y45.i(systemService, "context.getSystemService…:class.java\n            )");
            this(g6.a(systemService));
        }
    }
}
