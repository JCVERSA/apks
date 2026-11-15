package com.transsion.playercommon.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.R;
import com.transsion.widgets.BadgeView;
import defpackage.wna;
import defpackage.z7c;
import java.util.ArrayList;

public class VideoStackAdapter extends RecyclerView.Adapter {
    public Context o;
    public int p;
    public ArrayList q;

    public class a extends RecyclerView.ViewHolder {
        public RelativeLayout p;
        public ImageView q;
        public TextView r;
        public BadgeView s;
        public ImageView t;

        public a(View view) {
            super(view);
            this.p = (RelativeLayout) view.findViewById(R.id.rl_video_stack);
            this.q = (ImageView) view.findViewById(R.id.iv_avatar);
            this.r = (TextView) view.findViewById(R.id.tv_time);
            this.s = (BadgeView) view.findViewById(R.id.tv_stack_num);
            this.t = (ImageView) view.findViewById(R.id.imv_not_receive);
        }
    }

    @Override
    public int getItemCount() {
        return this.q.size();
    }

    @Override
    public int getItemViewType(int i) {
        return this.p;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        a aVar = (a) viewHolder;
        RelativeLayout relativeLayout = aVar.p;
        ImageView imageView = aVar.q;
        TextView textView = aVar.r;
        BadgeView badgeView = aVar.s;
        MediaItem mediaItem = (MediaItem) this.q.get(i);
        z7c.c(this.o, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.o.getResources(), R.drawable.main_fragment_placeholder, this.o.getTheme()), imageView);
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(((MediaItem) this.q.get(i)).duration));
        }
        if (i != 0) {
            badgeView.setVisibility(8);
            return;
        }
        imageView.setVisibility(0);
        int size = this.q.size();
        if (size > 0) {
            badgeView.setNum(size);
            if (size > 2) {
                badgeView.setRotation(5.0f);
            }
            badgeView.setVisibility(0);
            badgeView.requestLayout();
        }
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(i == 3 ? LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_video_stack_grid, viewGroup, false) : LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_video_stack_list, viewGroup, false));
    }
}
