package c4;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private static final C0146a f16483e = new C0146a(null);

    private static final Map f16484f = new HashMap();

    private final boolean f16485a;

    private final File f16486b;

    private final Lock f16487c;

    private FileChannel f16488d;

    private static final class C0146a {
        public C0146a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Lock b(String str) {
            Lock lock;
            synchronized (a.f16484f) {
                try {
                    Map map = a.f16484f;
                    Object reentrantLock = map.get(str);
                    if (reentrantLock == null) {
                        reentrantLock = new ReentrantLock();
                        map.put(str, reentrantLock);
                    }
                    lock = (Lock) reentrantLock;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return lock;
        }

        private C0146a() {
        }
    }

    public a(String name, File file, boolean z10) {
        File file2;
        Intrinsics.h(name, "name");
        this.f16485a = z10;
        if (file != null) {
            file2 = new File(file, name + ".lck");
        } else {
            file2 = null;
        }
        this.f16486b = file2;
        this.f16487c = f16483e.b(name);
    }

    public static void c(a aVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = aVar.f16485a;
        }
        aVar.b(z10);
    }

    public final void b(boolean z10) {
        this.f16487c.lock();
        if (z10) {
            try {
                File file = this.f16486b;
                if (file == null) {
                    throw new IOException("No lock directory was provided.");
                }
                File parentFile = file.getParentFile();
                if (parentFile != null) {
                    parentFile.mkdirs();
                }
                FileChannel channel = new FileOutputStream(this.f16486b).getChannel();
                channel.lock();
                this.f16488d = channel;
            } catch (IOException e10) {
                this.f16488d = null;
                Log.w("SupportSQLiteLock", "Unable to grab file lock.", e10);
            }
        }
    }

    public final void d() {
        try {
            FileChannel fileChannel = this.f16488d;
            if (fileChannel != null) {
                fileChannel.close();
            }
        } catch (IOException unused) {
        }
        this.f16487c.unlock();
    }
}
