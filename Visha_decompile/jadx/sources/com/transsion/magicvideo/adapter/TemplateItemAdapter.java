package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.RadioButton;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.cloud_drive.base.api.model.FileVideoTemplate;
import com.transsion.magicvideo.R;

public class TemplateItemAdapter extends BaseQuickAdapter<FileVideoTemplate, BaseViewHolder> {
    public String o;

    public TemplateItemAdapter(Context context) {
        super(R.layout.template_item);
        this.o = "";
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, new TypedValue(), true);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, FileVideoTemplate fileVideoTemplate) {
        String templateId = fileVideoTemplate.getTemplateId();
        if (templateId.contains("original")) {
            baseViewHolder.setText(R.id.tv_template_id, R.string.visha_original_quality);
        } else {
            String[] strArrSplit = templateId.split("_");
            baseViewHolder.setText(R.id.tv_template_id, strArrSplit[strArrSplit.length - 1]);
        }
        ((RadioButton) baseViewHolder.getView(R.id.cb_template)).setChecked(TextUtils.equals(templateId, this.o));
    }

    public void c(String str) {
        this.o = str;
        notifyDataSetChanged();
    }
}
