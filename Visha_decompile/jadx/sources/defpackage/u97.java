package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class u97 {
    public static final a c = new a(null);
    public jv9 a;
    public jv9 b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final boolean d(boolean z, u97 u97Var, float f, View view, MotionEvent motionEvent) {
        y45.j(u97Var, "this$0");
        int action = motionEvent.getAction();
        if (action == 0) {
            if (z) {
                return false;
            }
            y45.i(view, "viewGroup");
            u97Var.h(view, f);
            return false;
        }
        if ((action != 1 && action != 3) || z) {
            return false;
        }
        y45.i(view, "viewGroup");
        u97Var.i(view);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, u97] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.view.View, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    public static final boolean e(boolean z, u97 u97Var, ViewGroup viewGroup, float f, View view, MotionEvent motionEvent) {
        y45.j(u97Var, "this$0");
        int action = motionEvent.getAction();
        ?? r3 = viewGroup;
        if (action == 0) {
            if (z) {
                return false;
            }
            if (viewGroup == 0) {
                r3 = view;
            }
            y45.i(r3, "viewGroup ?: v");
            u97Var.h(r3, f);
            return false;
        }
        if ((action != 1 && action != 3) || z) {
            return false;
        }
        if (viewGroup == 0) {
            viewGroup = view;
        }
        y45.i(viewGroup, "viewGroup ?: v");
        u97Var.i(viewGroup);
        return false;
    }

    public final void c(View view, final float f, final ViewGroup viewGroup) {
        y45.j(view, "view");
        final boolean z = false;
        if (viewGroup != null) {
            viewGroup.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return u97.d(z, this, f, view2, motionEvent);
                }
            });
        }
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return u97.e(z, this, viewGroup, f, view2, motionEvent);
            }
        });
    }

    public final void f() {
        jv9 jv9Var = this.a;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = this.b;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
    }

    public final void g() {
        f();
    }

    public final void h(View view, float f) {
        y45.j(view, "view");
        f();
        kv9 kv9Var = new kv9(f);
        kv9Var.i(250.0f);
        kv9Var.g(0.99f);
        jv9 jv9Var = new jv9(view, f43.q, f);
        jv9Var.z(kv9Var);
        jv9Var.p();
        this.a = jv9Var;
        jv9 jv9Var2 = new jv9(view, f43.r, f);
        jv9Var2.z(kv9Var);
        jv9Var2.p();
        this.b = jv9Var2;
    }

    public final void i(View view) {
        y45.j(view, "view");
        f();
        kv9 kv9Var = new kv9(1.0f);
        kv9Var.i(250.0f);
        kv9Var.g(0.5f);
        jv9 jv9Var = new jv9(view, f43.q, 1.0f);
        jv9Var.z(kv9Var);
        jv9Var.p();
        this.a = jv9Var;
        jv9 jv9Var2 = new jv9(view, f43.r, 1.0f);
        jv9Var2.z(kv9Var);
        jv9Var2.p();
        this.b = jv9Var2;
    }
}
