package x;

import android.view.View;
import android.view.autofill.AutofillManager;

public final class d implements g {

    private final View f74800a;

    private final w f74801b;

    private final AutofillManager f74802c;

    public d(View view, w wVar) {
        this.f74800a = view;
        this.f74801b = wVar;
        AutofillManager autofillManagerA = b.a(view.getContext().getSystemService(a.a()));
        if (autofillManagerA == null) {
            throw new IllegalStateException("Autofill service could not be located.");
        }
        this.f74802c = autofillManagerA;
        view.setImportantForAutofill(1);
    }

    public final AutofillManager a() {
        return this.f74802c;
    }

    public final w b() {
        return this.f74801b;
    }

    public final View c() {
        return this.f74800a;
    }
}
