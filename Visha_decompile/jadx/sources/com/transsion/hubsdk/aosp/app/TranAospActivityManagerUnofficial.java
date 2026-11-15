package com.transsion.hubsdk.aosp.app;

import android.os.IBinder;
import com.transsion.hubsdk.api.app.TranActivityManagerUnofficial;
import com.transsion.hubsdk.interfaces.app.ITranActivityManagerUnofficialAdapter;

public class TranAospActivityManagerUnofficial implements ITranActivityManagerUnofficialAdapter {
    private final TranAospActivityManagerUnofficialExt mManagerExt = new TranAospActivityManagerUnofficialExt();

    public static class TranAospForegroundServiceObserver implements TranAospActivityManagerUnofficialExt.TranForegroundServiceObserver {
        TranActivityManagerUnofficial.TranForegroundServiceObserver mObserver;

        public TranAospForegroundServiceObserver(TranActivityManagerUnofficial.TranForegroundServiceObserver tranForegroundServiceObserver) {
            this.mObserver = tranForegroundServiceObserver;
        }

        @Override
        public void onForegroundStateChanged(IBinder iBinder, String str, int i, boolean z) {
            TranActivityManagerUnofficial.TranForegroundServiceObserver tranForegroundServiceObserver = this.mObserver;
            if (tranForegroundServiceObserver != null) {
                tranForegroundServiceObserver.onForegroundStateChanged(iBinder, str, i, z);
            }
        }
    }

    @Override
    public boolean registerForegroundServiceObserver(TranActivityManagerUnofficial.TranForegroundServiceObserver tranForegroundServiceObserver) {
        return this.mManagerExt.registerForegroundServiceObserver(new TranAospForegroundServiceObserver(tranForegroundServiceObserver));
    }
}
