package com.bytedance.sdk.openadsdk.sP;

import com.bytedance.sdk.component.utils.Jcg;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class Sj {
    protected boolean Sj = false;
    private final ExecutorService sP = Executors.newSingleThreadExecutor();

    private class CallableC0267Sj implements Callable<Void> {
        private final File sP;

        @Override
        public Void call() throws Exception {
            Sj.this.sP(this.sP);
            return null;
        }

        private CallableC0267Sj(File file) {
            this.sP = file;
        }
    }

    public void sP(File file) throws IOException {
        if (!this.Sj) {
            try {
                Jcg.sP(file);
            } catch (Throwable unused) {
            }
            Sj(Jcg.Sj(file.getParentFile()));
        } else {
            List<File> listSj = Jcg.Sj(file);
            listSj.toString();
            Sj(listSj);
        }
    }

    protected abstract void Sj(List<File> list);

    protected abstract boolean Sj(long j10, int i10);

    protected abstract boolean Sj(File file, long j10, int i10);

    public void Sj(File file) throws IOException {
        this.sP.submit(new CallableC0267Sj(file));
    }

    long sP(List<File> list) {
        Iterator<File> it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += it.next().length();
        }
        return length;
    }
}
