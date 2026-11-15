package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.textfield.TextInputLayout;

class j implements TextView.OnEditorActionListener, View.OnKeyListener {

    private final ChipTextInputComboView f29307a;

    private final ChipTextInputComboView f29308b;

    private final TimeModel f29309c;

    private boolean f29310d = false;

    j(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f29307a = chipTextInputComboView;
        this.f29308b = chipTextInputComboView2;
        this.f29309c = timeModel;
    }

    private void b(EditText editText) {
        if (editText.getSelectionStart() == 0 && editText.length() == 2) {
            editText.getText().clear();
        }
    }

    private void c(int i10) {
        this.f29308b.setChecked(i10 == 12);
        this.f29307a.setChecked(i10 == 10);
        this.f29309c.f29274d = i10;
    }

    private boolean d(int i10, KeyEvent keyEvent, EditText editText) {
        Editable text = editText.getText();
        if (text == null) {
            return false;
        }
        if (i10 >= 7 && i10 <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
            c(12);
            return true;
        }
        b(editText);
        return false;
    }

    private boolean e(int i10, KeyEvent keyEvent, EditText editText) {
        if (i10 == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
            c(10);
            return true;
        }
        b(editText);
        return false;
    }

    public void a() {
        TextInputLayout textInputLayoutE = this.f29307a.e();
        TextInputLayout textInputLayoutE2 = this.f29308b.e();
        EditText editText = textInputLayoutE.getEditText();
        EditText editText2 = textInputLayoutE2.getEditText();
        editText.setImeOptions(268435461);
        editText2.setImeOptions(268435462);
        editText.setOnEditorActionListener(this);
        editText.setOnKeyListener(this);
        editText2.setOnKeyListener(this);
    }

    @Override
    public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        boolean z10 = i10 == 5;
        if (z10) {
            c(12);
        }
        return z10;
    }

    @Override
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (this.f29310d) {
            return false;
        }
        this.f29310d = true;
        EditText editText = (EditText) view;
        boolean zE = this.f29309c.f29274d == 12 ? e(i10, keyEvent, editText) : d(i10, keyEvent, editText);
        this.f29310d = false;
        return zE;
    }
}
