package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.TypedValue;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.subtitle.OpenSubtitle;
import com.transsion.magicvideo.R;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SearchSubtitleAdapter extends BaseQuickAdapter<OpenSubtitle, BaseViewHolder> {
    public String o;
    public int p;

    public SearchSubtitleAdapter(List list, Context context) {
        super(R.layout.item_subtitle_search_list, list);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.playercommon.R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, OpenSubtitle openSubtitle) {
        baseViewHolder.setText(R.id.tv_subtitle_name, d(openSubtitle.getSubFileName()));
        baseViewHolder.setText(R.id.tv_language_name, c(openSubtitle.getLanguageCode(), baseViewHolder.itemView.getContext()));
        baseViewHolder.setText(R.id.tv_size, Formatter.formatFileSize(this.mContext, Long.parseLong(openSubtitle.getSubSize())));
        int i = R.id.iv_down_load;
        baseViewHolder.setVisible(i, openSubtitle.getSubtitleState() == 0);
        baseViewHolder.setVisible(R.id.pb_down_load, openSubtitle.getSubtitleState() == 1);
        int i2 = R.id.iv_down_success;
        baseViewHolder.setVisible(i2, openSubtitle.getSubtitleState() == 2);
        baseViewHolder.addOnClickListener(i);
        baseViewHolder.addOnClickListener(i2);
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

    public final SpannableString d(String str) {
        SpannableString spannableString = new SpannableString(str);
        try {
            Matcher matcher = Pattern.compile(this.o.toLowerCase()).matcher(new SpannableString(str.toLowerCase()));
            while (matcher.find()) {
                spannableString.setSpan(new ForegroundColorSpan(this.p), matcher.start(), matcher.end(), 18);
            }
        } catch (Exception e) {
            Log.e(BaseQuickAdapter.TAG, "searchTextHighlight " + e);
        }
        return spannableString;
    }

    public void g(String str) {
        this.o = str;
    }
}
