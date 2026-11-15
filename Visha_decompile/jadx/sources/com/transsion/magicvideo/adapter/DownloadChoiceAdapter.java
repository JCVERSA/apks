package com.transsion.magicvideo.adapter;

import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.lzy.okgo.model.HttpHeaders;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.data.DownloadMediaItem;
import defpackage.e16;
import defpackage.ed7;
import defpackage.k29;
import defpackage.mc7;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.rc7;
import defpackage.vb;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

public class DownloadChoiceAdapter extends BaseQuickAdapter<DownloadMediaItem.mediaItemDownloadChoice, BaseViewHolder> {
    public final ArrayList o;
    public c p;

    public class a implements pd7 {
        public final DownloadMediaItem.mediaItemDownloadChoice b;
        public final BaseViewHolder c;

        public a(DownloadMediaItem.mediaItemDownloadChoice mediaitemdownloadchoice, BaseViewHolder baseViewHolder) {
            this.b = mediaitemdownloadchoice;
            this.c = baseViewHolder;
        }

        @Override
        public void onNext(Long l) {
            this.b.setSize(l.longValue());
        }

        @Override
        public void onComplete() {
            if (this.b.getSize() < 1024) {
                BaseViewHolder baseViewHolder = this.c;
                int i = R.id.tv_size;
                baseViewHolder.setText(i, "--").setVisible(i, true).setGone(R.id.lv_size_loading, false);
                e16.h = this.b.getMimeType();
                e16.g = this.b.getResolutionRadio();
                e16.f = "-1";
            } else {
                String fileSize = Formatter.formatFileSize(this.c.itemView.getContext(), this.b.getSize());
                BaseViewHolder baseViewHolder2 = this.c;
                int i2 = R.id.tv_size;
                baseViewHolder2.setText(i2, fileSize).setVisible(i2, true).setGone(R.id.lv_size_loading, false);
                e16.h = this.b.getMimeType();
                e16.g = this.b.getResolutionRadio();
                e16.f = fileSize;
            }
            e16.j();
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.j(BaseQuickAdapter.TAG, "get_file_size_failed:", th.getMessage());
            BaseViewHolder baseViewHolder = this.c;
            int i = R.id.tv_size;
            baseViewHolder.setText(i, "--").setVisible(i, true).setGone(R.id.lv_size_loading, false);
            e16.h = this.b.getMimeType();
            e16.g = this.b.getResolutionRadio();
            e16.f = "-1";
            e16.j();
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public class b implements ed7 {
        public final String a;

        public b(String str) {
            this.a = str;
        }

        @Override
        public void subscribe(rc7 rc7Var) {
            String str = this.a;
            if (str == null || TextUtils.isEmpty(str)) {
                rc7Var.onError(new Throwable("videoUrl is null or empty"));
                return;
            }
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.a).openConnection();
                httpURLConnection.setRequestProperty(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
                long contentLength = httpURLConnection.getContentLength();
                httpURLConnection.disconnect();
                rc7Var.onNext(Long.valueOf(contentLength));
                rc7Var.onComplete();
            } catch (Exception e) {
                rc7Var.onError(new Throwable(e.getMessage()));
            }
        }
    }

    public interface c {
        void b(int i);
    }

    public DownloadChoiceAdapter() {
        super(R.layout.rv_item_download_choice_with_loading);
        this.o = new ArrayList();
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, DownloadMediaItem.mediaItemDownloadChoice mediaitemdownloadchoice) {
        baseViewHolder.setText(R.id.tv_ratio, getItemCount() == 1 ? mediaitemdownloadchoice.getMimeType() : mediaitemdownloadchoice.getResolutionRadio()).setText(R.id.tv_mime_type, mediaitemdownloadchoice.getMimeType());
        int i = R.id.cb_choice;
        baseViewHolder.addOnClickListener(i).setChecked(i, this.o.contains(mediaitemdownloadchoice));
        if (mediaitemdownloadchoice.getSize() > 0) {
            String fileSize = Formatter.formatFileSize(baseViewHolder.itemView.getContext(), mediaitemdownloadchoice.getSize());
            int i2 = R.id.tv_size;
            baseViewHolder.setText(i2, fileSize).setVisible(i2, true).setGone(R.id.lv_size_loading, false);
            e16.h = mediaitemdownloadchoice.getMimeType();
            e16.g = mediaitemdownloadchoice.getResolutionRadio();
            e16.f = fileSize;
            e16.j();
            return;
        }
        if (mediaitemdownloadchoice.getSize() != -1) {
            i(mediaitemdownloadchoice.getUrl()).d0(k29.c()).M(vb.a()).subscribe(new a(mediaitemdownloadchoice, baseViewHolder));
            return;
        }
        int i3 = R.id.tv_size;
        baseViewHolder.setText(i3, "--").setVisible(i3, true).setGone(R.id.lv_size_loading, false);
        e16.h = mediaitemdownloadchoice.getMimeType();
        e16.g = mediaitemdownloadchoice.getResolutionRadio();
        e16.f = "-1";
        e16.j();
    }

    public mc7 i(String str) {
        return mc7.h(new b(str));
    }

    public ArrayList j() {
        return this.o;
    }

    public void k(DownloadMediaItem.mediaItemDownloadChoice mediaitemdownloadchoice, boolean z, int i) {
        Log.d(BaseQuickAdapter.TAG, "selectItem " + z + StringUtils.COMMA + i);
        if (z) {
            if (!this.o.contains(mediaitemdownloadchoice)) {
                this.o.add(mediaitemdownloadchoice);
            }
        } else if (this.o.contains(mediaitemdownloadchoice)) {
            this.o.remove(mediaitemdownloadchoice);
        }
        this.p.b(this.o.size());
        notifyItemChanged(i);
    }

    public void setOnSelectListener(c cVar) {
        this.p = cVar;
    }
}
