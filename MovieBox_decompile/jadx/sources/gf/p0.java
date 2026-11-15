package gf;

import android.os.Build;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class p0 extends d {

    public static final a f61046f = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f60983a.t(this);
    }

    @Override
    public void request() {
        boolean zJ;
        if (this.f60983a.F()) {
            if (Build.VERSION.SDK_INT < 29) {
                this.f60983a.f61032f.remove("android.permission.ACCESS_BACKGROUND_LOCATION");
                this.f60983a.f61035i.add("android.permission.ACCESS_BACKGROUND_LOCATION");
                finish();
                return;
            }
            cf.c cVar = cf.c.f16930a;
            if (cVar.f(this.f60983a.m(), "android.permission.ACCESS_BACKGROUND_LOCATION")) {
                finish();
                return;
            }
            boolean zF = cVar.f(this.f60983a.m(), "android.permission.ACCESS_FINE_LOCATION");
            boolean zF2 = cVar.f(this.f60983a.m(), "android.permission.ACCESS_COARSE_LOCATION");
            if (zF || zF2) {
                this.f60983a.getClass();
                if (this.f60983a.f61043q == null) {
                    a(CollectionsKt.l());
                    return;
                }
                if (d().getBoolean("android.permission.ACCESS_BACKGROUND_LOCATION", false)) {
                    zJ = ActivityCompat.j(this.f60983a.m(), "android.permission.ACCESS_BACKGROUND_LOCATION");
                } else {
                    d().putBoolean("android.permission.ACCESS_BACKGROUND_LOCATION", true);
                    zJ = true;
                }
                this.f60983a.E(this);
                List listQ = CollectionsKt.q("android.permission.ACCESS_BACKGROUND_LOCATION");
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
