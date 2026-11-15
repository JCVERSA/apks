package com.transsion.playercommon.adapter;

import android.util.TypedValue;
import android.widget.ImageView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.MediaOperateMenuBean;
import com.transsion.widgetslib.widget.OSIconTextView;
import java.util.List;

public class MediaOperateHorizontalAdapter extends BaseQuickAdapter<MediaOperateMenuBean, BaseViewHolder> {
    public int o;
    public int p;

    public MediaOperateHorizontalAdapter(List list) {
        super(R.layout.item_media_operate_menu_horizontal, list);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaOperateMenuBean mediaOperateMenuBean) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_operate_menu_icon);
        OSIconTextView oSIconTextView = (OSIconTextView) baseViewHolder.getView(R.id.icon_text);
        boolean z = mediaOperateMenuBean.getIconName() != null;
        if (z) {
            oSIconTextView.setText(mediaOperateMenuBean.getIconName());
            int iD = d(mediaOperateMenuBean.isNeedThemeColor());
            if (iD != 0) {
                oSIconTextView.setTextColor(iD);
            }
        } else {
            imageView.setImageResource(mediaOperateMenuBean.iconResId);
        }
        int i = 8;
        imageView.setVisibility((mediaOperateMenuBean.showDescription || z) ? 8 : 0);
        if (!mediaOperateMenuBean.showDescription && z) {
            i = 0;
        }
        oSIconTextView.setVisibility(i);
        baseViewHolder.setText(R.id.tv_media_operate_menu_name, mediaOperateMenuBean.name);
        if (!mediaOperateMenuBean.showDescription) {
            baseViewHolder.setVisible(R.id.tv_media_operate_menu_text, false);
            return;
        }
        int i2 = R.id.tv_media_operate_menu_text;
        baseViewHolder.setVisible(i2, true);
        baseViewHolder.setText(i2, mediaOperateMenuBean.description);
    }

    public final int d(boolean z) {
        if (this.mContext == null) {
            return 0;
        }
        if (this.p != 0) {
            TypedValue typedValue = new TypedValue();
            this.mContext.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
            this.p = typedValue.data;
            this.o = this.mContext.getResources().getColor(R.color.os_icon_secondary);
        }
        return z ? this.p : this.o;
    }
}
