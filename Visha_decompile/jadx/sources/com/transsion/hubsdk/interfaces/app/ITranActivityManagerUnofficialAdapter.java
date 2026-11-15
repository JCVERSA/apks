package com.transsion.hubsdk.interfaces.app;

import com.transsion.hubsdk.api.app.TranActivityManagerUnofficial;

public interface ITranActivityManagerUnofficialAdapter {
    boolean registerForegroundServiceObserver(TranActivityManagerUnofficial.TranForegroundServiceObserver tranForegroundServiceObserver);
}
