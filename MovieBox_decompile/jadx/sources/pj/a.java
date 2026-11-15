package pj;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.style.ClickableSpan;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.internal.Intrinsics;

public final class a implements View.OnTouchListener {

    private Spannable f69173a;

    public a(Spannable spannable) {
        this.f69173a = spannable;
    }

    @Override
    public boolean onTouch(View textView, MotionEvent event) {
        Intrinsics.h(textView, "textView");
        Intrinsics.h(event, "event");
        int action = event.getAction();
        if (!(textView instanceof TextView)) {
            return false;
        }
        if (action == 0 || action == 1) {
            float x10 = event.getX();
            float y10 = event.getY();
            TextView textView2 = (TextView) textView;
            float totalPaddingLeft = x10 - textView2.getTotalPaddingLeft();
            float totalPaddingTop = y10 - textView2.getTotalPaddingTop();
            float scrollX = totalPaddingLeft + textView.getScrollX();
            float scrollY = totalPaddingTop + textView.getScrollY();
            Layout layout = textView2.getLayout();
            Intrinsics.g(layout, "getLayout(...)");
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical((int) scrollY), scrollX);
            Spannable spannable = this.f69173a;
            ClickableSpan[] clickableSpanArr = spannable != null ? (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class) : null;
            if (!(clickableSpanArr.length == 0)) {
                if (action == 0) {
                    Spannable spannable2 = this.f69173a;
                    if (spannable2 != null) {
                        int spanStart = spannable2.getSpanStart(clickableSpanArr[0]);
                        Spannable spannable3 = this.f69173a;
                        if (spannable3 != null) {
                            try {
                                Selection.setSelection(this.f69173a, spanStart, spannable3.getSpanEnd(clickableSpanArr[0]));
                            } catch (Throwable unused) {
                            }
                        }
                    }
                } else if (action == 1) {
                    clickableSpanArr[0].onClick(textView);
                }
                return true;
            }
            Selection.removeSelection(this.f69173a);
        }
        return false;
    }
}
