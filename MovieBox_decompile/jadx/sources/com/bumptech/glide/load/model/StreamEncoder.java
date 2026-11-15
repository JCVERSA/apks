package com.bumptech.glide.load.model;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class StreamEncoder implements Encoder<InputStream> {
    private static final String TAG = "StreamEncoder";
    private final ArrayPool byteArrayPool;

    public StreamEncoder(ArrayPool arrayPool) {
        this.byteArrayPool = arrayPool;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8 */
    @Override
    public boolean encode(@NonNull InputStream inputStream, @NonNull File file, @NonNull Options options) throws Throwable {
        byte[] bArr = (byte[]) this.byteArrayPool.get(65536, byte[].class);
        boolean z10 = false;
        ?? r10 = 0;
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int i10 = inputStream.read(bArr);
                        r10 = -1;
                        if (i10 == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, i10);
                    } catch (IOException unused) {
                        fileOutputStream = fileOutputStream2;
                        Log.isLoggable(TAG, 3);
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        this.byteArrayPool.put(bArr);
                        r10 = fileOutputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        r10 = fileOutputStream2;
                        if (r10 != 0) {
                            try {
                                r10.close();
                            } catch (IOException unused3) {
                            }
                        }
                        this.byteArrayPool.put(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused4) {
                }
                this.byteArrayPool.put(bArr);
                z10 = true;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException unused5) {
        }
        return z10;
    }
}
