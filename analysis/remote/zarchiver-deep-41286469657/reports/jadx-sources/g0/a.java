package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import ru.zdevs.zarchiver.R;

public final class a extends i implements DialogInterface.OnCancelListener, DialogInterface.OnClickListener {

    public AlertDialog f907g;

    public final String f908h;

    public String f909i;

    public final h0.h f910j;

    public int f911k;

    public a(ru.zdevs.zarchiver.d dVar, Context context, int i2, String str, h0.h hVar) {
        this.f965f = dVar;
        if (v0.h.e(str)) {
            this.f908h = context.getString(R.string.ADDF_TTL_ADD_FAVORITE);
        } else {
            this.f908h = str;
        }
        this.f909i = str;
        this.f910j = hVar;
        this.f911k = i2;
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(this.f908h);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_add_to_favotite, (ViewGroup) null, false);
        builder.setView(viewInflate);
        c0.f fVar = new c0.f(context);
        Resources resources = context.getResources();
        Resources.Theme themeNewTheme = context.getResources().newTheme();
        themeNewTheme.applyStyle(t0.b.f2088i, true);
        for (int i3 = -2; i3 <= 13; i3++) {
            int iD = t0.b.d();
            int iB = z0.b.b(iD, i3);
            fVar.f415b.add(new c0.h(iD != 4096 ? z0.c.i(resources, themeNewTheme, iB) : resources.getDrawable(iB)));
        }
        int i4 = this.f911k;
        if (i4 + 2 < 0 || i4 - (-2) > 13) {
            this.f911k = 13;
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_text);
        textView.setText(textView.getText().toString().replace("%1", this.f910j.t()));
        ((EditText) viewInflate.findViewById(R.id.edt_text)).setText(this.f909i);
        Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spn_icon);
        spinner.setAdapter((SpinnerAdapter) fVar);
        spinner.setSelection(this.f911k - (-2));
        builder.setPositiveButton(R.string.BTN_OK, this);
        builder.setNegativeButton(R.string.BTN_CANCEL, this);
        builder.setOnCancelListener(this);
        AlertDialog alertDialogCreate = builder.create();
        this.f907g = alertDialogCreate;
        i.p(alertDialogCreate);
        c();
    }

    @Override
    public final void e() {
        t();
        AlertDialog alertDialog = this.f907g;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f907g = null;
        }
        g();
    }

    @Override
    public final int l() {
        return 11;
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
        t();
        if (i2 == -1 && (dVar = this.f961b) != null) {
            dVar.a(this);
        }
        if (i2 == -2 && (cVar = this.f960a) != null) {
            cVar.b(this);
        }
        e();
    }

    public final void t() {
        AlertDialog alertDialog = this.f907g;
        if (alertDialog == null) {
            return;
        }
        this.f909i = ((EditText) alertDialog.findViewById(R.id.edt_text)).getText().toString();
        this.f911k = ((Spinner) this.f907g.findViewById(R.id.spn_icon)).getSelectedItemPosition() - 2;
    }
}
