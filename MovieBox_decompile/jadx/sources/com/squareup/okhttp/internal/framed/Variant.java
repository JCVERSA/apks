package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import okio.BufferedSink;
import okio.BufferedSource;

public interface Variant {
    Protocol getProtocol();

    FrameReader newReader(BufferedSource bufferedSource, boolean z10);

    FrameWriter newWriter(BufferedSink bufferedSink, boolean z10);
}
