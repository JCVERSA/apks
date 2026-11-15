package a;

import android.app.Activity;
import android.app.AlertDialog;
import android.view.View;

public final class j implements View.OnClickListener {

    public final Activity f30a;

    public final b f31b;

    public final AlertDialog f32c;

    public j(Activity activity, b bVar, AlertDialog alertDialog) {
        this.f30a = activity;
        this.f31b = bVar;
        this.f32c = alertDialog;
    }

    @Override
    public final void onClick(View view) {
        b bVar = this.f31b;
        k.e(this.f30a, bVar.f9g);
        if (bVar.f13k) {
            return;
        }
        this.f32c.dismiss();
    }
}
