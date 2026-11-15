package k4;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;

public class d implements c {

    private final SerialExecutorImpl f63735a;

    final Handler f63736b = new Handler(Looper.getMainLooper());

    private final Executor f63737c = new a();

    class a implements Executor {
        a() {
        }

        @Override
        public void execute(Runnable runnable) {
            d.this.f63736b.post(runnable);
        }
    }

    public d(Executor executor) {
        this.f63735a = new SerialExecutorImpl(executor);
    }

    @Override
    public Executor a() {
        return this.f63737c;
    }

    @Override
    public void c(Runnable runnable) {
        b.a(this, runnable);
    }

    @Override
    public SerialExecutorImpl b() {
        return this.f63735a;
    }
}
