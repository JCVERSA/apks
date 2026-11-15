package x;

import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;

public final class r {

    public static final r f74804a = new r();

    private r() {
    }

    public final AutofillId a(ViewStructure viewStructure) {
        return viewStructure.getAutofillId();
    }

    public final boolean b(AutofillValue autofillValue) {
        return autofillValue.isDate();
    }

    public final boolean c(AutofillValue autofillValue) {
        return autofillValue.isList();
    }

    public final boolean d(AutofillValue autofillValue) {
        return autofillValue.isText();
    }

    public final boolean e(AutofillValue autofillValue) {
        return autofillValue.isToggle();
    }

    public final void f(ViewStructure viewStructure, String[] strArr) {
        viewStructure.setAutofillHints(strArr);
    }

    public final void g(ViewStructure viewStructure, AutofillId autofillId, int i10) {
        viewStructure.setAutofillId(autofillId, i10);
    }

    public final void h(ViewStructure viewStructure, int i10) {
        viewStructure.setAutofillType(i10);
    }

    public final CharSequence i(AutofillValue autofillValue) {
        return autofillValue.getTextValue();
    }
}
