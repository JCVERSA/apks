package defpackage;

import java.util.concurrent.Executor;

public abstract class u7i extends s7i implements im5 {
    @Override
    public final void addListener(Runnable runnable, Executor executor) {
        e().addListener(runnable, executor);
    }

    public abstract im5 e();
}
