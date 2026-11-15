package androidx.privacysandbox.ads.adservices.java.appsetid;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.privacysandbox.ads.adservices.appsetid.AppSetIdManager;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import defpackage.el0;
import defpackage.im5;
import defpackage.mc2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \b2\u00020\u0001:\u0002\t\bB\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/appsetid/AppSetIdManagerFutures;", "", MethodDecl.initName, "()V", "Lim5;", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;", "getAppSetIdAsync", "()Lim5;", "Companion", "Api33Ext4JavaImpl", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class AppSetIdManagerFutures {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0017¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/appsetid/AppSetIdManagerFutures$Api33Ext4JavaImpl;", "Landroidx/privacysandbox/ads/adservices/java/appsetid/AppSetIdManagerFutures;", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "mAppSetIdManager", MethodDecl.initName, "(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;)V", "Lim5;", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;", "getAppSetIdAsync", "()Lim5;", "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api33Ext4JavaImpl extends AppSetIdManagerFutures {
        private final AppSetIdManager mAppSetIdManager;

        public Api33Ext4JavaImpl(AppSetIdManager appSetIdManager) {
            y45.j(appSetIdManager, "mAppSetIdManager");
            this.mAppSetIdManager = appSetIdManager;
        }

        @Override
        @DoNotInline
        public im5 getAppSetIdAsync() {
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.a()), null, null, new AppSetIdManagerFutures$Api33Ext4JavaImpl$getAppSetIdAsync$1(this, null), 3, null), null, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/appsetid/AppSetIdManagerFutures$Companion;", "", "()V", "from", "Landroidx/privacysandbox/ads/adservices/java/appsetid/AppSetIdManagerFutures;", "context", "Landroid/content/Context;", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AppSetIdManagerFutures from(Context context) {
            y45.j(context, "context");
            AppSetIdManager appSetIdManagerObtain = AppSetIdManager.INSTANCE.obtain(context);
            if (appSetIdManagerObtain != null) {
                return new Api33Ext4JavaImpl(appSetIdManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    public static final AppSetIdManagerFutures from(Context context) {
        return INSTANCE.from(context);
    }

    public abstract im5 getAppSetIdAsync();
}
