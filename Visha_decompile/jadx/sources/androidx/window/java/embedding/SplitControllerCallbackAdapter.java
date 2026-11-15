package androidx.window.java.embedding;

import android.app.Activity;
import androidx.core.util.Consumer;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.embedding.SplitController;
import androidx.window.embedding.SplitInfo;
import androidx.window.java.core.CallbackToFlowAdapter;
import defpackage.y45;
import java.util.List;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@ExperimentalWindowApi
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\bJ1\u0010\u0012\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0014\u001a\u00020\u00112\u0012\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0016R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/window/java/embedding/SplitControllerCallbackAdapter;", "", "Landroidx/window/embedding/SplitController;", "controller", "Landroidx/window/java/core/CallbackToFlowAdapter;", "callbackToFlowAdapter", MethodDecl.initName, "(Landroidx/window/embedding/SplitController;Landroidx/window/java/core/CallbackToFlowAdapter;)V", "(Landroidx/window/embedding/SplitController;)V", "Landroid/app/Activity;", "activity", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "", "Landroidx/window/embedding/SplitInfo;", "consumer", "Lzfb;", "addSplitListener", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "removeSplitListener", "(Landroidx/core/util/Consumer;)V", "Landroidx/window/embedding/SplitController;", "Landroidx/window/java/core/CallbackToFlowAdapter;", "window-java_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SplitControllerCallbackAdapter {
    private final CallbackToFlowAdapter callbackToFlowAdapter;
    private final SplitController controller;

    private SplitControllerCallbackAdapter(SplitController splitController, CallbackToFlowAdapter callbackToFlowAdapter) {
        this.controller = splitController;
        this.callbackToFlowAdapter = callbackToFlowAdapter;
    }

    public final void addSplitListener(Activity activity, Executor executor, Consumer<List<SplitInfo>> consumer) {
        y45.j(activity, "activity");
        y45.j(executor, "executor");
        y45.j(consumer, "consumer");
        this.callbackToFlowAdapter.connect(executor, consumer, this.controller.splitInfoList(activity));
    }

    public final void removeSplitListener(Consumer<List<SplitInfo>> consumer) {
        y45.j(consumer, "consumer");
        this.callbackToFlowAdapter.disconnect(consumer);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SplitControllerCallbackAdapter(SplitController splitController) {
        this(splitController, new CallbackToFlowAdapter());
        y45.j(splitController, "controller");
    }
}
