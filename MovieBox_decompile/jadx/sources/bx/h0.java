package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class h0 implements f4.a {

    private final ConstraintLayout f16069a;

    public final CoordinatorLayout f16070b;

    public final FrameLayout f16071c;

    public final FrameLayout f16072d;

    public final FrameLayout f16073e;

    public final MagicIndicator f16074f;

    public final AppCompatTextView f16075g;

    public final ViewPager2 f16076h;

    private h0(ConstraintLayout constraintLayout, CoordinatorLayout coordinatorLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, MagicIndicator magicIndicator, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f16069a = constraintLayout;
        this.f16070b = coordinatorLayout;
        this.f16071c = frameLayout;
        this.f16072d = frameLayout2;
        this.f16073e = frameLayout3;
        this.f16074f = magicIndicator;
        this.f16075g = appCompatTextView;
        this.f16076h = viewPager2;
    }

    public static h0 a(View view) {
        int i10 = R$id.cl_root;
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
        if (coordinatorLayout != null) {
            i10 = R$id.flAppDownloadAd;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.flDownloadingContainer;
                FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout2 != null) {
                    i10 = R$id.flTopCardAd;
                    FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout3 != null) {
                        i10 = R$id.magic_indicator;
                        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                        if (magicIndicator != null) {
                            i10 = R$id.tv_available_size;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.view_pager;
                                ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                if (viewPager2 != null) {
                                    return new h0((ConstraintLayout) view, coordinatorLayout, frameLayout, frameLayout2, frameLayout3, magicIndicator, appCompatTextView, viewPager2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_file_manager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16069a;
    }
}
