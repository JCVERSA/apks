package org.schabi.newpipe.extractor.playlist;

import defpackage.xz4;
import org.schabi.newpipe.extractor.stream.Description;

public interface b extends xz4 {
    String a();

    String b();

    boolean c();

    long d();

    default Description getDescription() {
        return Description.EMPTY_DESCRIPTION;
    }

    default PlaylistInfo.PlaylistType o() {
        return PlaylistInfo.PlaylistType.NORMAL;
    }
}
