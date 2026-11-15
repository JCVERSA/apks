package androidx.privacysandbox.ads.adservices.java.topics;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresPermission;
import androidx.privacysandbox.ads.adservices.java.internal.CoroutineAdapterKt;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import androidx.privacysandbox.ads.adservices.topics.TopicsManager;
import com.lzy.okgo.model.Progress;
import defpackage.el0;
import defpackage.im5;
import defpackage.mc2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000 \n2\u00020\u0001:\u0002\u000b\nB\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H'¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;", "", MethodDecl.initName, "()V", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;", Progress.REQUEST, "Lim5;", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "getTopicsAsync", "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Lim5;", "Companion", "Api33Ext4JavaImpl", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class TopicsManagerFutures {

    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0017¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\f¨\u0006\r"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Api33Ext4JavaImpl;", "Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;", "Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;", "mTopicsManager", MethodDecl.initName, "(Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;)V", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;", Progress.REQUEST, "Lim5;", "Landroidx/privacysandbox/ads/adservices/topics/GetTopicsResponse;", "getTopicsAsync", "(Landroidx/privacysandbox/ads/adservices/topics/GetTopicsRequest;)Lim5;", "Landroidx/privacysandbox/ads/adservices/topics/TopicsManager;", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api33Ext4JavaImpl extends TopicsManagerFutures {
        private final TopicsManager mTopicsManager;

        public Api33Ext4JavaImpl(TopicsManager topicsManager) {
            y45.j(topicsManager, "mTopicsManager");
            this.mTopicsManager = topicsManager;
        }

        @Override
        @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
        @DoNotInline
        public im5 getTopicsAsync(GetTopicsRequest request) {
            y45.j(request, Progress.REQUEST);
            return CoroutineAdapterKt.asListenableFuture$default(el0.b(d.a(mc2.c()), null, null, new TopicsManagerFutures$Api33Ext4JavaImpl$getTopicsAsync$1(this, request, null), 3, null), null, 1, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures$Companion;", "", "()V", "from", "Landroidx/privacysandbox/ads/adservices/java/topics/TopicsManagerFutures;", "context", "Landroid/content/Context;", "ads-adservices-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TopicsManagerFutures from(Context context) {
            y45.j(context, "context");
            TopicsManager topicsManagerObtain = TopicsManager.INSTANCE.obtain(context);
            if (topicsManagerObtain != null) {
                return new Api33Ext4JavaImpl(topicsManagerObtain);
            }
            return null;
        }

        private Companion() {
        }
    }

    public static final TopicsManagerFutures from(Context context) {
        return INSTANCE.from(context);
    }

    @RequiresPermission("android.permission.ACCESS_ADSERVICES_TOPICS")
    public abstract im5 getTopicsAsync(GetTopicsRequest request);
}
