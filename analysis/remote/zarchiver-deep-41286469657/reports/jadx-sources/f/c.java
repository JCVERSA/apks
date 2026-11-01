package f;

import android.graphics.Rect;
import android.view.View;
import android.view.WindowInsets;

public final class c implements View.OnApplyWindowInsetsListener {

    public final Rect f754a = new Rect();

    public final b f755b;

    public c(b bVar) {
        this.f755b = bVar;
    }

    @Override
    public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (windowInsetsOnApplyWindowInsets.isConsumed()) {
            return windowInsetsOnApplyWindowInsets;
        }
        Rect rect = this.f754a;
        rect.left = windowInsetsOnApplyWindowInsets.getSystemWindowInsetLeft();
        rect.top = windowInsetsOnApplyWindowInsets.getSystemWindowInsetTop();
        rect.right = windowInsetsOnApplyWindowInsets.getSystemWindowInsetRight();
        rect.bottom = windowInsetsOnApplyWindowInsets.getSystemWindowInsetBottom();
        int childCount = this.f755b.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            WindowInsets windowInsetsDispatchApplyWindowInsets = this.f755b.getChildAt(i2).dispatchApplyWindowInsets(windowInsetsOnApplyWindowInsets);
            rect.left = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
            rect.top = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
            rect.right = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
            rect.bottom = Math.min(windowInsetsDispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
        }
        return windowInsetsOnApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
    }
}
