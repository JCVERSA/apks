package androidx.fragment.app;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;

public class g {

    private final i f9120a;

    private g(i iVar) {
        this.f9120a = iVar;
    }

    public static g b(i iVar) {
        return new g((i) androidx.core.util.i.h(iVar, "callbacks == null"));
    }

    public void a(Fragment fragment) {
        i iVar = this.f9120a;
        iVar.f9125e.n(iVar, iVar, fragment);
    }

    public void c() {
        this.f9120a.f9125e.z();
    }

    public boolean d(MenuItem menuItem) {
        return this.f9120a.f9125e.C(menuItem);
    }

    public void e() {
        this.f9120a.f9125e.D();
    }

    public void f() {
        this.f9120a.f9125e.F();
    }

    public void g() {
        this.f9120a.f9125e.O();
    }

    public void h() {
        this.f9120a.f9125e.S();
    }

    public void i() {
        this.f9120a.f9125e.T();
    }

    public void j() {
        this.f9120a.f9125e.V();
    }

    public boolean k() {
        return this.f9120a.f9125e.c0(true);
    }

    public FragmentManager l() {
        return this.f9120a.f9125e;
    }

    public void m() {
        this.f9120a.f9125e.d1();
    }

    public View n(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f9120a.f9125e.A0().onCreateView(view, str, context, attributeSet);
    }
}
