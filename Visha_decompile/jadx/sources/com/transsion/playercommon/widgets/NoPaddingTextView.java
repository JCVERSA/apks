package com.transsion.playercommon.widgets;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.SpannableString;
import android.text.style.LineHeightSpan;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;

public class NoPaddingTextView extends AppCompatTextView {

    public class a implements LineHeightSpan {
        public final TextView b;

        public a(TextView textView) {
            this.b = textView;
        }

        @Override
        public void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
            Rect rect = new Rect();
            this.b.getPaint().getTextBounds(charSequence, 0, charSequence.length(), rect);
            if (rect.bottom - rect.top < this.b.getTextSize()) {
                float textSize = this.b.getTextSize();
                int i5 = rect.bottom;
                int i6 = rect.top;
                float f = (textSize - (i5 - i6)) / 2.0f;
                fontMetricsInt.top = (int) (i6 - f);
                fontMetricsInt.bottom = (int) (i5 + f);
            } else {
                fontMetricsInt.top = rect.top;
                fontMetricsInt.bottom = rect.bottom;
            }
            fontMetricsInt.ascent = fontMetricsInt.top;
            fontMetricsInt.descent = fontMetricsInt.bottom;
        }
    }

    public NoPaddingTextView(@NonNull Context context) {
        this(context, null);
    }

    public final SpannableString getNoVerticalPaddingText(TextView textView, CharSequence charSequence) {
        if (textView == null || charSequence == null) {
            return new SpannableString("");
        }
        textView.setPadding(textView.getPaddingLeft(), 0, textView.getPaddingRight(), 0);
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new a(textView), 0, charSequence.length(), 33);
        return spannableString;
    }

    @Override
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(getNoVerticalPaddingText(this, charSequence), bufferType);
    }

    public NoPaddingTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NoPaddingTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
