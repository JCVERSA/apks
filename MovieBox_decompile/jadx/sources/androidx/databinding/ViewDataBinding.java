package androidx.databinding;

import android.os.Build;
import android.view.View;
import androidx.databinding.library.R$id;
import java.lang.ref.ReferenceQueue;

public abstract class ViewDataBinding extends androidx.databinding.a implements f4.a {

    static int f8224a = Build.VERSION.SDK_INT;

    private static final boolean f8225b = true;

    private static final androidx.databinding.d f8226c = new a();

    private static final androidx.databinding.d f8227d = new b();

    private static final androidx.databinding.d f8228e = new c();

    private static final androidx.databinding.d f8229f = new d();

    private static final androidx.databinding.c.a f8230g = new e();

    private static final ReferenceQueue f8231h = new ReferenceQueue();

    private static final View.OnAttachStateChangeListener f8232i = new f();

    class AnonymousClass7 implements Runnable {
        final ViewDataBinding this$0;

        AnonymousClass7(ViewDataBinding viewDataBinding) {
        }

        @Override
        public void run() {
            synchronized (this) {
                ViewDataBinding.c(null, false);
            }
            ViewDataBinding.h();
            if (ViewDataBinding.e(null).isAttachedToWindow()) {
                throw null;
            }
            ViewDataBinding.e(null).removeOnAttachStateChangeListener(ViewDataBinding.f8232i);
            ViewDataBinding.e(null).addOnAttachStateChangeListener(ViewDataBinding.f8232i);
        }
    }

    class a implements androidx.databinding.d {
        a() {
        }
    }

    class b implements androidx.databinding.d {
        b() {
        }
    }

    class c implements androidx.databinding.d {
        c() {
        }
    }

    class d implements androidx.databinding.d {
        d() {
        }
    }

    class e extends androidx.databinding.c.a {
        e() {
        }

        @Override
        public void a(Object obj, Object obj2, int i10, Object obj3) {
            android.support.v4.media.session.c.a(obj2);
            b((k) obj, null, i10, (Void) obj3);
        }

        public void b(k kVar, ViewDataBinding viewDataBinding, int i10, Void r10) {
            if (i10 == 1) {
                if (kVar.c(viewDataBinding)) {
                    return;
                }
                ViewDataBinding.a(viewDataBinding, true);
            } else if (i10 == 2) {
                kVar.b(viewDataBinding);
            } else {
                if (i10 != 3) {
                    return;
                }
                kVar.a(viewDataBinding);
            }
        }
    }

    static boolean a(ViewDataBinding viewDataBinding, boolean z10) {
        throw null;
    }

    static Runnable b(ViewDataBinding viewDataBinding) {
        throw null;
    }

    static boolean c(ViewDataBinding viewDataBinding, boolean z10) {
        throw null;
    }

    static View e(ViewDataBinding viewDataBinding) {
        throw null;
    }

    static ViewDataBinding g(View view) {
        if (view != null) {
            android.support.v4.media.session.c.a(view.getTag(R$id.dataBinding));
        }
        return null;
    }

    public static void h() {
        while (f8231h.poll() != null) {
        }
    }

    class f implements View.OnAttachStateChangeListener {
        f() {
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            ViewDataBinding.g(view);
            ViewDataBinding.b(null).run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
        }
    }
}
