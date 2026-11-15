package com.transsion.tranplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.transsion.livecaption.constant.ICode;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Locale;

public class TranPlayerTranscoder {
    private static final String TAG = "TranPlayerTranscoder";
    private static boolean mIsTranscodeStoping = false;
    private static boolean mIsTranscoding = false;
    private long ctxTranPtr;
    private String mAudio;
    private float mDuration;
    private float mEndTime;
    private String mInput;
    private onCompletionListener mOnCompletionListener;
    private onErrorListener mOnErrorListener;
    private String mOutput;
    private float mStartTime;
    private String mTimeStamp;
    private TrancoderType mTranscoderType;
    private String mVideo;
    private final String spaceKey = "|040";
    private final String mDebugString = "trace";

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType;

        static {
            int[] iArr = new int[TrancoderType.values().length];
            $SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType = iArr;
            try {
                iArr[TrancoderType.TYPE_TRANSCODE_TO_MP3.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType[TrancoderType.TYPE_TRANSCODE_AAC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType[TrancoderType.TYPE_TRANSCODE_COMBINE_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType[TrancoderType.TYPE_TRANSCODE_TO_GIF_CMD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType[TrancoderType.TYPE_METADATA_CMD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum TrancoderType {
        TYPE_NONE,
        TYPE_TRANSCODE_TO_MP3,
        TYPE_TRANSCODE_AAC,
        TYPE_TRANSCODE_COMBINE_FILES,
        TYPE_TRANSCODE_TO_GIF,
        TYPE_TRANSCODE_TO_GIF_CMD,
        TYPE_METADATA_CMD
    }

    public interface onCompletionListener {
        void onCompletion();
    }

    public interface onErrorListener {
        void onError();
    }

    static {
        try {
            System.loadLibrary("vlcffmpeg");
            System.loadLibrary("trantranscoder");
        } catch (Throwable th) {
            Log.w(TAG, "Unable to load the library: " + th);
        }
    }

    public TranPlayerTranscoder(TrancoderType trancoderType) {
        mIsTranscodeStoping = false;
        this.mTranscoderType = trancoderType;
        if (trancoderType == TrancoderType.TYPE_TRANSCODE_TO_GIF) {
            this.ctxTranPtr = createTranscodeContext();
        }
    }

    public static native void cleanupTranscodeContext(long j);

    public static native int ffmpegCore(int i, String[] strArr);

    private boolean fileIsExist(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    private String getRealFilePathFromContentUri(Context context, Uri uri) {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            if (cursorQuery == null) {
                return null;
            }
            try {
                int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
                cursorQuery.moveToFirst();
                String string = cursorQuery.getString(columnIndexOrThrow);
                cursorQuery.close();
                return string;
            } catch (Exception e) {
                e = e;
                e.printStackTrace();
                if (cursorQuery != null && !cursorQuery.isClosed()) {
                    cursorQuery.close();
                }
                return null;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        }
    }

    public static native int getTranscodeCurrentTime();

    public static native float getTranscodeProgress(long j);

    public static native int setMediaSource(long j, String str, String str2) throws IllegalArgumentException;

    private native void setMediaSource(long j, FileDescriptor fileDescriptor, long j2, long j3) throws IllegalStateException, IOException, IllegalArgumentException;

    public static native int startTranscodeVideo(long j);

    public static native void stop();

    public static native void stopTranscodeVideo(long j);

    private String strProcess(String str) {
        return str.contains(" ") ? str.replaceAll(" ", "|040") : str;
    }

    public native long createTranscodeContext();

    public int getCurrentTranscodeTimeSecond() {
        return getTranscodeCurrentTime();
    }

    public float getTranscodeProgress() {
        return getTranscodeProgress(this.ctxTranPtr);
    }

    public void releaseTranscode() {
        mIsTranscodeStoping = false;
        mIsTranscoding = false;
        if (this.mTranscoderType == TrancoderType.TYPE_TRANSCODE_TO_GIF) {
            cleanupTranscodeContext(this.ctxTranPtr);
        }
    }

    public void setDataSource(String str, String str2) {
        Log.e(TAG, "transcode setDataSource input: " + str + " output: " + str2);
        TrancoderType trancoderType = this.mTranscoderType;
        if (trancoderType == TrancoderType.TYPE_TRANSCODE_TO_GIF_CMD || trancoderType == TrancoderType.TYPE_METADATA_CMD) {
            setInputOutput(str, str2);
        } else {
            setMediaSource(this.ctxTranPtr, str, str2);
        }
    }

    public void setInputOutput(String str, String str2) {
        this.mInput = str;
        this.mOutput = str2;
    }

    public void setOnCompletionListener(onCompletionListener oncompletionlistener) {
        this.mOnCompletionListener = oncompletionlistener;
    }

    public void setOnErrorListener(onErrorListener onerrorlistener) {
        this.mOnErrorListener = onerrorlistener;
    }

    public void setTimePoint(float f, float f2, float f3) {
        this.mStartTime = f;
        this.mEndTime = f2;
        this.mDuration = f3;
    }

    public void transcodeStop() {
        mIsTranscodeStoping = true;
        mIsTranscoding = false;
        if (this.mTranscoderType == TrancoderType.TYPE_TRANSCODE_TO_GIF) {
            stopTranscodeVideo(this.ctxTranPtr);
        } else {
            stop();
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00df  */
    public int transcoderVideo() {
        String str;
        int iFfmpegCore;
        if (mIsTranscoding) {
            Log.e(TAG, "got error, is in transcoding! ");
            onErrorListener onerrorlistener = this.mOnErrorListener;
            if (onerrorlistener != null) {
                onerrorlistener.onError();
            }
            return 0;
        }
        mIsTranscoding = true;
        int i = AnonymousClass1.$SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType[this.mTranscoderType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i == 5 && fileIsExist(this.mInput)) {
                            str = String.format(Locale.US, "ffmpeg -i %s -metadata creation_time=%s -c copy -y %s", strProcess(this.mInput), strProcess(this.mTimeStamp), strProcess(this.mOutput));
                        } else {
                            str = null;
                        }
                    } else if (fileIsExist(this.mInput)) {
                        str = String.format(Locale.US, "ffmpeg -threads 8 -i %s -lavfi fps=15,scale=376:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=256:stats_mode=full[p];[s1][p]paletteuse=dither=none -y %s", strProcess(this.mInput), strProcess(this.mOutput));
                    } else {
                        str = null;
                    }
                } else if (fileIsExist(this.mInput)) {
                    str = String.format(Locale.US, "ffmpeg -f concat -i %s -c copy %s", strProcess(this.mInput), strProcess(this.mOutput));
                } else {
                    str = null;
                }
            } else if (fileIsExist(this.mInput)) {
                str = String.format(Locale.US, "ffmpeg -i %s -acodec aac -ar 48000 -ss 00:00:00 -to 00:00:10 -y %s -v %s", strProcess(this.mInput), strProcess(this.mOutput), "trace");
            } else {
                str = null;
            }
        } else if (fileIsExist(this.mInput)) {
            str = String.format(Locale.US, "ffmpeg -i %s -vn -c:a libmp3lame -q:a 1 %s", strProcess(this.mInput), strProcess(this.mOutput), "trace");
        } else {
            str = null;
        }
        if (str == null || str.isEmpty()) {
            Log.e(TAG, "mInput is null");
            return 0;
        }
        if (this.mTranscoderType == TrancoderType.TYPE_TRANSCODE_TO_GIF) {
            Log.d(TAG, "TYPE_TRANSCODE_TO_GIF ");
            iFfmpegCore = startTranscodeVideo(this.ctxTranPtr);
        } else {
            Log.d(TAG, "input string : " + str);
            String[] strArrSplit = str.split(" ");
            iFfmpegCore = ffmpegCore(strArrSplit.length, strArrSplit);
        }
        mIsTranscoding = false;
        if (iFfmpegCore == 0) {
            onCompletionListener oncompletionlistener = this.mOnCompletionListener;
            if (oncompletionlistener != null && !mIsTranscodeStoping) {
                oncompletionlistener.onCompletion();
            } else if (mIsTranscodeStoping) {
                mIsTranscodeStoping = false;
            }
            Log.i(TAG, "transcoder finished!");
        } else {
            Log.e(TAG, "transcoder got error : " + iFfmpegCore);
            onErrorListener onerrorlistener2 = this.mOnErrorListener;
            if (onerrorlistener2 != null && !mIsTranscodeStoping) {
                onerrorlistener2.onError();
            } else if (mIsTranscodeStoping) {
                mIsTranscodeStoping = false;
            }
            if (iFfmpegCore == -2) {
                return -2;
            }
        }
        return 0;
    }

    public void setInputOutput(String str, String str2, String str3, String str4) {
        this.mAudio = str;
        this.mVideo = str2;
        this.mTimeStamp = str3;
        this.mOutput = str4;
    }

    public void setDataSource(String str, String str2, String str3) {
        this.mInput = str;
        this.mOutput = str2;
        this.mTimeStamp = str3;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0082  */
    public void setDataSource(Context context, Uri uri, String str) throws IOException, SecurityException, IllegalArgumentException {
        if (uri != null) {
            String scheme = uri.getScheme();
            if (scheme != null && !scheme.equals("file")) {
                if (scheme.equals(ICode.CALL.CALL_KEY_CONTENT)) {
                    String realFilePathFromContentUri = getRealFilePathFromContentUri(context, uri);
                    if (realFilePathFromContentUri != null) {
                        setMediaSource(this.ctxTranPtr, realFilePathFromContentUri, str);
                        return;
                    }
                    throw new IllegalArgumentException("Can not get real path from content uri!!!");
                }
                AssetFileDescriptor assetFileDescriptor = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, "r");
                        if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                            Log.d(TAG, "open fd failed, fd is NULL!");
                            Log.d(TAG, "open fd failed, finally!");
                            if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                                assetFileDescriptorOpenAssetFileDescriptor.close();
                                return;
                            }
                            return;
                        }
                        if (assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength() < 0) {
                            setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                        } else {
                            setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor(), assetFileDescriptorOpenAssetFileDescriptor.getStartOffset(), assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength());
                        }
                        Log.d(TAG, "open fd failed, finally!");
                        assetFileDescriptorOpenAssetFileDescriptor.close();
                        return;
                    } catch (IOException unused) {
                        Log.d(TAG, "open fd failed, IOException!");
                        Log.d(TAG, "open fd failed, finally!");
                        if (0 != 0) {
                            assetFileDescriptor.close();
                        }
                        setMediaSource(this.ctxTranPtr, uri.toString(), str);
                        return;
                    } catch (SecurityException unused2) {
                        Log.d(TAG, "open fd failed, SecurityException!");
                        Log.d(TAG, "open fd failed, finally!");
                        if (0 != 0) {
                            assetFileDescriptor.close();
                        }
                        setMediaSource(this.ctxTranPtr, uri.toString(), str);
                        return;
                    }
                } catch (Throwable th) {
                    Log.d(TAG, "open fd failed, finally!");
                    if (0 != 0) {
                        assetFileDescriptor.close();
                    }
                    throw th;
                }
            }
            setMediaSource(this.ctxTranPtr, uri.getPath(), str);
            return;
        }
        throw new IllegalArgumentException();
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        setMediaSource(this.ctxTranPtr, fileDescriptor, 0L, -1L);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IllegalStateException, IOException, IllegalArgumentException {
        setMediaSource(this.ctxTranPtr, fileDescriptor, j, j2);
    }
}
