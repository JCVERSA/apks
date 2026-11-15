package com.transsion.hubsdk.core.media.projection;

import android.content.Intent;
import android.os.RemoteException;
import com.transsion.hubsdk.TranServiceManager;
import com.transsion.hubsdk.interfaces.media.projection.ITranMediaProjectionManagerAdapter;
import com.transsion.hubsdk.media.projection.ITranMediaProjectionManager;

public class TranThubMediaProjectionManager implements ITranMediaProjectionManagerAdapter {
    private ITranMediaProjectionManager mService = ITranMediaProjectionManager.Stub.asInterface(TranServiceManager.getServiceIBinder("media_projection"));

    @Override
    public Intent getPutIBindIntent(int i, String str, int i2, boolean z) {
        try {
            return this.mService.getPutIBindIntent(i, str, i2, z);
        } catch (RemoteException e) {
            e.printStackTrace();
            return new Intent();
        }
    }
}
