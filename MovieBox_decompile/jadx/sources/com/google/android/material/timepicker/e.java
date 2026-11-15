package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;

class e implements InputFilter {

    private int f29292a;

    public e(int i10) {
        this.f29292a = i10;
    }

    @Override
    public CharSequence filter(CharSequence charSequence, int i10, int i11, Spanned spanned, int i12, int i13) {
        try {
            StringBuilder sb2 = new StringBuilder(spanned);
            sb2.replace(i12, i13, charSequence.subSequence(i10, i11).toString());
            if (Integer.parseInt(sb2.toString()) <= this.f29292a) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
