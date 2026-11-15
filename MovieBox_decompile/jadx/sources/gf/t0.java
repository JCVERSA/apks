package gf;

import android.os.Build;
import android.os.Environment;
import androidx.core.app.ActivityCompat;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class t0 extends d {

    public static final a f61056f = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(o0 permissionBuilder) {
        super(permissionBuilder);
        Intrinsics.h(permissionBuilder, "permissionBuilder");
    }

    @Override
    public void a(List permissions) {
        Intrinsics.h(permissions, "permissions");
        this.f60983a.w(this);
    }

    @Override
    public void request() {
        boolean zJ;
        if (!this.f60983a.I() || Build.VERSION.SDK_INT < 30) {
            finish();
            return;
        }
        if (Environment.isExternalStorageManager()) {
            finish();
            return;
        }
        this.f60983a.getClass();
        if (this.f60983a.f61043q == null) {
            finish();
            return;
        }
        if (d().getBoolean("android.permission.MANAGE_EXTERNAL_STORAGE", false)) {
            zJ = ActivityCompat.j(this.f60983a.m(), "android.permission.MANAGE_EXTERNAL_STORAGE");
        } else {
            d().putBoolean("android.permission.MANAGE_EXTERNAL_STORAGE", true);
            zJ = true;
        }
        this.f60983a.E(this);
        List listQ = CollectionsKt.q("android.permission.MANAGE_EXTERNAL_STORAGE");
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
