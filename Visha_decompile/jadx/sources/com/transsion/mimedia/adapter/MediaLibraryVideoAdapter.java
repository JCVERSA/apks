package com.transsion.mimedia.adapter;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.mimedia.R;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/mimedia/adapter/MediaLibraryVideoAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "viewHolder", "miMediaVideoData", "Lzfb;", "b", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;)V", "mimedia_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MediaLibraryVideoAdapter extends BaseQuickAdapter<MIMediaVideoData, BaseViewHolder> {
    public MediaLibraryVideoAdapter() {
        super(R.layout.item_video_media_library);
    }

    @Override
    public void convert(BaseViewHolder viewHolder, MIMediaVideoData miMediaVideoData) {
        y45.j(viewHolder, "viewHolder");
        viewHolder.setText(R.id.tv_title, miMediaVideoData != null ? miMediaVideoData.getTitle() : null);
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(this.mContext).load2(miMediaVideoData != null ? miMediaVideoData.getCover() : null);
        int i = R.drawable.ic_online_cover_default;
        requestBuilderLoad2.placeholder(i).error(i).into((ImageView) viewHolder.getView(R.id.iv_video1));
    }
}
