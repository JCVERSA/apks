package defpackage;

import android.app.Activity;
import android.content.DialogInterface;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.a;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.dialog.d;

public final class m21 {
    public static final m21 a = new m21();
    public static d b;

    public static final void e() {
        Activity activityE = a.e();
        if (activityE == null || activityE.isFinishing() || activityE.isDestroyed()) {
            return;
        }
        String string = activityE.getString(R.string.freeze_dialog_msg);
        y45.i(string, "getString(...)");
        d dVarA = new d.a(activityE).k(string).u(R.string.confirm, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                m21.f(dialogInterface, i);
            }
        }).r(new DialogInterface.OnCancelListener() {
            @Override
            public final void onCancel(DialogInterface dialogInterface) {
                m21.g(dialogInterface);
            }
        }).a();
        b = dVarA;
        if (dVarA != null) {
            dVarA.show();
        }
        az5.a.i();
    }

    public static final void f(DialogInterface dialogInterface, int i) {
        d dVar = b;
        if (dVar != null) {
            dVar.dismiss();
        }
        b = null;
    }

    public static final void g(DialogInterface dialogInterface) {
        b = null;
    }

    public final void d() {
        d dVar = b;
        if (dVar == null || !dVar.isShowing()) {
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    m21.e();
                }
            });
        }
    }
}
