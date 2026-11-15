package io.appmetrica.analytics.impl;

import android.os.FileObserver;
import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;

public final class FileObserverC2782p6 extends FileObserver {
    public final Consumer a;
    public final File b;
    public final C2587ha c;

    public FileObserverC2782p6(File file, G1 g1, C2587ha c2587ha) {
        super(file.getAbsolutePath(), 4095);
        this.a = g1;
        this.b = file;
        this.c = c2587ha;
    }

    @Override
    public final void onEvent(int i, String str) {
        if (i != 8 || TextUtils.isEmpty(str)) {
            return;
        }
        Consumer consumer = this.a;
        C2587ha c2587ha = this.c;
        File file = this.b;
        c2587ha.getClass();
        consumer.consume(new File(file, str));
    }
}
