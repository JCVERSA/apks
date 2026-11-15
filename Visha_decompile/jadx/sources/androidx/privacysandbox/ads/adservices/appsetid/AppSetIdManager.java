package androidx.privacysandbox.ads.adservices.appsetid;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresExtension;
import androidx.core.os.OutcomeReceiverKt;
import androidx.privacysandbox.ads.adservices.internal.AdServicesInfo;
import defpackage.af;
import defpackage.bf;
import defpackage.cf;
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

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u00072\u00020\u0001:\u0002\b\u0007B\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0005\u001a\u00020\u0004H¦@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "", MethodDecl.initName, "()V", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;", "getAppSetId", "(Lwh1;)Ljava/lang/Object;", "Companion", "Api33Ext4Impl", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class AppSetIdManager {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Companion;", "", "()V", "obtain", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "context", "Landroid/content/Context;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @SuppressLint({"NewApi", "ClassVerificationFailure"})
        public final AppSetIdManager obtain(Context context) {
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
    public static final AppSetIdManager obtain(Context context) {
        return INSTANCE.obtain(context);
    }

    public abstract Object getAppSetId(wh1<? super AppSetId> wh1Var);

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0013\u0010\n\u001a\u00020\tH\u0082@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\rH\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager$Api33Ext4Impl;", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "Landroid/adservices/appsetid/AppSetIdManager;", "mAppSetIdManager", MethodDecl.initName, "(Landroid/adservices/appsetid/AppSetIdManager;)V", "Landroid/content/Context;", "context", "(Landroid/content/Context;)V", "Landroid/adservices/appsetid/AppSetId;", "getAppSetIdAsyncInternal", "(Lwh1;)Ljava/lang/Object;", "response", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;", "convertResponse", "(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;", "getAppSetId", "Landroid/adservices/appsetid/AppSetIdManager;", "ads-adservices_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SuppressLint({"ClassVerificationFailure", "NewApi"})
    @RequiresExtension(extension = 1000000, version = 4)
    public static final class Api33Ext4Impl extends AppSetIdManager {
        private final android.adservices.appsetid.AppSetIdManager mAppSetIdManager;

        public Api33Ext4Impl(android.adservices.appsetid.AppSetIdManager appSetIdManager) {
            y45.j(appSetIdManager, "mAppSetIdManager");
            this.mAppSetIdManager = appSetIdManager;
        }

        private final AppSetId convertResponse(android.adservices.appsetid.AppSetId response) {
            if (response.getScope() == 1) {
                String id = response.getId();
                y45.i(id, "response.id");
                return new AppSetId(id, 1);
            }
            String id2 = response.getId();
            y45.i(id2, "response.id");
            return new AppSetId(id2, 2);
        }

        public final Object getAppSetIdAsyncInternal(wh1<? super android.adservices.appsetid.AppSetId> wh1Var) {
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
            cancellableContinuationImpl.initCancellability();
            this.mAppSetIdManager.getAppSetId(new ur1(), OutcomeReceiverKt.asOutcomeReceiver(cancellableContinuationImpl));
            Object result = cancellableContinuationImpl.getResult();
            if (result == z45.f()) {
                pt1.c(wh1Var);
            }
            return result;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override
        @DoNotInline
        public Object getAppSetId(wh1<? super AppSetId> wh1Var) {
            AppSetIdManager$Api33Ext4Impl$getAppSetId$1 appSetIdManager$Api33Ext4Impl$getAppSetId$1;
            if (wh1Var instanceof AppSetIdManager$Api33Ext4Impl$getAppSetId$1) {
                appSetIdManager$Api33Ext4Impl$getAppSetId$1 = (AppSetIdManager$Api33Ext4Impl$getAppSetId$1) wh1Var;
                int i = appSetIdManager$Api33Ext4Impl$getAppSetId$1.label;
                if ((i & Integer.MIN_VALUE) != 0) {
                    appSetIdManager$Api33Ext4Impl$getAppSetId$1.label = i - Integer.MIN_VALUE;
                } else {
                    appSetIdManager$Api33Ext4Impl$getAppSetId$1 = new AppSetIdManager$Api33Ext4Impl$getAppSetId$1(this, wh1Var);
                }
            } else {
                appSetIdManager$Api33Ext4Impl$getAppSetId$1 = new AppSetIdManager$Api33Ext4Impl$getAppSetId$1(this, wh1Var);
            }
            Object appSetIdAsyncInternal = appSetIdManager$Api33Ext4Impl$getAppSetId$1.result;
            Object objF = z45.f();
            int i2 = appSetIdManager$Api33Ext4Impl$getAppSetId$1.label;
            if (i2 == 0) {
                c.b(appSetIdAsyncInternal);
                appSetIdManager$Api33Ext4Impl$getAppSetId$1.L$0 = this;
                appSetIdManager$Api33Ext4Impl$getAppSetId$1.label = 1;
                appSetIdAsyncInternal = getAppSetIdAsyncInternal(appSetIdManager$Api33Ext4Impl$getAppSetId$1);
                if (appSetIdAsyncInternal == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                this = (Api33Ext4Impl) appSetIdManager$Api33Ext4Impl$getAppSetId$1.L$0;
                c.b(appSetIdAsyncInternal);
            }
            return this.convertResponse(af.a(appSetIdAsyncInternal));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public Api33Ext4Impl(Context context) {
            y45.j(context, "context");
            Object systemService = context.getSystemService((Class<Object>) bf.a());
            y45.i(systemService, "context.getSystemService…:class.java\n            )");
            this(cf.a(systemService));
        }
    }
}
