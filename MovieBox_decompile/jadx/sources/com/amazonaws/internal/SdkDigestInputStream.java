package com.amazonaws.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;

public class SdkDigestInputStream extends DigestInputStream implements MetricAware {
    public SdkDigestInputStream(InputStream inputStream, MessageDigest messageDigest) {
        super(inputStream, messageDigest);
    }

    @Override
    public final boolean d() {
        if (((DigestInputStream) this).in instanceof MetricAware) {
            return ((MetricAware) ((DigestInputStream) this).in).d();
        }
        return false;
    }

    @Override
    public final long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return j10;
        }
        int iMin = (int) Math.min(PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, j10);
        byte[] bArr = new byte[iMin];
        long j11 = j10;
        while (j11 > 0) {
            int i10 = read(bArr, 0, (int) Math.min(j11, iMin));
            if (i10 == -1) {
                if (j11 == j10) {
                    return -1L;
                }
                return j10 - j11;
            }
            j11 -= (long) i10;
        }
        return j10;
    }
}
