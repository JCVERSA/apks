package com.google.android.exoplayer2.offline;

import com.google.android.exoplayer2.util.RunnableFutureTask;
import defpackage.zh8;
import java.io.IOException;

class ProgressiveDownloader$1 extends RunnableFutureTask<Void, IOException> {
    final zh8 this$0;

    public ProgressiveDownloader$1(zh8 zh8Var) {
    }

    @Override
    public void cancelWork() {
        zh8.a(null).b();
    }

    @Override
    public Void doWork() throws IOException {
        zh8.a(null).a();
        return null;
    }
}
