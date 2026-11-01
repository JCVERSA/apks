package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.os.Build;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import ru.zdevs.zarchiver.R;
import ru.zdevs.zarchiver.ui.text.EditPassword;

public final class k extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener, View.OnClickListener {

    public AlertDialog f972g;

    public z0.d f973h;

    public String f974i;

    public k(ru.zdevs.zarchiver.d dVar, Context context) {
        this.f965f = dVar;
        this.f973h = null;
        this.f974i = "";
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.PWD_TTL_PASSWORD);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_enter_pwd, (ViewGroup) null, false);
        builder.setView(viewInflate);
        EditPassword editPassword = (EditPassword) viewInflate.findViewById(R.id.edt_text);
        editPassword.setFilters(new InputFilter[]{new InputFilter.LengthFilter(1024)});
        editPassword.f1979a = true ^ (editPassword.requestFocus() && ((InputMethodManager) editPassword.getContext().getSystemService("input_method")).showSoftInput(editPassword, 1));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        if (Build.VERSION.SDK_INT >= 21) {
            builder.setNeutralButton("help", (DialogInterface.OnClickListener) null);
        }
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f972g = alertDialogCreate;
        alertDialogCreate.setCanceledOnTouchOutside(false);
        this.f972g.setOnShowListener(new j(this, context));
        c();
    }

    @Override
    public final void e() {
        AlertDialog alertDialog = this.f972g;
        if (alertDialog != null) {
            EditText editText = (EditText) alertDialog.findViewById(R.id.edt_text);
            if (editText != null) {
                this.f974i = editText.getText().toString();
            }
            this.f972g.dismiss();
            this.f972g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 12;
    }

    @Override
    public final void n(Context context, Configuration configuration) {
        z0.d dVar = this.f973h;
        if (dVar != null) {
            dVar.a();
            this.f973h = null;
        }
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
        EditText editText;
        AlertDialog alertDialog = this.f972g;
        if (alertDialog != null && (editText = (EditText) alertDialog.findViewById(R.id.edt_text)) != null) {
            this.f974i = editText.getText().toString();
        }
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        } else if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    @Override
    public final void onClick(View view) {
    }
}
