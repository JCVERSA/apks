package com.transsion.log.common;

import android.os.StatFs;
import android.text.TextUtils;
import android.util.Log;
import defpackage.ef7;
import defpackage.fq5;
import defpackage.gq5;
import defpackage.opc;
import defpackage.sr3;
import defpackage.xu3;
import defpackage.yb9;
import defpackage.ykb;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import kotlin.Pair;

class LoganThread extends Thread {
    private static final int CACHE_SIZE = 1024;
    private static final long HOUR = 3600000;
    private static final long LONG = 86400000;
    private static final int MINUTE = 60000;
    private static final String TAG = "LoganThread";
    private ConcurrentLinkedQueue<LoganModel> mCacheLogQueue;
    private String mCachePath;
    private long mCurrentDay;
    private String mEncryptIv16;
    private String mEncryptKey16;
    private File mFileDirectory;
    private long mFileSize;
    private sr3 mFileStrategy;
    private boolean mIsSDCard;
    private volatile boolean mIsWorking;
    private long mLastFileSize;
    private long mLastFileTime;
    private long mLastTime;
    private long mLogFileSize;
    private gq5 mLoganProtocol;
    private long mMaxLogFile;
    private long mMinSDCard;
    private String mPath;
    private long mSaveTime;
    private int mSendLogStatusCode;
    private ExecutorService mSingleThreadExecutor;
    private long mTotalFileSize;
    private final Object mSync = new Object();
    private final Object mSendSync = new Object();
    private volatile boolean mIsRun = true;
    private ConcurrentLinkedQueue<LoganModel> mCacheSendQueue = new ConcurrentLinkedQueue<>();
    private long mCurrentHour = 0;
    private long mCurrentTime = 0;

    public class a implements ef7 {
        public a() {
        }

        @Override
        public void a(String str, int i) {
            fq5.f(str, i);
        }
    }

    public class b implements SendLogRunnable.a {
        public b() {
        }

