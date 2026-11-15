package eh;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.widget.R$id;

public final class f implements f4.a {

    private final View f59695a;

    public final AppCompatImageView f59696b;

    public final ProgressBar f59697c;

    public final AppCompatTextView f59698d;

    private f(View view, AppCompatImageView appCompatImageView, ProgressBar progressBar, AppCompatTextView appCompatTextView) {
        this.f59695a = view;
        this.f59696b = appCompatImageView;
        this.f59697c = progressBar;
        this.f59698d = appCompatTextView;
    }

    public static f a(View view) {
        int i10 = R$id.iv_join;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.tv_join;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    return new f(view, appCompatImageView, progressBar, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f59695a;
    }
}
