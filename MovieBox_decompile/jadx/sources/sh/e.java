package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.AdTagView;

public final class e implements f4.a {

    private final ConstraintLayout f72091a;

    public final AdTagView f72092b;

    public final ConstraintLayout f72093c;

    public final FrameLayout f72094d;

    public final FrameLayout f72095e;

    public final FrameLayout f72096f;

    public final AppCompatTextView f72097g;

    private e(ConstraintLayout constraintLayout, AdTagView adTagView, ConstraintLayout constraintLayout2, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, AppCompatTextView appCompatTextView) {
        this.f72091a = constraintLayout;
        this.f72092b = adTagView;
        this.f72093c = constraintLayout2;
        this.f72094d = frameLayout;
        this.f72095e = frameLayout2;
        this.f72096f = frameLayout3;
        this.f72097g = appCompatTextView;
    }

    public static e a(View view) {
        int i10 = R$id.adIcon;
        AdTagView adTagView = (AdTagView) f4.b.a(view, i10);
        if (adTagView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.container;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.flVolumeContainer;
                FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout2 != null) {
                    i10 = R$id.movieBoxLayout;
                    FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout3 != null) {
                        i10 = R$id.tvCountDown;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            return new e(constraintLayout, adTagView, constraintLayout, frameLayout, frameLayout2, frameLayout3, appCompatTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_splash, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f72091a;
    }
}
