package com.facebook.ads.redexgen.core;

import com.facebook.ads.redexgen.core.InterfaceC0877Ej;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

public interface InterfaceC0874Eg<T extends InterfaceC0877Ej> {
    void ADx(T t, long j, long j2, boolean z);

    void ADz(T t, long j, long j2);

    C0875Eh AE0(T t, long j, long j2, IOException iOException, int i);

    @MetaExoPlayerCustomization(type = {"MERGED"}, value = "For Media3 Migration Backward Compatibility")
    void AE3(T t, long j, long j2, int i);
}
