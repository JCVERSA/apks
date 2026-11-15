package rt;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f71341a = new c();

    private static boolean f71342b;

    private static boolean f71343c;

    private static Function0 f71344d;

    private static Function0 f71345e;

    private c() {
    }

    public final boolean a() {
        return f71345e != null;
    }

    public final boolean b() {
        return f71344d != null;
    }

    public final boolean c() {
        return f71343c;
    }

    public final boolean d() {
        return f71342b;
    }

    public final void e() {
        f71343c = false;
        Function0 function0 = f71345e;
        if (function0 != null) {
            function0.invoke();
        }
        f71345e = null;
    }

    public final void f() {
        f71342b = false;
        Function0 function0 = f71344d;
        if (function0 != null) {
            function0.invoke();
        }
        f71344d = null;
    }

    public final void g(Function0 callback) {
        Intrinsics.h(callback, "callback");
        f71345e = callback;
    }

    public final void h(Function0 callback) {
        Intrinsics.h(callback, "callback");
        f71344d = callback;
    }

    public final void i() {
        f71343c = true;
    }

    public final void j() {
        f71342b = true;
    }
}
