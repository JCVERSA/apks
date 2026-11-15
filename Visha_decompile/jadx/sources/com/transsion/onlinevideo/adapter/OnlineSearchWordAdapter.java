package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.onlinevideo.R;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class OnlineSearchWordAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public String o;
    public final int p;

    public OnlineSearchWordAdapter(Context context) {
        super(R.layout.item_search_word);
        this.o = "";
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.playercommon.R.attr.os_platform_basic_color, typedValue, true);
        this.p = typedValue.data;
    }

    private SpannableString b(String str) {
        SpannableString spannableString = new SpannableString(str);
        try {
            Matcher matcher = Pattern.compile(this.o.toLowerCase()).matcher(new SpannableString(str.toLowerCase()));
            while (matcher.find()) {
                spannableString.setSpan(new ForegroundColorSpan(this.p), matcher.start(), matcher.end(), 18);
            }
        } catch (PatternSyntaxException unused) {
        }
        return spannableString;
    }

    public void c(String str) {
        this.o = str;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        baseViewHolder.itemView.setTag(str);
        baseViewHolder.setText(R.id.tv_search_word, b(str));
    }
}
