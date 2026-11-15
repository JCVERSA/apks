package x;

import android.view.View;
import android.view.autofill.AutofillManager$AutofillCallback;

public final class v extends AutofillManager$AutofillCallback {

    public static final v f74805a = new v();

    private v() {
    }

    public final void a(d dVar) {
        dVar.a().registerCallback(s.a(this));
    }

    public final void b(d dVar) {
        dVar.a().unregisterCallback(s.a(this));
    }

    public void onAutofillEvent(View view, int i10, int i11) {
        super.onAutofillEvent(view, i10, i11);
    }
}
