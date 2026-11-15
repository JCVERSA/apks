package com.transsion.baseui.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.R$styleable;

public class EditTextWithClear extends AppCompatEditText implements View.OnFocusChangeListener, TextWatcher {

    private Drawable f42371a;

    private boolean f42372b;

    private boolean f42373c;

    public interface a {
    }

    public EditTextWithClear(Context context) {
        this(context, null);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.EditTextWithClear);
        this.f42371a = typedArrayObtainStyledAttributes.getDrawable(R$styleable.EditTextWithClear_et_clear_ic);
        this.f42373c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.EditTextWithClear_et_close_withoutfocus, false);
        if (this.f42371a == null) {
            this.f42371a = androidx.core.content.b.getDrawable(context, R$mipmap.ic_input_close);
        }
        Drawable drawable = this.f42371a;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f42371a.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    @Override
    public void afterTextChanged(Editable editable) {
    }

    @Override
    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void hideClear() {
        setClearIconVisible(false);
        this.f42372b = false;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void onFocusChange(View view, boolean z10) {
        if (z10) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
    }

    @Override
    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        setClearIconVisible(charSequence.length() > 0 && (hasFocus() || this.f42373c));
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getCompoundDrawables()[2] != null && motionEvent.getAction() == 1) {
            double width = ((double) (getWidth() - getPaddingRight())) - (((double) this.f42371a.getIntrinsicWidth()) * 1.5d);
            double width2 = ((double) (getWidth() - getPaddingRight())) + (((double) this.f42371a.getIntrinsicWidth()) * 0.5d);
            if (motionEvent.getX() > width && motionEvent.getX() < width2) {
                setText("");
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setActionListener(a aVar) {
    }

    protected void setClearIconVisible(boolean z10) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], (z10 && this.f42372b) ? this.f42371a : null, getCompoundDrawables()[3]);
    }

    public void showClear() {
        this.f42372b = true;
        setClearIconVisible(false);
    }

    public EditTextWithClear(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public EditTextWithClear(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f42372b = true;
        this.f42373c = false;
        init(context, attributeSet);
    }
}
