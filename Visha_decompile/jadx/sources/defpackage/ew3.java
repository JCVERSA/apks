package defpackage;

import com.google.firebase.concurrent.SequentialExecutor;
import java.util.concurrent.Executor;

public abstract class ew3 {
    public static Executor a(Executor executor) {
        return new SequentialExecutor(executor);
    }
}
