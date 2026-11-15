package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class q0 implements f4.a {

    private final LinearLayout f16213a;

    public final MagicIndicator f16214b;

    public final ViewPager2 f16215c;

    private q0(LinearLayout linearLayout, MagicIndicator magicIndicator, ViewPager2 viewPager2) {
        this.f16213a = linearLayout;
        this.f16214b = magicIndicator;
        this.f16215c = viewPager2;
    }

    public static q0 a(View view) {
        int i10 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
        if (magicIndicator != null) {
            i10 = R$id.view_pager;
            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
            if (viewPager2 != null) {
                return new q0((LinearLayout) view, magicIndicator, viewPager2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_my_downloaded_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f16213a;
    }
}
