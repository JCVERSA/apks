package eh;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import com.tn.lib.widget.R$id;

public final class e implements f4.a {

    private final View f59693a;

    public final AppCompatImageView f59694b;

    private e(View view, AppCompatImageView appCompatImageView) {
        this.f59693a = view;
        this.f59694b = appCompatImageView;
    }

    public static e a(View view) {
        int i10 = R$id.iv_join;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            return new e(view, appCompatImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f59693a;
    }
}
