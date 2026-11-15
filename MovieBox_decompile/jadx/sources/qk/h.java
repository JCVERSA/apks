package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.BlurredSectorView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class h implements f4.a {

    private final ConstraintLayout f69745a;

    public final FrameLayout f69746b;

    public final AppCompatImageView f69747c;

    public final AppCompatImageView f69748d;

    public final FrameLayout f69749e;

    public final ConstraintLayout f69750f;

    public final TnTextView f69751g;

    public final MagicIndicator f69752h;

    public final BlurredSectorView f69753i;

    public final View f69754j;

    public final ViewPager2 f69755k;

    private h(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, FrameLayout frameLayout2, ConstraintLayout constraintLayout2, TnTextView tnTextView, MagicIndicator magicIndicator, BlurredSectorView blurredSectorView, View view, ViewPager2 viewPager2) {
        this.f69745a = constraintLayout;
        this.f69746b = frameLayout;
        this.f69747c = appCompatImageView;
        this.f69748d = appCompatImageView2;
        this.f69749e = frameLayout2;
        this.f69750f = constraintLayout2;
        this.f69751g = tnTextView;
        this.f69752h = magicIndicator;
        this.f69753i = blurredSectorView;
        this.f69754j = view;
        this.f69755k = viewPager2;
    }

    public static h a(View view) {
        View viewA;
        int i10 = R$id.bottom_op_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.bottom_op_mb_logo;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.bottom_op_search_appstore;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.bottom_op_search_gamestore;
                    FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R$id.bottom_op_search_liner;
                        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                        if (constraintLayout != null) {
                            i10 = R$id.bottom_op_search_text;
                            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                            if (tnTextView != null) {
                                i10 = R$id.magicIndicator;
                                MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                if (magicIndicator != null) {
                                    i10 = R$id.trending_bottom_bg;
                                    BlurredSectorView blurredSectorView = (BlurredSectorView) f4.b.a(view, i10);
                                    if (blurredSectorView != null && (viewA = f4.b.a(view, (i10 = R$id.viewLine))) != null) {
                                        i10 = R$id.viewPager;
                                        ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                        if (viewPager2 != null) {
                                            return new h((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, frameLayout2, constraintLayout, tnTextView, magicIndicator, blurredSectorView, viewA, viewPager2);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_bottom_op, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69745a;
    }
}
