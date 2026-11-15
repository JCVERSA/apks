package defpackage;

import android.content.Context;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

public class er7 extends ClickableSpan {
    public final int b;
    public final a c;
    public long d = 0;

    public interface a {
        void onClick(View view);
    }

    public er7(Context context, a aVar) {
        this.b = olb.z(context);
        this.c = aVar;
    }

    @Override
    public void onClick(View view) {
        a aVar;
        long jAbs = Math.abs(System.currentTimeMillis() - this.d);
        this.d = System.currentTimeMillis();
        if (jAbs >= 1000 && (aVar = this.c) != null) {
            aVar.onClick(view);
        }
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
        textPaint.setColor(this.b);
    }
}
