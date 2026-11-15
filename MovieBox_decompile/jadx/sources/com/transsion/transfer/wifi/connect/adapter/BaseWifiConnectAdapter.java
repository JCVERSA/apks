package com.transsion.transfer.wifi.connect.adapter;

import androidx.appcompat.app.AppCompatActivity;
import com.transsion.transfer.wifi.util.g;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;

public abstract class BaseWifiConnectAdapter {

    private n0 f53784a;

    private com.transsion.transfer.wifi.connect.b f53785b;

    private du.a f53786c;

    private AppCompatActivity f53787d;

    public static void b(BaseWifiConnectAdapter baseWifiConnectAdapter, AppCompatActivity appCompatActivity, du.a aVar, n0 n0Var, com.transsion.transfer.wifi.connect.b bVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: connect");
        }
        if ((i10 & 1) != 0) {
            appCompatActivity = null;
        }
        baseWifiConnectAdapter.a(appCompatActivity, aVar, n0Var, bVar);
    }

    public final void a(AppCompatActivity appCompatActivity, du.a aVar, n0 n0Var, com.transsion.transfer.wifi.connect.b bVar) {
        this.f53787d = appCompatActivity;
        this.f53786c = aVar;
        this.f53784a = n0Var;
        this.f53785b = bVar;
        if (n0Var != null) {
            k.d(n0Var, null, null, new BaseWifiConnectAdapter$connect$1(this, null), 3, null);
        }
    }

    public abstract void c();

    public abstract void d();

    public final String e() {
        String simpleName = getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final AppCompatActivity f() {
        return this.f53787d;
    }

    public final n0 g() {
        return this.f53784a;
    }

    public final com.transsion.transfer.wifi.connect.b h() {
        return this.f53785b;
    }

    public final du.a i() {
        return this.f53786c;
    }

    public final void j(String msg) {
        Intrinsics.h(msg, "msg");
        g.b(g.f53898a, e() + " --> " + msg, false, 2, null);
    }

    public final void k() {
        c();
        this.f53784a = null;
        this.f53787d = null;
        this.f53785b = null;
        this.f53786c = null;
    }
}
