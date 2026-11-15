package ya;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import java.util.Objects;

public final class c {

    private final d f76184a;

    private final ya.b f76185b;

    private final View f76186c;

    private static class b implements d {

        private OnBackInvokedCallback f76187a;

        private b() {
        }

        @Override
        public void a(@NonNull View view) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher();
            if (onBackInvokedDispatcherFindOnBackInvokedDispatcher == null) {
                return;
            }
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f76187a);
            this.f76187a = null;
        }

        @Override
        public void b(@NonNull ya.b bVar, @NonNull View view, boolean z10) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (this.f76187a == null && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
                OnBackInvokedCallback onBackInvokedCallbackC = c(bVar);
                this.f76187a = onBackInvokedCallbackC;
                onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(z10 ? 1000000 : 0, onBackInvokedCallbackC);
            }
        }

        OnBackInvokedCallback c(final ya.b bVar) {
            Objects.requireNonNull(bVar);
            return new OnBackInvokedCallback() {
                public final void onBackInvoked() {
                    bVar.handleBackInvoked();
                }
            };
        }

        boolean d() {
            return this.f76187a != null;
        }
    }

    private static class C0946c extends b {

        class a implements OnBackAnimationCallback {

            final ya.b f76188a;

            a(ya.b bVar) {
                this.f76188a = bVar;
            }

            public void onBackCancelled() {
                if (C0946c.this.d()) {
                    this.f76188a.cancelBackProgress();
                }
            }

            public void onBackInvoked() {
                this.f76188a.handleBackInvoked();
            }

            public void onBackProgressed(BackEvent backEvent) {
                if (C0946c.this.d()) {
                    this.f76188a.updateBackProgress(new androidx.activity.b(backEvent));
                }
            }

            public void onBackStarted(BackEvent backEvent) {
                if (C0946c.this.d()) {
                    this.f76188a.startBackProgress(new androidx.activity.b(backEvent));
                }
            }
        }

        private C0946c() {
            super();
        }

        @Override
        OnBackInvokedCallback c(ya.b bVar) {
            return new a(bVar);
        }
    }

    private interface d {
        void a(View view);

        void b(ya.b bVar, View view, boolean z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(View view) {
        this((ya.b) view, view);
    }

    private static d a() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 34) {
            return new C0946c();
        }
        if (i10 >= 33) {
            return new b();
        }
        return null;
    }

    private void d(boolean z10) {
        d dVar = this.f76184a;
        if (dVar != null) {
            dVar.b(this.f76185b, this.f76186c, z10);
        }
    }

    public boolean b() {
        return this.f76184a != null;
    }

    public void c() {
        d(false);
    }

    public void e() {
        d(true);
    }

    public void f() {
        d dVar = this.f76184a;
        if (dVar != null) {
            dVar.a(this.f76186c);
        }
    }

    public c(ya.b bVar, View view) {
        this.f76184a = a();
        this.f76185b = bVar;
        this.f76186c = view;
    }
}
