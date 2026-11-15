package com.google.android.material.datepicker;

import android.view.View;
import android.widget.EditText;
import com.google.android.material.internal.f0;

public abstract class h {
    public static void a(EditText[] editTextArr, View view, boolean z10) {
        for (EditText editText : editTextArr) {
            if (editText.hasFocus()) {
                return;
            }
        }
        f0.o(view, false);
    }

    public static void c(final EditText... editTextArr) {
        if (editTextArr.length == 0) {
            return;
        }
        View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() {
            @Override
            public final void onFocusChange(View view, boolean z10) {
                h.a(editTextArr, view, z10);
            }
        };
        for (EditText editText : editTextArr) {
            editText.setOnFocusChangeListener(onFocusChangeListener);
        }
        final EditText editText2 = editTextArr[0];
        editText2.postDelayed(new Runnable() {
            @Override
            public final void run() {
                f0.t(editText2, false);
            }
        }, 100L);
    }
}
