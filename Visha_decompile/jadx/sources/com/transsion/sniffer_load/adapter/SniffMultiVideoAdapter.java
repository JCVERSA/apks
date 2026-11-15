package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.sniff.SniffVideoInfoBean;
import com.transsion.sniffer_load.GlobalDownloadManger;
import com.transsion.sniffer_load.R;
import com.transsion.videodownloader.model.Video;
import defpackage.av3;
import defpackage.e16;
import defpackage.r0a;
import defpackage.yx2;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class SniffMultiVideoAdapter extends BaseQuickAdapter<SniffVideoInfoBean, BaseViewHolder> {
    public final Map o;
    public final int p;
    public final int q;
    public int r;

    public class a implements RequestListener {
        public final SniffVideoInfoBean b;
        public final BaseViewHolder c;

        public a(SniffVideoInfoBean sniffVideoInfoBean, BaseViewHolder baseViewHolder) {
            this.b = sniffVideoInfoBean;
            this.c = baseViewHolder;
        }

        @Override
        public boolean onResourceReady(Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            this.b.setInvalid(false);
            SniffMultiVideoAdapter.this.t(this.c, this.b);
            SniffMultiVideoAdapter.this.s(this.c, this.b);
            SniffMultiVideoAdapter.this.o.put(this.b.getVideoCover(), 0);
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            if (this.b.getVideoFileName().endsWith(Video.SUFFIX.SUFFIX_M3U8) && !TextUtils.isEmpty(this.b.getVideoCover()) && this.b.getVideoCover().endsWith(".ts")) {
                int iIntValue = SniffMultiVideoAdapter.this.o.get(this.b.getVideoCover()) == null ? 0 : ((Integer) SniffMultiVideoAdapter.this.o.get(this.b.getVideoCover())).intValue();
                if (iIntValue < 6) {
                    SniffMultiVideoAdapter sniffMultiVideoAdapter = SniffMultiVideoAdapter.this;
                    sniffMultiVideoAdapter.notifyItemChanged(((BaseQuickAdapter) sniffMultiVideoAdapter).mData.indexOf(this.b) + SniffMultiVideoAdapter.this.getHeaderLayoutCount());
                }
                SniffMultiVideoAdapter.this.o.put(this.b.getVideoCover(), Integer.valueOf(iIntValue + 1));
                this.b.setInvalid(true);
            } else {
                this.b.setInvalid(false);
            }
            SniffMultiVideoAdapter.this.t(this.c, this.b);
            SniffMultiVideoAdapter.this.s(this.c, this.b);
            return false;
        }
    }

    public SniffMultiVideoAdapter(Context context) {
        super(R.layout.rv_item_sniff_multi_video_download);
        this.o = new HashMap();
        this.r = 1;
        this.mContext = context;
        TypedValue typedValue = new TypedValue();
        this.mContext.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
        this.q = this.mContext.getColor(R.color.os_text_tertiary_color);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SniffVideoInfoBean sniffVideoInfoBean) {
        if (this.r == 2) {
            j(baseViewHolder, sniffVideoInfoBean);
        } else {
            i(baseViewHolder, sniffVideoInfoBean);
        }
    }

    public final void i(BaseViewHolder baseViewHolder, SniffVideoInfoBean sniffVideoInfoBean) {
        BaseViewHolder baseViewHolderAddOnClickListener = baseViewHolder.setText(R.id.tv_sniff_video_name, r0a.g(sniffVideoInfoBean.getTitle()) ? sniffVideoInfoBean.getVideoFileName() : sniffVideoInfoBean.getTitle()).addOnClickListener(R.id.rl_sniff_multi_video);
        int i = R.id.iv_video_cover;
        baseViewHolderAddOnClickListener.addOnClickListener(i);
        t(baseViewHolder, sniffVideoInfoBean);
        s(baseViewHolder, sniffVideoInfoBean);
        Glide.with(this.mContext).asBitmap().load2(sniffVideoInfoBean.getVideoCover()).placeholder(ResourcesCompat.getDrawable(this.mContext.getResources(), com.transsion.magicvideo.R.drawable.main_fragment_placeholder, this.mContext.getTheme())).addListener(new a(sniffVideoInfoBean, baseViewHolder)).into((ImageView) baseViewHolder.getView(i));
    }

    public final void j(BaseViewHolder baseViewHolder, SniffVideoInfoBean sniffVideoInfoBean) {
        baseViewHolder.setText(R.id.tv_ratio, sniffVideoInfoBean.getFirstVideoResolution()).setText(com.transsion.magicvideo.R.id.tv_mime_type, sniffVideoInfoBean.getFirstVideoMineType());
        if (sniffVideoInfoBean.getFirstVideoSize() > 0) {
            String fileSize = Formatter.formatFileSize(baseViewHolder.itemView.getContext(), sniffVideoInfoBean.getFirstVideoSize());
            int i = com.transsion.magicvideo.R.id.tv_size;
            baseViewHolder.setText(i, fileSize).setVisible(i, true).setGone(com.transsion.magicvideo.R.id.lv_size_loading, false);
            e16.h = sniffVideoInfoBean.getFirstVideoMineType();
            e16.g = sniffVideoInfoBean.getFirstVideoResolution();
            e16.f = fileSize;
        } else {
            int i2 = com.transsion.magicvideo.R.id.tv_size;
            baseViewHolder.setText(i2, "--").setVisible(i2, true).setGone(com.transsion.magicvideo.R.id.lv_size_loading, false);
            e16.h = sniffVideoInfoBean.getFirstVideoMineType();
            e16.g = sniffVideoInfoBean.getFirstVideoResolution();
            e16.f = "-1";
        }
        e16.j();
        s(baseViewHolder, sniffVideoInfoBean);
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return this.r == 2 ? createBaseViewHolder(viewGroup, R.layout.rv_item_sniff_video_resolution_download) : createBaseViewHolder(viewGroup, R.layout.rv_item_sniff_multi_video_download);
    }

    public void r(int i) {
        this.r = i;
    }

    public final void s(BaseViewHolder baseViewHolder, SniffVideoInfoBean sniffVideoInfoBean) {
        int i;
        boolean zX = av3.x(yx2.h + File.separator + sniffVideoInfoBean.getVideoFileName());
        int i2 = R.id.iv_sniff_multi_video_download_detail;
        if (sniffVideoInfoBean.isInvalid()) {
            i = R.drawable.ic_icon_download_error;
        } else {
            i = (GlobalDownloadManger.B().d(sniffVideoInfoBean.getVideoList().get(0).getUrl()) || zX) ? R.drawable.ic_sniff_video_download_disable : R.drawable.ic_sniff_video_download;
        }
        baseViewHolder.setImageResource(i2, i).addOnClickListener(i2);
    }

    public final void t(BaseViewHolder baseViewHolder, SniffVideoInfoBean sniffVideoInfoBean) {
        long size = sniffVideoInfoBean.getVideoList().get(0).getSize();
        if (sniffVideoInfoBean.isInvalid()) {
            int i = R.id.tv_sniff_video_size;
            baseViewHolder.setText(i, R.string.download_video_disable_tip).setTextColor(i, this.p);
        } else if (size <= 0) {
            int i2 = R.id.tv_sniff_video_size;
            baseViewHolder.setText(i2, "--").setTextColor(i2, this.q).setVisible(i2, true);
        } else {
            String fileSize = Formatter.formatFileSize(baseViewHolder.itemView.getContext(), size);
            int i3 = R.id.tv_sniff_video_size;
            baseViewHolder.setText(i3, fileSize).setTextColor(i3, this.q).setVisible(i3, true);
        }
    }
}
