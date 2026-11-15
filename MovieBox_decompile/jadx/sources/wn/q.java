package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class q implements f4.a {

    private final FrameLayout f74521a;

    public final MagicIndicator f74522b;

    public final ViewPager2 f74523c;

    private q(FrameLayout frameLayout, MagicIndicator magicIndicator, ViewPager2 viewPager2) {
        this.f74521a = frameLayout;
        this.f74522b = magicIndicator;
        this.f74523c = viewPager2;
    }

    public static q a(View view) {
        int i10 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
        if (magicIndicator != null) {
            i10 = R$id.view_pager;
            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
            if (viewPager2 != null) {
                return new q((FrameLayout) view, magicIndicator, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_short_tv_home, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74521a;
    }
}
