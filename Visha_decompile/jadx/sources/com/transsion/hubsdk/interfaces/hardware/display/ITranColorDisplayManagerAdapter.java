package com.transsion.hubsdk.interfaces.hardware.display;

import android.content.Context;
import android.os.Bundle;

public interface ITranColorDisplayManagerAdapter {
    int getMaximumColorTemperature(Context context);

    int getMinimumColorTemperature(Context context);

    int getNightDisplayColorTemperature();

    boolean isNightDisplayActivated();

    boolean isNightDisplayAvailable(Context context);

    void setEyeCareEnabled(String str, int i, boolean z, int i2, int i3, Bundle bundle);

    boolean setNightDisplayActivated(boolean z);

    boolean setNightDisplayColorTemperature(int i);
}
