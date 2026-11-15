package com.mbridge.msdk.playercommon.exoplayer2.upstream;

import java.io.IOException;

public interface LoaderErrorThrower {

    public static final class Dummy implements LoaderErrorThrower {
        @Override
        public void maybeThrowError() throws IOException {
        }

        @Override
        public void maybeThrowError(int i10) throws IOException {
        }
    }

    void maybeThrowError() throws IOException;

    void maybeThrowError(int i10) throws IOException;
}
