package androidx.window.core;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/window/core/AndroidLogger;", "Landroidx/window/core/Logger;", MethodDecl.initName, "()V", "", Progress.TAG, "message", "Lzfb;", "debug", "(Ljava/lang/String;Ljava/lang/String;)V", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidLogger implements Logger {
    public static final AndroidLogger INSTANCE = new AndroidLogger();

    private AndroidLogger() {
    }

    @Override
    public void debug(String tag, String message) {
        y45.j(tag, Progress.TAG);
        y45.j(message, "message");
        Log.d(tag, message);
    }
}
