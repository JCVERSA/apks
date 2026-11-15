package xw;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.R$drawable;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.downloader.viewmodel.a0;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class g extends BaseItemProvider {

    private final float f75988e;

    public g(float f10) {
        this.f75988e = f10;
    }

    private final int A(DownloadBean downloadBean) {
        Iterator<T> it = downloadBean.getSeriesList().iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (((DownloadBean) it.next()).getIsCheck()) {
                i10++;
            }
        }
        return i10;
    }

    private final void B(BaseViewHolder baseViewHolder, DownloadBean downloadBean) {
        TextView textView = (TextView) baseViewHolder.getView(R$id.tv_more_count);
        ImageView imageView = (ImageView) baseViewHolder.getView(R$id.iv_more);
        if (!downloadBean.getIsCheck()) {
            imageView.setImageResource(R$drawable.ic_download_group_unselected);
            uf.c.g(textView);
            return;
        }
        if (!downloadBean.isSeriesCollection()) {
            imageView.setImageResource(R$drawable.ic_download_group_selected);
            uf.c.g(textView);
        } else if (downloadBean.getIsSeriesAllCheck()) {
            imageView.setImageResource(R$drawable.ic_download_group_selected);
            uf.c.g(textView);
        } else {
            imageView.setImageResource(R$drawable.shape_transfer_select_icon_bg);
            uf.c.k(textView);
            int iA = A(downloadBean);
            textView.setText(iA > 99 ? "99+" : String.valueOf(iA));
        }
    }

    @Override
    public int l() {
        return 0;
    }

    @Override
    public int m() {
        return R$layout.item_transfer_select_item;
    }

    @Override
    public void b(BaseViewHolder helper, DownloadBean bean) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(bean, "bean");
        uf.c.g(helper.getView(R$id.iv_play));
        ProgressBar progressBar = (ProgressBar) helper.getViewOrNull(R$id.progress_bar);
        if (progressBar != null) {
            uf.c.g(progressBar);
        }
        ImageView imageView = (ImageView) helper.getView(R$id.iv_cover);
        String cover = bean.getCover();
        String str = "";
        if (cover != null && !Intrinsics.c(imageView.getTag(), cover)) {
            imageView.setTag(cover);
            if (StringsKt.W(cover, "http", false, 2, null)) {
                ni.f.a aVar = ni.f.f67269a;
                Context context = imageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarG = aVar.m(context).g(cover);
                String thumbnail = bean.getThumbnail();
                if (thumbnail == null) {
                    thumbnail = "";
                }
                bVarG.l(thumbnail).d(imageView);
            } else {
                imageView.setImageBitmap(a0.f57862a.d(cover));
            }
        }
        ((ImageView) helper.getView(R$id.iv_type)).setImageResource(DownloadUtil.f57680a.r(bean));
        ((TextView) helper.getView(R$id.tv_name)).setText(bean.getTitleNameAppendResolution());
        TextView textView = (TextView) helper.getView(R$id.tv_ep);
        textView.setText(bean.getTitleNameAppendResolution());
        String epName = bean.getEpName();
        if (epName == null || epName.length() == 0) {
            uf.c.g(textView);
        } else {
            uf.c.k(textView);
            textView.setText(bean.getEpName());
        }
        Long size = bean.getSize();
        if (size != null) {
            String strA = zg.b.a(size.longValue(), this.f75988e == 12.0f ? 1 : 0);
            if (strA != null) {
                str = strA;
            }
        }
        if (bean.isSeriesCollection()) {
            uf.c.k(helper.getView(R$id.v_series_top_bg));
            uf.c.k(helper.getView(R$id.v_series_top_bg_2));
            TextView textView2 = (TextView) helper.getView(R$id.tv_file_size);
            textView2.setText(helper.itemView.getContext().getString(R$string.download_files, Integer.valueOf(bean.getCount())) + " · " + str);
            textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(R$mipmap.ic_download_series, 0, 0, 0);
        } else {
            uf.c.g(helper.getView(R$id.v_series_top_bg));
            uf.c.g(helper.getView(R$id.v_series_top_bg_2));
            TextView textView3 = (TextView) helper.getView(R$id.tv_file_size);
            textView3.setText(str);
            textView3.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        }
        B(helper, bean);
    }

    @Override
    public void f(BaseViewHolder helper, DownloadBean item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(payloads.size() - 1);
        if (obj instanceof DownloadBean) {
            B(helper, (DownloadBean) obj);
        }
    }
}
