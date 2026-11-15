package xw;

import android.view.View;
import androidx.p009lifecycle.b0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.net.bean.BaseDto;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.adapter.LayoutType;
import com.transsnet.downloader.bean.MovieRecBean;
import com.transsnet.downloader.viewmodel.DownloadViewModel;
import com.transsnet.downloader.widget.DownloadPanelForYouFootView;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

public final class c extends BaseItemProvider {

    private final DownloadViewModel f75975e;

    private int f75976f = 1;

    public c(DownloadViewModel downloadViewModel) {
        this.f75975e = downloadViewModel;
    }

    public static final Unit A(c cVar) {
        if (!l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return Unit.f64096a;
        }
        DownloadViewModel downloadViewModel = cVar.f75975e;
        if (downloadViewModel != null) {
            int i10 = cVar.f75976f + 1;
            cVar.f75976f = i10;
            downloadViewModel.S(i10, 6);
        }
        return Unit.f64096a;
    }

    @Override
    public int l() {
        return LayoutType.FOR_YOU.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_download_item_for_you;
    }

    @Override
    public void b(BaseViewHolder helper, DownloadBean item) {
        b0 b0VarT;
        BaseDto baseDto;
        MovieRecBean movieRecBean;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        DownloadViewModel downloadViewModel = this.f75975e;
        List<Subject> items = (downloadViewModel == null || (b0VarT = downloadViewModel.T()) == null || (baseDto = (BaseDto) b0VarT.f()) == null || (movieRecBean = (MovieRecBean) baseDto.getData()) == null) ? null : movieRecBean.getItems();
        List<Subject> list = items;
        if (list == null || list.isEmpty()) {
            View itemView = helper.itemView;
            Intrinsics.g(itemView, "itemView");
            uf.c.g(itemView);
            return;
        }
        View itemView2 = helper.itemView;
        Intrinsics.g(itemView2, "itemView");
        uf.c.k(itemView2);
        DownloadPanelForYouFootView downloadPanelForYouFootView = (DownloadPanelForYouFootView) helper.getView(R$id.v_for_you);
        try {
            Result.Companion companion = Result.INSTANCE;
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            downloadPanelForYouFootView.initBrowseReport(baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.getRecyclerView() : null);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        downloadPanelForYouFootView.setRefreshClickCallback(new Function0() {
            @Override
            public final Object invoke() {
                return c.A(this.f75974a);
            }
        });
        downloadPanelForYouFootView.setData(items);
    }
}
