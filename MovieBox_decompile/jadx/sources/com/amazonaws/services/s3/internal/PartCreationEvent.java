package com.amazonaws.services.s3.internal;

import com.amazonaws.services.s3.OnFileDelete;
import java.io.File;

public class PartCreationEvent {

    private final File f18033a;

    private final int f18034b;

    private final boolean f18035c;

    private final OnFileDelete f18036d;

    PartCreationEvent(File file, int i10, boolean z10, OnFileDelete onFileDelete) {
        if (file == null) {
            throw new IllegalArgumentException("part must not be specified");
        }
        this.f18033a = file;
        this.f18034b = i10;
        this.f18035c = z10;
        this.f18036d = onFileDelete;
    }

    public OnFileDelete a() {
        return this.f18036d;
    }

    public File b() {
        return this.f18033a;
    }

    public int c() {
        return this.f18034b;
    }

    public boolean d() {
        return this.f18035c;
    }
}
