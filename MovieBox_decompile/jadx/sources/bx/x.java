package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.AdvRecyclerView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.DownloadTransferLaterTipsView;

public final class x implements f4.a {

    private final FrameLayout f16288a;

    public final AdvRecyclerView f16289b;

    public final SwipeRefreshLayout f16290c;

    public final DownloadTransferLaterTipsView f16291d;

    private x(FrameLayout frameLayout, AdvRecyclerView advRecyclerView, SwipeRefreshLayout swipeRefreshLayout, DownloadTransferLaterTipsView downloadTransferLaterTipsView) {
        this.f16288a = frameLayout;
        this.f16289b = advRecyclerView;
        this.f16290c = swipeRefreshLayout;
        this.f16291d = downloadTransferLaterTipsView;
    }

    public static x a(View view) {
        int i10 = R$id.rv_list;
        AdvRecyclerView advRecyclerView = (AdvRecyclerView) f4.b.a(view, i10);
        if (advRecyclerView != null) {
            i10 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                i10 = R$id.v_transfer_later_tips;
                DownloadTransferLaterTipsView downloadTransferLaterTipsView = (DownloadTransferLaterTipsView) f4.b.a(view, i10);
                if (downloadTransferLaterTipsView != null) {
                    return new x((FrameLayout) view, advRecyclerView, swipeRefreshLayout, downloadTransferLaterTipsView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static x c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_panel, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16288a;
    }
}
