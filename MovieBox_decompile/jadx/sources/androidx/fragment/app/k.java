package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import java.util.concurrent.CopyOnWriteArrayList;

class k {

    private final CopyOnWriteArrayList f9129a = new CopyOnWriteArrayList();

    private final FragmentManager f9130b;

    private static final class a {

        final FragmentManager.k f9131a;

        final boolean f9132b;

        a(FragmentManager.k kVar, boolean z10) {
            this.f9131a = kVar;
            this.f9132b = z10;
        }
    }

    k(FragmentManager fragmentManager) {
        this.f9130b = fragmentManager;
    }

    void a(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().a(fragment, bundle, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentActivityCreated(this.f9130b, fragment, bundle);
            }
        }
    }

    void b(Fragment fragment, boolean z10) {
        Context contextF = this.f9130b.z0().f();
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().b(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentAttached(this.f9130b, fragment, contextF);
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().c(fragment, bundle, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentCreated(this.f9130b, fragment, bundle);
            }
        }
    }

    void d(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().d(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentDestroyed(this.f9130b, fragment);
            }
        }
    }

    void e(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().e(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentDetached(this.f9130b, fragment);
            }
        }
    }

    void f(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().f(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentPaused(this.f9130b, fragment);
            }
        }
    }

    void g(Fragment fragment, boolean z10) {
        Context contextF = this.f9130b.z0().f();
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().g(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentPreAttached(this.f9130b, fragment, contextF);
            }
        }
    }

    void h(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().h(fragment, bundle, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentPreCreated(this.f9130b, fragment, bundle);
            }
        }
    }

    void i(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().i(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentResumed(this.f9130b, fragment);
            }
        }
    }

    void j(Fragment fragment, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().j(fragment, bundle, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentSaveInstanceState(this.f9130b, fragment, bundle);
            }
        }
    }

    void k(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().k(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentStarted(this.f9130b, fragment);
            }
        }
    }

    void l(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().l(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentStopped(this.f9130b, fragment);
            }
        }
    }

    void m(Fragment fragment, View view, Bundle bundle, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().m(fragment, view, bundle, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentViewCreated(this.f9130b, fragment, view, bundle);
            }
        }
    }

    void n(Fragment fragment, boolean z10) {
        Fragment fragmentC0 = this.f9130b.C0();
        if (fragmentC0 != null) {
            fragmentC0.getParentFragmentManager().B0().n(fragment, true);
        }
        for (a aVar : this.f9129a) {
            if (!z10 || aVar.f9132b) {
                aVar.f9131a.onFragmentViewDestroyed(this.f9130b, fragment);
            }
        }
    }

    public void o(FragmentManager.k kVar, boolean z10) {
        this.f9129a.add(new a(kVar, z10));
    }

    public void p(FragmentManager.k kVar) {
        synchronized (this.f9129a) {
            try {
                int size = this.f9129a.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (((a) this.f9129a.get(i10)).f9131a == kVar) {
                        this.f9129a.remove(i10);
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
