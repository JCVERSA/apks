package com.transsion.tools.adapter;

import android.graphics.drawable.Drawable;
import android.widget.TextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.data.ToolsMenu;
import com.transsion.tools.R;

public class ToolMenuAdapter extends BaseQuickAdapter<ToolsMenu, BaseViewHolder> {
    public ToolMenuAdapter() {
        super(R.layout.tool_list_menu_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, ToolsMenu toolsMenu) {
        baseViewHolder.itemView.setTag(toolsMenu);
        baseViewHolder.setImageResource(R.id.iv_setting_menu, toolsMenu.imageViewResId);
        if (toolsMenu.showName) {
            baseViewHolder.setText(R.id.iv_setting_menu_name, toolsMenu.toolName);
        } else {
            baseViewHolder.setText(R.id.iv_setting_menu_name, toolsMenu.textViewResId);
        }
        int i = R.id.tv_version;
        baseViewHolder.setVisible(i, toolsMenu.showVersion);
        if (toolsMenu.showVersion) {
            Drawable drawable = this.mContext.getDrawable(R.drawable.update_point);
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumWidth());
            ((TextView) baseViewHolder.getView(i)).setCompoundDrawables(drawable, null, null, null);
            baseViewHolder.setText(i, toolsMenu.versionName);
        }
    }
}
