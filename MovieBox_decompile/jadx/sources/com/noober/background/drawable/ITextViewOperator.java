package com.noober.background.drawable;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

public interface ITextViewOperator {
    void invoke(Context context, AttributeSet attributeSet, TextView textView);
}
