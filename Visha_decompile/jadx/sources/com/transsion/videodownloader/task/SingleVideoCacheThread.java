package com.transsion.videodownloader.task;

import android.os.Handler;
import com.transsion.videodownloader.model.VideoRange;
import defpackage.cx4;
import defpackage.eq5;
import defpackage.frb;
import defpackage.st4;
import java.io.File;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;

public class SingleVideoCacheThread implements Runnable {
    private static final String TAG = "SingleVideoCacheThread";
    private final Map<String, String> mHeaders;
    private int mId;
    private boolean mIsRunning = true;
    private cx4 mListener;
    private final String mMd5;
    private Handler mMsgHandler;
    private final VideoRange mRange;
    private final File mSaveDir;
    private final long mTotalSize;
    private final String mUrl;

    public SingleVideoCacheThread(String str, Map<String, String> map, VideoRange videoRange, long j, String str2) {
        this.mUrl = str;
        this.mHeaders = map == null ? new HashMap<>() : map;
        this.mRange = videoRange;
        this.mTotalSize = j;
        this.mMd5 = frb.c(str);
        File file = new File(str2);
        this.mSaveDir = file;
        if (file.exists()) {
            return;
        }
        file.mkdir();
    }

    private void downloadVideo() throws Throwable {
        HttpURLConnection httpURLConnectionC;
        RandomAccessFile randomAccessFile;
        boolean z;
        InputStream inputStream;
        int i;
        try {
            File file = new File(this.mSaveDir, this.mMd5 + ".video");
            if (!file.exists()) {
                file.createNewFile();
            }
            long start = this.mRange.getStart();
            long end = this.mRange.getEnd();
            long j = start - 10;
            long j2 = 0;
            if (j > 0) {
                start = j;
            }
            long j3 = 10 + end;
            if (j3 < this.mTotalSize) {
                end = j3;
            }
            long j4 = end - start;
            this.mHeaders.put("Range", "bytes=" + start + "-" + end);
            InputStream inputStream2 = null;
            try {
                randomAccessFile = new RandomAccessFile(file.getAbsoluteFile(), "rw");
                try {
                    randomAccessFile.seek(start);
                    eq5.c(TAG, "Request range = " + this.mRange);
                    httpURLConnectionC = st4.c(this.mUrl, this.mHeaders, frb.d().e());
                    try {
                        try {
                            inputStream2 = httpURLConnectionC.getInputStream();
                            try {
                                eq5.c(TAG, "Receive response");
                                byte[] bArr = new byte[8192];
                                while (true) {
                                    if (!this.mIsRunning || (i = inputStream2.read(bArr)) == -1) {
                                        inputStream = inputStream2;
                                        break;
                                    }
                                    inputStream = inputStream2;
                                    long j5 = ((long) i) + j2;
                                    if (j5 > j4) {
                                        try {
                                            try {
                                                randomAccessFile.write(bArr, 0, (int) (j4 - j2));
                                                j2 = j4;
                                            } catch (Exception e) {
                                                e = e;
                                                inputStream2 = inputStream;
                                                notifyOnFailed(e);
                                                this.mIsRunning = false;
                                                frb.b(inputStream2);
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            z = false;
                                            inputStream2 = inputStream;
                                            this.mIsRunning = z;
                                            frb.b(inputStream2);
                                            frb.b(randomAccessFile);
                                            st4.b(httpURLConnectionC);
                                            throw th;
                                        }
                                    } else {
                                        randomAccessFile.write(bArr, 0, i);
                                        j2 = j5;
                                    }
                                    try {
                                        notifyOnProgress(j2);
                                        if (j2 >= j4) {
                                            eq5.c(TAG, "Exceed cachedSize=" + j2 + ", Range[start=" + start + ", end=" + end + "]");
                                            notifyOnRangeCompleted();
                                            break;
                                        }
                                        inputStream2 = inputStream;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        inputStream2 = inputStream;
                                        z = false;
                                        this.mIsRunning = z;
                                        frb.b(inputStream2);
                                        frb.b(randomAccessFile);
                                        st4.b(httpURLConnectionC);
                                        throw th;
                                    }
                                }
                                this.mIsRunning = false;
                                frb.b(inputStream);
                            } catch (Exception e2) {
                                e = e2;
                            } catch (Throwable th3) {
                                th = th3;
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Exception e4) {
                    e = e4;
                    httpURLConnectionC = null;
                } catch (Throwable th5) {
                    th = th5;
                    httpURLConnectionC = null;
                }
            } catch (Exception e5) {
                e = e5;
                httpURLConnectionC = null;
                randomAccessFile = null;
            } catch (Throwable th6) {
                th = th6;
                httpURLConnectionC = null;
                randomAccessFile = null;
            }
            frb.b(randomAccessFile);
            st4.b(httpURLConnectionC);
        } catch (Exception e6) {
            notifyOnFailed(e6);
        }
    }

    public void lambda$notifyOnFailed$0(Exception exc) {
        this.mListener.a(this.mRange, this.mId, exc);
    }

    public void lambda$notifyOnProgress$1(long j) {
        this.mListener.b(this.mRange, this.mId, j);
    }

    public void lambda$notifyOnRangeCompleted$2() {
        this.mListener.c(this.mRange, this.mId);
    }

    private void notifyOnFailed(final Exception exc) {
        this.mMsgHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$notifyOnFailed$0(exc);
            }
        });
    }

    private void notifyOnProgress(final long j) {
        this.mMsgHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$notifyOnProgress$1(j);
            }
        });
    }

    private void notifyOnRangeCompleted() {
        this.mMsgHandler.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$notifyOnRangeCompleted$2();
            }
        });
    }

    public boolean isRunning() {
        return this.mIsRunning;
    }

    public void pause() {
        eq5.c(TAG, "Pause task");
        this.mIsRunning = false;
    }

    @Override
    public void run() throws Throwable {
        if (this.mIsRunning) {
            downloadVideo();
        }
    }

    public void setCacheListener(cx4 cx4Var) {
        this.mListener = cx4Var;
    }

    public void setHandler(Handler handler) {
        this.mMsgHandler = handler;
    }

    public void setId(int i) {
        this.mId = i;
    }
}
