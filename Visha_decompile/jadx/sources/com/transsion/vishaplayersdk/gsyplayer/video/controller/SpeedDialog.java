package com.transsion.vishaplayersdk.gsyplayer.video.controller;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter.PlaySpeedAdatpter;

public class SpeedDialog extends BaseVideoControllerDialog {
    SpeedCallback callback;

    public interface SpeedCallback {
        void update(String str, float f);
    }

    public void lambda$initView$0(PlaySpeedAdatpter playSpeedAdatpter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        PlayHandler.getInstance().mSpeed = playSpeedAdatpter.getData().get(i).getSpeed();
        SpeedCallback speedCallback = this.callback;
        if (speedCallback != null) {
            speedCallback.update(playSpeedAdatpter.getData().get(i).getName(), PlayHandler.getInstance().mSpeed);
        }
        dismiss();
    }

    public static SpeedDialog newInstance() {
        return new SpeedDialog();
    }

    @Override
    public int getLayoutId() {
        return R.layout.dialog_controller_options_list;
    }

    @Override
    public void initView(View view) {
        super.initView(view);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        PlayHandler.getInstance().mSpeed = GSYVideoManager.instance().getCurrentSpeed();
        final PlaySpeedAdatpter playSpeedAdatpter = new PlaySpeedAdatpter(getContext());
        playSpeedAdatpter.setNewData(PlayHandler.getInstance().getSpeeds());
        playSpeedAdatpter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.lambda$initView$0(playSpeedAdatpter, baseQuickAdapter, view2, i);
            }
        });
        this.mRecyclerView.setAdapter(playSpeedAdatpter);
        addDismissListener(view.findViewById(R.id.container));
    }

    public SpeedDialog setCallback(SpeedCallback speedCallback) {
        this.callback = speedCallback;
        return this;
    }
}
