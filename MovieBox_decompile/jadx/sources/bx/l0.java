package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.widget.TransferBottomToolsView;
import com.transsnet.downloader.widget.TransferSelectSeriesListView;
import net.lucode.hackware.magicindicator.MagicIndicator;

public final class l0 implements f4.a {

    private final ConstraintLayout f16159a;

    public final MagicIndicator f16160b;

    public final NestedScrollableHost f16161c;

    public final TransferBottomToolsView f16162d;

    public final TransferSelectSeriesListView f16163e;

    public final AppCompatImageView f16164f;

    public final ViewPager2 f16165g;

    private l0(ConstraintLayout constraintLayout, MagicIndicator magicIndicator, NestedScrollableHost nestedScrollableHost, TransferBottomToolsView transferBottomToolsView, TransferSelectSeriesListView transferSelectSeriesListView, AppCompatImageView appCompatImageView, ViewPager2 viewPager2) {
        this.f16159a = constraintLayout;
        this.f16160b = magicIndicator;
        this.f16161c = nestedScrollableHost;
        this.f16162d = transferBottomToolsView;
        this.f16163e = transferSelectSeriesListView;
        this.f16164f = appCompatImageView;
        this.f16165g = viewPager2;
    }

    public static l0 a(View view) {
        int i10 = R$id.magic_indicator;
        MagicIndicator magicIndicator = (MagicIndicator) f4.b.a(view, i10);
        if (magicIndicator != null) {
            i10 = R$id.nsh_view_pager;
            NestedScrollableHost nestedScrollableHost = (NestedScrollableHost) f4.b.a(view, i10);
            if (nestedScrollableHost != null) {
                i10 = R$id.v_bottom_tools;
                TransferBottomToolsView transferBottomToolsView = (TransferBottomToolsView) f4.b.a(view, i10);
                if (transferBottomToolsView != null) {
                    i10 = R$id.v_series_list;
                    TransferSelectSeriesListView transferSelectSeriesListView = (TransferSelectSeriesListView) f4.b.a(view, i10);
                    if (transferSelectSeriesListView != null) {
                        i10 = R$id.v_top_bg;
                        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView != null) {
                            i10 = R$id.view_pager;
                            ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                            if (viewPager2 != null) {
                                return new l0((ConstraintLayout) view, magicIndicator, nestedScrollableHost, transferBottomToolsView, transferSelectSeriesListView, appCompatImageView, viewPager2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_transfer_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16159a;
    }
}
