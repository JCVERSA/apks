package androidx.window.layout.adapter.extensions;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.layout.WindowLayoutInfo;
import androidx.window.layout.adapter.WindowBackend;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackendApi0;
import defpackage.y45;
import defpackage.y71;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\f\u0010\rJ\u001d\u0010\u000e\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/window/layout/adapter/extensions/ExtensionWindowBackendApi0;", "Landroidx/window/layout/adapter/WindowBackend;", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/core/util/Consumer;", "Landroidx/window/layout/WindowLayoutInfo;", "callback", "Lzfb;", "registerLayoutChangeCallback", "(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V", "unregisterLayoutChangeCallback", "(Landroidx/core/util/Consumer;)V", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ExtensionWindowBackendApi0 implements WindowBackend {
    public static final void registerLayoutChangeCallback$lambda$0(Consumer consumer) {
        y45.j(consumer, "$callback");
        consumer.accept(new WindowLayoutInfo(y71.k()));
    }

    @Override
    public void registerLayoutChangeCallback(Context context, Executor executor, final Consumer<WindowLayoutInfo> callback) {
        y45.j(context, "context");
        y45.j(executor, "executor");
        y45.j(callback, "callback");
        executor.execute(new Runnable() {
            @Override
            public final void run() {
                ExtensionWindowBackendApi0.registerLayoutChangeCallback$lambda$0(callback);
            }
        });
    }

    @Override
    public void unregisterLayoutChangeCallback(Consumer<WindowLayoutInfo> callback) {
        y45.j(callback, "callback");
    }
}
