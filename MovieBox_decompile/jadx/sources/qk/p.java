package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextSwitcher;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.widget.BlurredSectorView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class p implements f4.a {

    private final ConstraintLayout f69813a;

    public final AppCompatImageButton f69814b;

    public final FrameLayout f69815c;

    public final FrameLayout f69816d;

    public final ConstraintLayout f69817e;

    public final AppCompatImageView f69818f;

    public final AppCompatImageView f69819g;

    public final AppCompatImageView f69820h;

    public final AppCompatImageView f69821i;

    public final ConstraintLayout f69822j;

    public final MagicIndicator f69823k;

    public final FrameLayout f69824l;

    public final TextSwitcher f69825m;

    public final BlurredSectorView f69826n;

    public final TnTextView f69827o;

    public final TnTextView f69828p;

    public final TnTextView f69829q;

    public final ConstraintLayout f69830r;

    public final ViewPager2 f69831s;

    private p(ConstraintLayout constraintLayout, AppCompatImageButton appCompatImageButton, FrameLayout frameLayout, FrameLayout frameLayout2, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ConstraintLayout constraintLayout3, MagicIndicator magicIndicator, FrameLayout frameLayout3, TextSwitcher textSwitcher, BlurredSectorView blurredSectorView, TnTextView tnTextView, TnTextView tnTextView2, TnTextView tnTextView3, ConstraintLayout constraintLayout4, ViewPager2 viewPager2) {
        this.f69813a = constraintLayout;
        this.f69814b = appCompatImageButton;
        this.f69815c = frameLayout;
        this.f69816d = frameLayout2;
        this.f69817e = constraintLayout2;
        this.f69818f = appCompatImageView;
        this.f69819g = appCompatImageView2;
        this.f69820h = appCompatImageView3;
        this.f69821i = appCompatImageView4;
        this.f69822j = constraintLayout3;
        this.f69823k = magicIndicator;
        this.f69824l = frameLayout3;
        this.f69825m = textSwitcher;
        this.f69826n = blurredSectorView;
        this.f69827o = tnTextView;
        this.f69828p = tnTextView2;
        this.f69829q = tnTextView3;
        this.f69830r = constraintLayout4;
        this.f69831s = viewPager2;
    }

    public static p a(View view) {
        int i10 = R$id.btn_tab_menu;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
        if (appCompatImageButton != null) {
            i10 = R$id.flGameCenter;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.flPhoneCenter;
                FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout2 != null) {
                    i10 = R$id.gradeSelectorContainer;
                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                    if (constraintLayout != null) {
                        i10 = R$id.ivGradeArrow;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView != null) {
                            i10 = R$id.iv_mb_logo;
                            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView2 != null) {
                                i10 = R$id.ivNovelEnter;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView3 != null) {
                                    i10 = R$id.ivUpdateApp;
                                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView4 != null) {
                                        i10 = R$id.ll_tab;
                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                        if (constraintLayout2 != null) {
                                            i10 = R$id.magic_indicator;
                                            MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                            if (magicIndicator != null) {
                                                i10 = R$id.search_left_container;
                                                FrameLayout frameLayout3 = (FrameLayout) f4.b.a(view, i10);
                                                if (frameLayout3 != null) {
                                                    i10 = R$id.text_switcher;
                                                    TextSwitcher textSwitcher = (TextSwitcher) f4.b.a(view, i10);
                                                    if (textSwitcher != null) {
                                                        i10 = R$id.trending_bottom_bg;
                                                        BlurredSectorView blurredSectorView = (BlurredSectorView) f4.b.a(view, i10);
                                                        if (blurredSectorView != null) {
                                                            i10 = R$id.tvGradeName;
                                                            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                                            if (tnTextView != null) {
                                                                i10 = R$id.tv_search;
                                                                TnTextView tnTextView2 = (TnTextView) f4.b.a(view, i10);
                                                                if (tnTextView2 != null) {
                                                                    i10 = R$id.tv_search_button;
                                                                    TnTextView tnTextView3 = (TnTextView) f4.b.a(view, i10);
                                                                    if (tnTextView3 != null) {
                                                                        i10 = R$id.tv_search_container;
                                                                        ConstraintLayout constraintLayout3 = (ConstraintLayout) f4.b.a(view, i10);
                                                                        if (constraintLayout3 != null) {
                                                                            i10 = R$id.view_pager;
                                                                            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                            if (viewPager2 != null) {
                                                                                return new p((ConstraintLayout) view, appCompatImageButton, frameLayout, frameLayout2, constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, constraintLayout2, magicIndicator, frameLayout3, textSwitcher, blurredSectorView, tnTextView, tnTextView2, tnTextView3, constraintLayout3, viewPager2);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
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

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_home, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69813a;
    }
}
