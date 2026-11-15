package com.transsion.sniffer_load.adapter;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.sniffer_load.R;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class HistoryAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public String o;

    public HistoryAdapter() {
        super(R.layout.rv_search_history);
    }

    public final SpannableString b(String str) {
        SpannableString spannableString = new SpannableString(str);
        try {
            Matcher matcher = Pattern.compile(this.o.toLowerCase()).matcher(new SpannableString(str.toLowerCase()));
            while (matcher.find()) {
                spannableString.setSpan(new ForegroundColorSpan(this.mContext.getColor(R.color.os_text_primary_color)), matcher.start(), matcher.end(), 18);
            }
        } catch (Exception e) {
            Log.e("HistoryAdapter", "searchTextColor " + e);
        }
        return spannableString;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        if (TextUtils.isEmpty(this.o)) {
            baseViewHolder.setText(R.id.tv_history_item, str);
        } else {
            int i = R.id.tv_history_item;
            baseViewHolder.setTextColor(i, this.mContext.getColor(R.color.text_disabled_color)).setText(i, b(str));
        }
    }
}
