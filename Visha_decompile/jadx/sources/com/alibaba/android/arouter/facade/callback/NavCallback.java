package com.alibaba.android.arouter.facade.callback;

import com.alibaba.android.arouter.facade.Postcard;

public abstract class NavCallback implements NavigationCallback {
    @Override
    public abstract void onArrival(Postcard postcard);

    @Override
    public void onFound(Postcard postcard) {
    }

    @Override
    public void onInterrupt(Postcard postcard) {
    }

    @Override
    public void onLost(Postcard postcard) {
    }
}
