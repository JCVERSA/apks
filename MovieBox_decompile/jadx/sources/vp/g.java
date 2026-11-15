package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class g implements f4.a {

    private final ConstraintLayout f73733a;

    public final FrameLayout f73734b;

    public final MagicIndicator f73735c;

    public final View f73736d;

    public final ProgressBar f73737e;

    public final ViewPager2 f73738f;

    private g(ConstraintLayout constraintLayout, FrameLayout frameLayout, MagicIndicator magicIndicator, View view, ProgressBar progressBar, ViewPager2 viewPager2) {
        this.f73733a = constraintLayout;
        this.f73734b = frameLayout;
        this.f73735c = magicIndicator;
        this.f73736d = view;
        this.f73737e = progressBar;
        this.f73738f = viewPager2;
    }

    public static g a(View view) {
        View viewA;
        int i10 = R$id.search_result_empty_view;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.search_result_magic_indicator;
            MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
            if (magicIndicator != null && (viewA = f4.b.a(view, (i10 = R$id.search_result_magic_indicator_divider))) != null) {
                i10 = R$id.search_result_progress_bar;
                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                if (progressBar != null) {
                    i10 = R$id.search_result_view_pager;
                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                    if (viewPager2 != null) {
                        return new g((ConstraintLayout) view, frameLayout, magicIndicator, viewA, progressBar, viewPager2);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_result, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73733a;
    }
}
