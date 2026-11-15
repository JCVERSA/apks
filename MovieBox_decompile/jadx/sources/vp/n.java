package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.ad.SearchHotAdContainerView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class n implements f4.a {

    private final NestedScrollView f73773a;

    public final SearchHotAdContainerView f73774b;

    public final ConstraintLayout f73775c;

    public final RecyclerView f73776d;

    public final AppCompatImageView f73777e;

    public final ConstraintLayout f73778f;

    public final CardView f73779g;

    public final ProgressBar f73780h;

    public final ConstraintLayout f73781i;

    public final RecyclerView f73782j;

    public final ConstraintLayout f73783k;

    public final ImageView f73784l;

    public final TextView f73785m;

    public final View f73786n;

    public final MagicIndicator f73787o;

    public final ImageView f73788p;

    public final RelativeLayout f73789q;

    public final ViewPager2 f73790r;

    public final NestedScrollView f73791s;

    public final TextView f73792t;

    public final TextView f73793u;

    private n(NestedScrollView nestedScrollView, SearchHotAdContainerView searchHotAdContainerView, ConstraintLayout constraintLayout, RecyclerView recyclerView, AppCompatImageView appCompatImageView, ConstraintLayout constraintLayout2, CardView cardView, ProgressBar progressBar, ConstraintLayout constraintLayout3, RecyclerView recyclerView2, ConstraintLayout constraintLayout4, ImageView imageView, TextView textView, View view, MagicIndicator magicIndicator, ImageView imageView2, RelativeLayout relativeLayout, ViewPager2 viewPager2, NestedScrollView nestedScrollView2, TextView textView2, TextView textView3) {
        this.f73773a = nestedScrollView;
        this.f73774b = searchHotAdContainerView;
        this.f73775c = constraintLayout;
        this.f73776d = recyclerView;
        this.f73777e = appCompatImageView;
        this.f73778f = constraintLayout2;
        this.f73779g = cardView;
        this.f73780h = progressBar;
        this.f73781i = constraintLayout3;
        this.f73782j = recyclerView2;
        this.f73783k = constraintLayout4;
        this.f73784l = imageView;
        this.f73785m = textView;
        this.f73786n = view;
        this.f73787o = magicIndicator;
        this.f73788p = imageView2;
        this.f73789q = relativeLayout;
        this.f73790r = viewPager2;
        this.f73791s = nestedScrollView2;
        this.f73792t = textView2;
        this.f73793u = textView3;
    }

    public static n a(View view) {
        View viewA;
        int i10 = R$id.ad_container_view;
        SearchHotAdContainerView searchHotAdContainerView = (SearchHotAdContainerView) f4.b.a(view, i10);
        if (searchHotAdContainerView != null) {
            i10 = R$id.empty_view;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.everyone_search_rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.iv_empty;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.layout_history;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                        if (constraintLayout2 != null) {
                            i10 = R$id.native_ad_container;
                            CardView cardView = (CardView) f4.b.a(view, i10);
                            if (cardView != null) {
                                i10 = R$id.progress_bar;
                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                if (progressBar != null) {
                                    i10 = R$id.rl_tips;
                                    ConstraintLayout constraintLayout3 = (ConstraintLayout) f4.b.a(view, i10);
                                    if (constraintLayout3 != null) {
                                        i10 = R$id.rv_history;
                                        RecyclerView recyclerView2 = (RecyclerView) f4.b.a(view, i10);
                                        if (recyclerView2 != null) {
                                            i10 = R$id.search_hot_everyone_linear;
                                            ConstraintLayout constraintLayout4 = (ConstraintLayout) f4.b.a(view, i10);
                                            if (constraintLayout4 != null) {
                                                i10 = R$id.search_hot_everyone_title_image;
                                                ImageView imageView = (ImageView) f4.b.a(view, i10);
                                                if (imageView != null) {
                                                    i10 = R$id.search_hot_everyone_title_text;
                                                    TextView textView = (TextView) f4.b.a(view, i10);
                                                    if (textView != null && (viewA = f4.b.a(view, (i10 = R$id.search_hot_rank_indicator_linear))) != null) {
                                                        i10 = R$id.search_hot_rank_magic_indicator;
                                                        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
                                                        if (magicIndicator != null) {
                                                            i10 = R$id.search_hot_rank_magic_indicator_image;
                                                            ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                                                            if (imageView2 != null) {
                                                                i10 = R$id.search_hot_rank_magic_indicator_ll;
                                                                RelativeLayout relativeLayout = (RelativeLayout) f4.b.a(view, i10);
                                                                if (relativeLayout != null) {
                                                                    i10 = R$id.search_hot_rank_view_pager;
                                                                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                                                                    if (viewPager2 != null) {
                                                                        NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                        i10 = R$id.tv_clear;
                                                                        TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                        if (textView2 != null) {
                                                                            i10 = R$id.tv_refresh;
                                                                            TextView textView3 = (TextView) f4.b.a(view, i10);
                                                                            if (textView3 != null) {
                                                                                return new n(nestedScrollView, searchHotAdContainerView, constraintLayout, recyclerView, appCompatImageView, constraintLayout2, cardView, progressBar, constraintLayout3, recyclerView2, constraintLayout4, imageView, textView, viewA, magicIndicator, imageView2, relativeLayout, viewPager2, nestedScrollView, textView2, textView3);
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

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pugc_fragment_hot_search, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public NestedScrollView getRoot() {
        return this.f73773a;
    }
}
