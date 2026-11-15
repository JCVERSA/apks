package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.view.Window;
import com.transsion.widgetslib.util.InputDialogFoldEngine;

public final class v05 {
    public boolean a;
    public InputDialogFoldEngine b;
    public Context c;

    public final void a(Window window) {
        y45.j(window, "window");
        Context context = window.getContext();
        y45.i(context, "window.context");
        this.c = context;
        if (f()) {
            this.b = new InputDialogFoldEngine(window);
        }
    }

    public final void b(Configuration configuration) {
        InputDialogFoldEngine inputDialogFoldEngine;
        y45.j(configuration, "newConfigure");
        if (!f() || (inputDialogFoldEngine = this.b) == null) {
            return;
        }
        if (inputDialogFoldEngine == null) {
            y45.B("mInputDialogFoldEngine");
            inputDialogFoldEngine = null;
        }
        inputDialogFoldEngine.I(configuration);
    }

    public final void c() {
        InputDialogFoldEngine inputDialogFoldEngine;
        if (!f() || (inputDialogFoldEngine = this.b) == null) {
            return;
        }
        if (inputDialogFoldEngine == null) {
            y45.B("mInputDialogFoldEngine");
            inputDialogFoldEngine = null;
        }
        inputDialogFoldEngine.L();
    }

    public final void d() {
        InputDialogFoldEngine inputDialogFoldEngine;
        if (!f() || (inputDialogFoldEngine = this.b) == null) {
            return;
        }
        if (inputDialogFoldEngine == null) {
            y45.B("mInputDialogFoldEngine");
            inputDialogFoldEngine = null;
        }
        inputDialogFoldEngine.J();
    }

    public final void e() {
        InputDialogFoldEngine inputDialogFoldEngine;
        if (!f() || (inputDialogFoldEngine = this.b) == null) {
            return;
        }
        if (inputDialogFoldEngine == null) {
            y45.B("mInputDialogFoldEngine");
            inputDialogFoldEngine = null;
        }
        inputDialogFoldEngine.M();
    }

    public final boolean f() {
        Context context = this.c;
        if (context != null) {
            if (context == null) {
                y45.B("mContext");
                context = null;
            }
            if (olb.U0(context) != null && olb.B && this.a && olb.v) {
                return true;
            }
        }
        return false;
    }

    public final boolean getMRequireHungStatus() {
        return this.a;
    }

    public final void setMRequireHungStatus(boolean z) {
        this.a = z;
    }
}
