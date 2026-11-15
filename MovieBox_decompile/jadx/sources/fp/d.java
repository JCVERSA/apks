package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class d implements f4.a {

    private final ConstraintLayout f60306a;

    public final View f60307b;

    public final View f60308c;

    public final AppCompatImageView f60309d;

    public final ConstraintLayout f60310e;

    public final TabLayout f60311f;

    public final AppCompatTextView f60312g;

    public final ViewPager2 f60313h;

    private d(ConstraintLayout constraintLayout, View view, View view2, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, TabLayout tabLayout, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f60306a = constraintLayout;
        this.f60307b = view;
        this.f60308c = view2;
        this.f60309d = appCompatImageView;
        this.f60310e = constraintLayout2;
        this.f60311f = tabLayout;
        this.f60312g = appCompatTextView;
        this.f60313h = viewPager2;
    }

    public static d a(View view) {
        View viewA;
        int i10 = R$id.divider_line;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 != null && (viewA = f4.b.a(view, (i10 = R$id.divider_line_1))) != null) {
            i10 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.mTitleLayout;
                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout != null) {
                    i10 = R$id.tabLayout;
                    TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                    if (tabLayout != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.viewPager2;
                            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                            if (viewPager2 != null) {
                                return new d((ConstraintLayout) view, viewA2, viewA, appCompatImageView, constraintLayout, tabLayout, appCompatTextView, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_likes_viewpager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60306a;
    }
}
