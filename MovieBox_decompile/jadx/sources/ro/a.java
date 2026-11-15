package ro;

import android.text.Editable;
import android.text.TextWatcher;

public interface a extends TextWatcher {

    public static final class C0873a {
        public static void a(a aVar, Editable editable) {
        }

        public static void b(a aVar, CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    @Override
    void afterTextChanged(Editable editable);

    @Override
    void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12);
}
