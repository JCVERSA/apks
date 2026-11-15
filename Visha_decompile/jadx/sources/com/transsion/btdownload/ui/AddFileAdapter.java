package com.transsion.btdownload.ui;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Formatter;
import com.alibaba.android.arouter.utils.Consts;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.bt_download.R;
import defpackage.hk3;
import org.proninyaroslav.libretorrent.core.model.filetree.TorrentContentFileTree;

public class AddFileAdapter extends BaseQuickAdapter<TorrentContentFileTree, BaseViewHolder> {
    public AddFileAdapter(Context context) {
        super(R.layout.adapter_file_select);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree) {
        int iLastIndexOf;
        baseViewHolder.setText(R.id.tv_name, torrentContentFileTree.getRealName());
        baseViewHolder.setText(R.id.tv_size, Formatter.formatFileSize(this.mContext, torrentContentFileTree.size()));
        String realName = torrentContentFileTree.getRealName();
        String strSubstring = (TextUtils.isEmpty(realName) || (iLastIndexOf = realName.lastIndexOf(Consts.DOT)) <= 0) ? "unknow" : realName.substring(iLastIndexOf);
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
        baseViewHolder.setChecked(i, torrentContentFileTree.isChecked());
        baseViewHolder.addOnClickListener(i);
    }
}
