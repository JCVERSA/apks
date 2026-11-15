package com.transsion.tools.covert.fragments;

import android.os.Bundle;
import android.view.View;
import com.transsion.magicvideo.fragments.FoldersFragment;
import com.transsion.playercommon.R;
import defpackage.a64;

public class FoldersConvertFragment extends FoldersFragment {
    @Override
    public void U1(Bundle bundle) {
        VideosSelectFragment videosSelectFragment = (VideosSelectFragment) new VideosSelectFragment().setBaseActivity(baseActivity());
        videosSelectFragment.setNeedBg(true);
        videosSelectFragment.setArguments(bundle, 10);
        a64.n(videosSelectFragment, true, true);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mEmptyPaddingBottom = getContext().getResources().getDimensionPixelSize(R.dimen.convert_main_empty_imgView_marginBottom);
    }
}
