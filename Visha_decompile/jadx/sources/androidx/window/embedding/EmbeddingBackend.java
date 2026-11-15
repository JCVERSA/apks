package androidx.window.embedding;

import android.app.Activity;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.IBinder;
import androidx.annotation.RestrictTo;
import androidx.core.util.Consumer;
import androidx.window.RequiresWindowSdkExtension;
import defpackage.e74;
import defpackage.y45;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u0000 82\u00020\u0001:\u00018J\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0003H&¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0003H&¢\u0006\u0004\b\r\u0010\fJ3\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0012\u0010\u0015\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0012H&¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u0019\u001a\u00020\u00052\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u0012H&¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010\"\u001a\u00020\u00052\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001eH'¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0005H'¢\u0006\u0004\b$\u0010%J\u0019\u0010'\u001a\u0004\u0018\u00010&2\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0004\b'\u0010(J\u001f\u0010-\u001a\u00020)2\u0006\u0010*\u001a\u00020)2\u0006\u0010,\u001a\u00020+H'¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0005H'¢\u0006\u0004\b/\u0010%J\u001f\u00102\u001a\u00020\u00052\u0006\u00100\u001a\u00020\u00142\u0006\u00101\u001a\u00020 H'¢\u0006\u0004\b2\u00103R\u0014\u00107\u001a\u0002048&X¦\u0004¢\u0006\u0006\u001a\u0004\b5\u00106ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00069À\u0006\u0001"}, d2 = {"Landroidx/window/embedding/EmbeddingBackend;", "", "", "Landroidx/window/embedding/EmbeddingRule;", "rules", "Lzfb;", "setRules", "(Ljava/util/Set;)V", "getRules", "()Ljava/util/Set;", "rule", "addRule", "(Landroidx/window/embedding/EmbeddingRule;)V", "removeRule", "Landroid/app/Activity;", "activity", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "", "Landroidx/window/embedding/SplitInfo;", "callback", "addSplitListenerForActivity", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "consumer", "removeSplitListenerForActivity", "(Landroidx/core/util/Consumer;)V", "", "isActivityEmbedded", "(Landroid/app/Activity;)Z", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "calculator", "setSplitAttributesCalculator", "(Le74;)V", "clearSplitAttributesCalculator", "()V", "Landroidx/window/embedding/ActivityStack;", "getActivityStack", "(Landroid/app/Activity;)Landroidx/window/embedding/ActivityStack;", "Landroid/app/ActivityOptions;", "options", "Landroid/os/IBinder;", "token", "setLaunchingActivityStack", "(Landroid/app/ActivityOptions;Landroid/os/IBinder;)Landroid/app/ActivityOptions;", "invalidateTopVisibleSplitAttributes", "splitInfo", "splitAttributes", "updateSplitAttributes", "(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V", "Landroidx/window/embedding/SplitController$SplitSupportStatus;", "getSplitSupportStatus", "()Landroidx/window/embedding/SplitController$SplitSupportStatus;", "splitSupportStatus", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public interface EmbeddingBackend {

    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u0003R\"\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/window/embedding/EmbeddingBackend$Companion;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Landroidx/window/embedding/EmbeddingBackend;", "getInstance", "(Landroid/content/Context;)Landroidx/window/embedding/EmbeddingBackend;", "Landroidx/window/embedding/EmbeddingBackendDecorator;", "overridingDecorator", "Lzfb;", "overrideDecorator", "(Landroidx/window/embedding/EmbeddingBackendDecorator;)V", "reset", "Lkotlin/Function1;", "decorator", "Le74;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        static final Companion $$INSTANCE = new Companion();
        private static e74 decorator = new e74() {
            @Override
            public final EmbeddingBackend invoke(EmbeddingBackend embeddingBackend) {
                y45.j(embeddingBackend, "it");
                return embeddingBackend;
            }
        };

        private Companion() {
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public final EmbeddingBackend getInstance(Context context) {
            y45.j(context, "context");
            return (EmbeddingBackend) decorator.invoke(ExtensionEmbeddingBackend.INSTANCE.getInstance(context));
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void overrideDecorator(EmbeddingBackendDecorator overridingDecorator) {
            y45.j(overridingDecorator, "overridingDecorator");
            decorator = new EmbeddingBackend$Companion$overrideDecorator$1(overridingDecorator);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void reset() {
            decorator = new e74() {
                @Override
                public final EmbeddingBackend invoke(EmbeddingBackend embeddingBackend) {
                    y45.j(embeddingBackend, "it");
                    return embeddingBackend;
                }
            };
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    static EmbeddingBackend getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void overrideDecorator(EmbeddingBackendDecorator embeddingBackendDecorator) {
        INSTANCE.overrideDecorator(embeddingBackendDecorator);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void reset() {
        INSTANCE.reset();
    }

    void addRule(EmbeddingRule rule);

    void addSplitListenerForActivity(Activity activity, Executor executor, Consumer<List<SplitInfo>> callback);

    @RequiresWindowSdkExtension(version = 2)
    void clearSplitAttributesCalculator();

    ActivityStack getActivityStack(Activity activity);

    Set<EmbeddingRule> getRules();

    SplitController.SplitSupportStatus getSplitSupportStatus();

    @RequiresWindowSdkExtension(version = 3)
    void invalidateTopVisibleSplitAttributes();

    boolean isActivityEmbedded(Activity activity);

    void removeRule(EmbeddingRule rule);

    void removeSplitListenerForActivity(Consumer<List<SplitInfo>> consumer);

    @RequiresWindowSdkExtension(version = 3)
    ActivityOptions setLaunchingActivityStack(ActivityOptions options, IBinder token);

    void setRules(Set<? extends EmbeddingRule> rules);

    @RequiresWindowSdkExtension(version = 2)
    void setSplitAttributesCalculator(e74 calculator);

    @RequiresWindowSdkExtension(version = 3)
    void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes);
}
