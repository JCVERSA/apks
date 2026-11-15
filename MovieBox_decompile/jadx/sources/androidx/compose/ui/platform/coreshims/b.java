package androidx.compose.ui.platform.coreshims;

import android.view.autofill.AutofillId;

public class b {

    private final Object f5444a;

    private b(AutofillId autofillId) {
        this.f5444a = autofillId;
    }

    public static b b(AutofillId autofillId) {
        return new b(autofillId);
    }

    public AutofillId a() {
        return a.a(this.f5444a);
    }
}
