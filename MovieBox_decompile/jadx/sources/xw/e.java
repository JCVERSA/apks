package xw;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.R$drawable;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.adapter.LayoutType;
import com.transsnet.downloader.util.DownloadUtilKt;
import com.transsnet.downloader.viewmodel.a0;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class e extends BaseItemProvider {
    private final void B(BaseViewHolder baseViewHolder, final DownloadBean downloadBean) {
        long readProgress;
        if (downloadBean.isShorts()) {
            io.f fVar = io.f.f62276a;
            String postId = downloadBean.getPostId();
            Intrinsics.e(postId);
            readProgress = fVar.c(postId);
        } else {
            readProgress = downloadBean.getReadProgress();
        }
        final long j10 = readProgress;
        Long duration = downloadBean.getDuration();
        long jLongValue = duration != null ? duration.longValue() : 1L;
        final int i10 = (int) (((j10 * 1.0f) / (jLongValue > 0 ? jLongValue : 1L)) * 100);
        ((ProgressBar) baseViewHolder.getView(R$id.progress_bar)).setProgress(i10);
        final Context context = baseViewHolder.itemView.getContext();
        if (i10 < 0 || i10 >= 101) {
            return;
        }
        ((TnTextView) baseViewHolder.getView(R$id.tv_read_progress)).setTextAction(new Function0() {
            @Override
            public final Object invoke() {
                return e.C(i10, j10, downloadBean, context);
            }
        });
    }

    public static final CharSequence C(int i10, long j10, DownloadBean downloadBean, Context context) {
        if (i10 != 0) {
            if (i10 != 100) {
                return downloadBean.getType() == 1 ? context.getString(R$string.download_listened, Integer.valueOf(i10)) : context.getString(R$string.download_watched, Integer.valueOf(i10));
            }
            return context.getString(R$string.download_finished);
        }
        if (j10 > 0) {
            return downloadBean.getType() == 1 ? context.getString(R$string.download_listened, 1) : context.getString(R$string.download_watched, 1);
        }
        return context.getString(R$string.download_not_open);
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
            B(helper, (DownloadBean) objV0);
        }
    }

    @Override
    public int l() {
        return LayoutType.DONE_LAYOUT.ordinal();
    }

    @Override
    public int m() {
        return R$layout.adapter_downloaded_item;
    }

    @Override
    public void b(BaseViewHolder helper, DownloadBean item) {
        String ugcVideoType;
        String strA;
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int position = helper.getPosition();
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        ((ConstraintLayout) helper.getView(R$id.cl_item_root)).setPadding(0, 0, 0, position == ((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? 0 : data.size()) - 1 ? lj.a.b(100) : lj.a.b(8));
        String str = "";
        if (item.isInnerRes()) {
            String cover = item.getCover();
            if (cover != null) {
                Context context = helper.itemView.getContext();
                Intrinsics.g(context, "getContext(...)");
                DownloadUtilKt.a(context, (ImageView) helper.getView(R$id.iv_cover), cover, item.getThumbnail());
            }
        } else {
            AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getView(R$id.iv_cover);
            a0 a0Var = a0.f57862a;
            String cover2 = item.getCover();
            if (cover2 == null) {
                cover2 = "";
            }
            appCompatImageView.setImageBitmap(a0Var.d(cover2));
        }
        boolean z10 = item.getType() == 9;
        helper.setGone(R$id.tv_shorts, !z10);
        if (z10) {
            helper.setGone(R$id.iv_type, true);
        } else {
            helper.setGone(R$id.iv_type, false);
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) helper.getView(R$id.iv_type);
            if (!item.isInnerRes()) {
                appCompatImageView2.setImageResource(R$drawable.ic_tag_local_file);
            } else if (!item.isUGCVideo() || (ugcVideoType = item.getUgcVideoType()) == null || ugcVideoType.length() == 0) {
                appCompatImageView2.setImageResource(com.transsion.moviedetailapi.h.a(Integer.valueOf(item.getSubjectType())));
            } else {
                UGCVideoTypeKt.j(appCompatImageView2, item.getUgcCateLev1Id(), item.getUgcCateLev2Id(), item.getUgcCateLev3Id(), item.getUgcCateLev4Id(), item.getUgcVideoType());
            }
        }
        ((TextView) helper.getView(R$id.tv_name)).setText(item.getTitleNameAppendResolution());
        TextView textView = (TextView) helper.getView(R$id.tv_ep);
        textView.setVisibility(item.getEpName().length() > 0 ? 0 : 8);
        textView.setText(item.getEpName());
        Long size = item.getSize();
        if (size != null && (strA = zg.b.a(size.longValue(), 1)) != null) {
            str = strA;
        }
        ((TextView) helper.getView(R$id.tv_file_size)).setText(str);
        if (item.getStatus() == 10) {
            uf.c.k(helper.getView(R$id.tv_series_line));
            TextView textView2 = (TextView) helper.getView(R$id.tv_series_count);
            uf.c.k(textView2);
            textView2.setText(helper.itemView.getContext().getString(R$string.download_episodes, Integer.valueOf(item.getCount())));
            uf.c.g(helper.getView(R$id.layout_no_file_tips));
        } else {
            uf.c.g(helper.getView(R$id.tv_series_count));
            uf.c.g(helper.getView(R$id.tv_series_line));
            boolean zIsFileExist = item.isFileExist();
            helper.getView(R$id.layout_no_file_tips).setVisibility(!zIsFileExist ? 0 : 8);
            helper.getView(R$id.iv_play).setVisibility(zIsFileExist ? 0 : 8);
        }
        B(helper, item);
    }
}
