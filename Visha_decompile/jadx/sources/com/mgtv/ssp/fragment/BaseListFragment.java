package com.mgtv.ssp.fragment;

import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.play.PlayerCore;
import com.mgtv.thirdsdk.datareport.VideoSDKReport;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseListFragment extends BaseHttpFragment {
    protected PlayerCore b;
    protected String d;
    protected VideoInfoBean f;
    private boolean k;
    protected List<VideoBean> c = new ArrayList();
    protected int e = -1;

    public interface a {
        void a();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.f != null) {
            VideoSDKReport.a().w();
        }
        this.d = "";
        this.k = false;
        PlayerCore playerCore = this.b;
        if (playerCore != null) {
            playerCore.release();
            this.b = null;
        }
    }
}
