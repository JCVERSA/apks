package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import com.transsion.playercommon.R;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import java.util.Locale;

public class CustomRadioButton extends AppCompatRadioButton {
    public float b;
    public boolean c;

    public CustomRadioButton(Context context) {
        this(context, null);
    }

    public final void a(Context context) {
        if ("sw".equals(Locale.getDefault().getLanguage())) {
            setText(context.getString(R.string.minutes) + " " + FileOperateUtils.J((int) this.b));
            return;
        }
        setText(FileOperateUtils.J((int) this.b) + " " + context.getString(R.string.minutes));
    }

    public float getValue() {
        return this.b;
    }

    public void setValue(boolean z, float f) {
        this.c = z;
        this.b = f;
        if (z) {
            a(getContext());
        }
    }

    public CustomRadioButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CustomRadioButton);
        this.b = typedArrayObtainStyledAttributes.getFloat(R.styleable.CustomRadioButton_value, 1.0f);
        this.c = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CustomRadioButton_isTimer, false);
        typedArrayObtainStyledAttributes.recycle();
        if (this.c) {
            a(context);
        }
    }
}
