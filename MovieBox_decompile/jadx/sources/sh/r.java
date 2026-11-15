package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class r implements f4.a {

    private final FrameLayout f72168a;

    public final AppCompatTextView f72169b;

    private r(FrameLayout frameLayout, AppCompatTextView appCompatTextView) {
        this.f72168a = frameLayout;
        this.f72169b = appCompatTextView;
    }

    public static r a(View view) {
        int i10 = R$id.tvConfig;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            return new r((FrameLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static r c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_other_config_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f72168a;
    }
}
