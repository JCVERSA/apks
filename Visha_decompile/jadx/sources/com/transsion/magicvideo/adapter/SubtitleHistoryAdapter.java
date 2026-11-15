package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.SubtitleHistory;
import com.transsion.magicvideo.R;
import java.util.List;

public class SubtitleHistoryAdapter extends BaseQuickAdapter<SubtitleHistory, BaseViewHolder> {
    public boolean o;

    public SubtitleHistoryAdapter(List list, boolean z) {
        super(R.layout.item_subtitle_history_list, list);
        this.o = z;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SubtitleHistory subtitleHistory) {
        baseViewHolder.setText(R.id.tv_subtitle_name, subtitleHistory.subName);
        baseViewHolder.setText(R.id.tv_language_name, c(subtitleHistory.subLanguageId, this.mContext));
        baseViewHolder.setText(R.id.tv_size, Formatter.formatFileSize(this.mContext, subtitleHistory.subSize));
        int i = R.id.iv_down_success;
        baseViewHolder.setGone(i, !this.o);
        int i2 = R.id.cb;
        baseViewHolder.setGone(i2, this.o);
        baseViewHolder.setChecked(i2, subtitleHistory.isCheck);
        baseViewHolder.addOnClickListener(i);
    }

    public String c(String str, Context context) {
        String[] stringArray = context.getResources().getStringArray(R.array.language_entries);
        String[] stringArray2 = context.getResources().getStringArray(R.array.standard_language_values);
        for (int i = 0; i < stringArray2.length; i++) {
            if (TextUtils.equals(stringArray2[i], str)) {
                return stringArray[i];
            }
        }
        return "";
    }

    public boolean g() {
        return this.o;
    }

    public void h(boolean z) {
        this.o = z;
    }
}
