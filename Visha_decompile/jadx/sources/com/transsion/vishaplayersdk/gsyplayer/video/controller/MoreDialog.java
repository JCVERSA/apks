package com.transsion.vishaplayersdk.gsyplayer.video.controller;

import android.view.View;
import androidx.recyclerview.widget.GridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter.SettingAdatpter;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.data.OptionMenu;
import defpackage.h27;

public class MoreDialog extends BaseVideoControllerDialog {
    int[] indexs = {2, 0, 1};
    int index = getIndex();

    private int getIndex() {
        for (int i = 0; i < 3; i++) {
            if (PlayHandler.getInstance().mFitType == this.indexs[i]) {
                return (i + 1) % 3;
            }
        }
        return 0;
    }

    public void lambda$initView$0(SettingAdatpter settingAdatpter, View view, BaseQuickAdapter baseQuickAdapter, View view2, int i) {
        OptionMenu optionMenu = settingAdatpter.getData().get(i);
        if (optionMenu.getType() == 8) {
            GSYVideoManager.instance().setAspectRatio(this.indexs[this.index % 3]);
            PlayHandler.getInstance().mFitType = this.indexs[this.index % 3];
            settingAdatpter.notifyItemChanged(i);
            this.index++;
            h27.c().e(1009, new Object[0]);
        } else if (optionMenu.getType() == 1) {
            dismiss();
            PlayHandler.getInstance().getPipListener().onClick(view);
            h27.c().e(1010, new Object[0]);
        } else if (optionMenu.getType() == 11) {
            h27.c().e(1011, new Object[0]);
        }
        dismiss();
    }

    public static MoreDialog newInstance() {
        return new MoreDialog();
    }

    @Override
    public void initView(final View view) {
        super.initView(view);
        this.mRecyclerView.setLayoutManager(new GridLayoutManager(getContext(), 3));
        final SettingAdatpter settingAdatpter = new SettingAdatpter();
        settingAdatpter.setNewData(PlayHandler.getInstance().getSettings());
        settingAdatpter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.lambda$initView$0(settingAdatpter, view, baseQuickAdapter, view2, i);
            }
        });
        this.mRecyclerView.setAdapter(settingAdatpter);
        addDismissListener(view.findViewById(R.id.container));
    }
}
