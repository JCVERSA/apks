package com.transsion.vishaplayersdk.gsyplayer.video.base;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.NonNull;
import com.transsion.vishaplayersdk.R;

public class CustomClickableSpan extends ClickableSpan {
    private Context context;
    private boolean underLine;

    public CustomClickableSpan(Context context, boolean z) {
        this.context = context;
        this.underLine = z;
    }

    @Override
    public void onClick(@NonNull View view) {
    }

    @Override
    public void updateDrawState(@NonNull TextPaint textPaint) {
        TypedValue typedValue = new TypedValue();
        textPaint.setUnderlineText(this.underLine);
        this.context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        textPaint.setColor(typedValue.data);
    }

    public CustomClickableSpan(Context context) {
        this.context = context;
    }
}
