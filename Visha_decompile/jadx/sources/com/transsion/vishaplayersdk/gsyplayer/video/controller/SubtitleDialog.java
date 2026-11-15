package com.transsion.vishaplayersdk.gsyplayer.video.controller;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.vishaplayersdk.R;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.transsion.vishaplayersdk.gsyplayer.base.model.VideoSubtitle;
import com.transsion.vishaplayersdk.gsyplayer.video.PlayHandler;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.SubtitleDialog;
import com.transsion.vishaplayersdk.gsyplayer.video.controller.adapter.SubtitleAdapter;
import defpackage.h27;
import defpackage.se;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.List;

public class SubtitleDialog extends BaseVideoControllerDialog {
    SubtitleCallback callback;

    public interface SubtitleCallback {
        void update(String str);
    }

    public void lambda$initView$0(SubtitleAdapter subtitleAdapter, boolean z, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        List<VideoSubtitle> data = subtitleAdapter.getData();
        if (data == null || i < 0 || i >= data.size()) {
            dismiss();
            return;
        }
        if (!z) {
            VideoSubtitle videoSubtitle = data.get(i);
            int language = videoSubtitle.getLanguage();
            GSYVideoManager.instance().switchSubtitleSource(language);
            PlayHandler.getInstance().mSubtitleCode = language;
            PlayHandler.getInstance().mSubtitleCodeByUser = language;
            SubtitleCallback subtitleCallback = this.callback;
            if (subtitleCallback != null) {
                subtitleCallback.update(videoSubtitle.getName());
            }
            w6c.t(se.a(), "ott_subtitle_init", language);
        }
        dismiss();
    }

    public static void lambda$initView$1(View view) {
        h27.c().e(1093, new Object[0]);
    }

    public static SubtitleDialog newInstance() {
        return new SubtitleDialog();
    }

    @Override
    public int getLayoutId() {
        return R.layout.dialog_controller_options_list;
    }

    @Override
    public void initView(View view) {
        ArrayList arrayList;
        super.initView(view);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        final SubtitleAdapter subtitleAdapter = new SubtitleAdapter(view.getContext());
        List<VideoSubtitle> subtitleList = PlayHandler.getInstance().getSubtitleList();
        final boolean z = subtitleList == null || subtitleList.isEmpty();
        if (z) {
            VideoSubtitle videoSubtitle = new VideoSubtitle();
            videoSubtitle.setName(getString(R.string.tip_no_subtitle));
            videoSubtitle.setSelect(true);
            arrayList = new ArrayList();
            arrayList.add(videoSubtitle);
        } else {
            arrayList = new ArrayList(subtitleList);
        }
        subtitleAdapter.setNewData(arrayList);
        subtitleAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.lambda$initView$0(subtitleAdapter, z, baseQuickAdapter, view2, i);
            }
        });
        int i = R.id.feedback;
        view.findViewById(i).setVisibility(0);
        view.findViewById(i).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                SubtitleDialog.lambda$initView$1(view2);
            }
        });
        this.mRecyclerView.setAdapter(subtitleAdapter);
        addDismissListener(view.findViewById(R.id.container));
    }

    public SubtitleDialog setCallback(SubtitleCallback subtitleCallback) {
        this.callback = subtitleCallback;
        return this;
    }
}
