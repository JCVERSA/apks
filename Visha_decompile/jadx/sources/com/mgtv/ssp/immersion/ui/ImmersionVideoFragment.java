package com.mgtv.ssp.immersion.ui;

import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mgtv.ssp.R;
import com.mgtv.ssp.SspViewInterface;
import com.mgtv.ssp.feed.viewcard.ImmersionVideoView;
import com.mgtv.ssp.fragment.RootFragment;
import com.mgtv.thirdsdk.playcore.utils.f;

public class ImmersionVideoFragment extends RootFragment {
    @Override
    public void a() {
        if (getActivity() == null || this.h == null) {
            return;
        }
        ImmersionVideoView immersionVideoView = new ImmersionVideoView(getActivity());
        this.i = immersionVideoView;
        f.a((ConstraintLayout) this.h.findViewById(R.id.layout_immer_list_container), immersionVideoView, new FrameLayout.LayoutParams(-1, -1));
        immersionVideoView.start();
    }

    @Override
    public int b() {
        return R.layout.fragemnt_immer_list;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface != null) {
            sspViewInterface.destroy();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void requestData() {
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof ImmersionVideoView) {
            ((ImmersionVideoView) sspViewInterface).n();
        }
    }

    @Override
    public void start(boolean z) {
        setUserVisibleHint(z);
        if (z) {
            SspViewInterface sspViewInterface = this.i;
            if (sspViewInterface instanceof ImmersionVideoView) {
                ((ImmersionVideoView) sspViewInterface).start();
            }
        }
    }

    @Override
    public void a(boolean z) {
        super.a(z);
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof ImmersionVideoView) {
            ((ImmersionVideoView) sspViewInterface).setRealVisible(d());
            ((ImmersionVideoView) this.i).a(z);
        }
    }
}
