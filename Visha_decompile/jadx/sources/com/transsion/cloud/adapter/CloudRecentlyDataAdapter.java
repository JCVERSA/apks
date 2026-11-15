package com.transsion.cloud.adapter;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.netdisk.R;
import com.transsion.playercommon.core.MainApp;
import defpackage.wna;
import defpackage.xkb;
import defpackage.y45;
import defpackage.z7c;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\n\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/transsion/cloud/adapter/CloudRecentlyDataAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/dbdata/beans/VideoCloudData;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateDefViewHolder", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;", "viewHolder", "videoCloudData", "Lzfb;", "b", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/VideoCloudData;)V", "Landroid/graphics/drawable/Drawable;", "o", "Landroid/graphics/drawable/Drawable;", "placeDrawableMain", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudRecentlyDataAdapter extends BaseQuickAdapter<VideoCloudData, BaseViewHolder> {

    public final Drawable placeDrawableMain;

    public CloudRecentlyDataAdapter() {
        super(R.layout.item_cloud_recently_video_view);
        this.placeDrawableMain = ResourcesCompat.getDrawable(MainApp.f().getResources(), R.drawable.main_fragment_placeholder, MainApp.f().getTheme());
    }

    @Override
    public void convert(BaseViewHolder viewHolder, VideoCloudData videoCloudData) {
        Uri uri;
        String strC;
        y45.j(viewHolder, "viewHolder");
        if (videoCloudData == null) {
            return;
        }
        int i = R.id.tv_title;
        String fileName = videoCloudData.getFileName();
        if (fileName == null) {
            fileName = "";
        }
        viewHolder.setText(i, fileName);
        String updateTime = videoCloudData.getUpdateTime();
        if (updateTime != null) {
            String sharerNickname = videoCloudData.getSharerNickname();
            if (sharerNickname == null || sharerNickname.length() == 0) {
                strC = xkb.c(xkb.a, updateTime, null, 2, null);
            } else {
                strC = xkb.c(xkb.a, updateTime, null, 2, null) + " · " + videoCloudData.getSharerNickname();
            }
            viewHolder.setText(R.id.tv_desc, strC);
        }
        View view = viewHolder.getView(R.id.iv_bucket_fragment_item);
        y45.i(view, "getView(...)");
        ImageView imageView = (ImageView) view;
        if (y45.e(videoCloudData.getIsRecentData(), Boolean.TRUE) && videoCloudData.getDataType() == 2) {
            String cover = videoCloudData.getCover();
            if (cover == null || (uri = Uri.parse(cover)) == null) {
                String previewUrl = videoCloudData.getPreviewUrl();
                uri = Uri.parse(previewUrl != null ? previewUrl : "");
            }
        } else {
            String previewUrl2 = videoCloudData.getPreviewUrl();
            uri = Uri.parse(previewUrl2 != null ? previewUrl2 : "");
        }
        z7c.a(this.mContext, uri, 0L, this.placeDrawableMain, imageView);
        Long duration = videoCloudData.getDuration();
        if (duration != null) {
            viewHolder.setText(R.id.tv_main_fragment_item_duration, wna.c(duration.longValue()));
        }
        Long duration2 = videoCloudData.getDuration();
        if (duration2 != null) {
            long jLongValue = duration2.longValue();
            int playDuration = jLongValue == 0 ? 0 : (int) ((((long) 100) * videoCloudData.getPlayDuration()) / jLongValue);
            int i2 = R.id.sb_history;
            viewHolder.setVisible(i2, true).setProgress(i2, playDuration);
        }
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup parent, int viewType) {
        BaseViewHolder baseViewHolderCreateBaseViewHolder = createBaseViewHolder(parent, R.layout.item_cloud_recently_video_view);
        y45.i(baseViewHolderCreateBaseViewHolder, "createBaseViewHolder(...)");
        return baseViewHolderCreateBaseViewHolder;
    }
}
