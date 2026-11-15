package com.hunantv.media.player.subtitle;

import android.os.Handler;
import android.os.HandlerThread;
import com.hunantv.imgo.net.entity.AuthInfo;
import com.hunantv.media.player.utils.ThreadUtil;
import com.hunantv.media.report.c.f;
import com.hunantv.media.utils.ByteUtil;
import com.hunantv.media.utils.StreamUtil;
import com.hunantv.media.utils.StringUtil;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class SubtitleSource {
    private SubtitleSourceCallback mCallback;
    private String mCharset;
    private byte[] mContent;
    private ErrorResult mErrorResult;
    private MediaFormat mFormat;
    private volatile SubtitleSourceHolder mHolder;
    private InputStream mInputStream;
    private String mPath;
    private volatile boolean mReaded;
    private volatile boolean mReading;
    private volatile boolean mReleased;
    private Object sync;

    public static class ErrorResult {
        public static final int ERROR_DEFAULT = -1;
        public static final int ERROR_NOT_ENABLE_MODULE = -2;
        public int code = 0;

        public ErrorResult setCode(int i) {
            this.code = i;
            return this;
        }
    }

    public interface SubtitleSourceCallback {
        void onFailed(int i);

        void onSuccess(d dVar, SubtitleSource subtitleSource);
    }

    public interface SubtitleSourceHolder {
    }

    public SubtitleSource(InputStream inputStream, MediaFormat mediaFormat) {
        this.mCharset = "UTF-8";
        this.sync = new Object();
        this.mErrorResult = new ErrorResult();
        this.mInputStream = inputStream;
        this.mFormat = mediaFormat;
    }

    private void asyncReadSource(final d dVar, final SubtitleSource subtitleSource) {
        if (this.mReading) {
            return;
        }
        final HandlerThread handlerThread = new HandlerThread("SubtitleReadThread", 9);
        handlerThread.start();
        this.mReading = true;
        new Handler(handlerThread.getLooper()).post(new Runnable() {
            private void addTrack() {
                c.b(AuthInfo.Component.CODE_SUBTITLE, "addTrack in");
                if (subtitleSource == null || dVar == null) {
                    if (SubtitleSource.this.mCallback != null) {
                        SubtitleSource.this.mCallback.onFailed(0);
                        return;
                    }
                    return;
                }
                c.b(AuthInfo.Component.CODE_SUBTITLE, "before new Scanner");
                if (ByteUtil.isEmpty(subtitleSource.readContentBytes())) {
                    if (SubtitleSource.this.mCallback != null) {
                        SubtitleSource.this.mCallback.onFailed(1);
                    }
                } else if (SubtitleSource.this.mCallback != null) {
                    SubtitleSource.this.mCallback.onSuccess(dVar, subtitleSource);
                }
            }

            @Override
            public void run() {
                addTrack();
                SubtitleSource.this.mReading = false;
                if (SubtitleSource.this.mReleased) {
                    SubtitleSource.this.mCallback = null;
                }
                ThreadUtil.quit(handlerThread.getLooper());
            }
        });
    }

    public byte[] readContentBytes() {
        if (!isValid()) {
            return null;
        }
        byte[] bArr = this.mContent;
        if (bArr != null) {
            return bArr;
        }
        String contentStrImpl = readContentStrImpl();
        if (!StringUtil.isSpace(contentStrImpl)) {
            try {
                this.mContent = contentStrImpl.getBytes(getCharset());
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        if (this.mReleased) {
            f.a(this.mInputStream);
        }
        return this.mContent;
    }

    private String readContentStrImpl() {
        String next = new Scanner(getInputStream(), getCharset()).useDelimiter("\\A").next();
        this.mReaded = true;
        return next;
    }

    public void bindHolder(SubtitleSourceHolder subtitleSourceHolder) {
        synchronized (this.sync) {
            this.mHolder = subtitleSourceHolder;
        }
    }

    public String getCharset() {
        return this.mCharset;
    }

    public byte[] getContent() {
        return this.mContent;
    }

    public ErrorResult getErrorResult() {
        return this.mErrorResult;
    }

    public MediaFormat getFormat() {
        return this.mFormat;
    }

    public InputStream getInputStream() {
        return this.mInputStream;
    }

    public String getPath() {
        return this.mPath;
    }

    public boolean isBinded() {
        boolean z;
        synchronized (this.sync) {
            z = this.mHolder != null;
        }
        return z;
    }

    public boolean isReading() {
        return this.mReading;
    }

    public boolean isReleased() {
        return this.mReleased;
    }

    public boolean isValid() {
        return (isReleased() || (getInputStream() == null && ByteUtil.isEmpty(this.mContent)) || getFormat() == null) ? false : true;
    }

    public void readSource(d dVar, SubtitleSource subtitleSource) {
        synchronized (this.sync) {
            try {
                if (ByteUtil.isEmpty(this.mContent)) {
                    asyncReadSource(dVar, subtitleSource);
                } else {
                    SubtitleSourceCallback subtitleSourceCallback = this.mCallback;
                    if (subtitleSourceCallback != null) {
                        subtitleSourceCallback.onSuccess(dVar, subtitleSource);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void release() {
        synchronized (this.sync) {
            try {
                this.mReleased = true;
                if (!this.mReading) {
                    f.a(this.mInputStream);
                    this.mCallback = null;
                }
                this.mInputStream = null;
                this.mReaded = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setCallback(SubtitleSourceCallback subtitleSourceCallback) {
        this.mCallback = subtitleSourceCallback;
    }

    public void setCharset(String str) {
        this.mCharset = str;
    }

    public void unBindHolder() {
        synchronized (this.sync) {
            this.mHolder = null;
        }
    }

    public SubtitleSource(String str, MediaFormat mediaFormat) {
        this.mCharset = "UTF-8";
        this.sync = new Object();
        this.mErrorResult = new ErrorResult();
        this.mPath = str;
        this.mFormat = mediaFormat;
        this.mInputStream = StreamUtil.createFileInputStream(str);
    }

    public SubtitleSource(byte[] bArr, MediaFormat mediaFormat) {
        this.mCharset = "UTF-8";
        this.sync = new Object();
        this.mErrorResult = new ErrorResult();
        this.mContent = bArr;
        this.mFormat = mediaFormat;
        this.mReaded = true;
    }
}
