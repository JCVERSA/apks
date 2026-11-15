package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.ad.SearchHotAdContainerView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class c implements f4.a {

    private final NestedScrollView f73694a;

    public final SearchHotAdContainerView f73695b;

    public final RecyclerView f73696c;

    public final CardView f73697d;

    public final ProgressBar f73698e;

    public final ConstraintLayout f73699f;

    public final RecyclerView f73700g;

    public final ConstraintLayout f73701h;

    public final ImageView f73702i;

    public final TextView f73703j;

    public final View f73704k;

    public final MagicIndicator f73705l;

    public final ImageView f73706m;

    public final RelativeLayout f73707n;

    public final ViewPager2 f73708o;

    public final NestedScrollView f73709p;

    public final TextView f73710q;

    private c(NestedScrollView nestedScrollView, SearchHotAdContainerView searchHotAdContainerView, RecyclerView recyclerView, CardView cardView, ProgressBar progressBar, ConstraintLayout constraintLayout, RecyclerView recyclerView2, ConstraintLayout constraintLayout2, ImageView imageView, TextView textView, View view, MagicIndicator magicIndicator, ImageView imageView2, RelativeLayout relativeLayout, ViewPager2 viewPager2, NestedScrollView nestedScrollView2, TextView textView2) {
        this.f73694a = nestedScrollView;
        this.f73695b = searchHotAdContainerView;
        this.f73696c = recyclerView;
        this.f73697d = cardView;
        this.f73698e = progressBar;
        this.f73699f = constraintLayout;
        this.f73700g = recyclerView2;
        this.f73701h = constraintLayout2;
        this.f73702i = imageView;
        this.f73703j = textView;
        this.f73704k = view;
        this.f73705l = magicIndicator;
        this.f73706m = imageView2;
        this.f73707n = relativeLayout;
        this.f73708o = viewPager2;
        this.f73709p = nestedScrollView2;
        this.f73710q = textView2;
    }

    public static c a(View view) {
        View viewA;
        int i10 = R$id.ad_container_view;
        SearchHotAdContainerView searchHotAdContainerView = (SearchHotAdContainerView) f4.b.a(view, i10);
        if (searchHotAdContainerView != null) {
            i10 = R$id.everyone_search_rv;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.native_ad_container;
                CardView cardView = (CardView) f4.b.a(view, i10);
                if (cardView != null) {
                    i10 = R$id.progress_bar;
                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                    if (progressBar != null) {
                        i10 = R$id.rl_tips;
                        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                        if (constraintLayout != null) {
                            i10 = R$id.rv_history;
                            RecyclerView recyclerView2 = (RecyclerView) f4.b.a(view, i10);
                            if (recyclerView2 != null) {
                                i10 = R$id.search_hot_everyone_linear;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                if (constraintLayout2 != null) {
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
                                                                return new c(nestedScrollView, searchHotAdContainerView, recyclerView, cardView, progressBar, constraintLayout, recyclerView2, constraintLayout2, imageView, textView, viewA, magicIndicator, imageView2, relativeLayout, viewPager2, nestedScrollView, textView2);
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_hot_search, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public NestedScrollView getRoot() {
        return this.f73694a;
    }
}
