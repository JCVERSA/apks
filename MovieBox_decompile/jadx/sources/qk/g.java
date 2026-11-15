package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.RoundedArrowImageView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class g implements f4.a {

    private final ConstraintLayout f69737a;

    public final ConstraintLayout f69738b;

    public final AppCompatImageView f69739c;

    public final RoundedArrowImageView f69740d;

    public final ConstraintLayout f69741e;

    private g(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, RoundedArrowImageView roundedArrowImageView, ConstraintLayout constraintLayout3) {
        this.f69737a = constraintLayout;
        this.f69738b = constraintLayout2;
        this.f69739c = appCompatImageView;
        this.f69740d = roundedArrowImageView;
        this.f69741e = constraintLayout3;
    }

    public static g a(View view) {
        int i10 = R$id.bubble_container;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null) {
            i10 = R$id.iv_ges;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_rounded;
                RoundedArrowImageView roundedArrowImageView = (RoundedArrowImageView) f4.b.a(view, i10);
                if (roundedArrowImageView != null) {
                    i10 = R$id.iv_search_container;
                    ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                    if (constraintLayout2 != null) {
                        return new g((ConstraintLayout) view, constraintLayout, appCompatImageView, roundedArrowImageView, constraintLayout2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_search_guide, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69737a;
    }
}
