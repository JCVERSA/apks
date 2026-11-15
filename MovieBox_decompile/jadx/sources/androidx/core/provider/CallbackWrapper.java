package androidx.core.provider;

import android.graphics.Typeface;
import java.util.concurrent.Executor;

class CallbackWrapper {

    private final k.c f7870a;

    private final Executor f7871b;

    CallbackWrapper(k.c cVar, Executor executor) {
        this.f7870a = cVar;
        this.f7871b = executor;
    }

    private void a(final int i10) {
        final k.c cVar = this.f7870a;
        this.f7871b.execute(new Runnable() {
            @Override
            public void run() {
                cVar.a(i10);
            }
        });
    }

    private void c(final Typeface typeface) {
        final k.c cVar = this.f7870a;
        this.f7871b.execute(new Runnable() {
            @Override
            public void run() {
                cVar.b(typeface);
            }
        });
    }

    void b(i.e eVar) {
        if (eVar.a()) {
            c(eVar.f7902a);
        } else {
            a(eVar.f7903b);
        }
    }
}
