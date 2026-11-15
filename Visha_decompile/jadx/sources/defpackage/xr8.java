package defpackage;

import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import com.yandex.div.core.view2.Div2View;
import java.util.HashMap;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class xr8 {
    public static final a e = new a(null);
    public final com.yandex.div.core.expression.a a;
    public final HashMap b;
    public final Object c;
    public final LifecycleEventObserver d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public static final class c implements View.OnAttachStateChangeListener {
        public final View b;
        public final Div2View c;
        public final xr8 d;

        public c(View view, Div2View div2View, xr8 xr8Var) {
            this.b = view;
            this.c = div2View;
            this.d = xr8Var;
        }

        @Override
        public void onViewAttachedToWindow(View view) {
            this.b.removeOnAttachStateChangeListener(this);
            LifecycleOwner lifecycleOwner = androidx.p004lifecycle.View.get(this.c);
            if (lifecycleOwner != null) {
                this.d.c(lifecycleOwner, this.c);
            } else {
                pp5.f("ReleaseManager", "Attempt to bind a Div2View, which has no LifecycleOwner. Release event will not be caught! If you're using some long-lived resources, like a video player, call cleanup explicitly when you don't need Div2View anymore");
            }
        }

        @Override
        public void onViewDetachedFromWindow(View view) {
        }
    }

    public xr8(com.yandex.div.core.expression.a aVar) {
        y45.j(aVar, "runtimeProvider");
        this.a = aVar;
        this.b = new HashMap();
        this.c = new Object();
        this.d = new LifecycleEventObserver() {
            @Override
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                xr8.e(this.b, lifecycleOwner, event);
            }
        };
    }

    public static final void e(xr8 xr8Var, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        y45.j(xr8Var, "this$0");
        y45.j(lifecycleOwner, "source");
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        synchronized (xr8Var.c) {
            try {
                if (b.a[event.ordinal()] == 1) {
                    Set<Div2View> set = (Set) xr8Var.b.get(lifecycleOwner);
                    if (set != null) {
                        y45.i(set, "divToRelease[source]");
                        for (Div2View div2View : set) {
                            div2View.cleanup();
                            xr8Var.a.c(div2View);
                        }
                    }
                    xr8Var.b.remove(lifecycleOwner);
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object c(LifecycleOwner lifecycleOwner, Div2View div2View) {
        Object objValueOf;
        synchronized (this.c) {
            try {
                if (this.b.containsKey(lifecycleOwner)) {
                    Set set = (Set) this.b.get(lifecycleOwner);
                    objValueOf = set != null ? Boolean.valueOf(set.add(div2View)) : null;
                } else {
                    this.b.put(lifecycleOwner, ye9.h(div2View));
                    lifecycleOwner.getLifecycle().addObserver(this.d);
                    objValueOf = zfb.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objValueOf;
    }

    public void d(Div2View div2View) {
        y45.j(div2View, "divView");
        LifecycleOwner lifecycleOwner$div_release = div2View.getContext().getLifecycleOwner$div_release();
        if (lifecycleOwner$div_release != null) {
            c(lifecycleOwner$div_release, div2View);
            return;
        }
        if (!div2View.isAttachedToWindow()) {
            div2View.addOnAttachStateChangeListener(new c(div2View, div2View, this));
            return;
        }
        LifecycleOwner lifecycleOwner = androidx.p004lifecycle.View.get(div2View);
        if (lifecycleOwner != null) {
            c(lifecycleOwner, div2View);
        } else {
            pp5.f("ReleaseManager", "Attempt to bind a Div2View, which has no LifecycleOwner. Release event will not be caught! If you're using some long-lived resources, like a video player, call cleanup explicitly when you don't need Div2View anymore");
        }
    }
}
