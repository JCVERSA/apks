package ru.zdevs.zarchiver.media;

public class MimeLib {
    static {
        try {
            System.loadLibrary("mime");
        } catch (UnsatisfiedLinkError unused) {
        }
    }

    public static native int cGetType(String str);
}
