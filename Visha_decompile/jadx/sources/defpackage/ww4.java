package defpackage;

import android.content.Context;
import com.cloud.tupdate.bean.UpdateEntity;
import com.cloud.tupdate.dialog.DialogPosition;

public interface ww4 {

    public static final class a {
        public static void a(ww4 ww4Var, UpdateEntity updateEntity, ww4 ww4Var2, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: findNewVersion");
            }
            if ((i & 4) != 0) {
                z = false;
            }
            ww4Var.c(updateEntity, ww4Var2, z);
        }

        public static void b(ww4 ww4Var, rv4 rv4Var, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: preCheckVersion");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            ww4Var.i(rv4Var, z);
        }
    }

    UpdateEntity a(String str);

    boolean b();

    void c(UpdateEntity updateEntity, ww4 ww4Var, boolean z);

    cw4 d();

    boolean e();

    vw4 f();

    String g();

    Context getContext();

    DialogPosition h();

    void i(rv4 rv4Var, boolean z);

    void j(UpdateEntity updateEntity, ww4 ww4Var);
}
