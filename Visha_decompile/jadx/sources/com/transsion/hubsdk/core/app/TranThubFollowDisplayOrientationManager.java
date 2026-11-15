package com.transsion.hubsdk.core.app;

import com.transsion.hubsdk.app.TranFollowDisplayOrientationManager;
import com.transsion.hubsdk.interfaces.app.ITranFollowDisplayOrientationManagerAdapter;

public class TranThubFollowDisplayOrientationManager implements ITranFollowDisplayOrientationManagerAdapter {
    private TranFollowDisplayOrientationManager mTranFollowDisplayOrientationManager = new TranFollowDisplayOrientationManager();

    @Override
    public void commit() {
        this.mTranFollowDisplayOrientationManager.commit();
    }

    @Override
    public int getFollowDisplayOrientionType(String str) {
        return this.mTranFollowDisplayOrientationManager.getFollowDisplayOrientionType(str);
    }

    @Override
    public void init() {
        this.mTranFollowDisplayOrientationManager.init();
    }

    @Override
    public boolean isEnabledPackage(String str) {
        return this.mTranFollowDisplayOrientationManager.isEnabledPackage(str);
    }

    @Override
    public Object setEnabledPackage(String str, boolean z) {
        return this.mTranFollowDisplayOrientationManager.setEnabledPackage(str, z);
    }

    @Override
    public Object setFollowDisplayOrientationType(String str, int i) {
        return this.mTranFollowDisplayOrientationManager.setFollowDisplayOrientationType(str, i);
    }
}
