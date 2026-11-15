package com.squareup.okhttp.internal.framed;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import okio.Buffer;

public interface FrameWriter extends Closeable {
    void ackSettings(h hVar) throws IOException;

    void connectionPreface() throws IOException;

    void data(boolean z10, int i10, Buffer buffer, int i11) throws IOException;

    void flush() throws IOException;

    void goAway(int i10, ErrorCode errorCode, byte[] bArr) throws IOException;

    void headers(int i10, List<b> list) throws IOException;

    int maxDataLength();

    void ping(boolean z10, int i10, int i11) throws IOException;

    void pushPromise(int i10, int i11, List<b> list) throws IOException;

    void rstStream(int i10, ErrorCode errorCode) throws IOException;

    void settings(h hVar) throws IOException;

    void synReply(boolean z10, int i10, List<b> list) throws IOException;

    void synStream(boolean z10, boolean z11, int i10, int i11, List<b> list) throws IOException;

    void windowUpdate(int i10, long j10) throws IOException;
}
