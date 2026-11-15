package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class l implements f4.a {

    private final ConstraintLayout f65820a;

    public final AppCompatImageView f65821b;

    public final AppCompatTextView f65822c;

    public final AppCompatTextView f65823d;

    public final AppCompatTextView f65824e;

    public final AppCompatTextView f65825f;

    public final AppCompatTextView f65826g;

    private l(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5) {
        this.f65820a = constraintLayout;
        this.f65821b = appCompatImageView;
        this.f65822c = appCompatTextView;
        this.f65823d = appCompatTextView2;
        this.f65824e = appCompatTextView3;
        this.f65825f = appCompatTextView4;
        this.f65826g = appCompatTextView5;
    }

    public static l a(View view) {
        int i10 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.innerTvName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.innerTvTitle;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        i10 = R$id.tvContentTips;
                        AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView4 != null) {
                            i10 = R$id.tvContentTitle;
                            AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView5 != null) {
                                return new l((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_resource_detector_family_mode_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65820a;
    }
}
