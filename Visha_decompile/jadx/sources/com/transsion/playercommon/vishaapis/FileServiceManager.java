package com.transsion.playercommon.vishaapis;

import com.blankj.utilcode.util.LogUtils;
import com.transsion.retrofit.factory.BaseAPIManager;
import defpackage.fc7;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import okhttp3.Interceptor;
import okhttp3.ResponseBody;

public class FileServiceManager extends BaseAPIManager {
    public static final String TAG = "FileServiceManager";

    public static final class InstanceHolder {
        private static final FileServiceManager INSTANCE = new FileServiceManager();

        private InstanceHolder() {
        }
    }

    public static FileServiceManager getInstance() {
        return InstanceHolder.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public boolean SaveToDisk(ResponseBody responseBody, File file) {
        fc7.e(file);
        try {
            InputStream inputStreamByteStream = responseBody.byteStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    long contentLength = responseBody.getContentLength();
                    long j = 0;
                    while (true) {
                        int i = inputStreamByteStream.read(bArr);
                        if (i == -1) {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            inputStreamByteStream.close();
                            return true;
                        }
                        fileOutputStream.write(bArr, 0, i);
                        j += (long) i;
                        LogUtils.j(TAG, "file download: " + j + " of " + contentLength);
                        if (inputStreamByteStream != null) {
                            try {
                                inputStreamByteStream.close();
                            } catch (Throwable th) {
                                th.addSuppressed(th);
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                if (inputStreamByteStream != null) {
                    inputStreamByteStream.close();
                }
                throw th4;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    @Override
    public String createBaseUrl() {
        return FileServiceConfig.BASE_URL;
    }

    @Override
    public Interceptor createInterceptor() {
        return new APIReqParamInterceptor();
    }

    @Override
    public Interceptor createLogInterceptor() {
        return null;
    }

    private FileServiceManager() {
    }
}
