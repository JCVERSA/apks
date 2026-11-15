package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class r0 implements f4.a {

    private final ConstraintLayout f16227a;

    public final MagicIndicator f16228b;

    public final View f16229c;

    public final ViewPager2 f16230d;

    private r0(ConstraintLayout constraintLayout, MagicIndicator magicIndicator, View view, ViewPager2 viewPager2) {
        this.f16227a = constraintLayout;
        this.f16228b = magicIndicator;
        this.f16229c = view;
        this.f16230d = viewPager2;
    }

    public static r0 a(View view) {
        View viewA;
        int i10 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
        if (magicIndicator != null && (viewA = f4.b.a(view, (i10 = R$id.view_divider))) != null) {
            i10 = R$id.view_pager;
            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
            if (viewPager2 != null) {
                return new r0((ConstraintLayout) view, magicIndicator, viewA, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static r0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_my_downloads, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16227a;
    }
}
