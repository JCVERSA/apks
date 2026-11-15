package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.BufferedOutputStream;
import java.io.OutputStream;

@MetaExoPlayerCustomization("Exo does not declare this as public but we need to as Hero's CacheDataSink refers to this")
public final class MC extends BufferedOutputStream {
    public boolean A00;

    public MC(OutputStream outputStream) {
        super(outputStream);
    }

    public MC(OutputStream outputStream, int i) {
        super(outputStream, i);
    }

    public final void A00(OutputStream outputStream) {
        C3M.A08(this.A00);
        this.out = outputStream;
        this.count = 0;
        this.A00 = false;
    }

    @Override
    public final void close() throws Throwable {
        this.A00 = true;
        Throwable e = null;
        try {
            flush();
        } catch (Throwable th) {
            e = th;
        }
        try {
            this.out.close();
        } catch (Throwable thrown) {
            if (e == null) {
                e = thrown;
            }
        }
        if (e != null) {
            AbstractC06244a.A11(e);
            throw null;
        }
    }
}
