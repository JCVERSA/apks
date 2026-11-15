package defpackage;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.util.TypedValue;
import com.transsion.playercommon.R;

public abstract class eo1 extends ClickableSpan {
    public Context b;

    public eo1(Context context) {
        this.b = context;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        TypedValue typedValue = new TypedValue();
        this.b.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        textPaint.setColor(typedValue.data);
    }
}
