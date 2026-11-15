package com.transsion.cloud.updownload.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import android.widget.CheckBox;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.cloudcore.db.CloudTaskEntity;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.R;
import defpackage.cu4;
import defpackage.z7c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;

public class TransmittedAdapter extends BaseQuickAdapter<CloudTaskEntity, BaseViewHolder> {
    public ArrayList o;
    public boolean p;
    public boolean q;
    public final int r;
    public final int s;
    public final Drawable t;
    public final Drawable u;
    public final Drawable v;
    public final Drawable w;
    public cu4 x;

    public TransmittedAdapter(Context context) {
        super(R.layout.transfer_rv_transmitted_item_list);
        this.o = new ArrayList();
        this.t = ResourcesCompat.getDrawable(MainApp.f().getResources(), com.transsion.magicvideo.R.drawable.ic_others_default_holder, MainApp.f().getTheme());
        this.u = ResourcesCompat.getDrawable(MainApp.f().getResources(), com.transsion.magicvideo.R.drawable.ic_audio_default_placeholder, MainApp.f().getTheme());
        this.v = ResourcesCompat.getDrawable(MainApp.f().getResources(), com.transsion.magicvideo.R.drawable.ic_subtitle_defalut_placeholder, MainApp.f().getTheme());
        this.w = ResourcesCompat.getDrawable(MainApp.f().getResources(), com.transsion.magicvideo.R.drawable.main_fragment_placeholder, MainApp.f().getTheme());
        this.r = context.getColor(R.color.visha_download_error_color);
        this.s = context.getColor(R.color.os_text_tertiary_color);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, CloudTaskEntity cloudTaskEntity) {
        int i;
        Drawable drawable;
        try {
            baseViewHolder.setText(R.id.tv_main_fragment_item, !TextUtils.isEmpty(cloudTaskEntity.fileName) ? cloudTaskEntity.fileName : "Unknown File");
            long j = cloudTaskEntity.fileSize;
            String fileSize = j > 0 ? Formatter.formatFileSize(this.mContext, j) : "0";
            boolean z = true;
            if (this.q) {
                if (cloudTaskEntity.isCloudFileExist) {
                    baseViewHolder.setText(R.id.tv_main_fragment_item_size, fileSize);
                } else {
                    baseViewHolder.setText(R.id.tv_main_fragment_item_size, R.string.visha_cloud_deleted);
                }
                baseViewHolder.setTextColor(R.id.tv_main_fragment_item_size, cloudTaskEntity.isCloudFileExist ? this.s : this.r);
            } else {
                boolean z2 = cloudTaskEntity.downloadSource == 1;
                if (!z2 || cloudTaskEntity.isLocalFileExist) {
                    baseViewHolder.setText(R.id.tv_main_fragment_item_size, fileSize);
                } else {
                    baseViewHolder.setText(R.id.tv_main_fragment_item_size, R.string.visha_local_deleted);
                }
                baseViewHolder.setTextColor(R.id.tv_main_fragment_item_size, (!z2 || cloudTaskEntity.isLocalFileExist) ? this.s : this.r);
                int i2 = R.id.iv_data_source;
                if (z2) {
                    i = cloudTaskEntity.isLocalFileExist ? R.drawable.ic_source_cloud : R.drawable.ic_source_cloud_error;
                } else {
                    i = R.drawable.ic_source_website;
                }
                baseViewHolder.setImageResource(i2, i);
            }
            int i3 = R.id.iv_data_source;
            if (this.q || !h(cloudTaskEntity)) {
                z = false;
            }
            baseViewHolder.setGone(i3, z);
            ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_bucket_fragment_item);
            int i4 = cloudTaskEntity.fileType;
            if (i4 == MediaItem.MediaType.OTHERS.mValue) {
                drawable = this.t;
            } else if (i4 == MediaItem.MediaType.AUDIO.mValue) {
                drawable = this.u;
            } else {
                drawable = i4 == MediaItem.MediaType.SUBTITLE.mValue ? this.v : this.w;
            }
            Drawable drawable2 = drawable;
            if (TextUtils.isEmpty(cloudTaskEntity.localFilePath)) {
                MediaItem mediaItem = new MediaItem();
                mediaItem.id = cloudTaskEntity.localFileId;
                z7c.a(this.mContext, mediaItem.getUri(), cloudTaskEntity.createTime, drawable2, imageView);
            } else {
                z7c.a(this.mContext, Uri.parse(cloudTaskEntity.localFilePath), cloudTaskEntity.createTime, drawable2, imageView);
            }
            int i5 = R.id.iv_bucket_fragment_item_more;
            baseViewHolder.addOnClickListener(i5);
            int i6 = R.id.iv_bucket_fragment_checkBox;
            baseViewHolder.addOnClickListener(i6);
            CheckBox checkBox = (CheckBox) baseViewHolder.itemView.findViewById(i6);
            checkBox.setChecked(this.o.contains(cloudTaskEntity));
            ImageView imageView2 = (ImageView) baseViewHolder.itemView.findViewById(i5);
            checkBox.setVisibility(this.p ? 0 : 8);
            imageView2.setVisibility(this.p ? 8 : 0);
        } catch (Exception e) {
            Log.e("visha_cloud_DownloadedAdapter", "Error converting item: " + e.getMessage());
        }
    }

    public ArrayList g() {
        return this.o;
    }

    public final boolean h(CloudTaskEntity cloudTaskEntity) {
        int i = cloudTaskEntity.downloadSource;
        return i == 0 || i == 1;
    }

    public void i(boolean z) {
        this.o.clear();
        if (z) {
            this.o.addAll(getData());
        }
        cu4 cu4Var = this.x;
        if (cu4Var != null) {
            cu4Var.c(z);
        }
        notifyDataSetChanged();
        cu4 cu4Var2 = this.x;
        if (cu4Var2 != null) {
            cu4Var2.c(z);
        }
    }

    public void j(CloudTaskEntity cloudTaskEntity, boolean z, int i) {
        LogUtils.j("visha_cloud_DownloadedAdapter", "selectItem " + z + StringUtils.COMMA + i);
        if (z) {
            if (this.o.contains(cloudTaskEntity)) {
                this.o.remove(cloudTaskEntity);
            }
            this.o.add(0, cloudTaskEntity);
        } else if (this.o.contains(cloudTaskEntity)) {
            this.o.remove(cloudTaskEntity);
        }
        this.x.b(this.o.size());
        notifyDataSetChanged();
    }

    public void k(boolean z) {
        this.p = z;
    }

    public void l(cu4 cu4Var) {
        this.x = cu4Var;
    }

    public void r(boolean z) {
        this.q = z;
    }
}
