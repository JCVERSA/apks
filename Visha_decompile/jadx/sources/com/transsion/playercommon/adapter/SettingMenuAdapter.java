package com.transsion.playercommon.adapter;

import android.view.View;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.playercommon.R;
import com.transsion.playercommon.data.SettingMenu;
import com.transsion.widgetslib.widget.OSIconTextView;

public class SettingMenuAdapter extends BaseQuickAdapter<SettingMenu, BaseViewHolder> {
    public View o;

    public SettingMenuAdapter() {
        super(R.layout.video_settings_menu_item_button);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SettingMenu settingMenu) {
        baseViewHolder.itemView.setTag(settingMenu);
        boolean z = settingMenu.getIconStringId() != 0;
        OSIconTextView oSIconTextView = (OSIconTextView) baseViewHolder.getView(R.id.icontext_setting_menu);
        if (oSIconTextView != null) {
            oSIconTextView.setVisibility(z ? 0 : 8);
        }
        int i = R.id.iv_setting_menu;
        baseViewHolder.setGone(i, !z);
        if (z) {
            if (oSIconTextView != null) {
                oSIconTextView.setText(settingMenu.getIconStringId());
            }
            if (settingMenu.getIconTextColor() != 0 && oSIconTextView != null) {
                oSIconTextView.setTextColor(this.mContext.getColor(settingMenu.getIconTextColor()));
            }
        } else {
            baseViewHolder.setImageResource(i, settingMenu.mStateResId);
        }
        if (oSIconTextView != null) {
            oSIconTextView.setEnabled(settingMenu.mEnable);
        }
        baseViewHolder.setEnabled(i, settingMenu.mEnable);
        int i2 = R.id.iv_setting_menu_name;
        baseViewHolder.setText(i2, settingMenu.mTitleResId);
        baseViewHolder.itemView.setAlpha(settingMenu.mEnable ? 1.0f : 0.4f);
        if (settingMenu.mFlag == 9) {
            if (settingMenu.getIconStringId() == 0 || oSIconTextView == null) {
                this.o = baseViewHolder.getView(i);
            } else {
                this.o = oSIconTextView;
            }
            this.o = baseViewHolder.getView(i2);
        }
    }

    public View g() {
        return this.o;
    }
}
