package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lzy.okgo.model.Progress;
import com.transsion.cloud.clouddownload.DownloadHeaderTask;
import com.transsion.cloud.updownload.viewmodel.TransferDataViewModel;
import com.transsion.cloud.upload.task.UploadHeaderTask;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.data.SniffDataManager;
import com.transsion.sniffer_load.okdownload.NewDownloadTask;
import defpackage.kz6;
import defpackage.r13;
import defpackage.s44;
import defpackage.uz2;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class DownloadingAdapter extends BaseMultiItemQuickAdapter<NewDownloadTask, BaseViewHolder> {
    public boolean o;
    public Context p;
    public ArrayList q;
    public TransferDataViewModel r;

    public class a extends uz2 {
        public final BaseViewHolder b;
        public final NewDownloadTask c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Object obj, BaseViewHolder baseViewHolder, NewDownloadTask newDownloadTask) {
            super(obj);
            this.b = baseViewHolder;
            this.c = newDownloadTask;
        }

        @Override
        public void a(Progress progress) {
            if (DownloadingAdapter.this.t(this.b, progress)) {
                if (this.c.isbM3U8Task() && this.c.isHLSConverting()) {
                    this.b.setText(R.id.tv_main_fragment_item_speed, R.string.converting);
                } else {
                    this.b.setText(R.id.tv_main_fragment_item_speed, kz6.a(this.b.itemView.getContext(), progress.speed));
                }
                DownloadingAdapter.this.x(progress, this.b);
                this.b.setTextColor(R.id.tv_main_fragment_item_speed, DownloadingAdapter.this.p.getColor(R.color.os_text_tertiary_color));
                this.b.getView(R.id.tv_main_fragment_item_size).setVisibility(0);
                DownloadingAdapter.this.r.v();
                DownloadingAdapter.this.y(progress);
            }
        }

        @Override
        public void c(Progress progress) {
            if (DownloadingAdapter.this.t(this.b, progress)) {
                DownloadingAdapter.this.A(this.b, progress.status);
                DownloadingAdapter.this.z(this.b, progress.status);
                DownloadingAdapter.this.r.v();
                DownloadingAdapter.this.y(progress);
            }
        }

        @Override
        public void d(Progress progress) {
            if (DownloadingAdapter.this.t(this.b, progress)) {
                DownloadingAdapter.this.s(this.b, this.c);
                DownloadingAdapter.this.r.v();
            }
        }

        @Override
        public void e(Progress progress, boolean z) {
        }

        @Override
        public void f(Progress progress) {
            if (DownloadingAdapter.this.t(this.b, progress)) {
                DownloadingAdapter.this.A(this.b, progress.status);
                DownloadingAdapter.this.z(this.b, progress.status);
                DownloadingAdapter.this.r.v();
                DownloadingAdapter.this.y(progress);
            }
        }

        @Override
        public void g(Progress progress) {
            if (DownloadingAdapter.this.t(this.b, progress)) {
                if (!this.c.isbM3U8Task() || SniffDataManager.mM3u8CoverCache.get(progress.url) == null) {
                    RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(DownloadingAdapter.this.p).load2(progress.imgUrl);
                    int i = com.transsion.magicvideo.R.drawable.main_fragment_placeholder;
                    requestBuilderLoad2.error(i).placeholder(i).into((ImageView) this.b.getView(R.id.iv_bucket_fragment_item));
                } else {
                    RequestBuilder<Drawable> requestBuilderLoad3 = Glide.with(DownloadingAdapter.this.p).load2(SniffDataManager.mM3u8CoverCache.get(progress.url));
                    int i2 = com.transsion.magicvideo.R.drawable.main_fragment_placeholder;
                    requestBuilderLoad3.error(i2).placeholder(i2).into((ImageView) this.b.getView(R.id.iv_bucket_fragment_item));
                }
                DownloadingAdapter.this.x(progress, this.b);
            }
        }

        @Override
        public void h(Progress progress) {
            if (DownloadingAdapter.this.t(this.b, progress)) {
                DownloadingAdapter.this.A(this.b, progress.status);
                DownloadingAdapter.this.z(this.b, progress.status);
                DownloadingAdapter.this.r.v();
                DownloadingAdapter.this.y(progress);
            }
        }

        @Override
        public void b(File file, Progress progress) {
            if (DownloadingAdapter.this.t(this.b, progress)) {
                DownloadingAdapter.this.A(this.b, progress.status);
                DownloadingAdapter.this.r.j();
                this.c.unRegister("DownloadingAdapter");
                DownloadingAdapter.this.y(progress);
            }
        }
    }

    public void A(BaseViewHolder baseViewHolder, int i) {
        if (i != 5 && i != 4 && (MainApp.w == 0 || i == 7)) {
            int i2 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i2, R.string.net_not_connect);
            baseViewHolder.setTextColor(i2, this.p.getColor(R.color.visha_download_error_color));
            return;
        }
        if (i == 0) {
            int i3 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i3, R.string.download_connecting);
            baseViewHolder.setTextColor(i3, this.p.getColor(R.color.os_text_tertiary_color));
            return;
        }
        if (i == 1) {
            int i4 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i4, R.string.download_status_wait);
            baseViewHolder.setTextColor(i4, this.p.getColor(R.color.os_text_tertiary_color));
            return;
        }
        if (i == 3) {
            int i5 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i5, R.string.download_status_pause);
            baseViewHolder.setTextColor(i5, this.p.getColor(R.color.os_text_tertiary_color));
            return;
        }
        if (i == 4) {
            int i6 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i6, R.string.download_failed);
            baseViewHolder.setTextColor(i6, r());
        } else if (i == 5) {
            int i7 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i7, R.string.complete);
            baseViewHolder.setTextColor(i7, this.p.getColor(R.color.visha_basic_color));
        } else {
            if (i != 6) {
                return;
            }
            int i8 = R.id.tv_main_fragment_item_speed;
            baseViewHolder.setText(i8, this.p.getString(R.string.download_pause_by_mobile_a));
            baseViewHolder.setTextColor(i8, this.p.getColor(R.color.visha_download_error_color));
        }
    }

    private int r() {
        return -33776;
    }

    public void s(BaseViewHolder baseViewHolder, NewDownloadTask newDownloadTask) {
        Progress progress = newDownloadTask.progress;
        baseViewHolder.setText(R.id.tv_main_fragment_item, r13.h(progress.fileName));
        x(progress, baseViewHolder);
        if (!newDownloadTask.isbM3U8Task() || SniffDataManager.mM3u8CoverCache.get(progress.url) == null) {
            RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.p).load2(progress.imgUrl);
            int i = com.transsion.magicvideo.R.drawable.main_fragment_placeholder;
            requestBuilderLoad2.error(i).placeholder(i).into((ImageView) baseViewHolder.getView(R.id.iv_bucket_fragment_item));
        } else {
            RequestBuilder<Drawable> requestBuilderLoad3 = Glide.with(this.p).load2(SniffDataManager.mM3u8CoverCache.get(progress.url));
            int i2 = com.transsion.magicvideo.R.drawable.main_fragment_placeholder;
            requestBuilderLoad3.error(i2).placeholder(i2).into((ImageView) baseViewHolder.getView(R.id.iv_bucket_fragment_item));
        }
        int i3 = R.id.iv_bucket_fragment_checkBox;
        baseViewHolder.setGone(i3, this.o).addOnClickListener(i3).setChecked(i3, this.q.contains(newDownloadTask));
        int i4 = R.id.iv_close_button;
        baseViewHolder.setGone(i4, !this.o).addOnClickListener(i4);
        w(baseViewHolder, newDownloadTask);
    }

    public boolean t(BaseViewHolder baseViewHolder, Progress progress) {
        int i = R.id.tv_main_fragment_item;
        if (baseViewHolder.getView(i) == null || baseViewHolder.getView(i).getTag() == null) {
            return true;
        }
        return progress.hashCode() == ((Integer) baseViewHolder.getView(i).getTag()).intValue();
    }

    private boolean u(NewDownloadTask newDownloadTask) {
        return newDownloadTask.progress.downloadSource == 0 || newDownloadTask.progress.downloadSource == 1;
    }

    private void v(BaseViewHolder baseViewHolder, NewDownloadTask newDownloadTask) {
        newDownloadTask.register(new a("DownloadingAdapter", baseViewHolder, newDownloadTask));
    }

    private void w(BaseViewHolder baseViewHolder, NewDownloadTask newDownloadTask) {
        Progress progress = newDownloadTask.progress;
        z(baseViewHolder, progress.status);
        int i = R.id.iv_retry;
        baseViewHolder.setGone(i, !this.o && progress.status == 4).addOnClickListener(i);
        int i2 = R.id.iv_data_source;
        ImageView imageView = (ImageView) baseViewHolder.getView(i2);
        baseViewHolder.setGone(i2, u(newDownloadTask));
        imageView.setActivated(newDownloadTask.progress.status == 4);
        int i3 = progress.status;
        if (i3 != 2) {
            A(baseViewHolder, i3);
            return;
        }
        if (newDownloadTask.isbM3U8Task() && newDownloadTask.isHLSConverting()) {
            baseViewHolder.setText(R.id.tv_main_fragment_item_speed, R.string.converting);
        } else {
            baseViewHolder.setText(R.id.tv_main_fragment_item_speed, kz6.a(baseViewHolder.itemView.getContext(), progress.speed));
        }
        baseViewHolder.setTextColor(R.id.tv_main_fragment_item_speed, this.p.getColor(R.color.os_text_tertiary_color));
    }

    public void x(Progress progress, BaseViewHolder baseViewHolder) {
        if (progress.totalSize > 0) {
            baseViewHolder.setText(R.id.tv_main_fragment_item_size, String.format("%s", s44.d(baseViewHolder.itemView.getContext(), progress.totalSize)));
        } else {
            baseViewHolder.setText(R.id.tv_main_fragment_item_size, String.format("%s", "--"));
        }
        baseViewHolder.setProgress(R.id.progressBar, (int) (progress.fraction * 100.0f));
    }

    public void y(Progress progress) {
        int i = progress.lastStatus;
        if ((i != 4 || progress.status == 4) && (i == 4 || progress.status != 4)) {
            return;
        }
        this.r.k();
    }

    public void z(BaseViewHolder baseViewHolder, int i) {
        baseViewHolder.getView(R.id.tv_main_fragment_item_size).setVisibility(i == 2 ? 0 : 8);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, NewDownloadTask newDownloadTask) {
        Log.d("DownloadingAdapter", "convert: " + newDownloadTask);
        if (newDownloadTask.isHeaderTask()) {
            TextView textView = (TextView) baseViewHolder.getView(R.id.tv_title_working);
            textView.setText(((DownloadHeaderTask) newDownloadTask).getHeaderType() == UploadHeaderTask.HeaderType.FAILED ? this.p.getString(com.transsion.playercommon.R.string.download_failed) : this.p.getString(R.string.mv_download));
            textView.setVisibility(this.o ? 8 : 0);
        } else {
            baseViewHolder.getView(R.id.tv_main_fragment_item).setTag(Integer.valueOf(newDownloadTask.progress.hashCode()));
            int i = R.id.iv_data_source;
            baseViewHolder.setImageResource(i, newDownloadTask.progress.downloadSource == 1 ? R.drawable.ic_source_cloud : R.drawable.ic_source_website);
            baseViewHolder.setGone(i, u(newDownloadTask));
            v(baseViewHolder, newDownloadTask);
            s(baseViewHolder, newDownloadTask);
        }
    }

    @Override
    public void setNewData(List list) {
        super.setNewData(list);
        Log.e("DownloadingAdapter", "setNewData: " + list.size());
    }
}
