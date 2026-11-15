package com.transsion.hubsdk.interfaces.pq;

public interface ITranPictureQualityAdapter {
    void enableC3D(boolean z);

    int getAALFunction();

    int getGammaIndex();

    int getPictureMode();

    void setAALFunction(int i);

    void setGammaIndex(int i);

    void setPictureMode(int i);

    void setSmartBacklightStrength(int i);
}
