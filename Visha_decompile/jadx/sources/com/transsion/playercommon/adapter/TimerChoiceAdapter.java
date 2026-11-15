package com.transsion.playercommon.adapter;

import android.content.Context;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;
import defpackage.wna;

public class TimerChoiceAdapter extends BaseQuickAdapter<a, BaseViewHolder> {
    public int o;

    public static class a {
        public String a;
        public long b;
        public long c;

        public a(String str, long j) {
            this.a = str;
            this.b = j;
        }
    }

    public TimerChoiceAdapter(Context context) {
        super(R.layout.rv_item_timer_choice);
        this.o = 0;
        this.mContext = context;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, a aVar) {
        baseViewHolder.setText(R.id.tv_timer_choice, aVar.a);
        long j = aVar.c;
        if (j > 0) {
            baseViewHolder.setText(R.id.tv_timer_custom, wna.c(j));
        } else if (j == -1) {
            baseViewHolder.setText(R.id.tv_timer_custom, this.mContext.getResources().getString(R.string.music_timer_finish_current_song_hint));
        } else {
            baseViewHolder.setText(R.id.tv_timer_custom, "");
        }
        int i = R.id.cb_choice;
        baseViewHolder.addOnClickListener(i).setChecked(i, baseViewHolder.getAdapterPosition() == this.o);
    }

    public void r(int i) {
        this.o = i;
    }
}
