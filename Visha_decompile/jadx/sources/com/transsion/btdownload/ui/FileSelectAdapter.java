package com.transsion.btdownload.ui;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.alibaba.android.arouter.utils.Consts;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.bt_download.R;
import defpackage.hk3;

public class FileSelectAdapter extends BaseQuickAdapter<DownloadableFileItem, BaseViewHolder> {
    public FileSelectAdapter(Context context) {
        super(R.layout.adapter_file_select);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, DownloadableFileItem downloadableFileItem) {
        int iLastIndexOf;
        baseViewHolder.setText(R.id.tv_name, downloadableFileItem.name);
        baseViewHolder.setText(R.id.tv_size, Formatter.formatFileSize(this.mContext, downloadableFileItem.size));
        String str = downloadableFileItem.name;
        String strSubstring = (TextUtils.isEmpty(str) || (iLastIndexOf = str.lastIndexOf(Consts.DOT)) <= 0) ? "unknow" : str.substring(iLastIndexOf);
        if (hk3.a.contains(strSubstring)) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_bt_video_cover);
        } else if (hk3.d.contains(strSubstring)) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_audio_default_placeholder);
        } else if (hk3.e.contains(strSubstring)) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_subtitle_defalut_placeholder);
        } else if (hk3.g.contains(strSubstring)) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_bt_img_cover);
        } else {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_others_default_holder);
        }
        int i = R.id.iv_bucket_fragment_checkBox;
        baseViewHolder.setChecked(i, downloadableFileItem.selected);
        baseViewHolder.addOnClickListener(i);
    }
}
