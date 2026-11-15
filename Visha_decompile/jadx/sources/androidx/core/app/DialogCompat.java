package androidx.core.app;

import android.app.Dialog;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

public class DialogCompat {

    @RequiresApi(28)
    public static class Api28Impl {
        private Api28Impl() {
        }

        public static <T> T requireViewById(Dialog dialog, int i) {
            return (T) dialog.requireViewById(i);
        }
    }

    private DialogCompat() {
    }

    @NonNull
    public static View requireViewById(@NonNull Dialog dialog, int i) {
        return (View) Api28Impl.requireViewById(dialog, i);
    }
}
