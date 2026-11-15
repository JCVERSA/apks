package gf;

import com.permissionx.guolindev.dialog.RationaleDialog;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class f {

    private final o0 f60990a;

    private final e f60991b;

    public f(o0 pb2, e chainTask) {
        Intrinsics.h(pb2, "pb");
        Intrinsics.h(chainTask, "chainTask");
        this.f60990a = pb2;
        this.f60991b = chainTask;
    }

    public final void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f60990a.l(permissions);
    }

    public final void b(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f60991b.a(permissions);
    }

    public final void c(List permissions, ff.a dialogInfo) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(dialogInfo, "dialogInfo");
        this.f60990a.O(this.f60991b, false, permissions, dialogInfo);
    }

    public final void d(RationaleDialog dialog) {
        Intrinsics.h(dialog, "dialog");
        this.f60990a.N(this.f60991b, true, dialog);
    }

    public final void e(List permissions, ff.a dialogInfo) {
        Intrinsics.h(permissions, "permissions");
        Intrinsics.h(dialogInfo, "dialogInfo");
        this.f60990a.O(this.f60991b, true, permissions, dialogInfo);
    }
}
