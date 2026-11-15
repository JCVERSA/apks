package com.transsion.audio.adapter;

import android.widget.CheckedTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.audio.R;
import java.util.List;

public class AudioFilterSingleChoiceAdapter extends BaseQuickAdapter<String, BaseViewHolder> {
    public int o;

    public AudioFilterSingleChoiceAdapter(List list) {
        super(R.layout.item_audio_filter_type_single_choice, list);
        this.o = -1;
    }

    public int g() {
        return this.o;
    }

    public void r(int i) {
        this.o = i;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, String str) {
        CheckedTextView checkedTextView = (CheckedTextView) baseViewHolder.getView(R.id.checkedTextView);
        checkedTextView.setText(str);
        checkedTextView.setChecked(baseViewHolder.getLayoutPosition() == this.o);
    }
}
