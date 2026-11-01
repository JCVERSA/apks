package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import ru.zdevs.zarchiver.R;

public final class w extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {

    public AlertDialog f1057g;

    public w(int i2, Context context, String str, ru.zdevs.zarchiver.d dVar) {
        this.f965f = dVar;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.app_name);
        if (str != null) {
            builder.setMessage(str);
        }
        switch (i2) {
            case 1:
            case 6:
                builder.setPositiveButton(R.string.BTN_YES, this);
                builder.setNegativeButton(R.string.BTN_NO, this);
                if (i2 == 6) {
                    builder.setNeutralButton(R.string.BTN_CANCEL, this);
                }
                break;
            case 2:
                builder.setPositiveButton(R.string.BTN_OK, this);
                builder.setNegativeButton(R.string.BTN_CANCEL, this);
                break;
            case 3:
                builder.setPositiveButton(R.string.BTN_YES, this);
                builder.setNegativeButton(R.string.BTN_CANCEL, this);
                break;
            case 4:
                builder.setPositiveButton(R.string.BTN_OK, this);
                break;
            case 5:
                builder.setPositiveButton(R.string.BTN_AGREE, this);
                builder.setNegativeButton(R.string.BTN_CANCEL, this);
                break;
        }
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f1057g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        i.p(this.f1057g);
        c();
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f1057g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f1057g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 4;
    }

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        i.c cVar = this.f960a;
        if (cVar != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        i.c cVar;
        i.d dVar;
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    public final void t() {
        AlertDialog alertDialog = this.f1057g;
        if (alertDialog != null) {
            i.s(alertDialog);
        }
    }
}
