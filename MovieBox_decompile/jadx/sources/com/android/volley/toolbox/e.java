package com.android.volley.toolbox;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class e {

    private final int f18683a;

    private final List f18684b;

    private final int f18685c;

    private final InputStream f18686d;

    private final byte[] f18687e;

    public e(int i10, List list) {
        this(i10, list, -1, null);
    }

    public final InputStream a() {
        InputStream inputStream = this.f18686d;
        if (inputStream != null) {
            return inputStream;
        }
        if (this.f18687e != null) {
            return new ByteArrayInputStream(this.f18687e);
        }
        return null;
    }

    public final int b() {
        return this.f18685c;
    }

    public final List c() {
        return Collections.unmodifiableList(this.f18684b);
    }

    public final int d() {
        return this.f18683a;
    }

    public e(int i10, List list, int i11, InputStream inputStream) {
        this.f18683a = i10;
        this.f18684b = list;
        this.f18685c = i11;
        this.f18686d = inputStream;
        this.f18687e = null;
    }
}
