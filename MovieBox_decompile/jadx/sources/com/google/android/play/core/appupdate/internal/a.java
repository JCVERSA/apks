package com.google.android.play.core.appupdate.internal;

import android.os.IBinder;
import android.os.IInterface;

public abstract class a implements IInterface {

    private final IBinder f29362a;

    private final String f29363b = "com.google.android.play.core.appupdate.protocol.IAppUpdateService";

    protected a(IBinder iBinder, String str) {
        this.f29362a = iBinder;
    }

    @Override
    public final IBinder asBinder() {
        return this.f29362a;
    }
}
