package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class z implements f4.a {

    private final FrameLayout f16319a;

    public final LinearLayout f16320b;

    public final LinearLayout f16321c;

    public final RecyclerView f16322d;

    public final AppCompatTextView f16323e;

    public final AppCompatTextView f16324f;

    public final AppCompatTextView f16325g;

    public final ProgressBar f16326h;

    private z(FrameLayout frameLayout, LinearLayout linearLayout, LinearLayout linearLayout2, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, ProgressBar progressBar) {
        this.f16319a = frameLayout;
        this.f16320b = linearLayout;
        this.f16321c = linearLayout2;
        this.f16322d = recyclerView;
        this.f16323e = appCompatTextView;
        this.f16324f = appCompatTextView2;
        this.f16325g = appCompatTextView3;
        this.f16326h = progressBar;
    }

    public static z a(View view) {
        int i10 = R$id.ll_loading;
        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
        if (linearLayout != null) {
            i10 = R$id.ll_not_net;
            LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
            if (linearLayout2 != null) {
                i10 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_loading;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_no_network_content;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.tv_retry;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView3 != null) {
                                i10 = R$id.view_load;
                                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                                if (progressBar != null) {
                                    return new z((FrameLayout) view, linearLayout, linearLayout2, recyclerView, appCompatTextView, appCompatTextView2, appCompatTextView3, progressBar);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static z c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static z d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_group, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16319a;
    }
}
