package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.widget.RadioButton;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.magicvideo.R;
import defpackage.j;
import defpackage.j0;

public class AISubtitleLanguageAdapter extends BaseQuickAdapter<j, BaseViewHolder> {
    public String o;

    public AISubtitleLanguageAdapter(Context context) {
        super(R.layout.video_ai_subtitle_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, j jVar) {
        baseViewHolder.itemView.setTag(jVar);
        baseViewHolder.setText(R.id.tv_language_name, j0.b(this.mContext, jVar.c));
        baseViewHolder.setGone(R.id.ic_language_flag, jVar.a);
        RadioButton radioButton = (RadioButton) baseViewHolder.getView(R.id.cb_ai_subtitle);
        radioButton.setClickable(false);
        radioButton.setChecked(jVar.c.equals(this.o));
    }

    public void c(String str) {
        this.o = str;
    }
}
