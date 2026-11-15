package w3;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    private final String f74148a;

    private FileChannel f74149b;

    public c(String filename) {
        Intrinsics.h(filename, "filename");
        this.f74148a = filename + ".lck";
    }

    public final void a() throws IOException {
        if (this.f74149b != null) {
            return;
        }
        try {
            File file = new File(this.f74148a);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.f74149b = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th2) {
            FileChannel fileChannel = this.f74149b;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.f74149b = null;
            throw new IllegalStateException("Unable to lock file: '" + this.f74148a + "'.", th2);
        }
    }

    public final void b() {
        FileChannel fileChannel = this.f74149b;
        if (fileChannel == null) {
            return;
        }
        try {
            fileChannel.close();
        } finally {
            this.f74149b = null;
        }
    }
}
