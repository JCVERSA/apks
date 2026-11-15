package com.transsion.cloud.adapter;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.format.Formatter;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.cloud.SearchResponseData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.widgets.VideoLottieAnimationView;
import com.transsion.netdisk.R;
import com.transsion.playercommon.core.MainApp;
import defpackage.wna;
import defpackage.y45;
import defpackage.z7c;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\t\u0010\nR\u001c\u0010\u000f\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/transsion/cloud/adapter/CloudSearchAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/dbdata/beans/cloud/SearchResponseData;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "viewHolder", "videoCloudData", "Lzfb;", "b", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/cloud/SearchResponseData;)V", "Lcom/transsion/magicvideo/player/VideoPlayManager;", "kotlin.jvm.PlatformType", "o", "Lcom/transsion/magicvideo/player/VideoPlayManager;", "mVideoPlayManager", "Landroid/graphics/drawable/Drawable;", TtmlNode.TAG_P, "Landroid/graphics/drawable/Drawable;", "placeDrawableMain", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudSearchAdapter extends BaseQuickAdapter<SearchResponseData, BaseViewHolder> {

    public final VideoPlayManager mVideoPlayManager;

    public final Drawable placeDrawableMain;

    public CloudSearchAdapter() {
        super(R.layout.item_search_cloud_video_view);
        this.mVideoPlayManager = VideoPlayManager.X();
        this.placeDrawableMain = ResourcesCompat.getDrawable(MainApp.f().getResources(), R.drawable.main_fragment_placeholder, MainApp.f().getTheme());
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0121  */
    @Override
    public void convert(BaseViewHolder viewHolder, SearchResponseData videoCloudData) {
        String fileSize;
        PlayVideoData playVideoDataE0;
        y45.j(viewHolder, "viewHolder");
        if (videoCloudData == null) {
            return;
        }
        View view = viewHolder.getView(R.id.iv_bucket_fragment_checkBox);
        y45.i(view, "getView(...)");
        CheckBox checkBox = (CheckBox) view;
        int i = R.id.iv_bucket_fragment_item_more;
        View view2 = viewHolder.getView(i);
        y45.i(view2, "getView(...)");
        ImageView imageView = (ImageView) view2;
        View view3 = viewHolder.getView(R.id.iv_bucket_fragment_item);
        y45.i(view3, "getView(...)");
        ImageView imageView2 = (ImageView) view3;
        View view4 = viewHolder.getView(R.id.tv_tag);
        y45.i(view4, "getView(...)");
        TextView textView = (TextView) view4;
        View view5 = viewHolder.getView(R.id.iv_folder);
        y45.i(view5, "getView(...)");
        ImageView imageView3 = (ImageView) view5;
        int i2 = R.id.tv_desc;
        View view6 = viewHolder.getView(i2);
        y45.i(view6, "getView(...)");
        TextView textView2 = (TextView) view6;
        View view7 = viewHolder.getView(R.id.lottie_layer_view);
        y45.i(view7, "getView(...)");
        VideoLottieAnimationView videoLottieAnimationView = (VideoLottieAnimationView) view7;
        View view8 = viewHolder.getView(R.id.ll_list_item_operate_view);
        y45.i(view8, "getView(...)");
        LinearLayout linearLayout = (LinearLayout) view8;
        Integer dataType = videoCloudData.getDataType();
        if (dataType != null && dataType.intValue() == 1) {
            linearLayout.setVisibility(0);
            textView2.setVisibility(8);
        } else {
            linearLayout.setVisibility(8);
            textView2.setVisibility(0);
            textView2.setText(videoCloudData.getMediaLibraryName());
        }
        String sourceId = videoCloudData.getSourceId();
        VideoPlayManager videoPlayManager = this.mVideoPlayManager;
        if (y45.e(sourceId, (videoPlayManager == null || (playVideoDataE0 = videoPlayManager.e0()) == null) ? null : playVideoDataE0.mKtFileId)) {
            videoLottieAnimationView.setVisibility(0);
        } else {
            videoLottieAnimationView.setVisibility(8);
        }
        Long duration = videoCloudData.getDuration();
        if (duration != null) {
            long jLongValue = duration.longValue();
            viewHolder.setText(R.id.tv_main_fragment_item_duration, jLongValue == 0 ? "" : wna.c(jLongValue));
        }
        String cover = videoCloudData.getCover();
        if (cover == null) {
            cover = "";
        }
        z7c.e(this.mContext, Uri.parse(cover), 0L, this.placeDrawableMain, imageView2, true);
        int i3 = R.id.tv_title;
        String title = videoCloudData.getTitle();
        if (title == null) {
            title = "";
        }
        viewHolder.setText(i3, title);
        imageView.setVisibility(0);
        textView.setVisibility(8);
        imageView3.setVisibility(8);
        Integer dataType2 = videoCloudData.getDataType();
        if (dataType2 != null && dataType2.intValue() == 1) {
            int i4 = R.id.tv_size;
            Long size = videoCloudData.getSize();
            if (size != null) {
                fileSize = Formatter.formatFileSize(this.mContext, size.longValue());
                if (fileSize == null) {
                    fileSize = "";
                }
            } else {
                fileSize = "";
            }
            viewHolder.setText(i4, fileSize);
            viewHolder.setVisible(i4, true);
        } else {
            viewHolder.setVisible(R.id.tv_size, false);
        }
        checkBox.setVisibility(8);
        viewHolder.addOnClickListener(i);
        viewHolder.addOnClickListener(i2);
    }
}
