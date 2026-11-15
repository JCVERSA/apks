package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class f implements f4.a {

    private final ConstraintLayout f63283a;

    public final EditTextWithClear f63284b;

    public final AppCompatImageView f63285c;

    public final AppCompatImageView f63286d;

    public final MagicIndicator f63287e;

    public final NestedScrollableHost f63288f;

    public final TextView f63289g;

    public final AppCompatTextView f63290h;

    public final ViewPager2 f63291i;

    private f(ConstraintLayout constraintLayout, EditTextWithClear editTextWithClear, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, MagicIndicator magicIndicator, NestedScrollableHost nestedScrollableHost, TextView textView, AppCompatTextView appCompatTextView, ViewPager2 viewPager2) {
        this.f63283a = constraintLayout;
        this.f63284b = editTextWithClear;
        this.f63285c = appCompatImageView;
        this.f63286d = appCompatImageView2;
        this.f63287e = magicIndicator;
        this.f63288f = nestedScrollableHost;
        this.f63289g = textView;
        this.f63290h = appCompatTextView;
        this.f63291i = viewPager2;
    }

    public static f a(View view) {
        int i10 = R$id.et_search_keyword;
        EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
        if (editTextWithClear != null) {
            i10 = R$id.ivBack;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_search_keyword;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.magic_indicator;
                    MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                    if (magicIndicator != null) {
                        i10 = R$id.nsh_content;
                        NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) f4.b.a(view, i10);
                        if (nestedScrollableHost != null) {
                            i10 = R$id.tv_search;
                            TextView textView = (TextView) f4.b.a(view, i10);
                            if (textView != null) {
                                i10 = R$id.tvStyle;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null) {
                                    i10 = R$id.view_pager;
                                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                    if (viewPager2 != null) {
                                        return new f((ConstraintLayout) view, editTextWithClear, appCompatImageView, appCompatImageView2, magicIndicator, nestedScrollableHost, textView, appCompatTextView, viewPager2);
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

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subtitle_search_download, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63283a;
    }
}
