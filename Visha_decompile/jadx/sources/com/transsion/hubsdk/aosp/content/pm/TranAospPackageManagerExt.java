package com.transsion.hubsdk.aosp.content.pm;

import android.content.Context;
import android.content.pm.IPackageDeleteObserver;
import android.os.RemoteException;

public class TranAospPackageManagerExt {
    private static final String TAG = "TranAospPackageManagerExt";
    private Context mContext;

    public interface ITranPackageDeleteObserver {
        void packageDeleted(String str, int i);
    }

    public static class TranAospPackageDeleteObserver extends IPackageDeleteObserver.Stub {
        private ITranPackageDeleteObserver mObserver;

        public TranAospPackageDeleteObserver(ITranPackageDeleteObserver iTranPackageDeleteObserver) {
            this.mObserver = iTranPackageDeleteObserver;
        }

        public void packageDeleted(String str, int i) throws RemoteException {
            ITranPackageDeleteObserver iTranPackageDeleteObserver = this.mObserver;
            if (iTranPackageDeleteObserver != null) {
                iTranPackageDeleteObserver.packageDeleted(str, i);
            }
        }
    }

    public TranAospPackageManagerExt(Context context) {
        this.mContext = context;
    }
}
