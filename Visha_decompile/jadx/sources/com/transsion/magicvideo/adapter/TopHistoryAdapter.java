package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.TopHistoryAdapter;
import com.transsion.playercommon.core.MainApp;
import com.transsion.utils.a;
import defpackage.tpb;
import defpackage.wna;
import defpackage.z7c;
import java.util.List;

public class TopHistoryAdapter extends BaseQuickAdapter<MediaItem, BaseViewHolder> {
    public Pair o;

    public TopHistoryAdapter() {
        super(R.layout.rv_item_top_history_list);
        g(MainApp.f());
    }

    public static boolean h(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        int i = R.id.ll_bucket_fragment_item;
        View view = baseViewHolder.getView(i);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.width = ((Integer) this.o.first).intValue();
        layoutParams.height = ((Integer) this.o.second).intValue();
        view.setLayoutParams(layoutParams);
        z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item));
        baseViewHolder.setVisible(R.id.tv_more, false);
        long j = mediaItem.duration;
        int i2 = j == 0 ? 0 : (int) (((long) (mediaItem.playPosition * 100)) / j);
        int i3 = R.id.sb_history;
        baseViewHolder.setVisible(i3, true).setProgress(i3, i2);
        ((SeekBar) baseViewHolder.getView(i3)).setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return TopHistoryAdapter.h(view2, motionEvent);
            }
        });
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_main_fragment_item_duration);
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(mediaItem.duration));
        }
        baseViewHolder.setVisible(R.id.iv_favorite, tpb.j0().T(mediaItem.data));
        baseViewHolder.setVisible(R.id.iv_logo, mediaItem.isYoutubeUrl);
        baseViewHolder.getView(i).setContentDescription(this.mContext.getString(R.string.talkback_playback_history) + wna.c(mediaItem.duration));
    }

    @Override
    public void convertPayloads(BaseViewHolder baseViewHolder, MediaItem mediaItem, List list) {
        long j = mediaItem.duration;
        int i = j == 0 ? 0 : (int) (((long) (mediaItem.playPosition * 100)) / j);
        int i2 = R.id.sb_history;
        baseViewHolder.setVisible(i2, true).setProgress(i2, i);
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_main_fragment_item_duration);
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(mediaItem.duration));
        }
    }

    public final void g(Context context) {
        this.o = new Pair(Integer.valueOf(a.d(context, 130.0f)), Integer.valueOf(a.d(context, 73.0f)));
    }

    public TopHistoryAdapter(Context context) {
        super(R.layout.rv_item_top_history_list);
        g(context);
    }
}
