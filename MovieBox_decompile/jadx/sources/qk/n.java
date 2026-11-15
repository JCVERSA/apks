package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class n implements f4.a {

    private final LinearLayout f69802a;

    public final View f69803b;

    public final MagicIndicator f69804c;

    public final ViewPager2 f69805d;

    private n(LinearLayout linearLayout, View view, MagicIndicator magicIndicator, ViewPager2 viewPager2) {
        this.f69802a = linearLayout;
        this.f69803b = view;
        this.f69804c = magicIndicator;
        this.f69805d = viewPager2;
    }

    public static n a(View view) {
        int i10 = R$id.hashtag_divider_view;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.hashtag_magic_indicator;
            MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
            if (magicIndicator != null) {
                i10 = R$id.hashtag_viewpager;
                ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                if (viewPager2 != null) {
                    return new n((LinearLayout) view, viewA, magicIndicator, viewPager2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_hashtag, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f69802a;
    }
}
