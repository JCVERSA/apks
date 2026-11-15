package com.therouter;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class TheRouterKt {

    private static boolean f39742a = false;

    private static boolean f39743b = true;

    public static final void c(String tag, String msg, Function0 block) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        Intrinsics.h(block, "block");
        if (TheRouter.m()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("TheRouter::");
            sb2.append(tag);
            block.invoke();
            return;
        }
        TheRouter.f().invoke("TheRouter::" + tag, msg);
    }

    public static void d(String str, String str2, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function0 = new Function0<Unit>() {
                public final void m297invoke() {
                }

                @Override
                public Object invoke() {
                    m297invoke();
                    return Unit.f64096a;
                }
            };
        }
        c(str, str2, function0);
    }

    public static final void e(String tag, String msg, Function0 block) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        Intrinsics.h(block, "block");
        if (TheRouter.m()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("TheRouter::");
            sb2.append(tag);
            block.invoke();
        }
    }

    public static void f(String str, String str2, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function0 = new Function0<Unit>() {
                public final void m298invoke() {
                }

                @Override
                public Object invoke() {
                    m298invoke();
                    return Unit.f64096a;
                }
            };
        }
        e(str, str2, function0);
    }

    public static final boolean g() {
        return f39743b;
    }

    public static final void h(boolean z10, String tag, String msg) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(msg, "msg");
        if (z10) {
            return;
        }
        if (TheRouter.m()) {
            throw new IllegalArgumentException("TheRouter::" + tag + "::" + msg);
        }
        TheRouter.f().invoke("TheRouter::" + tag, msg);
    }
}
