package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.util.TypedValue;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.VideoTag;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.VideoTypeAdapter;
import java.util.function.Consumer;

public class VideoTypeAdapter extends BaseQuickAdapter<VideoTag, BaseViewHolder> {
    public VideoTag o;
    public int p;
    public int q;
    public Context r;

    public VideoTypeAdapter(Context context) {
        super(R.layout.adapter_video_tag);
        this.o = null;
        this.p = 0;
        this.q = 0;
        this.r = context;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
        this.q = context.getResources().getColor(R.color.os_text_secondary_color, this.r.getTheme());
    }

    public static void t(int[] iArr, VideoTag videoTag) {
        if (videoTag.isNeedHide()) {
            return;
        }
        iArr[0] = iArr[0] + 1;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, VideoTag videoTag) {
        int i = R.id.tv_tag;
        baseViewHolder.setText(i, videoTag.getTagName());
        if (this.o == null || videoTag.getTagId() != this.o.getTagId()) {
            baseViewHolder.setBackgroundRes(R.id.cl_content, R.drawable.video_tag_bg1);
            baseViewHolder.getView(i).setBackground(null);
            baseViewHolder.setTextColor(i, this.q);
        } else {
            baseViewHolder.setBackgroundRes(R.id.cl_content, R.drawable.video_tag_bg);
            baseViewHolder.setTextColor(i, this.p);
        }
        if (!videoTag.isSpacialType()) {
            baseViewHolder.setGone(R.id.label_imageview, false);
            return;
        }
        if (videoTag.isHot()) {
            int i2 = R.id.label_imageview;
            baseViewHolder.setGone(i2, true);
            baseViewHolder.setImageResource(i2, R.drawable.ic_tag_hot);
        } else {
            if (!videoTag.isNew()) {
                baseViewHolder.setGone(R.id.label_imageview, false);
                return;
            }
            int i3 = R.id.label_imageview;
            baseViewHolder.setGone(i3, true);
            baseViewHolder.setImageResource(i3, R.drawable.ic_tag_new);
        }
    }

    @Override
    public int getItemCount() {
        final int[] iArr = {0};
        this.mData.stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                VideoTypeAdapter.t(iArr, (VideoTag) obj);
            }
        });
        return iArr[0];
    }

    @Override
    public VideoTag getItem(int i) {
        int i2 = -1;
        for (int i3 = 0; i3 < this.mData.size(); i3++) {
            if (!((VideoTag) this.mData.get(i3)).isNeedHide()) {
                i2++;
            }
            if (i2 == i) {
                return (VideoTag) this.mData.get(i3);
            }
        }
        return (VideoTag) this.mData.get(0);
    }

    public VideoTag s() {
        return this.o;
    }

    public void u(VideoTag videoTag) {
        this.o = videoTag;
        notifyDataSetChanged();
    }
}
