package g0;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.Spinner;
import ru.zdevs.zarchiver.R;

public final class g implements DialogInterface.OnClickListener {

    public final EditText f939a;

    public final Context f940b;

    public final Spinner f941c;

    public final h f942d;

    public g(h hVar, EditText editText, Context context, Spinner spinner) {
        this.f942d = hVar;
        this.f939a = editText;
        this.f940b = context;
        this.f941c = spinner;
    }

    @Override
    public final void onClick(DialogInterface dialogInterface, int i2) {
        h hVar = this.f942d;
        if (hVar.f943g == null) {
            return;
        }
        try {
            int i3 = Integer.parseInt(this.f939a.getText().toString());
            Spinner spinner = (Spinner) hVar.f943g.findViewById(R.id.spn_split);
            if (i3 <= 0 || spinner == null) {
                return;
            }
            hVar.t(this.f940b, i3 + this.f941c.getSelectedItem().toString());
        } catch (Exception unused) {
        }
    }
}
