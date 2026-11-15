package com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter;

import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.data.OptionMenu;

public class SettingAdatpter extends BaseQuickAdapter<OptionMenu, BaseViewHolder> {
    private int[] mFitStatusIcons;
    private int[] mFitStatusTitle;

    public SettingAdatpter() {
        super(R.layout.item_option_menu);
        this.mFitStatusIcons = new int[]{R.drawable.ic_crop, R.drawable.ic_stretch, R.drawable.ic_fit_to_screen};
        this.mFitStatusTitle = new int[]{R.string.fit_crop, R.string.fit_screen, R.string.fit_stratch};
    }

    private int getIcon(OptionMenu optionMenu) {
        return optionMenu.getType() == 8 ? this.mFitStatusIcons[PlayHandler.getInstance().mFitType % 3] : optionMenu.getResId();
    }

    private String getTitle(OptionMenu optionMenu) {
        return optionMenu.getType() == 8 ? this.mContext.getString(this.mFitStatusTitle[PlayHandler.getInstance().mFitType % 3]) : this.mContext.getString(optionMenu.getTitle());
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, OptionMenu optionMenu) {
        baseViewHolder.setImageResource(R.id.icon, getIcon(optionMenu));
        baseViewHolder.setText(R.id.title, getTitle(optionMenu));
    }
}
