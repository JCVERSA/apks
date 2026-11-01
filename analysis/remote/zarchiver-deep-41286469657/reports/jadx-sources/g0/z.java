package g0;

import android.app.AlertDialog;
import android.view.View;
import android.view.Window;
import android.widget.CheckBox;

public final class z implements View.OnClickListener {

    public final CheckBox f1077a;

    public final a0 f1078b;

    public z(a0 a0Var, CheckBox checkBox) {
        this.f1078b = a0Var;
        this.f1077a = checkBox;
    }

    @Override
    public final void onClick(View view) {
        Window window;
        AlertDialog alertDialog = this.f1078b.f912g;
        if (alertDialog == null || (window = alertDialog.getWindow()) == null) {
            return;
        }
        if (this.f1077a.isChecked()) {
            window.addFlags(128);
        } else {
            window.clearFlags(128);
        }
    }
}
