package ru.zdevs.zarchiver.ui.list;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.WindowInsets;
import android.widget.ListView;

public class FitListView extends ListView {
    public FitListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setFitsSystemWindows(true);
    }

    @Override
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        boolean z2 = getLeft() == 0;
        fitSystemWindows(new Rect(z2 ? windowInsets.getSystemWindowInsetLeft() : 0, windowInsets.getSystemWindowInsetTop(), z2 ? 0 : windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom()));
        return windowInsets;
    }
}
