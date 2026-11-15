package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class p0 implements f4.a {

    private final FrameLayout f16202a;

    public final FrameLayout f16203b;

    public final CoordinatorLayout f16204c;

    public final MagicIndicator f16205d;

    public final RecyclerView f16206e;

    public final AppBarLayout f16207f;

    public final ViewPager2 f16208g;

    private p0(FrameLayout frameLayout, FrameLayout frameLayout2, CoordinatorLayout coordinatorLayout, MagicIndicator magicIndicator, RecyclerView recyclerView, AppBarLayout appBarLayout, ViewPager2 viewPager2) {
        this.f16202a = frameLayout;
        this.f16203b = frameLayout2;
        this.f16204c = coordinatorLayout;
        this.f16205d = magicIndicator;
        this.f16206e = recyclerView;
        this.f16207f = appBarLayout;
        this.f16208g = viewPager2;
    }

    public static p0 a(View view) {
        int i10 = R$id.fl_all_only;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.ll_content;
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) f4.b.a(view, i10);
            if (coordinatorLayout != null) {
                i10 = R$id.magicIndicator;
                MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                if (magicIndicator != null) {
                    i10 = R$id.rv_empty_foryou;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.ugcDownloadAppBarLayout;
                        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
                        if (appBarLayout != null) {
                            i10 = R$id.view_pager;
                            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                            if (viewPager2 != null) {
                                return new p0((FrameLayout) view, frameLayout, coordinatorLayout, magicIndicator, recyclerView, appBarLayout, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static p0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_downloaded_app, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16202a;
    }
}
