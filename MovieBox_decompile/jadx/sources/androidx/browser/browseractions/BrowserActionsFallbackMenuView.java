package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.browser.R$dimen;

@Deprecated
public class BrowserActionsFallbackMenuView extends LinearLayout {

    private final int f1835a;

    private final int f1836b;

    public BrowserActionsFallbackMenuView(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1835a = getResources().getDimensionPixelOffset(R$dimen.browser_actions_context_menu_min_padding);
        this.f1836b = getResources().getDimensionPixelOffset(R$dimen.browser_actions_context_menu_max_width);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f1835a * 2), this.f1836b), 1073741824), i11);
    }
}
