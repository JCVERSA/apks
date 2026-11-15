package defpackage;

import com.yandex.div.core.util.text.DivBackgroundSpan;
import com.yandex.div.core.util.text.DivTextRangesBackgroundHelper;
import com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView;

public abstract class km2 {
    public static final boolean a(DivLineHeightTextView divLineHeightTextView, CharSequence charSequence, DivBackgroundSpan divBackgroundSpan, int i, int i2, oj3 oj3Var) {
        y45.j(divLineHeightTextView, "<this>");
        y45.j(charSequence, "text");
        y45.j(divBackgroundSpan, "backgroundSpan");
        y45.j(oj3Var, "resolver");
        if (divLineHeightTextView.getTextRoundedBgHelper() == null) {
            divLineHeightTextView.setTextRoundedBgHelper$div_release(new DivTextRangesBackgroundHelper(divLineHeightTextView, oj3Var));
            return false;
        }
        DivTextRangesBackgroundHelper textRoundedBgHelper = divLineHeightTextView.getTextRoundedBgHelper();
        y45.g(textRoundedBgHelper);
        return textRoundedBgHelper.i(charSequence, divBackgroundSpan, i, i2);
    }
}
