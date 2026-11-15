package androidx.compose.ui.contentcapture;

import android.view.autofill.AutofillId;
import android.view.translation.ViewTranslationRequest;

public abstract class b {
    public static ViewTranslationRequest.Builder a(AutofillId autofillId, long j10) {
        return new ViewTranslationRequest.Builder(autofillId, j10);
    }
}
