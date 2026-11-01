package ru.zdevs.zarchiver.ui.text;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;

public class ExEditText extends EditText implements TextView.OnEditorActionListener {

    public static final int f1978d = 0;

    public boolean f1979a;

    public View.OnClickListener f1980b;

    public int f1981c;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public final void run() {
            int i2 = ExEditText.f1978d;
            ExEditText exEditText = ExEditText.this;
            if (exEditText.requestFocus()) {
                ((InputMethodManager) exEditText.getContext().getSystemService("input_method")).showSoftInput(exEditText, 1);
            }
            exEditText.f1979a = false;
        }
    }

    public ExEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override
    public final void onEditorAction(int i2) {
        if (getImeOptions() == 67108870 && i2 == 7) {
            onKeyDown(66, new KeyEvent(0, 66));
        } else {
            super.onEditorAction(i2);
        }
    }

    @Override
    public final boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if ((i2 != 66 && i2 != 160) || getImeOptions() != 6) {
            return super.onKeyDown(i2, keyEvent);
        }
        clearFocus();
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
        return true;
    }

    @Override
    public final void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.f1979a) {
            postDelayed(new a(), 300L);
        }
    }

    @Override
    public final boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        View.OnClickListener onClickListener = this.f1980b;
        if (onClickListener == null) {
            return false;
        }
        int i3 = this.f1981c;
        if (i3 != 0 && i3 != i2) {
            return false;
        }
        onClickListener.onClick(this);
        return true;
    }
}
