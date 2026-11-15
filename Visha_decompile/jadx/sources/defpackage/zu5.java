package defpackage;

import com.danikula.videocache.file.Files;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class zu5 implements hc2 {
    public static final qq5 b = sq5.j("LruDiskUsage");
    public final ExecutorService a = Executors.newSingleThreadExecutor();

    public class a implements Callable {
        public final File b;

        public a(File file) {
            this.b = file;
        }

        @Override
        public Void call() throws IOException {
            zu5.this.e(this.b);
            return null;
        }
    }

    @Override
    public void a(File file) {
        this.a.submit(new a(file));
    }

    public abstract boolean b(File file, long j, int i);

    public final long d(List list) {
        Iterator it = list.iterator();
        long length = 0;
        while (it.hasNext()) {
            length += ((File) it.next()).length();
        }
        return length;
    }

    public final void e(File file) throws IOException {
        Files.e(file);
        f(Files.a(file.getParentFile()));
    }

    public final void f(List list) {
        long jD = d(list);
        int size = list.size();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (!b(file, jD, size)) {
                long length = file.length();
                if (file.delete()) {
                    size--;
                    jD -= length;
                    b.info("Cache file " + file + " is deleted because it exceeds cache limit");
                } else {
                    b.error("Error deleting file " + file + " for trimming cache");
                }
            }
        }
    }
}
