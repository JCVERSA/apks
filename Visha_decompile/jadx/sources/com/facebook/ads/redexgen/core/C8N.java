package com.facebook.ads.redexgen.core;

import android.media.AudioDeviceInfo;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.nio.ByteBuffer;

public interface C8N {
    void A51(C2312or c2312or, int i, int[] iArr) throws C8G;

    void A5r();

    void A6E();

    void A6L();

    long A7X(boolean z);

    C2296ob A8e();

    boolean A9W(ByteBuffer byteBuffer, long j, int i) throws C8M, C8H;

    void A9Z();

    boolean A9g();

    boolean AAG();

    void AGG();

    void AGI() throws C8M;

    void AIW(C2318oy c2318oy);

    void AIX(int i);

    void AIY(C1P c1p);

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "Enable Retry Audio Track")
    void AIg(boolean z);

    void AIl(C8J c8j);

    void AIt(C2296ob c2296ob);

    void AIw(C07147m c07147m);

    void AIy(AudioDeviceInfo audioDeviceInfo);

    void AJ4(boolean z);

    boolean AJc(C2312or c2312or);

    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Old API that can be removed when we move to MediaCodecRenderer2")
    boolean AJe(int i, int i2);

    void flush();

    void pause();

    void setVolume(float f);
}
