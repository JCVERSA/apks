package com.google.android.exoplayer2.offline;

import com.google.android.exoplayer2.util.RunnableFutureTask;
import java.io.IOException;

class ProgressiveDownloader$1 extends RunnableFutureTask<Void, IOException> {
    final e this$0;

    ProgressiveDownloader$1(e eVar) {
    }

    @Override
    protected void cancelWork() {
        e.b(null).b();
    }

    @Override
    public Void doWork() throws IOException {
        e.b(null).a();
        return null;
    }
}
