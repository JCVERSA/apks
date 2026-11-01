package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import ru.zdevs.zarchiver.R;

public final class b0 extends i implements DialogInterface.OnClickListener {

    public AlertDialog f927g;

    public b0(ru.zdevs.zarchiver.d dVar, Context context) {
        this.f965f = dVar;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.RTW_TTL_WARNING);
        builder.setView(LayoutInflater.from(context).inflate(R.layout.dlg_root_wrn, (ViewGroup) null, false));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setCancelable(false);
        AlertDialog alertDialogCreate = builder.create();
        this.f927g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        i.p(this.f927g);
        c();
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f927g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f927g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 15;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        CheckBox checkBox;
        i.c cVar;
        i.d dVar;
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        AlertDialog alertDialog = this.f927g;
        if (alertDialog != null && (checkBox = (CheckBox) alertDialog.findViewById(R.id.cbDontShow)) != null && checkBox.isChecked()) {
            t0.b.o(this.f927g.getContext(), 32);
        }
        e();
    }
}
