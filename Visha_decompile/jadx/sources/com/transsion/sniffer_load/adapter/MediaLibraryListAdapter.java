package com.transsion.sniffer_load.adapter;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.adapter.MediaLibraryListAdapter;
import defpackage.i81;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0012B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;", CmcdData.STREAM_TYPE_LIVE, "Lzfb;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "(Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;)V", "viewHolder", "data", "d", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V", "o", "Lcom/transsion/sniffer_load/adapter/MediaLibraryListAdapter$a;", "mMediaLibraryItemListener", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryListAdapter extends BaseQuickAdapter<MIMediaLibraryData, BaseViewHolder> {

    public a mMediaLibraryItemListener;

    public interface a {
        void a(MIMediaLibraryData mIMediaLibraryData, MIMediaVideoData mIMediaVideoData);

        void b(MIMediaLibraryData mIMediaLibraryData);
    }

    public MediaLibraryListAdapter() {
        super(R.layout.item_media_library);
    }

    public static final void g(MediaLibraryListAdapter mediaLibraryListAdapter, MIMediaLibraryData mIMediaLibraryData, MIMediaVideoData mIMediaVideoData, View view) {
        a aVar = mediaLibraryListAdapter.mMediaLibraryItemListener;
        if (aVar != null) {
            aVar.a(mIMediaLibraryData, mIMediaVideoData);
        }
    }

    public static final void h(MediaLibraryListAdapter mediaLibraryListAdapter, MIMediaLibraryData mIMediaLibraryData, View view) {
        a aVar = mediaLibraryListAdapter.mMediaLibraryItemListener;
        if (aVar != null) {
            aVar.b(mIMediaLibraryData);
        }
    }

    @Override
    public void convert(BaseViewHolder viewHolder, final MIMediaLibraryData data) {
        y45.j(viewHolder, "viewHolder");
        y45.j(data, "data");
        View view = viewHolder.getView(R.id.ll_header);
        y45.i(view, "getView(...)");
        LinearLayout linearLayout = (LinearLayout) view;
        View view2 = viewHolder.getView(R.id.iv_video1);
        y45.i(view2, "getView(...)");
        ImageView imageView = (ImageView) view2;
        View view3 = viewHolder.getView(R.id.iv_video2);
        y45.i(view3, "getView(...)");
        ImageView imageView2 = (ImageView) view3;
        View view4 = viewHolder.getView(R.id.iv_video3);
        y45.i(view4, "getView(...)");
        ImageView imageView3 = (ImageView) view4;
        View view5 = viewHolder.getView(R.id.rfl_video1);
        y45.i(view5, "getView(...)");
        View view6 = viewHolder.getView(R.id.rfl_video2);
        y45.i(view6, "getView(...)");
        View view7 = viewHolder.getView(R.id.rfl_video3);
        y45.i(view7, "getView(...)");
        View view8 = viewHolder.getView(R.id.ll_videos);
        y45.i(view8, "getView(...)");
        LinearLayout linearLayout2 = (LinearLayout) view8;
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.mContext).load2(data.getVirtualPersonPhoto());
        int i = R.drawable.ic_avator_default;
        requestBuilderLoad2.placeholder(i).error(i).into((ImageView) viewHolder.getView(R.id.iv_avatar));
        viewHolder.setText(R.id.tv_title, data.getMediaLibraryName());
        viewHolder.setText(R.id.tv_subtitle, data.getVirtualPersonName());
        List listN = y71.n((RoundFrameLayout) view5, (RoundFrameLayout) view6, (RoundFrameLayout) view7);
        List<MIMediaVideoData> videoList = data.getVideoList();
        if (videoList == null || videoList.isEmpty()) {
            linearLayout2.setVisibility(8);
        } else {
            List<MIMediaVideoData> videoList2 = data.getVideoList();
            y45.g(videoList2);
            List listU0 = i81.U0(videoList2, 3);
            List listN2 = y71.n(imageView, imageView2, imageView3);
            int i2 = 0;
            for (Object obj : listU0) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    y71.u();
                }
                final MIMediaVideoData mIMediaVideoData = (MIMediaVideoData) obj;
                RequestBuilder<Drawable> requestBuilderLoad3 = Glide.with(this.mContext).load2(mIMediaVideoData.getCover());
                int i4 = R.drawable.ic_online_cover_default;
                requestBuilderLoad3.placeholder(i4).error(i4).into((ImageView) listN2.get(i2));
                ((RoundFrameLayout) listN.get(i2)).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view9) {
                        MediaLibraryListAdapter.g(this.b, data, mIMediaVideoData, view9);
                    }
                });
                i2 = i3;
            }
            for (int size = listU0.size(); size < 3; size++) {
                ((RoundFrameLayout) listN.get(size)).setVisibility(4);
            }
        }
        linearLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view9) {
                MediaLibraryListAdapter.h(this.b, data, view9);
            }
        });
    }

    public final void i(a l) {
        y45.j(l, CmcdData.STREAM_TYPE_LIVE);
        this.mMediaLibraryItemListener = l;
    }
}
