package g0;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.Spinner;
import ru.zdevs.zarchiver.R;

public final class e implements AdapterView.OnItemSelectedListener {

    public final h f937a;

    public e(h hVar) {
        this.f937a = hVar;
    }

    @Override
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i2, long j2) {
        AlertDialog alertDialog;
        h hVar = this.f937a;
        if (i2 != hVar.f948l || (alertDialog = hVar.f943g) == null) {
            return;
        }
        Context context = alertDialog.getContext();
        hVar.getClass();
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(R.string.app_name);
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dlg_split_size, (ViewGroup) null, false);
        EditText editText = (EditText) viewInflate.findViewById(R.id.etSplitSize);
        Spinner spinner = (Spinner) viewInflate.findViewById(R.id.spSplitSize);
        spinner.setSelection(2);
        builder.setView(viewInflate);
        builder.setPositiveButton(R.string.BTN_OK, new g(hVar, editText, context, spinner));
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.show();
        alertDialogCreate.setCanceledOnTouchOutside(false);
    }

    @Override
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
