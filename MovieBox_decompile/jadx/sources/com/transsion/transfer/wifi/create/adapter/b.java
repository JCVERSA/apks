package com.transsion.transfer.wifi.create.adapter;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

public abstract class b {

    private du.a f53822a;

    private com.transsion.transfer.wifi.create.a f53823b;

    private n0 f53824c;

    public abstract Object a(Continuation continuation);

    public final String b() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final n0 c() {
        return this.f53824c;
    }

    public final com.transsion.transfer.wifi.create.a d() {
        return this.f53823b;
    }

    public final du.a e() {
        return this.f53822a;
    }

    public abstract void f();

    public final void g(n0 n0Var) {
        this.f53824c = n0Var;
    }

    public final void h(com.transsion.transfer.wifi.create.a aVar) {
        this.f53823b = aVar;
    }

    public final Object i(du.a aVar, com.transsion.transfer.wifi.create.a aVar2, n0 n0Var, Continuation continuation) {
        this.f53822a = aVar;
        this.f53823b = aVar2;
        this.f53824c = n0Var;
        Object objA = a(continuation);
        return objA == IntrinsicsKt.f() ? objA : Unit.f64096a;
    }
}
