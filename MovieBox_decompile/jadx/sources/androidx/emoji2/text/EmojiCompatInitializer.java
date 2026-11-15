package androidx.emoji2.text;

import android.content.Context;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.ProcessLifecycleInitializer;
import androidx.p009lifecycle.u;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

public class EmojiCompatInitializer implements d4.a {

    static class LoadEmojiCompatRunnable implements Runnable {
        LoadEmojiCompatRunnable() {
        }

        @Override
        public void run() {
            try {
                androidx.core.os.s.a("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.i()) {
                    EmojiCompat.c().l();
                }
            } finally {
                androidx.core.os.s.b();
            }
        }
    }

    class a implements androidx.p009lifecycle.f {

        final Lifecycle f8751a;

        a(Lifecycle lifecycle) {
            this.f8751a = lifecycle;
        }

        @Override
        public void onCreate(u uVar) {
            androidx.p009lifecycle.e.a(this, uVar);
        }

        @Override
        public void onDestroy(u uVar) {
            androidx.p009lifecycle.e.b(this, uVar);
        }

        @Override
        public void onPause(u uVar) {
            androidx.p009lifecycle.e.c(this, uVar);
        }

        @Override
        public void onResume(u uVar) {
            EmojiCompatInitializer.this.e();
            this.f8751a.d(this);
        }

        @Override
        public void onStart(u uVar) {
            androidx.p009lifecycle.e.e(this, uVar);
        }

        @Override
        public void onStop(u uVar) {
            androidx.p009lifecycle.e.f(this, uVar);
        }
    }

    static class b extends EmojiCompat.c {
        protected b(Context context) {
            super(new c(context));
            b(1);
        }
    }

    static class c implements EmojiCompat.g {

        private final Context f8753a;

        class a extends EmojiCompat.h {

            final EmojiCompat.h f8754a;

            final ThreadPoolExecutor f8755b;

            a(EmojiCompat.h hVar, ThreadPoolExecutor threadPoolExecutor) {
                this.f8754a = hVar;
                this.f8755b = threadPoolExecutor;
            }

            @Override
            public void a(Throwable th2) {
                try {
                    this.f8754a.a(th2);
                } finally {
                    this.f8755b.shutdown();
                }
            }

            @Override
            public void b(n nVar) {
                try {
                    this.f8754a.b(nVar);
                } finally {
                    this.f8755b.shutdown();
                }
            }
        }

        c(Context context) {
            this.f8753a = context.getApplicationContext();
        }

        @Override
        public void a(final EmojiCompat.h hVar) {
            final ThreadPoolExecutor threadPoolExecutorB = androidx.emoji2.text.c.b("EmojiCompatInitializer");
            threadPoolExecutorB.execute(new Runnable() {
                @Override
                public final void run() {
                    this.f8761a.d(hVar, threadPoolExecutorB);
                }
            });
        }

        public void d(EmojiCompat.h hVar, ThreadPoolExecutor threadPoolExecutor) {
            try {
                j jVarA = d.a(this.f8753a);
                if (jVarA == null) {
                    throw new RuntimeException("EmojiCompat font provider not available on this device.");
                }
                jVarA.c(threadPoolExecutor);
                jVarA.a().a(new a(hVar, threadPoolExecutor));
            } catch (Throwable th2) {
                hVar.a(th2);
                threadPoolExecutor.shutdown();
            }
        }
    }

    @Override
    public List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override
    public Boolean b(Context context) {
        EmojiCompat.h(new b(context));
        d(context);
        return Boolean.TRUE;
    }

    void d(Context context) {
        Lifecycle lifecycle = ((u) androidx.startup.a.e(context).f(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.a(new a(lifecycle));
    }

    void e() {
        androidx.emoji2.text.c.d().postDelayed(new LoadEmojiCompatRunnable(), 500L);
    }
}
