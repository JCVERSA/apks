package com.facebook.ads.redexgen.core;

import android.net.Uri;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;

public interface InterfaceC2101lN extends AnonymousClass20 {
    void A3z(int i) throws IOException;

    boolean A40(int i, boolean z) throws IOException;

    long A8G();

    long A8a();

    long A8f();

    @MetaExoPlayerCustomization("Added API for MP4 extractor")
    Uri A9H();

    int AG8(byte[] bArr, int i, int i2) throws IOException;

    void AG9(byte[] bArr, int i, int i2) throws IOException;

    boolean AGA(byte[] bArr, int i, int i2, boolean z) throws IOException;

    boolean AGh(byte[] bArr, int i, int i2, boolean z) throws IOException;

    void AI1();

    int AJG(int i) throws IOException;

    void AJJ(int i) throws IOException;

    @Override
    int read(byte[] bArr, int i, int i2) throws IOException;

    void readFully(byte[] bArr, int i, int i2) throws IOException;
}
