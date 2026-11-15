package gf;

import android.provider.Settings;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class x0 extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f60983a.A(this);
    }

    @Override
    public void request() {
        boolean zJ;
        if (!this.f60983a.L()) {
            finish();
            return;
        }
        if (this.f60983a.p() < 23) {
            this.f60983a.f61036j.add("android.permission.SYSTEM_ALERT_WINDOW");
            this.f60983a.f61032f.remove("android.permission.SYSTEM_ALERT_WINDOW");
            finish();
            return;
        }
        if (Settings.canDrawOverlays(this.f60983a.m())) {
            finish();
            return;
        }
        this.f60983a.getClass();
        if (this.f60983a.f61043q == null) {
            finish();
            return;
        }
        if (d().getBoolean("android.permission.SYSTEM_ALERT_WINDOW", false)) {
            zJ = ActivityCompat.j(this.f60983a.m(), "android.permission.SYSTEM_ALERT_WINDOW");
        } else {
            d().putBoolean("android.permission.SYSTEM_ALERT_WINDOW", true);
            zJ = true;
        }
        this.f60983a.E(this);
        List listQ = CollectionsKt.q("android.permission.SYSTEM_ALERT_WINDOW");
        o0 o0Var = this.f60983a;
        df.b bVar = o0Var.f61043q;
        if (bVar != null) {
            Intrinsics.e(bVar);
            bVar.a(b(), listQ, true, !zJ);
        } else {
            o0Var.getClass();
            Intrinsics.e(null);
            b();
            throw null;
        }
    }
}
