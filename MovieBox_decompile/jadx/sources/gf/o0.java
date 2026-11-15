package gf;

import android.content.DialogInterface;
import android.os.Build;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.permissionx.guolindev.callback.PermissionDialogClickType;
import com.permissionx.guolindev.dialog.DefaultRationaleDialog;
import com.permissionx.guolindev.dialog.RationaleDialog;
import com.permissionx.guolindev.request.InvisibleFragment;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class o0 implements h {

    public static final a f61026s = new a(null);

    public FragmentActivity f61027a;

    private Fragment f61028b;

    private int f61029c;

    public RationaleDialog f61030d;

    public Set f61031e;

    public Set f61032f;

    public boolean f61033g;

    public boolean f61034h;

    public Set f61035i;

    public Set f61036j;

    public Set f61037k;

    public Set f61038l;

    public Set f61039m;

    public Set f61040n;

    public Set f61041o;

    public df.c f61042p;

    public df.b f61043q;

    public df.a f61044r;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public o0(FragmentActivity fragmentActivity, Fragment fragment, Set normalPermissions, Set specialPermissions) {
        Intrinsics.h(normalPermissions, "normalPermissions");
        Intrinsics.h(specialPermissions, "specialPermissions");
        this.f61029c = -1;
        this.f61035i = new LinkedHashSet();
        this.f61036j = new LinkedHashSet();
        this.f61037k = new LinkedHashSet();
        this.f61038l = new LinkedHashSet();
        this.f61039m = new LinkedHashSet();
        this.f61040n = new LinkedHashSet();
        this.f61041o = new LinkedHashSet();
        if (fragmentActivity != null) {
            D(fragmentActivity);
        }
        if (fragmentActivity == null && fragment != null) {
            D(fragment.requireActivity());
        }
        this.f61028b = fragment;
        this.f61031e = normalPermissions;
        this.f61032f = specialPermissions;
    }

    private final void C() {
        if (Build.VERSION.SDK_INT != 26) {
            m().setRequestedOrientation(this.f61029c);
        }
    }

    public static final Unit P(final o0 o0Var, final RationaleDialog rationaleDialog, final boolean z10, final e eVar, final List list, View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    o0.Q(this.f61014a, rationaleDialog, z10, eVar, list, view2);
                }
            });
        }
        return Unit.f64096a;
    }

    public static final void Q(o0 o0Var, RationaleDialog rationaleDialog, boolean z10, e eVar, List list, View view) {
        df.a aVar = o0Var.f61044r;
        if (aVar != null) {
            aVar.a(rationaleDialog, Boolean.valueOf(!z10), PermissionDialogClickType.POSITIVE);
        }
        rationaleDialog.dismiss();
        if (z10) {
            eVar.a(list);
        } else {
            o0Var.l(list);
        }
    }

    public static final Unit R(final o0 o0Var, final RationaleDialog rationaleDialog, final boolean z10, final e eVar, View view) {
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    o0.S(this.f61020a, rationaleDialog, z10, eVar, view2);
                }
            });
        }
        return Unit.f64096a;
    }

    public static final void S(o0 o0Var, RationaleDialog rationaleDialog, boolean z10, e eVar, View view) {
        df.a aVar = o0Var.f61044r;
        if (aVar != null) {
            aVar.a(rationaleDialog, Boolean.valueOf(!z10), PermissionDialogClickType.NEGATIVE);
        }
        rationaleDialog.dismiss();
        eVar.finish();
    }

    public static final void T(o0 o0Var, DialogInterface dialogInterface) {
        ff.c.f60168a.c(o0Var.m());
        o0Var.f61030d = null;
    }

    private final void U() {
        q();
        r0 r0Var = new r0();
        if (F()) {
            r0Var.a(new p0(this));
        } else if (J()) {
            r0Var.a(new v0(this));
        } else if (K()) {
            r0Var.a(new w0(this));
        } else if (L()) {
            r0Var.a(new x0(this));
        } else if (M()) {
            r0Var.a(new y0(this));
        } else if (H()) {
            r0Var.a(new s0(this));
        } else if (I()) {
            r0Var.a(new t0(this));
        } else if (G()) {
            r0Var.a(new q0(this));
        } else {
            r0Var.a(new u0(this));
        }
        r0Var.b();
    }

    private final FragmentManager n() {
        FragmentManager childFragmentManager;
        Fragment fragment = this.f61028b;
        if (fragment != null && (childFragmentManager = fragment.getChildFragmentManager()) != null) {
            return childFragmentManager;
        }
        FragmentManager supportFragmentManager = m().getSupportFragmentManager();
        Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
        return supportFragmentManager;
    }

    private final InvisibleFragment o() {
        Fragment fragmentK0 = n().k0("InvisibleFragment");
        if (fragmentK0 != null) {
            return (InvisibleFragment) fragmentK0;
        }
        InvisibleFragment invisibleFragment = new InvisibleFragment();
        n().p().e(invisibleFragment, "InvisibleFragment").l();
        return invisibleFragment;
    }

    private final void q() {
        if (Build.VERSION.SDK_INT != 26) {
            this.f61029c = m().getRequestedOrientation();
            int i10 = m().getResources().getConfiguration().orientation;
            if (i10 == 1) {
                m().setRequestedOrientation(7);
            } else {
                if (i10 != 2) {
                    return;
                }
                m().setRequestedOrientation(6);
            }
        }
    }

    private final void s() {
        try {
            Result.Companion companion = Result.INSTANCE;
            Fragment fragmentK0 = n().k0("InvisibleFragment");
            if (fragmentK0 != null) {
                n().p().r(fragmentK0).l();
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public void A(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().o1(this, chainTask);
    }

    public void B(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().r1(this, chainTask);
    }

    public final void D(FragmentActivity fragmentActivity) {
        Intrinsics.h(fragmentActivity, "<set-?>");
        this.f61027a = fragmentActivity;
    }

    public final void E(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().s1(this, chainTask);
    }

    public final boolean F() {
        return this.f61032f.contains("android.permission.ACCESS_BACKGROUND_LOCATION");
    }

    public final boolean G() {
        return this.f61032f.contains("android.permission.BODY_SENSORS_BACKGROUND");
    }

    public final boolean H() {
        return this.f61032f.contains("android.permission.REQUEST_INSTALL_PACKAGES");
    }

    public final boolean I() {
        return this.f61032f.contains("android.permission.MANAGE_EXTERNAL_STORAGE");
    }

    public final boolean J() {
        return this.f61032f.contains("android.permission.POST_NOTIFICATIONS");
    }

    public final boolean K() {
        return this.f61032f.contains("android.permission.PICTURE_IN_PICTURE");
    }

    public final boolean L() {
        return this.f61032f.contains("android.permission.SYSTEM_ALERT_WINDOW");
    }

    public final boolean M() {
        return this.f61032f.contains("android.permission.WRITE_SETTINGS");
    }

    public final void N(final e chainTask, final boolean z10, final RationaleDialog dialog) {
        Intrinsics.h(chainTask, "chainTask");
        Intrinsics.h(dialog, "dialog");
        this.f61034h = true;
        final List listN0 = dialog.n0();
        if (listN0.isEmpty()) {
            chainTask.finish();
            return;
        }
        this.f61030d = dialog;
        dialog.p0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return o0.P(this.f61000a, dialog, z10, chainTask, listN0, (View) obj);
            }
        });
        dialog.o0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return o0.R(this.f61007a, dialog, z10, chainTask, (View) obj);
            }
        });
        dialog.j0(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                o0.T(this.f61012a, dialogInterface);
            }
        });
        if (ff.c.f60168a.b(dialog, "permission_rationale_dialog")) {
            dialog.k0(m(), "permission_rationale_dialog");
        }
    }

    public final void O(e chainTask, boolean z10, List permissions, ff.a dialogInfo) {
        Intrinsics.h(chainTask, "chainTask");
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(dialogInfo, "dialogInfo");
        DefaultRationaleDialog defaultRationaleDialog = new DefaultRationaleDialog();
        defaultRationaleDialog.r0(permissions, dialogInfo);
        N(chainTask, z10, defaultRationaleDialog);
    }

    @Override
    public h c(df.a aVar) {
        this.f61044r = aVar;
        return this;
    }

    @Override
    public void d(df.c cVar) {
        this.f61042p = cVar;
        U();
    }

    public final void j() {
        s();
        C();
    }

    @Override
    public o0 b() {
        this.f61033g = true;
        return this;
    }

    public final void l(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f61041o.clear();
        this.f61041o.addAll(permissions);
        o().x0();
    }

    public final FragmentActivity m() {
        FragmentActivity fragmentActivity = this.f61027a;
        if (fragmentActivity != null) {
            return fragmentActivity;
        }
        Intrinsics.y("activity");
        return null;
    }

    public final int p() {
        return m().getApplicationInfo().targetSdkVersion;
    }

    @Override
    public o0 a(df.b bVar) {
        this.f61043q = bVar;
        return this;
    }

    public void t(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().R0(this, chainTask);
    }

    public void u(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().W0(this, chainTask);
    }

    public void v(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().Z0(this, chainTask);
    }

    public void w(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().c1(this, chainTask);
    }

    public void x(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().h1(this, chainTask);
    }

    public final void y(Set permissions, e chainTask) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(chainTask, "chainTask");
        o().i1(this, permissions, chainTask);
    }

    public void z(e chainTask) {
        Intrinsics.h(chainTask, "chainTask");
        o().l1(this, chainTask);
    }
}
