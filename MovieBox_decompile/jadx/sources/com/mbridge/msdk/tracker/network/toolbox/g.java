package com.mbridge.msdk.tracker.network.toolbox;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class g {

    private final int f37823a;

    private final List<com.mbridge.msdk.tracker.network.g> f37824b;

    private final int f37825c;

    private final InputStream f37826d;

    private final byte[] f37827e;

    public g(int i10, List<com.mbridge.msdk.tracker.network.g> list) {
        this(i10, list, -1, null);
    }

    public final InputStream a() {
        InputStream inputStream = this.f37826d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.f37827e != null) {
            return new ByteArrayInputStream(this.f37827e);
        }
        return null;
    }

    public final int b() {
        return this.f37825c;
    }

    public final List<com.mbridge.msdk.tracker.network.g> c() {
        return Collections.unmodifiableList(this.f37824b);
    }

    public final int d() {
        return this.f37823a;
    }

    public g(int i10, List<com.mbridge.msdk.tracker.network.g> list, int i11, InputStream inputStream) {
        this.f37823a = i10;
        this.f37824b = list;
        this.f37825c = i11;
        this.f37826d = inputStream;
        this.f37827e = null;
    }
}
