package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadPanelForYouFootView;

public final class v implements f4.a {

    private final LinearLayout f16266a;

    public final FrameLayout f16267b;

    public final DownloadPanelForYouFootView f16268c;

    public final LinearLayout f16269d;

    public final RecyclerView f16270e;

    public final NestedScrollView f16271f;

    private v(LinearLayout linearLayout, FrameLayout frameLayout, DownloadPanelForYouFootView downloadPanelForYouFootView, LinearLayout linearLayout2, RecyclerView recyclerView, NestedScrollView nestedScrollView) {
        this.f16266a = linearLayout;
        this.f16267b = frameLayout;
        this.f16268c = downloadPanelForYouFootView;
        this.f16269d = linearLayout2;
        this.f16270e = recyclerView;
        this.f16271f = nestedScrollView;
    }

    public static v a(View view) {
        int i10 = R$id.fl_empty_root;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.foot_for_you;
            DownloadPanelForYouFootView downloadPanelForYouFootView = (DownloadPanelForYouFootView) f4.b.a(view, i10);
            if (downloadPanelForYouFootView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i10 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.sv_empty_root;
                    NestedScrollView nestedScrollView = (NestedScrollView) f4.b.a(view, i10);
                    if (nestedScrollView != null) {
                        return new v(linearLayout, frameLayout, downloadPanelForYouFootView, linearLayout, recyclerView, nestedScrollView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f16266a;
    }
}
