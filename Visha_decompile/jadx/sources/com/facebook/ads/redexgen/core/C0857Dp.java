package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import javax.annotation.Nullable;

@MetaExoPlayerCustomization(type = {"NEW_CLASS"}, value = "Encapsulate error info from subtitle decoder")
public class C0857Dp {

    @Nullable
    public final C2312or A00;
    public final Throwable A01;

    public C0857Dp(@Nullable C2312or c2312or, Throwable th) {
        this.A00 = c2312or;
        this.A01 = th;
    }
}
