package com.transsion.widgets;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.LongClickListener;

public class LongClickImageView extends AppCompatImageView {
    public LongClickImageView(Context context) {
        super(context);
    }

    public void setLongClickListener(LongClickListener longClickListener) {
        longClickListener.init(this);
    }

    public LongClickImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LongClickImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
