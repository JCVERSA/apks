package com.transsion.playercommon.adapter;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.playercommon.R;
import com.transsion.utils.BaseConstant;
import com.transsion.widgets.BadgeView;
import defpackage.ro1;
import java.util.ArrayList;

public class AudioStackAdapter extends RecyclerView.Adapter {
    public Context o;
    public AudioItem p = new AudioItem();
    public int q = 0;
    public ArrayList r;
    public BaseConstant.SCREEN_TYPE s;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;

    public class a extends RecyclerView.ViewHolder {
        public RelativeLayout p;
        public FrameLayout q;
        public TextView r;
        public TextView s;
        public BadgeView t;
        public ImageView u;

        public a(View view) {
            super(view);
            this.p = (RelativeLayout) view.findViewById(R.id.rl_audio_stack);
            this.q = (FrameLayout) view.findViewById(R.id.fl_play_status);
            this.r = (TextView) view.findViewById(R.id.tv_name);
            this.s = (TextView) view.findViewById(R.id.tv_author);
            this.t = (BadgeView) view.findViewById(R.id.tv_stack_num);
            this.u = (ImageView) view.findViewById(R.id.imv_not_receive);
        }
    }

    public AudioStackAdapter(Context context, ArrayList arrayList, BaseConstant.SCREEN_TYPE screen_type) {
        this.o = context;
        this.r = arrayList;
        this.s = screen_type;
        this.t = context.getColor(R.color.color_level_one_background_color);
        this.u = this.o.getColor(R.color.color_level_one_shadow_color);
        this.v = this.o.getColor(R.color.color_level_two_background_color);
        this.w = this.o.getColor(R.color.color_level_two_shadow_color);
        this.x = this.o.getColor(R.color.color_level_third_background_color);
        this.y = this.o.getColor(R.color.color_level_third_shadow_color);
    }

    @Override
    public int getItemCount() {
        return this.r.size();
    }

    @Override
    public int getItemViewType(int i) {
        return i;
    }

    @Override
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (i < 0 || i >= this.r.size()) {
            Log.e("AudioStackAdapter", "Invalid position: " + i + " list size: " + this.r.size());
            return;
        }
        a aVar = (a) viewHolder;
        RelativeLayout relativeLayout = aVar.p;
        FrameLayout frameLayout = aVar.q;
        TextView textView = aVar.r;
        textView.setText(((AudioItem) this.r.get(i)).displayName);
        TextView textView2 = aVar.s;
        textView2.setText(((AudioItem) this.r.get(i)).artistName);
        BadgeView badgeView = aVar.t;
        ImageView imageView = aVar.u;
        if (i != 0) {
            badgeView.setVisibility(8);
            textView.setVisibility(4);
            textView2.setVisibility(4);
            frameLayout.setVisibility(4);
            relativeLayout.requestLayout();
            if (i == 1) {
                ro1.a(relativeLayout, this.v, com.transsion.utils.a.d(this.o, 8.0f), this.w, com.transsion.utils.a.d(this.o, 8.0f), 0, 0);
                return;
            } else {
                ro1.a(relativeLayout, this.x, com.transsion.utils.a.d(this.o, 8.0f), this.y, com.transsion.utils.a.d(this.o, 8.0f), 0, 0);
                return;
            }
        }
        ro1.a(relativeLayout, this.t, com.transsion.utils.a.d(this.o, 8.0f), this.u, com.transsion.utils.a.d(this.o, 8.0f), 0, 0);
        frameLayout.setVisibility(0);
        int size = this.r.size();
        if (size > 0) {
            badgeView.setNum(size);
            badgeView.setVisibility(0);
            textView.setVisibility(0);
            textView2.setVisibility(0);
            relativeLayout.requestLayout();
        }
        badgeView.setBackgroundResource(R.drawable.shape_drag_num);
    }

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_audio_stack, viewGroup, false));
    }

    public void r(int i) {
        this.q = i;
    }

    public void s(ArrayList arrayList) {
        this.r = arrayList;
        notifyDataSetChanged();
    }

    public void t(BaseConstant.SCREEN_TYPE screen_type) {
        this.s = screen_type;
    }
}
