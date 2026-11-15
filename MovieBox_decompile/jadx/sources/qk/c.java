package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.view.TitleLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class c implements f4.a {

    private final ConstraintLayout f69699a;

    public final MagicIndicator f69700b;

    public final TitleLayout f69701c;

    public final ViewPager2 f69702d;

    private c(ConstraintLayout constraintLayout, MagicIndicator magicIndicator, TitleLayout titleLayout, ViewPager2 viewPager2) {
        this.f69699a = constraintLayout;
        this.f69700b = magicIndicator;
        this.f69701c = titleLayout;
        this.f69702d = viewPager2;
    }

    public static c a(View view) {
        int i10 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
        if (magicIndicator != null) {
            i10 = R$id.tool_bar;
            TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
            if (titleLayout != null) {
                i10 = R$id.view_pager;
                ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                if (viewPager2 != null) {
                    return new c((ConstraintLayout) view, magicIndicator, titleLayout, viewPager2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_movie_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69699a;
    }
}
