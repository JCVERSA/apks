package com.snaptube.taskManager;

import com.snaptube.premium.app.PhoenixApplication;
import o.xe6;

public class CombinTask implements Runnable {
    public static final int ALLOC_CONTEXT_ERROR = -6;
    public static final int ALLOC_STREAM_ERROR = -7;
    public static final int AUDIO_INPUTFILE_OPEN_ERROR = -2;
    public static final int AUDIO_INPUT_FORMAT_ERROR = -4;
    public static final int COMB_NATIVE_CRASH = -1;
    public static final int COMB_SUCCESS = 0;
    public static final int COPY_CONTEXT_ERROR = -8;
    public static final int CREATE_FILE_ERROR = -9;
    private static final String LIB_NAME = "video_v1";
    public static final int VIDEO_INPUTFILE_OPEN_ERROR = -3;
    public static final int VIDEO_INPUT_FORMAT_ERROR = -5;
    public static final int WRITE_HEADER_ERROR = -10;
    public static final int WRITE_PACKET_ERROR = -11;
    public static final int WRITE_TRAILER_ERROR = -12;
    private static boolean supported;
    private String audioFilePath;
    private a listener;
    private String outputFilePath;
    private String videoFilePath;

    public interface a {
        void a(int i);

        void b(int i, int i2);
    }

    static {
        try {
            xe6.a(PhoenixApplication.z(), LIB_NAME);
            supported = true;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public CombinTask(String str, String str2, String str3) {
        this.audioFilePath = str;
        this.videoFilePath = str2;
        this.outputFilePath = str3;
    }

    private native int combvideo(String str, String str2, String str3);

    public static boolean isSupported() {
        return supported;
    }

    public void onProgress(int i, int i2) {
        a aVar = this.listener;
        if (aVar != null) {
            aVar.b(i, i2);
        }
    }

    @Override
    public void run() {
        synchronized (CombinTask.class) {
            try {
                int iCombvideo = combvideo(this.audioFilePath, this.videoFilePath, this.outputFilePath);
                a aVar = this.listener;
                if (aVar != null) {
                    aVar.a(iCombvideo);
                }
            } catch (Throwable th) {
                try {
                    th.printStackTrace();
                    a aVar2 = this.listener;
                    if (aVar2 != null) {
                        aVar2.a(-1);
                    }
                } catch (Throwable th2) {
                    if (this.listener != null) {
                        this.listener.a(-1);
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
