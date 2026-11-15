package ci;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import kotlin.jvm.internal.Intrinsics;

public final class i {

    public static final i f16941a = new i();

    private i() {
    }

    public static void b(i iVar, FragmentManager fragmentManager, int i10, Fragment fragment, boolean z10, String str, int i11, Object obj) {
        if ((i11 & 8) != 0) {
            z10 = false;
        }
        boolean z11 = z10;
        if ((i11 & 16) != 0) {
            str = fragment.getClass().getSimpleName();
        }
        iVar.a(fragmentManager, i10, fragment, z11, str);
    }

    private final void c(FragmentManager fragmentManager, w wVar) {
        if (fragmentManager.T0() || fragmentManager.L0()) {
            return;
        }
        try {
            wVar.j();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    public final void a(FragmentManager fragmentManager, int i10, Fragment fragment, boolean z10, String str) {
        Intrinsics.h(fragmentManager, "fragmentManager");
        Intrinsics.h(fragment, "fragment");
        if (fragmentManager.T0() || fragmentManager.L0()) {
            return;
        }
        Fragment fragmentK0 = str != null ? fragmentManager.k0(str) : null;
        if (fragmentK0 == null || !fragmentK0.isAdded()) {
            w wVarP = fragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction(...)");
            wVarP.t(i10, fragment, str);
            if (z10) {
                wVarP.g(str);
            }
            c(fragmentManager, wVarP);
        }
    }
}
