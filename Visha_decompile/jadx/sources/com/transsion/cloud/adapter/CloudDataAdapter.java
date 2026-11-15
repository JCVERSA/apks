package com.transsion.cloud.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.DragStartHelper;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.cloud.adapter.CloudDataAdapter;
import com.transsion.dbdata.beans.VideoCloudData;
import com.transsion.dbdata.beans.VideoCloudDataLocal;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.widgets.VideoLottieAnimationView;
import com.transsion.netdisk.R;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.c74;
import defpackage.wna;
import defpackage.xkb;
import defpackage.y45;
import defpackage.z7c;
import defpackage.zfb;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001HB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u0010\u0010\u000eJ\r\u0010\u0011\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J1\u0010\u0017\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0016\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\b¢\u0006\u0004\b\u0019\u0010\u0005J\r\u0010\u001a\u001a\u00020\u0014¢\u0006\u0004\b\u001a\u0010\u001bJ\u001d\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u001cj\b\u0012\u0004\u0012\u00020\u0002`\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00032\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010\"\u001a\u00020\u0014H\u0014¢\u0006\u0004\b#\u0010$J!\u0010&\u001a\u00020\b2\u0006\u0010%\u001a\u00020\u00032\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b&\u0010'J\u001f\u0010*\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0002¢\u0006\u0004\b*\u0010+J\u001f\u0010-\u001a\u00020\b2\u0006\u0010,\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0002H\u0002¢\u0006\u0004\b-\u0010'R\u0018\u00100\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R$\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u001cj\b\u0012\u0004\u0012\u00020\u0002`\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00109\u001a\u0004\u0018\u0001078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u00108R\u0014\u0010<\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010;R\"\u0010@\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u00102\u001a\u0004\b>\u0010\u0012\"\u0004\b?\u0010\u000eR\"\u0010C\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u00102\u001a\u0004\bA\u0010\u0012\"\u0004\bB\u0010\u000eR\u001c\u0010G\u001a\n E*\u0004\u0018\u00010D0D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010F¨\u0006I"}, d2 = {"Lcom/transsion/cloud/adapter/CloudDataAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/dbdata/beans/VideoCloudData;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "Lcom/transsion/cloud/adapter/CloudDataAdapter$a;", "onDragListener", "Lzfb;", "setOnDragListener", "(Lcom/transsion/cloud/adapter/CloudDataAdapter$a;)V", "", "isSelected", "y", "(Z)V", "select", "u", "r", "()Z", "videoCloudData", "", "position", "isAdd", "v", "(Lcom/transsion/dbdata/beans/VideoCloudData;ZIZ)V", GslbInterceptor.HEADER_KEY_GSLB, CmcdData.STREAM_TYPE_LIVE, "()I", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "k", "()Ljava/util/ArrayList;", "Landroid/view/ViewGroup;", "parent", "viewType", "onCreateDefViewHolder", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;", "viewHolder", CmcdData.STREAMING_FORMAT_HLS, "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/VideoCloudData;)V", "Landroid/widget/TextView;", "tvTag", "s", "(Lcom/transsion/dbdata/beans/VideoCloudData;Landroid/widget/TextView;)V", "helper", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "o", "Lcom/transsion/cloud/adapter/CloudDataAdapter$a;", "mOnDragListener", TtmlNode.TAG_P, "Z", "mIsSelected", "q", "Ljava/util/ArrayList;", "selectVideoCloudList", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/drawable/Drawable;", "placeDrawableMain", "", "J", "mFourteenDay", "t", "getMIsSearched", "setMIsSearched", "mIsSearched", "getMIsRecently", "x", "mIsRecently", "Lcom/transsion/magicvideo/player/VideoPlayManager;", "kotlin.jvm.PlatformType", "Lcom/transsion/magicvideo/player/VideoPlayManager;", "mVideoPlayManager", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudDataAdapter extends BaseQuickAdapter<VideoCloudData, BaseViewHolder> {

    public a mOnDragListener;

    public boolean mIsSelected;

    public final ArrayList selectVideoCloudList;

    public final Drawable placeDrawableMain;

    public final long mFourteenDay;

    public boolean mIsSearched;

    public boolean mIsRecently;

    public final VideoPlayManager mVideoPlayManager;

    public interface a {
        void a(View view, int i, VideoCloudData videoCloudData, boolean z, View view2);
    }

    public CloudDataAdapter() {
        super(R.layout.item_cloud_video_view);
        this.selectVideoCloudList = new ArrayList();
        this.placeDrawableMain = ResourcesCompat.getDrawable(MainApp.f().getResources(), R.drawable.main_fragment_placeholder, MainApp.f().getTheme());
        this.mFourteenDay = 1209600000L;
        this.mVideoPlayManager = VideoPlayManager.X();
    }

    public static final boolean j(BaseViewHolder baseViewHolder, CloudDataAdapter cloudDataAdapter, VideoCloudData videoCloudData, View view, DragStartHelper dragStartHelper) {
        CheckBox checkBox = (CheckBox) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_checkBox);
        a aVar = cloudDataAdapter.mOnDragListener;
        if (aVar == null) {
            return true;
        }
        aVar.a(baseViewHolder.itemView, baseViewHolder.getAdapterPosition(), videoCloudData, checkBox.isChecked(), view);
        return true;
    }

    public static final zfb t(TextView textView) {
        textView.setVisibility(8);
        return zfb.a;
    }

    public static void w(CloudDataAdapter cloudDataAdapter, VideoCloudData videoCloudData, boolean z, int i, boolean z2, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            z2 = false;
        }
        cloudDataAdapter.v(videoCloudData, z, i, z2);
    }

    public final void g() {
        this.selectVideoCloudList.clear();
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0227  */
    /* JADX WARN: Code duplicated, block: B:102:0x0233  */
    /* JADX WARN: Code duplicated, block: B:17:0x0096  */
    /* JADX WARN: Code duplicated, block: B:20:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:23:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:26:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00f1  */
    @Override
    public void convert(BaseViewHolder viewHolder, VideoCloudData videoCloudData) {
        Uri uri;
        int i;
        int i2;
        Long size;
        String fileSize;
        int i3;
        String strC;
        PlayVideoData playVideoDataE0;
        Uri uri2;
        Uri localMediaUri;
        String localMediaName;
        Long localMediaDuring;
        Long localMediaSize;
        String fileSize2;
        y45.j(viewHolder, "viewHolder");
        if (videoCloudData == null) {
            return;
        }
        View view = viewHolder.getView(R.id.iv_bucket_fragment_checkBox);
        y45.i(view, "getView(...)");
        CheckBox checkBox = (CheckBox) view;
        int i4 = R.id.iv_bucket_fragment_item_more;
        View view2 = viewHolder.getView(i4);
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
        int i5 = R.id.tv_desc;
        View view6 = viewHolder.getView(i5);
        y45.i(view6, "getView(...)");
        TextView textView2 = (TextView) view6;
        View view7 = viewHolder.getView(R.id.lottie_layer_view);
        y45.i(view7, "getView(...)");
        VideoLottieAnimationView videoLottieAnimationView = (VideoLottieAnimationView) view7;
        if (videoCloudData instanceof VideoCloudDataLocal) {
            VideoCloudDataLocal videoCloudDataLocal = (VideoCloudDataLocal) videoCloudData;
            if (TextUtils.isEmpty(videoCloudDataLocal.getLocalMediaCoverUrl())) {
                localMediaUri = videoCloudDataLocal.getLocalMediaUri();
            } else {
                String localMediaCoverUrl = videoCloudDataLocal.getLocalMediaCoverUrl();
                if (localMediaCoverUrl != null) {
                    localMediaUri = Uri.parse(localMediaCoverUrl);
                } else {
                    uri2 = null;
                }
                Context context = this.mContext;
                Long localMediaDateModified = videoCloudDataLocal.getLocalMediaDateModified();
                z7c.e(context, uri2, localMediaDateModified != null ? localMediaDateModified.longValue() : 0L, this.placeDrawableMain, imageView2, true);
                int i6 = R.id.tv_title;
                localMediaName = videoCloudDataLocal.getLocalMediaName();
                if (localMediaName == null) {
                    localMediaName = "";
                }
                viewHolder.setText(i6, localMediaName);
                textView.setVisibility(8);
                imageView3.setVisibility(8);
                textView2.setVisibility(8);
                localMediaDuring = videoCloudDataLocal.getLocalMediaDuring();
                if (localMediaDuring != null) {
                    viewHolder.setText(R.id.tv_main_fragment_item_duration, wna.c(localMediaDuring.longValue()));
                }
                int i7 = R.id.tv_size;
                localMediaSize = videoCloudDataLocal.getLocalMediaSize();
                if (localMediaSize != null) {
                    fileSize2 = Formatter.formatFileSize(this.mContext, localMediaSize.longValue());
                    if (fileSize2 == null) {
                        fileSize2 = "";
                    }
                } else {
                    fileSize2 = "";
                }
                viewHolder.setText(i7, fileSize2);
                i = 2;
            }
            uri2 = localMediaUri;
            Context context2 = this.mContext;
            Long localMediaDateModified2 = videoCloudDataLocal.getLocalMediaDateModified();
            z7c.e(context2, uri2, localMediaDateModified2 != null ? localMediaDateModified2.longValue() : 0L, this.placeDrawableMain, imageView2, true);
            int i8 = R.id.tv_title;
            localMediaName = videoCloudDataLocal.getLocalMediaName();
            if (localMediaName == null) {
                localMediaName = "";
            }
            viewHolder.setText(i8, localMediaName);
            textView.setVisibility(8);
            imageView3.setVisibility(8);
            textView2.setVisibility(8);
            localMediaDuring = videoCloudDataLocal.getLocalMediaDuring();
            if (localMediaDuring != null) {
                viewHolder.setText(R.id.tv_main_fragment_item_duration, wna.c(localMediaDuring.longValue()));
            }
            int i9 = R.id.tv_size;
            localMediaSize = videoCloudDataLocal.getLocalMediaSize();
            if (localMediaSize != null) {
                fileSize2 = Formatter.formatFileSize(this.mContext, localMediaSize.longValue());
                if (fileSize2 == null) {
                    fileSize2 = "";
                }
            } else {
                fileSize2 = "";
            }
            viewHolder.setText(i9, fileSize2);
            i = 2;
        } else {
            String fileId = videoCloudData.getFileId();
            VideoPlayManager videoPlayManager = this.mVideoPlayManager;
            if (y45.e(fileId, (videoPlayManager == null || (playVideoDataE0 = videoPlayManager.e0()) == null) ? null : playVideoDataE0.mKtFileId)) {
                videoLottieAnimationView.setVisibility(0);
            } else {
                videoLottieAnimationView.setVisibility(8);
            }
            Long duration = videoCloudData.getDuration();
            if (duration != null) {
                long jLongValue = duration.longValue();
                viewHolder.setText(R.id.tv_main_fragment_item_duration, jLongValue == 0 ? "" : wna.c(jLongValue));
            }
            Boolean isRecentData = videoCloudData.getIsRecentData();
            Boolean bool = Boolean.TRUE;
            if (y45.e(isRecentData, bool) && videoCloudData.getDataType() == 2) {
                String cover = videoCloudData.getCover();
                if (cover == null || (uri = Uri.parse(cover)) == null) {
                    String previewUrl = videoCloudData.getPreviewUrl();
                    if (previewUrl == null) {
                        previewUrl = "";
                    }
                    uri = Uri.parse(previewUrl);
                }
            } else {
                String previewUrl2 = videoCloudData.getPreviewUrl();
                if (previewUrl2 == null) {
                    previewUrl2 = "";
                }
                uri = Uri.parse(previewUrl2);
            }
            z7c.e(this.mContext, uri, 0L, this.placeDrawableMain, imageView2, true);
            int i10 = R.id.tv_title;
            String fileName = videoCloudData.getFileName();
            if (fileName == null) {
                fileName = "";
            }
            viewHolder.setText(i10, fileName);
            imageView.setVisibility(this.mIsRecently ? 8 : 0);
            if (this.mIsSelected || this.mIsSearched) {
                i = 2;
                i2 = 8;
            } else {
                if (this.mIsRecently) {
                    i2 = 8;
                    i = 2;
                } else {
                    s(videoCloudData, textView);
                    if (y45.e(videoCloudData.getIsExitLocal(), bool)) {
                        i3 = 0;
                        imageView3.setVisibility(0);
                    } else {
                        i3 = 0;
                        imageView3.setVisibility(8);
                    }
                    textView2.setVisibility(i3);
                    String createAt = videoCloudData.getCreateAt();
                    if (createAt != null) {
                        String sharerNickname = videoCloudData.getSharerNickname();
                        if (sharerNickname == null || sharerNickname.length() == 0) {
                            i = 2;
                            strC = xkb.c(xkb.a, createAt, null, 2, null);
                        } else {
                            i = 2;
                            strC = xkb.c(xkb.a, createAt, null, 2, null) + " · " + videoCloudData.getSharerNickname();
                        }
                        viewHolder.setText(i5, strC);
                    } else {
                        i = 2;
                    }
                }
                int i11 = R.id.tv_size;
                size = videoCloudData.getSize();
                if (size != null) {
                    fileSize = Formatter.formatFileSize(this.mContext, size.longValue());
                    if (fileSize == null) {
                        fileSize = "";
                    }
                } else {
                    fileSize = "";
                }
                viewHolder.setText(i11, fileSize);
            }
            textView.setVisibility(i2);
            imageView3.setVisibility(i2);
            textView2.setVisibility(i2);
            int i12 = R.id.tv_size;
            size = videoCloudData.getSize();
            if (size != null) {
                fileSize = Formatter.formatFileSize(this.mContext, size.longValue());
                if (fileSize == null) {
                    fileSize = "";
                }
            } else {
                fileSize = "";
            }
            viewHolder.setText(i12, fileSize);
        }
        viewHolder.getView(R.id.tv_size).setVisibility((y45.e(videoCloudData.getIsRecentData(), Boolean.TRUE) && videoCloudData.getDataType() == i) ? 4 : 0);
        if (this.mIsSelected) {
            checkBox.setVisibility(0);
            checkBox.setChecked(this.selectVideoCloudList.contains(videoCloudData));
            imageView.setVisibility(8);
        } else {
            checkBox.setVisibility(8);
            if (!this.mIsRecently) {
                imageView.setVisibility(0);
            }
        }
        viewHolder.addOnClickListener(i4);
        if (this.mOnDragListener != null) {
            i(viewHolder, videoCloudData);
        }
    }

    public final void i(final BaseViewHolder helper, final VideoCloudData videoCloudData) {
        new DragStartHelper(helper.itemView, new DragStartHelper.OnDragStartListener() {
            @Override
            public final boolean onDragStart(View view, DragStartHelper dragStartHelper) {
                return CloudDataAdapter.j(helper, this, videoCloudData, view, dragStartHelper);
            }
        }).attach();
    }

    public final ArrayList getSelectVideoCloudList() {
        return this.selectVideoCloudList;
    }

    public final int l() {
        return this.selectVideoCloudList.size();
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup parent, int viewType) {
        BaseViewHolder baseViewHolderCreateBaseViewHolder = createBaseViewHolder(parent, R.layout.item_cloud_video_view);
        y45.i(baseViewHolderCreateBaseViewHolder, "createBaseViewHolder(...)");
        return baseViewHolderCreateBaseViewHolder;
    }

    public final boolean r() {
        return this.selectVideoCloudList.size() == getData().size();
    }

    public final void s(VideoCloudData videoCloudData, final TextView tvTag) {
        String parentFileId = videoCloudData.getParentFileId();
        if (parentFileId == null) {
            new c74() {
                @Override
                public final Object invoke() {
                    return CloudDataAdapter.t(tvTag);
                }
            };
            return;
        }
        if (parentFileId.length() == 0) {
            tvTag.setVisibility(8);
            return;
        }
        Integer watchStatus = videoCloudData.getWatchStatus();
        if (watchStatus != null && watchStatus.intValue() == 1) {
            tvTag.setVisibility(8);
            return;
        }
        String createAt = videoCloudData.getCreateAt();
        if (createAt == null || System.currentTimeMillis() - xkb.a.d(createAt) <= this.mFourteenDay) {
            tvTag.setVisibility(0);
        } else {
            tvTag.setVisibility(8);
        }
    }

    public final void setOnDragListener(a onDragListener) {
        y45.j(onDragListener, "onDragListener");
        this.mOnDragListener = onDragListener;
    }

    public final void u(boolean select) {
        if (select) {
            this.selectVideoCloudList.clear();
            this.selectVideoCloudList.addAll(getData());
        } else {
            this.selectVideoCloudList.clear();
        }
        notifyDataSetChanged();
    }

    public final void v(VideoCloudData videoCloudData, boolean select, int position, boolean isAdd) {
        if (videoCloudData != null) {
            if (!select) {
                if (this.selectVideoCloudList.contains(videoCloudData)) {
                    this.selectVideoCloudList.remove(videoCloudData);
                }
            } else if (!this.selectVideoCloudList.contains(videoCloudData)) {
                this.selectVideoCloudList.add(videoCloudData);
            } else if (isAdd) {
                this.selectVideoCloudList.remove(videoCloudData);
            }
        }
    }

    public final void x(boolean z) {
        this.mIsRecently = z;
    }

    public final void y(boolean isSelected) {
        this.mIsSelected = isSelected;
    }
}
