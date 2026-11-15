package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class o0 implements f4.a {

    private final ConstraintLayout f16190a;

    public final CoordinatorLayout f16191b;

    public final FrameLayout f16192c;

    public final FrameLayout f16193d;

    public final LinearLayout f16194e;

    public final MagicIndicator f16195f;

    public final AppCompatTextView f16196g;

    public final ViewPager2 f16197h;

    private o0(ConstraintLayout constraintLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout, MagicIndicator magicIndicator, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f16190a = constraintLayout;
        this.f16191b = coordinatorLayout;
        this.f16192c = frameLayout;
        this.f16193d = frameLayout2;
        this.f16194e = linearLayout;
        this.f16195f = magicIndicator;
        this.f16196g = appCompatTextView;
        this.f16197h = viewPager2;
    }

    public static o0 a(View view) {
        int i10 = R$id.cl_root;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
        if (coordinatorLayout != null) {
            i10 = R$id.flAppDownloadAd;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.flTopCardAd;
                FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout2 != null) {
                    i10 = R$id.llTabLayout;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                        if (magicIndicator != null) {
                            i10 = R$id.tvTitleAll;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.view_pager;
                                ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                if (viewPager2 != null) {
                                    return new o0((ConstraintLayout) view, coordinatorLayout, frameLayout, frameLayout2, linearLayout, magicIndicator, appCompatTextView, viewPager2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_download_manager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16190a;
    }
}
