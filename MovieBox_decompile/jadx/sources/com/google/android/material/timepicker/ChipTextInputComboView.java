package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.f0;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;

class ChipTextInputComboView extends FrameLayout implements Checkable {

    private final Chip f29201a;

    private final TextInputLayout f29202b;

    private final EditText f29203c;

    private TextWatcher f29204d;

    private TextView f29205e;

    private class b extends a0 {
        private b() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f29201a.setText(ChipTextInputComboView.this.d("00"));
                return;
            }
            String strD = ChipTextInputComboView.this.d(editable);
            Chip chip = ChipTextInputComboView.this.f29201a;
            if (TextUtils.isEmpty(strD)) {
                strD = ChipTextInputComboView.this.d("00");
            }
            chip.setText(strD);
        }
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public String d(CharSequence charSequence) {
        return TimeModel.a(getResources(), charSequence);
    }

    private void h() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f29203c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    public void c(InputFilter inputFilter) {
        InputFilter[] filters = this.f29203c.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f29203c.setFilters(inputFilterArr);
    }

    public TextInputLayout e() {
        return this.f29202b;
    }

    public void f(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f29201a, accessibilityDelegateCompat);
    }

    public void g(CharSequence charSequence) {
        String strD = d(charSequence);
        this.f29201a.setText(strD);
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        this.f29203c.removeTextChangedListener(this.f29204d);
        this.f29203c.setText(strD);
        this.f29203c.addTextChangedListener(this.f29204d);
    }

    @Override
    public boolean isChecked() {
        return this.f29201a.isChecked();
    }

    @Override
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        h();
    }

    @Override
    public void setChecked(boolean z10) {
        this.f29201a.setChecked(z10);
        this.f29203c.setVisibility(z10 ? 0 : 4);
        this.f29201a.setVisibility(z10 ? 8 : 0);
        if (isChecked()) {
            f0.t(this.f29203c, false);
        }
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f29201a.setOnClickListener(onClickListener);
    }

    @Override
    public void setTag(int i10, Object obj) {
        this.f29201a.setTag(i10, obj);
    }

    @Override
    public void toggle() {
        this.f29201a.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(R$layout.material_time_chip, (ViewGroup) this, false);
        this.f29201a = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(R$layout.material_time_input, (ViewGroup) this, false);
        this.f29202b = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f29203c = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.f29204d = bVar;
        editText.addTextChangedListener(bVar);
        h();
        addView(chip);
        addView(textInputLayout);
        this.f29205e = (TextView) findViewById(R$id.material_label);
        editText.setId(ViewCompat.generateViewId());
        ViewCompat.setLabelFor(this.f29205e, editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
