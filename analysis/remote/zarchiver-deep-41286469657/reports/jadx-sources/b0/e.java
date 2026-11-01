package b0;

import android.view.View;
import android.view.ViewTreeObserver;

public final class e implements ViewTreeObserver.OnPreDrawListener {

    public final View f279a;

    public e(View view) {
        this.f279a = view;
    }

    @Override
    public final boolean onPreDraw() {
        View view = this.f279a;
        z0.f.j(view);
        view.getViewTreeObserver().removeOnPreDrawListener(this);
        return true;
    }
}
