package com.transsion.xuanniao.account.comm.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.xuanniao.account.R;

public class NormalInput extends FrameLayout {
    public EditText OppO00p;

    public class a implements View.OnFocusChangeListener {
        public a() {
        }

        @Override
        public void onFocusChange(View view, boolean z) {
            NormalInput.this.findViewById(R.id.line).setBackgroundColor(NormalInput.this.getResources().getColor(z ? R.color.xn_line_s : R.color.xn_line));
        }
    }

    public NormalInput(@NonNull Context context) {
        super(context);
    }

    public final void OppO00p(TypedArray typedArray) {
        String string = typedArray.getString(R.styleable.InputView_hint_resource);
        findViewById(R.id.line).setVisibility(typedArray.getBoolean(R.styleable.InputView_show_line, true) ? 0 : 4);
        EditText editText = (EditText) findViewById(R.id.edit);
        if (string != null && !string.isEmpty()) {
            editText.setHint(string);
        }
        int integer = typedArray.getInteger(R.styleable.InputView_max_length, -1);
        if (integer >= 0) {
            editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(integer)});
        }
        typedArray.recycle();
    }

    public EditText getEdit() {
        return this.OppO00p;
    }

    public String getText() {
        return this.OppO00p.getText().toString();
    }

    public void setText(String str) {
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(this.OppO00p.getText().length());
    }

    public void setTextMoveCursorLast(@NonNull String str) {
        this.OppO00p.setText(str);
        this.OppO00p.setSelection(str.length());
    }

    public NormalInput(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.xn_normal_input, (ViewGroup) this, true);
        OppO00p(context.obtainStyledAttributes(attributeSet, R.styleable.InputView));
        OppO00p();
    }

    public final void OppO00p() {
        EditText editText = (EditText) findViewById(R.id.edit);
        this.OppO00p = editText;
        editText.setOnFocusChangeListener(new a());
    }
}
