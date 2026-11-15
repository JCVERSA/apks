package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

public interface im5 extends Future {
    void addListener(Runnable runnable, Executor executor);
}
