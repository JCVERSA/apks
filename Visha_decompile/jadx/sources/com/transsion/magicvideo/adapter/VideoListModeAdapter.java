package com.transsion.magicvideo.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.magicvideo.R;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import defpackage.kpb;
import defpackage.r91;
import defpackage.vha;
import java.util.List;

public class VideoListModeAdapter extends BaseQuickAdapter<kpb.a, BaseViewHolder> {
    public BaseQuickAdapter.OnItemClickListener o;
    public Integer p;

    public VideoListModeAdapter(List list) {
        super(R.layout.layout_video_list_mode_item, list);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, final kpb.a aVar) {
        int iO = vha.o(this.mContext);
        if (this.p == null) {
            this.p = Integer.valueOf(r91.a(iO, 0.08f));
        }
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) baseViewHolder.itemView;
        roundFrameLayout.setBackgroundColor(0);
        roundFrameLayout.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.d(aVar, view);
            }
        });
        ImageView imageView = (ImageView) roundFrameLayout.findViewById(R.id.iv_icon);
        TextView textView = (TextView) roundFrameLayout.findViewById(R.id.tv_name);
        imageView.setImageResource(aVar.a);
        imageView.setSelected(aVar.c);
        textView.setText(aVar.b);
        if (!aVar.c) {
            iO = this.mContext.getColor(R.color.os_text_tertiary_xos);
        }
        textView.setTextColor(iO);
        roundFrameLayout.findViewById(R.id.cl_root).setBackgroundColor(aVar.c ? this.p.intValue() : this.mContext.getColor(R.color.video_sort_mode_bg_color));
    }

    public final void d(kpb.a aVar, View view) {
        BaseQuickAdapter.OnItemClickListener onItemClickListener = this.o;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(this, view, getData().indexOf(aVar));
        }
    }

    public void setOnItemClick(BaseQuickAdapter.OnItemClickListener onItemClickListener) {
        this.o = onItemClickListener;
    }
}
