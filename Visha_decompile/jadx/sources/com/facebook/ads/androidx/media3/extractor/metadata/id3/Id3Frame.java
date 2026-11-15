package com.facebook.ads.androidx.media3.extractor.metadata.id3;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.redexgen.core.AbstractC05762c;
import com.facebook.ads.redexgen.core.C2312or;

public abstract class Id3Frame implements Metadata.Entry {
    public final String A00;

    @Override
    public final byte[] A9S() {
        return AbstractC05762c.A01(this);
    }

    @Override
    public final C2312or A9T() {
        return AbstractC05762c.A00(this);
    }

    public Id3Frame(String str) {
        this.A00 = str;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.A00;
    }
}
