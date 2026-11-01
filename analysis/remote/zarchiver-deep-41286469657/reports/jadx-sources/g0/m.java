package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ui.text.ExEditText;

public final class m extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener {

    public AlertDialog f976g;

    public String f977h;

    public boolean f978i;

    public m(ru.zdevs.zarchiver.d dVar, Context context, String str, String str2, int i2) {
        this.f965f = dVar;
        this.f977h = "";
        this.f978i = false;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(str);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_enter_text, (ViewGroup) null, false);
        builder.setView(viewInflate);
        ((TextView) viewInflate.findViewById(R.id.text)).setText(str2);
        builder.setPositiveButton(R.string.BTN_OK, (DialogInterface.OnClickListener) null);
        if (a0.c.K(i2, 2)) {
            builder.setNegativeButton(R.string.BTN_CANCEL, this);
        }
        builder.setOnCancelListener(this);
        ExEditText exEditText = (ExEditText) viewInflate.findViewById(R.id.edt_text);
        if (a0.c.K(i2, 1)) {
            exEditText.setKeyListener(null);
        }
        if (a0.c.K(i2, 4)) {
            exEditText.setRawInputType(1);
            exEditText.setImeOptions(67108870);
        }
        exEditText.setText(this.f977h);
        exEditText.f1979a = true ^ (exEditText.requestFocus() && ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).showSoftInput(exEditText, 1));
        AlertDialog alertDialogCreate = builder.create();
        this.f976g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f976g.setOnShowListener(new l(this));
        c();
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f976g;
        if (alertDialog != null) {
            t((EditText) alertDialog.findViewById(R.id.edt_text));
            this.f976g.dismiss();
            this.f976g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 3;
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
        AlertDialog alertDialog = this.f976g;
        if (alertDialog != null) {
            t((EditText) alertDialog.findViewById(R.id.edt_text));
        }
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    public final void t(EditText editText) {
        if (editText != null) {
            String string = editText.getText().toString();
            if (this.f977h.equals(string)) {
                return;
            }
            this.f977h = string;
            this.f978i = true;
        }
    }

    public final void u(String str) {
        this.f977h = str;
        this.f978i = false;
        AlertDialog alertDialog = this.f976g;
        if (alertDialog != null) {
            EditText editText = (EditText) alertDialog.findViewById(R.id.edt_text);
            editText.setText(str);
            editText.setSelection(str.length());
        }
    }

    @Override
    public final void onClick(View view) {
        AlertDialog alertDialog = this.f976g;
        if (alertDialog != null) {
            t((EditText) alertDialog.findViewById(R.id.edt_text));
        }
        i.d dVar = this.f961b;
        if (dVar == null || dVar.a(this)) {
            e();
        }
    }

    public m(ru.zdevs.zarchiver.d dVar, Context context, String str, int i2, int i3) {
        this(dVar, context, str, context.getString(i2), i3);
    }

    public m(ru.zdevs.zarchiver.d dVar, Context context, int i2, int i3) {
        this(dVar, context, context.getString(i2), context.getString(i3), 6);
    }
}
