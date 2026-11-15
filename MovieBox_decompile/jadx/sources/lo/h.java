package lo;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.view.LoadingAnimView;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.view.ObservableScrollView;
import com.transsion.publish.view.operation.OperationBarView;
import com.transsion.publish.view.operation.OperationVerticalBarView;

public final class h implements f4.a {

    private final RelativeLayout f66050a;

    public final BubbleTextView f66051b;

    public final EditText f66052c;

    public final EditText f66053d;

    public final FrameLayout f66054e;

    public final FrameLayout f66055f;

    public final ImageView f66056g;

    public final ImageView f66057h;

    public final RelativeLayout f66058i;

    public final LinearLayout f66059j;

    public final LoadingAnimView f66060k;

    public final OperationVerticalBarView f66061l;

    public final OperationBarView f66062m;

    public final RatingBar f66063n;

    public final RelativeLayout f66064o;

    public final RelativeLayout f66065p;

    public final RelativeLayout f66066q;

    public final RecyclerView f66067r;

    public final RecyclerView f66068s;

    public final ObservableScrollView f66069t;

    public final TextView f66070u;

    public final TextView f66071v;

    public final TextView f66072w;

    public final View f66073x;

    private h(RelativeLayout relativeLayout, BubbleTextView bubbleTextView, EditText editText, EditText editText2, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, ImageView imageView2, RelativeLayout relativeLayout2, LinearLayout linearLayout, LoadingAnimView loadingAnimView, OperationVerticalBarView operationVerticalBarView, OperationBarView operationBarView, RatingBar ratingBar, RelativeLayout relativeLayout3, RelativeLayout relativeLayout4, RelativeLayout relativeLayout5, RecyclerView recyclerView, RecyclerView recyclerView2, ObservableScrollView observableScrollView, TextView textView, TextView textView2, TextView textView3, View view) {
        this.f66050a = relativeLayout;
        this.f66051b = bubbleTextView;
        this.f66052c = editText;
        this.f66053d = editText2;
        this.f66054e = frameLayout;
        this.f66055f = frameLayout2;
        this.f66056g = imageView;
        this.f66057h = imageView2;
        this.f66058i = relativeLayout2;
        this.f66059j = linearLayout;
        this.f66060k = loadingAnimView;
        this.f66061l = operationVerticalBarView;
        this.f66062m = operationBarView;
        this.f66063n = ratingBar;
        this.f66064o = relativeLayout3;
        this.f66065p = relativeLayout4;
        this.f66066q = relativeLayout5;
        this.f66067r = recyclerView;
        this.f66068s = recyclerView2;
        this.f66069t = observableScrollView;
        this.f66070u = textView;
        this.f66071v = textView2;
        this.f66072w = textView3;
        this.f66073x = view;
    }

    public static h a(View view) {
        View viewA;
        int i10 = R$id.activity_tip;
        BubbleTextView bubbleTextView = (BubbleTextView) f4.b.a(view, i10);
        if (bubbleTextView != null) {
            i10 = R$id.et_des;
            EditText editText = (EditText) f4.b.a(view, i10);
            if (editText != null) {
                i10 = R$id.et_title;
                EditText editText2 = (EditText) f4.b.a(view, i10);
                if (editText2 != null) {
                    i10 = R$id.fl_top;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null) {
                        i10 = R$id.fr_title;
                        FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout2 != null) {
                            i10 = R$id.iv_cover;
                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                            if (imageView != null) {
                                i10 = R$id.iv_cover_ic;
                                ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                                if (imageView2 != null) {
                                    i10 = R$id.ll_list;
                                    RelativeLayout relativeLayout = (RelativeLayout) f4.b.a(view, i10);
                                    if (relativeLayout != null) {
                                        i10 = R$id.ll_top;
                                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                        if (linearLayout != null) {
                                            i10 = R$id.loading_view;
                                            LoadingAnimView loadingAnimView = (LoadingAnimView) f4.b.a(view, i10);
                                            if (loadingAnimView != null) {
                                                i10 = R$id.oper_vertical_view;
                                                OperationVerticalBarView operationVerticalBarView = (OperationVerticalBarView) f4.b.a(view, i10);
                                                if (operationVerticalBarView != null) {
                                                    i10 = R$id.oper_view;
                                                    OperationBarView operationBarView = (OperationBarView) f4.b.a(view, i10);
                                                    if (operationBarView != null) {
                                                        i10 = R$id.rb_star;
                                                        RatingBar ratingBar = (RatingBar) f4.b.a(view, i10);
                                                        if (ratingBar != null) {
                                                            i10 = R$id.rl_add_cover;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) f4.b.a(view, i10);
                                                            if (relativeLayout2 != null) {
                                                                RelativeLayout relativeLayout3 = (RelativeLayout) view;
                                                                i10 = R$id.rl_star;
                                                                RelativeLayout relativeLayout4 = (RelativeLayout) f4.b.a(view, i10);
                                                                if (relativeLayout4 != null) {
                                                                    i10 = R$id.rv_link;
                                                                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                                                    if (recyclerView != null) {
                                                                        i10 = R$id.rv_select;
                                                                        RecyclerView recyclerView2 = (RecyclerView) f4.b.a(view, i10);
                                                                        if (recyclerView2 != null) {
                                                                            i10 = R$id.scrollView;
                                                                            ObservableScrollView observableScrollView = (ObservableScrollView) f4.b.a(view, i10);
                                                                            if (observableScrollView != null) {
                                                                                i10 = R$id.tv_click_stars;
                                                                                TextView textView = (TextView) f4.b.a(view, i10);
                                                                                if (textView != null) {
                                                                                    i10 = R$id.tv_star_tips;
                                                                                    TextView textView2 = (TextView) f4.b.a(view, i10);
                                                                                    if (textView2 != null) {
                                                                                        i10 = R$id.tv_title_tips;
                                                                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                                                                        if (textView3 != null && (viewA = f4.b.a(view, (i10 = R$id.view_line2))) != null) {
                                                                                            return new h(relativeLayout3, bubbleTextView, editText, editText2, frameLayout, frameLayout2, imageView, imageView2, relativeLayout, linearLayout, loadingAnimView, operationVerticalBarView, operationBarView, ratingBar, relativeLayout2, relativeLayout3, relativeLayout4, recyclerView, recyclerView2, observableScrollView, textView, textView2, textView3, viewA);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_film_review, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f66050a;
    }
}
