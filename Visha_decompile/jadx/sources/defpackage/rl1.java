package defpackage;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;

public class rl1 {
    public final FileChannel a;
    public final FileLock b;

    public rl1(FileChannel fileChannel, FileLock fileLock) {
        this.a = fileChannel;
        this.b = fileLock;
    }

    public static rl1 a(Context context, String str) {
        FileChannel channel;
        FileLock fileLockLock;
        try {
            channel = new RandomAccessFile(new File(context.getFilesDir(), str), "rw").getChannel();
            try {
                fileLockLock = channel.lock();
                try {
                    return new rl1(channel, fileLockLock);
                } catch (IOException | Error | OverlappingFileLockException e) {
                    e = e;
                    Log.e("CrossProcessLock", "encountered error while creating and acquiring the lock, ignoring", e);
                    if (fileLockLock != null) {
                        try {
                            fileLockLock.release();
                        } catch (IOException unused) {
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                }
            } catch (IOException | Error | OverlappingFileLockException e2) {
                e = e2;
                fileLockLock = null;
            }
        } catch (IOException | Error | OverlappingFileLockException e3) {
            e = e3;
            channel = null;
            fileLockLock = null;
        }
    }

    public void b() {
        try {
            this.b.release();
            this.a.close();
        } catch (IOException e) {
            Log.e("CrossProcessLock", "encountered error while releasing, ignoring", e);
        }
    }
}
