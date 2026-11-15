package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

public final class h implements f4.a {

    private final LinearLayoutCompat f74393a;

    public final View f74394b;

    public final RecyclerView f74395c;

    public final LinearLayout f74396d;

    public final AppCompatTextView f74397e;

    public final AppCompatTextView f74398f;

    public final ProgressBar f74399g;

    private h(LinearLayoutCompat linearLayoutCompat, View view, RecyclerView recyclerView, LinearLayout linearLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ProgressBar progressBar) {
        this.f74393a = linearLayoutCompat;
        this.f74394b = view;
        this.f74395c = recyclerView;
        this.f74396d = linearLayout;
        this.f74397e = appCompatTextView;
        this.f74398f = appCompatTextView2;
        this.f74399g = progressBar;
    }

    public static h a(View view) {
        int i10 = R$id.comment_input_bg;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.comment_list;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.ll_loading;
                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                if (linearLayout != null) {
                    i10 = R$id.tv_comment;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_loading;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.view_load;
                            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                            if (progressBar != null) {
                                return new h((LinearLayoutCompat) view, viewA, recyclerView, linearLayout, appCompatTextView, appCompatTextView2, progressBar);
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_comment, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f74393a;
    }
}
