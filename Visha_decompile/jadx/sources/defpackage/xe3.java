package defpackage;

import com.google.android.datatransport.runtime.SafeLoggingExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public abstract class xe3 {
    public static Executor a() {
        return new SafeLoggingExecutor(Executors.newSingleThreadExecutor());
    }
}
