package xw;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.adapter.DownloadedHolderKt;
import com.transsnet.downloader.adapter.LayoutType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import yg.l;

public final class f extends BaseItemProvider {

    private final int f75981e = R$string.downloading_time_left;

    private final int f75982f = R$string.download_status_waiting;

    private final int f75983g = R$string.download_status_paused;

    private final int f75984h = R$string.download_status_failed;

    private final int f75985i = R$string.download_status_no_net;

    private long f75986j;

    private long f75987k;

    private final void B(BaseViewHolder baseViewHolder, DownloadBean downloadBean) {
        Object objY;
        long progress = downloadBean.getProgress();
        if (progress < 0) {
            progress = 0;
        }
        Long size = downloadBean.getSize();
        long jLongValue = size != null ? size.longValue() : 1L;
        if (jLongValue <= 0) {
            jLongValue = 1;
        }
        float f10 = 100;
        int i10 = (int) (((progress * 1.0f) / jLongValue) * f10);
        int status = downloadBean.getStatus();
        if (status == 1 || status == 2) {
            ProgressBar progressBar = (ProgressBar) baseViewHolder.getView(R$id.pb_download);
            progressBar.setSecondaryProgress(downloadBean.getIsPreDownload() ? i10 : 0);
            if (downloadBean.getIsPreDownload()) {
                i10 = 0;
            }
            progressBar.setProgress(i10);
        } else {
            ProgressBar progressBar2 = (ProgressBar) baseViewHolder.getView(R$id.pb_download);
            progressBar2.setSecondaryProgress(i10);
            progressBar2.setProgress(0);
        }
        ((TextView) baseViewHolder.getView(R$id.tv_state_progress)).setText(zg.b.a(progress, 1) + " / " + zg.b.a(jLongValue, 1));
        int i11 = R$color.white_80;
        int status2 = downloadBean.getStatus();
        if (status2 == 1 || status2 == 2) {
            if (downloadBean.getIsPreDownload()) {
                objY = Integer.valueOf(this.f75982f);
            } else {
                i11 = R$color.white_80;
                objY = y(baseViewHolder, downloadBean);
            }
        } else if (status2 == 3) {
            objY = Integer.valueOf(this.f75982f);
        } else if (status2 == 4) {
            objY = Integer.valueOf(this.f75983g);
            i11 = R$color.error_50;
        } else if (status2 != 6) {
            objY = null;
        } else {
            objY = (downloadBean.isNoNetError() || !l.f76264a.e()) ? Integer.valueOf(this.f75985i) : Integer.valueOf(this.f75984h);
            i11 = R$color.error_50;
        }
        TnTextView tnTextView = (TnTextView) baseViewHolder.getView(R$id.tv_time_or_status);
        if (objY instanceof Integer) {
            tnTextView.setTextById(((Number) objY).intValue());
        } else if (objY instanceof String) {
            tnTextView.setTextWithString((CharSequence) objY);
        }
        tnTextView.setTextColor(androidx.core.content.b.getColor(baseViewHolder.itemView.getContext(), i11));
        int status3 = downloadBean.getStatus();
        if (status3 == 1 || status3 == 2 || status3 == 3) {
            ((AppCompatImageView) baseViewHolder.getView(R$id.iv_state_bg)).setImageResource(R$mipmap.ic_download_pause);
        } else if (status3 == 4 || status3 == 6) {
            ((AppCompatImageView) baseViewHolder.getView(R$id.iv_state_bg)).setImageResource(R$mipmap.ic_download_downloading);
        }
        long readProgress = downloadBean.getReadProgress();
        Long duration = downloadBean.getDuration();
        long jLongValue2 = duration != null ? duration.longValue() : 1L;
        ((ProgressBar) baseViewHolder.getView(R$id.progress_bar)).setProgress((int) (((readProgress * 1.0f) / (jLongValue2 <= 0 ? 1L : jLongValue2)) * f10));
    }

    private final String y(BaseViewHolder baseViewHolder, DownloadBean downloadBean) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = (jCurrentTimeMillis - this.f75987k) / ((long) 1000);
        this.f75987k = jCurrentTimeMillis;
        long progress = j10 <= 0 ? 0L : (downloadBean.getProgress() - this.f75986j) / j10;
        this.f75986j = downloadBean.getProgress();
        if (progress <= 0 && downloadBean.getCurrentDownloadSpeed() > 0) {
            progress = downloadBean.getCurrentDownloadSpeed();
        }
        if (progress <= 0) {
            return "";
        }
        Long size = downloadBean.getSize();
        float fLongValue = ((size != null ? size.longValue() : 0L) - this.f75986j) * 1.0f;
        if (fLongValue <= 0.0f) {
            return "";
        }
        downloadBean.setCurrentDownloadSpeed(progress);
        return TimeUtilKt.f((int) (fLongValue / progress)) + " " + baseViewHolder.itemView.getResources().getString(this.f75981e);
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
        Object objV0 = CollectionsKt.v0(payloads);
        if (objV0 instanceof DownloadBean) {
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            DownloadBean downloadBean = (DownloadBean) objV0;
            String resourceId = downloadBean.getResourceId();
            if (resourceId == null) {
                resourceId = item.getUrl();
            }
            DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
            if (downloadBeanQ != null) {
                downloadBean = downloadBeanQ;
            }
            B(helper, downloadBean);
        }
    }

    @Override
    public int l() {
        return LayoutType.NO_DONE_LAYOUT.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_downloading_item;
    }

    @Override
    public void b(BaseViewHolder helper, DownloadBean item) {
        String ugcVideoType;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = item.getResourceId();
        if (resourceId == null) {
            resourceId = item.getUrl();
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ == null) {
            downloadBeanQ = item;
        }
        View view = helper.getView(R$id.card_cover);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int position = helper.getPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        marginLayoutParams.bottomMargin = lj.a.b(position == (baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.getItemCount() : 0) - 1 ? 16 : 12);
        view.setLayoutParams(marginLayoutParams);
        String cover = downloadBeanQ.getCover();
        if (cover != null) {
            Context context = helper.itemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            DownloadedHolderKt.a(context, (ImageView) helper.getView(R$id.iv_cover), cover, item.getThumbnail());
        }
        boolean z10 = item.getType() == 9;
        helper.setGone(R$id.tv_shorts, !z10);
        if (z10) {
            helper.setGone(R$id.iv_type, true);
        } else {
            helper.setGone(R$id.iv_type, false);
            AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getView(R$id.iv_type);
            if (!downloadBeanQ.isUGCVideo() || (ugcVideoType = downloadBeanQ.getUgcVideoType()) == null || ugcVideoType.length() == 0) {
                appCompatImageView.setImageResource(com.transsion.moviedetailapi.h.a(Integer.valueOf(downloadBeanQ.getSubjectType())));
            } else {
                UGCVideoTypeKt.j(appCompatImageView, downloadBeanQ.getUgcCateLev1Id(), downloadBeanQ.getUgcCateLev2Id(), downloadBeanQ.getUgcCateLev3Id(), downloadBeanQ.getUgcCateLev4Id(), downloadBeanQ.getUgcVideoType());
            }
        }
        TextView textView = (TextView) helper.getView(R$id.tv_name);
        textView.setText(downloadBeanQ.getTitleNameAppendResolution());
        textView.setTag(downloadBeanQ.getResourceId());
        TextView textView2 = (TextView) helper.getView(R$id.tv_ep);
        textView2.setVisibility(downloadBeanQ.getEpName().length() > 0 ? 0 : 8);
        textView2.setText(downloadBeanQ.getEpName());
        B(helper, downloadBeanQ);
    }
}