        @Override
        public void a(int i) {
            synchronized (LoganThread.this.mSendSync) {
                try {
                    LoganThread.this.mSendLogStatusCode = i;
                    if (i == 10002) {
                        LoganThread.this.mCacheLogQueue.addAll(LoganThread.this.mCacheSendQueue);
                        LoganThread.this.mCacheSendQueue.clear();
                        LoganThread.this.notifyRun();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public class c implements ThreadFactory {
        public c() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(Thread.currentThread().getThreadGroup(), runnable, "logan-thread-send-log", 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public LoganThread(ConcurrentLinkedQueue<LoganModel> concurrentLinkedQueue, String str, String str2, long j, long j2, long j3, String str3, String str4, sr3 sr3Var, long j4) {
        this.mCacheLogQueue = concurrentLinkedQueue;
        this.mCachePath = str;
        this.mPath = str2;
        this.mSaveTime = j;
        this.mMaxLogFile = j2;
        this.mMinSDCard = j3;
        this.mEncryptKey16 = str3;
        this.mEncryptIv16 = str4;
        this.mFileStrategy = sr3Var;
        this.mTotalFileSize = j4;
    }

    private void action(LoganModel loganModel) {
        if (loganModel == null || !loganModel.a()) {
            return;
        }
        if (this.mLoganProtocol == null) {
            gq5 gq5VarG = gq5.g();
            this.mLoganProtocol = gq5VarG;
            gq5VarG.a(new a());
            this.mLoganProtocol.c(this.mCachePath, this.mPath, (int) this.mMaxLogFile, this.mEncryptKey16, this.mEncryptIv16);
            this.mLoganProtocol.f(fq5.d);
        }
        LoganModel.Action action = loganModel.a;
        if (action == LoganModel.Action.WRITE) {
            doWriteLog2File(loganModel.b);
            return;
        }
        if (action != LoganModel.Action.SEND) {
            if (action == LoganModel.Action.FLUSH) {
                doFlushLog2File();
            }
        } else if (loganModel.c.d != null) {
            synchronized (this.mSendSync) {
                try {
                    if (this.mSendLogStatusCode == 10001) {
                        this.mCacheSendQueue.add(loganModel);
                    } else {
                        doSendLog2Net(loganModel.c);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void callStrategyDeleteFile() {
        File[] fileArrListFiles;
        if (this.mFileStrategy == null || TextUtils.isEmpty(this.mPath)) {
            return;
        }
        File file = new File(this.mPath);
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        this.mFileStrategy.b(fileArrListFiles);
    }

    private boolean copyFile(String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(new File(str));
            try {
                fileOutputStream = new FileOutputStream(new File(str2));
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = fileInputStream2.read(bArr);
                        if (i >= 0) {
                            fileOutputStream.write(bArr, 0, i);
                            fileOutputStream.flush();
                        } else {
                            try {
                                break;
                            } catch (Exception unused) {
                            }
                        }
                    }
                    fileInputStream2.close();
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused2) {
                    }
                    return true;
                } catch (FileNotFoundException unused3) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused4) {
                        }
                    }
                    if (fileOutputStream == null) {
                        return false;
                    }
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (Exception unused5) {
                        return false;
                    }
                } catch (IOException unused6) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused7) {
                        }
                    }
                    if (fileOutputStream == null) {
                        return false;
                    }
                    fileOutputStream.close();
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused8) {
                        }
                    }
                    if (fileOutputStream == null) {
                        throw th;
                    }
                    try {
                        fileOutputStream.close();
                        throw th;
                    } catch (Exception unused9) {
                        throw th;
                    }
                }
            } catch (FileNotFoundException unused10) {
                fileOutputStream = null;
            } catch (IOException unused11) {
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (FileNotFoundException unused12) {
            fileOutputStream = null;
        } catch (IOException unused13) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    private void deleteExpiredFile(long j) {
        String[] list;
        File file = new File(this.mPath);
        if (!file.isDirectory() || (list = file.list()) == null) {
            return;
        }
        for (String str : list) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    String[] strArrSplit = str.split("\\.");
                    if (strArrSplit.length > 0 && Long.valueOf(strArrSplit[0]).longValue() <= j && strArrSplit.length == 1) {
                        new File(this.mPath, str).delete();
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private void doFlushLog2File() {
        if (fq5.d) {
            Log.d(TAG, "Logan flush start");
        }
        gq5 gq5Var = this.mLoganProtocol;
        if (gq5Var != null) {
            gq5Var.b();
        }
    }

    private void doSendLog2Net(yb9 yb9Var) {
        if (fq5.d) {
            Log.d(TAG, "Logan send start");
        }
        if (TextUtils.isEmpty(this.mPath) || yb9Var == null || !yb9Var.b()) {
            return;
        }
        if (!prepareLogFileCompress(yb9Var)) {
            if (fq5.d) {
                Log.d(TAG, "Logan prepare log file failed, can't find log file");
            }
        } else {
            yb9Var.d.setSendAction(yb9Var);
            yb9Var.d.setCallBackListener(new b());
            this.mSendLogStatusCode = 10001;
            if (this.mSingleThreadExecutor == null) {
                this.mSingleThreadExecutor = Executors.newSingleThreadExecutor(new c());
            }
            this.mSingleThreadExecutor.execute(yb9Var.d);
        }
    }

    private void doWriteLog2File(opc opcVar) {
        if (fq5.d) {
            Log.d(TAG, "Logan write start");
        }
        if (this.mFileDirectory == null) {
            this.mFileDirectory = new File(this.mPath);
        }
        sr3 sr3Var = this.mFileStrategy;
        if (sr3Var == null || sr3Var.e() == 0 || this.mFileStrategy.c() == 0) {
            if (!isOutTime()) {
                long jA = ykb.a();
                deleteExpiredFile(jA - this.mSaveTime);
                this.mCurrentHour = jA;
                this.mLoganProtocol.e(String.valueOf(jA));
            }
        } else if (!isInTimeByConfig() || this.mFileSize > this.mFileStrategy.c()) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            try {
                if (this.mCurrentTime == 0) {
                    Pair pairG = xu3.g(this.mPath);
                    this.mLastFileTime = ((Long) pairG.getFirst()).longValue();
                    this.mLastFileSize = ((Long) pairG.getSecond()).longValue();
                    if (jCurrentTimeMillis - this.mLastFileTime < this.mFileStrategy.e() && this.mLastFileSize < this.mFileStrategy.c()) {
                        jCurrentTimeMillis = this.mLastFileTime;
                    }
                }
                this.mFileSize = this.mLastFileSize;
                this.mLastFileTime = 0L;
                this.mLastFileSize = 0L;
                callStrategyDeleteFile();
                this.mCurrentTime = jCurrentTimeMillis;
                refreshLogFileSize();
            } catch (Exception e) {
                Log.e(TAG, "get last file info error " + e.getMessage());
            }
            this.mLoganProtocol.e(String.valueOf(this.mCurrentTime));
        }
        if (System.currentTimeMillis() - this.mLastTime > 60000) {
            refreshCurrentFileSize();
            this.mIsSDCard = isCanWriteSDCard();
        }
        this.mLastTime = System.currentTimeMillis();
        if (this.mIsSDCard) {
            this.mLoganProtocol.d(opcVar.f, opcVar.a, opcVar.e, opcVar.d, opcVar.c, opcVar.b);
        }
    }

    private boolean isCanWriteSDCard() {
        try {
            StatFs statFs = new StatFs(this.mPath);
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong() > this.mMinSDCard;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    private boolean isDay() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.mCurrentDay;
        return j < jCurrentTimeMillis && j + 86400000 > jCurrentTimeMillis;
    }

    private boolean isFile(String str) {
        if (TextUtils.isEmpty(this.mPath)) {
            return false;
        }
        File file = new File(this.mPath + File.separator + str);
        return file.exists() && file.isFile();
    }

    private boolean isInTimeByConfig() {
        if (this.mFileStrategy == null) {
            return true;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.mCurrentTime;
        return j < jCurrentTimeMillis && j + this.mFileStrategy.e() > jCurrentTimeMillis;
    }

    private boolean isOutTime() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j = this.mCurrentHour;
        return j < jCurrentTimeMillis && j + 3600000 > jCurrentTimeMillis;
    }

    private boolean prepareLogFileCompress(yb9 yb9Var) {
        doFlushLog2File();
        String str = this.mPath;
        String str2 = File.separator;
        int iLastIndexOf = str.lastIndexOf(str2);
        String strSubstring = iLastIndexOf != -1 ? this.mPath.substring(0, iLastIndexOf) : "";
        String str3 = strSubstring + str2 + "v_ubt_zip_v1" + str2 + yb9Var.b + ".zip";
        File file = new File(strSubstring + str2 + "v_ubt_zip_v1");
        if (!file.exists()) {
            file.mkdirs();
        }
        if (xu3.b(yb9Var.e, str3)) {
            yb9Var.c = str3;
            return true;
        }
        yb9Var.c = "";
        return false;
    }

    private void refreshCurrentFileSize() {
        try {
            if (this.mFileStrategy == null || this.mCurrentTime <= 0) {
                return;
            }
            this.mFileSize = xu3.i(new File(this.mPath + File.separator + this.mCurrentTime));
        } catch (Exception unused) {
        }
    }

    private void refreshLogFileSize() {
        try {
            if (this.mTotalFileSize != 0 && this.mFileStrategy != null) {
                long jI = xu3.i(new File(this.mPath));
                this.mLogFileSize = jI;
                if (jI >= this.mTotalFileSize || jI + this.mFileStrategy.c() > this.mTotalFileSize) {
                    this.mFileStrategy.d(this.mPath);
                }
            }
        } catch (Exception unused) {
        }
    }

    public void notifyRun() {
        if (this.mIsWorking) {
            return;
        }
        synchronized (this.mSync) {
            this.mSync.notify();
        }
    }

    public void quit() {
        this.mIsRun = false;
        if (this.mIsWorking) {
            return;
        }
        synchronized (this.mSync) {
            this.mSync.notify();
        }
    }

    @Override
    public void run() {
        super.run();
        while (this.mIsRun) {
            synchronized (this.mSync) {
                try {
                    this.mIsWorking = true;
                    try {
                        LoganModel loganModelPoll = this.mCacheLogQueue.poll();
                        if (loganModelPoll == null) {
                            refreshCurrentFileSize();
                            this.mIsWorking = false;
                            this.mSync.wait();
                            this.mIsWorking = true;
                        } else {
                            action(loganModelPoll);
                        }
                    } catch (Exception unused) {
                        this.mIsWorking = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
