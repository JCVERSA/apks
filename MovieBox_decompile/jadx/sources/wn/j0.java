package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;

public final class j0 implements f4.a {

    private final AppCompatTextView f74428a;

    public final AppCompatTextView f74429b;

    private j0(AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f74428a = appCompatTextView;
        this.f74429b = appCompatTextView2;
    }

    public static j0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) view;
        return new j0(appCompatTextView, appCompatTextView);
    }

    @Override
    public AppCompatTextView getRoot() {
        return this.f74428a;
    }
}
