package com.just.agentweb.filechooser;

import android.net.Uri;
import android.webkit.ValueCallback;
import java.io.Serializable;

public class FileCompressor implements Serializable {
    private static FileCompressor sInstance;
    private FileCompressEngine mFileCompressEngine;

    public interface FileCompressEngine {
        void compressFile(String str, Uri[] uriArr, ValueCallback<Uri[]> valueCallback);
    }

    public static final FileCompressor getInstance() {
        if (sInstance == null) {
            synchronized (FileCompressor.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new FileCompressor();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sInstance;
    }

    public void fileCompress(String str, Uri[] uriArr, ValueCallback<Uri[]> valueCallback) {
        FileCompressEngine fileCompressEngine = this.mFileCompressEngine;
        if (fileCompressEngine == null) {
            valueCallback.onReceiveValue(uriArr);
        } else {
            fileCompressEngine.compressFile(str, uriArr, valueCallback);
        }
    }

    public void registerFileCompressEngine(FileCompressEngine fileCompressEngine) {
        this.mFileCompressEngine = fileCompressEngine;
    }

    public void unregisterFileCompressEngine(FileCompressEngine fileCompressEngine) {
        this.mFileCompressEngine = null;
    }
}
