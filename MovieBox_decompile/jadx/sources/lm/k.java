package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.ResourcesRequestView;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;

public final class k implements f4.a {

    private final ConstraintLayout f65815a;

    public final AppCompatImageView f65816b;

    public final AppCompatTextView f65817c;

    public final AppCompatTextView f65818d;

    public final ResourcesRequestView f65819e;

    private k(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ResourcesRequestView resourcesRequestView) {
        this.f65815a = constraintLayout;
        this.f65816b = appCompatImageView;
        this.f65817c = appCompatTextView;
        this.f65818d = appCompatTextView2;
        this.f65819e = resourcesRequestView;
    }

    public static k a(View view) {
        int i10 = R$id.innerIcon;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.innerTvInfo;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.innerTvTitle;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.iv_resources;
                    ResourcesRequestView resourcesRequestView = (ResourcesRequestView) f4.b.a(view, i10);
                    if (resourcesRequestView != null) {
                        return new k((ConstraintLayout) view, appCompatImageView, appCompatTextView, appCompatTextView2, resourcesRequestView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_resource_detector_empty_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f65815a;
    }
}
