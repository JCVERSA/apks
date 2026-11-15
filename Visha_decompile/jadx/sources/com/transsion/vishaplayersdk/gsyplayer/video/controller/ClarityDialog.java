package com.transsion.vishaplayersdk.gsyplayer.video.controller;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoDefinition;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter.ClarityAdatpter;

public class ClarityDialog extends BaseVideoControllerDialog {
    ClarityCallback callback;

    public interface ClarityCallback {
        void switchResolution(VideoDefinition videoDefinition);
    }

    public void lambda$initView$0(ClarityAdatpter clarityAdatpter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        if (i > clarityAdatpter.getData().size() - 1 || this.callback == null) {
            dismiss();
            return;
        }
        this.callback.switchResolution(clarityAdatpter.getData().get(i));
        dismiss();
    }

    public static ClarityDialog newInstance() {
        return new ClarityDialog();
    }

    @Override
    public int getLayoutId() {
        return R.layout.dialog_controller_options_list;
    }

    @Override
    @SuppressLint({"NotifyDataSetChanged"})
    public void initView(View view) {
        super.initView(view);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        final ClarityAdatpter clarityAdatpter = new ClarityAdatpter(getContext());
        clarityAdatpter.setNewData(GSYVideoManager.instance().getVideoDefinitions());
        clarityAdatpter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.lambda$initView$0(clarityAdatpter, baseQuickAdapter, view2, i);
            }
        });
        this.mRecyclerView.setAdapter(clarityAdatpter);
        addDismissListener(view.findViewById(R.id.container));
    }

    public ClarityDialog setCallback(ClarityCallback clarityCallback) {
        this.callback = clarityCallback;
        return this;
    }
}
