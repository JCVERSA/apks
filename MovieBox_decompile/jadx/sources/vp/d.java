package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

public final class d implements f4.a {

    private final RelativeLayout f73711a;

    public final EditText f73712b;

    public final ImageView f73713c;

    public final AppCompatImageView f73714d;

    public final LinearLayout f73715e;

    public final ProgressBar f73716f;

    public final RelativeLayout f73717g;

    public final RecyclerView f73718h;

    public final TextView f73719i;

    public final TextView f73720j;

    private d(RelativeLayout relativeLayout, EditText editText, ImageView imageView, AppCompatImageView appCompatImageView, LinearLayout linearLayout, ProgressBar progressBar, RelativeLayout relativeLayout2, RecyclerView recyclerView, TextView textView, TextView textView2) {
        this.f73711a = relativeLayout;
        this.f73712b = editText;
        this.f73713c = imageView;
        this.f73714d = appCompatImageView;
        this.f73715e = linearLayout;
        this.f73716f = progressBar;
        this.f73717g = relativeLayout2;
        this.f73718h = recyclerView;
        this.f73719i = textView;
        this.f73720j = textView2;
    }

    public static d a(View view) {
        int i10 = R$id.comment_input_edit_text;
        EditText editText = (EditText) f4.b.a(view, i10);
        if (editText != null) {
            i10 = R$id.iv_cancel;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.iv_clear;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ll_top;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.load_view;
                        ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                        if (progressBar != null) {
                            i10 = R$id.rl_tips;
                            RelativeLayout relativeLayout = (RelativeLayout) f4.b.a(view, i10);
                            if (relativeLayout != null) {
                                i10 = R$id.f49932rv;
                                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                                if (recyclerView != null) {
                                    i10 = R$id.tv_clear;
                                    TextView textView = (TextView) f4.b.a(view, i10);
                                    if (textView != null) {
                                        i10 = R$id.tv_search;
                                        TextView textView2 = (TextView) f4.b.a(view, i10);
                                        if (textView2 != null) {
                                            return new d((RelativeLayout) view, editText, imageView, appCompatImageView, linearLayout, progressBar, relativeLayout, recyclerView, textView, textView2);
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

    public static d c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static d d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_publish_search, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f73711a;
    }
}
