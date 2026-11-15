package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

public final class e implements f4.a {

    private final ConstraintLayout f73721a;

    public final AppCompatImageView f73722b;

    public final EditText f73723c;

    public final ImageView f73724d;

    public final View f73725e;

    public final ProgressBar f73726f;

    public final TextView f73727g;

    public final RecyclerView f73728h;

    public final TextView f73729i;

    private e(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, EditText editText, ImageView imageView, View view, ProgressBar progressBar, TextView textView, RecyclerView recyclerView, TextView textView2) {
        this.f73721a = constraintLayout;
        this.f73722b = appCompatImageView;
        this.f73723c = editText;
        this.f73724d = imageView;
        this.f73725e = view;
        this.f73726f = progressBar;
        this.f73727g = textView;
        this.f73728h = recyclerView;
        this.f73729i = textView2;
    }

    public static e a(View view) {
        View viewA;
        int i10 = R$id.clearIV;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.inputET;
            EditText editText = (EditText) f4.b.a(view, i10);
            if (editText != null) {
                i10 = R$id.iv_cancel;
                ImageView imageView = (ImageView) f4.b.a(view, i10);
                if (imageView != null && (viewA = f4.b.a(view, (i10 = R$id.line))) != null) {
                    i10 = R$id.loadView;
                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                    if (progressBar != null) {
                        i10 = R$id.recentTV;
                        TextView textView = (TextView) f4.b.a(view, i10);
                        if (textView != null) {
                            i10 = R$id.f49932rv;
                            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                            if (recyclerView != null) {
                                i10 = R$id.searchTV;
                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                if (textView2 != null) {
                                    return new e((ConstraintLayout) view, appCompatImageView, editText, imageView, viewA, progressBar, textView, recyclerView, textView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_publish_work, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73721a;
    }
}
