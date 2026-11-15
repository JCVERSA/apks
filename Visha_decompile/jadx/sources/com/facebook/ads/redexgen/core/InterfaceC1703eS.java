package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.view.View;

public interface InterfaceC1703eS {
    void A9V();

    boolean A9i();

    boolean A9j();

    boolean AAT();

    void AG7(boolean z, int i);

    void AJH(int i);

    void AJM(EnumC1651db enumC1651db, int i);

    void AJU(int i);

    void destroy();

    int getCurrentPosition();

    int getDuration();

    long getInitialBufferTime();

    EnumC1651db getStartReason();

    EnumC1705eU getState();

    int getVideoHeight();

    int getVideoWidth();

    View getView();

    float getVolume();

    void seekTo(int i);

    void setBackgroundPlaybackEnabled(boolean z);

    void setControlsAnchorView(View view);

    void setFullScreen(boolean z);

    void setRequestedVolume(float f);

    void setVideoMPD(String str);

    void setVideoStateChangeListener(InterfaceC1706eV interfaceC1706eV);

    void setup(Uri uri);
}
