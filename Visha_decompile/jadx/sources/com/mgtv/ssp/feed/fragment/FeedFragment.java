package com.mgtv.ssp.feed.fragment;

import android.content.res.Configuration;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.mgtv.ssp.R;
import com.mgtv.ssp.SspViewInterface;
import com.mgtv.ssp.feed.viewcard.FeedVideoView;
import com.mgtv.ssp.fragment.RootFragment;
import com.mgtv.thirdsdk.playcore.utils.f;

public class FeedFragment extends RootFragment {
    @Override
    public void a() {
        if (getActivity() == null || this.h == null) {
            return;
        }
        FeedVideoView feedVideoView = new FeedVideoView(getActivity());
        this.i = feedVideoView;
        f.a((FrameLayout) this.h.findViewById(R.id.layout_list_container), feedVideoView, new FrameLayout.LayoutParams(-1, -1));
        feedVideoView.start();
    }

    @Override
    public int b() {
        return R.layout.fragemnt_list;
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface != null) {
            sspViewInterface.onViewConfigChanged(configuration);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof FeedVideoView) {
            ((FeedVideoView) sspViewInterface).destroy();
        }
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof FeedVideoView) {
            ((FeedVideoView) sspViewInterface).h();
            ((FeedVideoView) this.i).resume();
        }
    }

    @Override
    public void requestData() {
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof FeedVideoView) {
            ((FeedVideoView) sspViewInterface).n();
        }
    }

    @Override
    public void start(boolean z) {
        setUserVisibleHint(z);
        if (z) {
            SspViewInterface sspViewInterface = this.i;
            if (sspViewInterface instanceof FeedVideoView) {
                ((FeedVideoView) sspViewInterface).start();
            }
        }
    }

    @Override
    public void a(boolean z) {
        super.a(z);
        SspViewInterface sspViewInterface = this.i;
        if (sspViewInterface instanceof FeedVideoView) {
            ((FeedVideoView) sspViewInterface).setRealVisible(d());
            ((FeedVideoView) this.i).a(z);
        }
    }
}
