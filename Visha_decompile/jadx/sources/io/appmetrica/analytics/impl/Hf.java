package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;

public final class Hf implements Runnable {
    public final File a;
    public final Consumer b;
    public final C2562ga c;

    public Hf(File file, G1 g1, C2562ga c2562ga) {
        this.a = file;
        this.b = g1;
        this.c = c2562ga;
    }

    @Override
    public final void run() {
        File[] fileArrListFiles;
        if (this.a.exists() && this.a.isDirectory() && (fileArrListFiles = this.a.listFiles()) != null) {
            for (File file : fileArrListFiles) {
                D9 d9A = this.c.a(file.getName());
                try {
                    d9A.a.lock();
                    d9A.b.a();
                    this.b.consume(file);
                    d9A.c();
                } catch (Throwable unused) {
                    d9A.c();
                }
            }
        }
    }
}
