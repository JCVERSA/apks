package defpackage;

import android.content.Context;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.widget.TextView;
import com.transsion.xuanniao.account.R;

public class ir7 extends LinkMovementMethod {
    public static LinkMovementMethod a;

    public static LinkMovementMethod a() {
        if (a == null) {
            a = new ir7();
        }
        return a;
    }

    public final void b(TextView textView, Spannable spannable) {
        int color;
        ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(0, spannable.length(), ClickableSpan.class);
        try {
            color = olb.z(textView.getContext());
        } catch (Throwable unused) {
            color = textView.getContext().getColor(R.color.xn_link_color);
        }
        for (int i = 0; i < clickableSpanArr.length; i++) {
            try {
                spannable.setSpan(new ForegroundColorSpan(color), spannable.getSpanStart(clickableSpanArr[i]), spannable.getSpanEnd(clickableSpanArr[i]), 33);
            } catch (Exception e) {
                Log.d("com.palm.id.log", Log.getStackTraceString(e));
            }
        }
        Selection.removeSelection(spannable);
    }

    @Override
    public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
        int color;
        int action = motionEvent.getAction();
        if (action == 1 || action == 0 || action == 2 || action == 3) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            int totalPaddingLeft = x - textView.getTotalPaddingLeft();
            int totalPaddingTop = y - textView.getTotalPaddingTop();
            int scrollX = textView.getScrollX() + totalPaddingLeft;
            int scrollY = textView.getScrollY() + totalPaddingTop;
            Layout layout = textView.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
            ClickableSpan[] clickableSpanArr = (ClickableSpan[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, ClickableSpan.class);
            if (clickableSpanArr.length != 0) {
                if (action == 1) {
                    clickableSpanArr[0].onClick(textView);
                    b(textView, spannable);
                } else if (action == 0 || action == 2) {
                    try {
                        Context context = textView.getContext();
                        TypedValue typedValue = new TypedValue();
                        color = context.getTheme().resolveAttribute(R.attr.os_platform_disabled_color, typedValue, true) ? context.getColor(typedValue.resourceId) : 0;
                    } catch (Exception unused) {
                        color = textView.getContext().getColor(R.color.xn_link_color_dis);
                    }
                    try {
                        spannable.setSpan(new ForegroundColorSpan(color), spannable.getSpanStart(clickableSpanArr[0]), spannable.getSpanEnd(clickableSpanArr[0]), 33);
                    } catch (Exception e) {
                        Log.d("com.palm.id.log", Log.getStackTraceString(e));
                    }
                } else {
                    b(textView, spannable);
                }
                return true;
            }
            b(textView, spannable);
        }
        return false;
    }
}
