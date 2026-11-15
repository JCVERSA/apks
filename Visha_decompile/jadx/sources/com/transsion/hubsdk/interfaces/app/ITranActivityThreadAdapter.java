package com.transsion.hubsdk.interfaces.app;

import android.app.Application;

public interface ITranActivityThreadAdapter {
    Application currentApplication();

    Application getApplication();
}
