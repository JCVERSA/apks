package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.text.TextPaint;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.onlinevideo.R;
import java.util.Iterator;
import java.util.List;

public class OnlineSearchHistoryAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public OnlineSearchHistoryAdapter() {
        super(R.layout.item_search_history);
    }

    public static boolean b(Context context, List list, RecyclerView recyclerView) {
        int measuredWidth = recyclerView.getMeasuredWidth();
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.online_search_history_text_padding_horizontal);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.online_search_history_text_margin_end);
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(context.getResources().getDimensionPixelSize(R.dimen.online_search_history_text_size));
        Iterator it = list.iterator();
        int iMeasureText = 0;
        while (it.hasNext()) {
            iMeasureText = (int) (iMeasureText + textPaint.measureText((String) it.next()) + (dimensionPixelSize * 2) + dimensionPixelSize2);
            if (iMeasureText > measuredWidth) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        baseViewHolder.itemView.setTag(str);
        baseViewHolder.setText(R.id.tv_search_history, str);
    }
}
