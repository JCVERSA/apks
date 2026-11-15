package com.mbridge.msdk.video.signal.impl;

import com.mbridge.msdk.video.module.MBridgeVideoView;

public class q extends r {
    public q(MBridgeVideoView mBridgeVideoView) {
        this.f39023a = mBridgeVideoView;
    }

    @Override
    public void alertWebViewShowed() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.alertWebViewShowed();
        } else {
            super.alertWebViewShowed();
        }
    }

    @Override
    public void closeVideoOperate(int i10, int i11) {
        super.closeVideoOperate(i10, i11);
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.closeVideoOperate(i10, i11);
        }
    }

    @Override
    public void dismissAllAlert() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.dismissAllAlert();
        } else {
            super.dismissAllAlert();
        }
    }

    @Override
    public int getBorderViewHeight() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewHeight() : super.getBorderViewHeight();
    }

    @Override
    public int getBorderViewLeft() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewLeft() : super.getBorderViewLeft();
    }

    @Override
    public int getBorderViewRadius() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewRadius() : super.getBorderViewRadius();
    }

    @Override
    public int getBorderViewTop() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewTop() : super.getBorderViewTop();
    }

    @Override
    public int getBorderViewWidth() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        return mBridgeVideoView != null ? mBridgeVideoView.getBorderViewWidth() : super.getBorderViewWidth();
    }

    @Override
    public String getCurrentProgress() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        return mBridgeVideoView != null ? mBridgeVideoView.getCurrentProgress() : super.getCurrentProgress();
    }

    @Override
    public void hideAlertView(int i10) {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.hideAlertView(i10);
        } else {
            super.hideAlertView(i10);
        }
    }

    @Override
    public boolean isH5Canvas() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        return mBridgeVideoView != null ? mBridgeVideoView.isH5Canvas() : super.isH5Canvas();
    }

    @Override
    public void progressBarOperate(int i10) {
        super.progressBarOperate(i10);
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.progressBarOperate(i10);
        }
    }

    @Override
    public void progressOperate(int i10, int i11) {
        super.progressOperate(i10, i11);
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.progressOperate(i10, i11);
        }
    }

    @Override
    public void setCover(boolean z10) {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setCover(z10);
        } else {
            super.setCover(z10);
        }
    }

    @Override
    public void setMiniEndCardState(boolean z10) {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setMiniEndCardState(z10);
        } else {
            super.setMiniEndCardState(z10);
        }
    }

    @Override
    public void setScaleFitXY(int i10) {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setScaleFitXY(i10);
        } else {
            super.setScaleFitXY(i10);
        }
    }

    @Override
    public void setVisible(int i10) {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.setVisible(i10);
        } else {
            super.setVisible(i10);
        }
    }

    @Override
    public void showAlertView() {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.showAlertView();
        } else {
            super.showAlertView();
        }
    }

    @Override
    public void showIVRewardAlertView(String str) {
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.showIVRewardAlertView(str);
        } else {
            super.showIVRewardAlertView(str);
        }
    }

    @Override
    public void showVideoLocation(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        super.showVideoLocation(i10, i11, i12, i13, i14, i15, i16, i17, i18);
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.showVideoLocation(i10, i11, i12, i13, i14, i15, i16, i17, i18);
        }
    }

    @Override
    public void soundOperate(int i10, int i11) {
        super.soundOperate(i10, i11);
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.soundOperate(i10, i11);
        }
    }

    @Override
    public void videoOperate(int i10) {
        super.videoOperate(i10);
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.videoOperate(i10);
        }
    }

    @Override
    public void soundOperate(int i10, int i11, String str) {
        super.soundOperate(i10, i11, str);
        MBridgeVideoView mBridgeVideoView = this.f39023a;
        if (mBridgeVideoView != null) {
            mBridgeVideoView.soundOperate(i10, i11, str);
        }
    }
}
