package com.mbridge.msdk.playercommon.exoplayer2.metadata.id3;

import com.mbridge.msdk.playercommon.exoplayer2.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

public abstract class Id3Frame implements Metadata.Entry {

    public final String f35951id;

    public Id3Frame(String str) {
        this.f35951id = (String) Assertions.checkNotNull(str);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f35951id;
    }
}
