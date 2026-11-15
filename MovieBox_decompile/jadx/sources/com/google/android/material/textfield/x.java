package com.google.android.material.textfield;

import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.google.android.material.R$drawable;
import com.google.android.material.R$string;

class x extends s {

    private int f29188e;

    private EditText f29189f;

    private final View.OnClickListener f29190g;

    x(r rVar, int i10) {
        super(rVar);
        this.f29188e = R$drawable.design_password_eye;
        this.f29190g = new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.f29187a.y(view);
            }
        };
        if (i10 != 0) {
            this.f29188e = i10;
        }
    }

    private boolean w() {
        EditText editText = this.f29189f;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private static boolean x(EditText editText) {
        return editText != null && (editText.getInputType() == 16 || editText.getInputType() == 128 || editText.getInputType() == 144 || editText.getInputType() == 224);
    }

    public void y(View view) {
        EditText editText = this.f29189f;
        if (editText == null) {
            return;
        }
        int selectionEnd = editText.getSelectionEnd();
        if (w()) {
            this.f29189f.setTransformationMethod(null);
        } else {
            this.f29189f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (selectionEnd >= 0) {
            this.f29189f.setSelection(selectionEnd);
        }
        r();
    }

    @Override
    void b(CharSequence charSequence, int i10, int i11, int i12) {
        r();
    }

    @Override
    int c() {
        return R$string.password_toggle_content_description;
    }

    @Override
    int d() {
        return this.f29188e;
    }

    @Override
    View.OnClickListener f() {
        return this.f29190g;
    }

    @Override
    boolean l() {
        return true;
    }

    @Override
    boolean m() {
        return !w();
    }

    @Override
    void n(EditText editText) {
        this.f29189f = editText;
        r();
    }

    @Override
    void s() {
        if (x(this.f29189f)) {
            this.f29189f.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }

    @Override
    void u() {
        EditText editText = this.f29189f;
        if (editText != null) {
            editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
    }
}
