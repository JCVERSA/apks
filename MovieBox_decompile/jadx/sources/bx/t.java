package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class t implements f4.a {

    private final FrameLayout f16243a;

    public final RecyclerView f16244b;

    public final FrameLayout f16245c;

    public final AppCompatTextView f16246d;

    public final AppCompatTextView f16247e;

    public final AppCompatTextView f16248f;

    private t(FrameLayout frameLayout, RecyclerView recyclerView, FrameLayout frameLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f16243a = frameLayout;
        this.f16244b = recyclerView;
        this.f16245c = frameLayout2;
        this.f16246d = appCompatTextView;
        this.f16247e = appCompatTextView2;
        this.f16248f = appCompatTextView3;
    }

    public static t a(View view) {
        int i10 = R$id.appRv;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i10 = R$id.tvApp;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tvAppNum;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.tvTitle;
                    AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView3 != null) {
                        return new t(frameLayout, recyclerView, frameLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_app_download_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16243a;
    }
}
