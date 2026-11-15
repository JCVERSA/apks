package com.google.android.material.internal;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class TextWatcherAdapter implements TextWatcher {
    @Override
    public void afterTextChanged(@NonNull Editable editable) {
    }

    @Override
    public void beforeTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override
    public void onTextChanged(@NonNull CharSequence charSequence, int i, int i2, int i3) {
    }
}
