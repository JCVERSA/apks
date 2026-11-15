package com.transsion.tools.fragments;

import android.os.Bundle;
import android.view.View;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.fragments.VideoPlayListOperateFragment;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import defpackage.a64;
import defpackage.h27;
import defpackage.hb0;
import defpackage.pp3;
import java.util.ArrayList;

public class PrivacyFileAddFragment extends VideoPlayListOperateFragment {

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            a64.a(((BaseFragment) PrivacyFileAddFragment.this).mActivity);
        }
    }

    public class b implements FileOperateUtils.k {
        public b() {
        }

        @Override
        public void d() {
        }

        @Override
        public void e() {
            hb0.markTrackTwo("vd_more_hide_file_add", "from", 3, hb0.KEY_NAME_NUM, Integer.valueOf(PrivacyFileAddFragment.this.E.size()));
            if (pp3.p) {
                h27.c().e(1139, new Object[0]);
            }
        }

        @Override
        public void g(String str, String str2) {
        }
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.add_remove_to_playlist) {
            ArrayList arrayListD = this.t.D();
            this.E = arrayListD;
            FileOperateUtils fileOperateUtils = new FileOperateUtils(this.mContext, arrayListD, this.s, true);
            fileOperateUtils.N(this.E.size() > 1);
            fileOperateUtils.f0(new b());
            a64.a(this.mActivity);
        }
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mBackIv.setOnClickListener(new a());
    }
}
