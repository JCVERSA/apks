package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;

public class MusicMarqueTextView extends AppCompatTextView {
    public MusicMarqueTextView(Context context) {
        super(context);
    }

    @Override
    public boolean isSelected() {
        return true;
    }

    public MusicMarqueTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MusicMarqueTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
