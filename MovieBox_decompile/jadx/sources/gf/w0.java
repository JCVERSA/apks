package gf;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class w0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f60983a.z(this);
    }

    @Override
    public void request() {
        if (this.f60983a.K()) {
            if (cf.c.f16930a.c(this.f60983a.m())) {
                finish();
                return;
            }
            this.f60983a.getClass();
            o0 o0Var = this.f60983a;
            if (o0Var.f61043q != null) {
                o0Var.E(this);
                List listQ = CollectionsKt.q("android.permission.PICTURE_IN_PICTURE");
                o0 o0Var2 = this.f60983a;
                df.b bVar = o0Var2.f61043q;
                if (bVar != null) {
                    Intrinsics.e(bVar);
                    bVar.a(b(), listQ, true, true);
                    return;
                } else {
                    o0Var2.getClass();
                    Intrinsics.e(null);
                    b();
                    throw null;
                }
            }
        }
        finish();
    }
}
