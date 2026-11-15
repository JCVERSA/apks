package com.cicada.player.utils;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

@NativeUsed
public class ContentDataSource {
    private static final int EINVAL = 22;
    private static final int EIO = 5;
    private static final int ENOENT = 2;
    private static final int SEEK_CUR = 1;
    private static final int SEEK_END = 2;
    private static final int SEEK_SET = 0;
    private static final int SEEK_SIZE = 65536;
    private static final String TAG = "ContentDataSource";
    private static Context sContext;
    private String mUri = null;
    private InputStream mStream = null;
    private int mStreamSize = -1;
    private long mOffset = 0;

    public static void setContext(Context context) {
        if (context == null || sContext != null) {
            return;
        }
        sContext = context.getApplicationContext();
    }

    private long skip(long j10) throws IOException {
        try {
            return this.mStream.skip(j10);
        } catch (IOException unused) {
            long j11 = (int) (this.mOffset + j10);
            close();
            open(0);
            return this.mStream.skip(j11);
        }
    }

    public void close() {
        InputStream inputStream = this.mStream;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public int open(int i10) {
        Context context;
        if (TextUtils.isEmpty(this.mUri) || (context = sContext) == null) {
            return -22;
        }
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(Uri.parse(this.mUri));
            this.mStream = inputStreamOpenInputStream;
            if (inputStreamOpenInputStream == null) {
                return -22;
            }
            try {
                this.mOffset = 0L;
                this.mStreamSize = inputStreamOpenInputStream.available();
                return 0;
            } catch (IOException unused) {
                return -5;
            }
        } catch (FileNotFoundException unused2) {
            return -2;
        }
    }

    public int read(byte[] bArr) {
        InputStream inputStream = this.mStream;
        if (inputStream == null) {
            return -22;
        }
        try {
            int i10 = inputStream.read(bArr);
            this.mOffset += (long) i10;
            return i10;
        } catch (IOException unused) {
            return -5;
        }
    }

    public long seek(long j10, int i10) {
        InputStream inputStream = this.mStream;
        if (inputStream == null) {
            return -22L;
        }
        if (i10 == 65536) {
            int i11 = this.mStreamSize;
            if (i11 <= 0) {
                return -22L;
            }
            return i11;
        }
        if (i10 == 2) {
            try {
                j10 = inputStream.available();
            } catch (IOException unused) {
                return -5L;
            }
        } else if (i10 == 0) {
            j10 -= this.mOffset;
        } else if (i10 != 1) {
            return -22L;
        }
        try {
            long jSkip = this.mOffset + skip(j10);
            this.mOffset = jSkip;
            return jSkip;
        } catch (IOException unused2) {
            return -5L;
        }
    }

    public void setUri(String str) {
        this.mUri = str;
    }
}
