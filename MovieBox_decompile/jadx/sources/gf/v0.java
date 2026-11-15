package gf;

import android.os.Build;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class v0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f60983a.x(this);
    }

    @Override
    public void request() {
        boolean zJ;
        if (this.f60983a.J()) {
            if (cf.c.f16930a.b(this.f60983a.m())) {
                finish();
                return;
            }
            this.f60983a.getClass();
            if (this.f60983a.f61043q != null) {
                boolean z10 = d().getBoolean("android.permission.POST_NOTIFICATIONS", false);
                if (Build.VERSION.SDK_INT < 33) {
                    zJ = true;
                } else if (z10) {
                    zJ = ActivityCompat.j(this.f60983a.m(), "android.permission.POST_NOTIFICATIONS");
                } else {
                    d().putBoolean("android.permission.POST_NOTIFICATIONS", true);
                    zJ = true;
                }
                this.f60983a.E(this);
                List listQ = CollectionsKt.q("android.permission.POST_NOTIFICATIONS");
                o0 o0Var = this.f60983a;
                df.b bVar = o0Var.f61043q;
                if (bVar != null) {
                    Intrinsics.e(bVar);
                    bVar.a(b(), listQ, true, !zJ);
                    return;
                } else {
                    o0Var.getClass();
                    Intrinsics.e(null);
                    b();
                    throw null;
                }
            }
        }
        finish();
    }
}
