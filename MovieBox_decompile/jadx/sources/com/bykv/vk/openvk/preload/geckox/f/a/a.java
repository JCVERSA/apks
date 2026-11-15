package com.bykv.vk.openvk.preload.geckox.f.a;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public abstract class a {

    private File f20073a;

    public a(File file) {
        this.f20073a = file;
    }

    protected abstract InputStream a(File file, String str) throws IOException;

    public final InputStream a(String str) throws IOException {
        return a(this.f20073a, str);
    }

    protected abstract boolean b(File file, String str) throws IOException;

    public final boolean b(String str) throws IOException {
        return b(this.f20073a, str);
    }
}
