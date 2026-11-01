package com.snaptube.taskManager;

import com.snaptube.premium.app.PhoenixApplication;
import java.io.File;
import java.util.concurrent.atomic.AtomicLong;
import o.xe6;

public class M4a2Mp3Task implements Runnable {
    private static final String LIB_NAME = "mp3cvt";
    public static final int MP3_PREFER_BITRATE = 128;
    public static final AtomicLong sToken = new AtomicLong(1);
    private static boolean supported;
    private final int bitrate;
    private a listener;
    private final String m4aFilePath;
    private final long m4aFileSizeBeforeConvert;
    private final String mp3FilePath;
    private final String referer;
    private boolean isCanceled = false;
    private final long token = sToken.getAndIncrement();

    public interface a {
        void a(boolean z);

        void b(int i);
    }

    static {
        supported = false;
        try {
            xe6.a(PhoenixApplication.z(), LIB_NAME);
            supported = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public M4a2Mp3Task(String str, String str2, int i, String str3) {
        this.m4aFilePath = str;
        this.mp3FilePath = str2;
        this.bitrate = i;
        this.referer = str3;
        File file = new File(str);
        if (file.exists()) {
            this.m4aFileSizeBeforeConvert = file.length();
        } else {
            this.m4aFileSizeBeforeConvert = -1L;
        }
    }

    private native void cancelConvert(long j);

    private native boolean convertM4aToMp3(long j, String str, String str2, int i);

    public static boolean isSupported() {
        return supported;
    }

    public void cancel() {
        this.isCanceled = true;
        try {
            cancelConvert(this.token);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void onConvertComplete(int i, int i2, int i3, int i4, int i5, int i6) {
        File file = new File(this.m4aFilePath);
        if (file.exists()) {
            file.length();
        }
        File file2 = new File(this.mp3FilePath);
        if (file2.exists()) {
            file2.length();
        }
    }

    public void onConvertProgress(int i) {
        a aVar = this.listener;
        if (aVar != null) {
            aVar.b(i);
        }
    }

    @Override
    public void run() {
        synchronized (M4a2Mp3Task.class) {
            if (this.isCanceled) {
                return;
            }
            try {
                boolean zConvertM4aToMp3 = convertM4aToMp3(this.token, this.m4aFilePath, this.mp3FilePath, this.bitrate);
                a aVar = this.listener;
                if (aVar != null) {
                    aVar.a(zConvertM4aToMp3);
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    a aVar2 = this.listener;
                    if (aVar2 != null) {
                        aVar2.a(false);
                    }
                } catch (Throwable th2) {
                    if (this.listener != null) {
                        this.listener.a(false);
                    }
                    throw th2;
                }
            }
        }
    }

    public void setListener(a aVar) {
        this.listener = aVar;
    }
}
