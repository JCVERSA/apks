package com.transsion.tranplayer;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.net.Uri;
import android.util.Log;
import android.view.Surface;
import com.transsion.livecaption.constant.ICode;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;

public class MediaMetadataRetriever {
    public static final int METADATA_KEY_ALBUM = 1;
    public static final int METADATA_KEY_ALBUMARTIST = 13;
    public static final int METADATA_KEY_ARTIST = 2;
    public static final int METADATA_KEY_AUTHOR = 3;
    public static final int METADATA_KEY_BITRATE = 20;
    public static final int METADATA_KEY_CD_TRACK_NUMBER = 0;
    public static final int METADATA_KEY_CHANNELS = 101;
    public static final int METADATA_KEY_CODEC_NAME = 103;
    public static final int METADATA_KEY_COMPILATION = 15;
    public static final int METADATA_KEY_COMPOSER = 4;
    public static final int METADATA_KEY_COM_ANDROID_MANUFACTURER = 56;
    public static final int METADATA_KEY_COM_ANDROID_MODEL = 57;
    public static final int METADATA_KEY_COM_ANDROID_VERSION = 55;
    public static final int METADATA_KEY_DATE = 5;
    public static final int METADATA_KEY_DISC_NUMBER = 14;
    public static final int METADATA_KEY_DURATION = 9;
    public static final int METADATA_KEY_GENRE = 6;
    public static final int METADATA_KEY_HAS_AUDIO = 16;
    public static final int METADATA_KEY_HAS_VIDEO = 17;
    public static final int METADATA_KEY_IS_DRM = 22;
    public static final int METADATA_KEY_LANGUAGE = 102;
    public static final int METADATA_KEY_LOCATION = 23;
    public static final int METADATA_KEY_MIMETYPE = 12;
    public static final int METADATA_KEY_NUM_AUDIO_TRACKS = 61;
    public static final int METADATA_KEY_NUM_TRACKS = 10;
    public static final int METADATA_KEY_NUM_VIDEO_TRACKS = 51;
    public static final int METADATA_KEY_PROFILE = 104;
    public static final int METADATA_KEY_REAL_FRAMERATE = 50;
    public static final int METADATA_KEY_SAMPLERATE = 100;
    public static final int METADATA_KEY_TIMED_TEXT_LANGUAGES = 21;
    public static final int METADATA_KEY_TITLE = 7;
    public static final int METADATA_KEY_VIDEO_DURATION = 60;
    public static final int METADATA_KEY_VIDEO_HDR = 52;
    public static final int METADATA_KEY_VIDEO_HEIGHT = 19;
    public static final int METADATA_KEY_VIDEO_ROTATION = 24;
    public static final int METADATA_KEY_VIDEO_WIDTH = 18;
    public static final int METADATA_KEY_WRITER = 11;
    public static final int METADATA_KEY_YEAR = 8;
    public static final int METADATA_SEEK_TYPE_EXACT = 1;
    public static final int METADATA_SEEK_TYPE_FUZZY = 0;
    public static final int OPTION_CLOSEST = 3;
    public static final int OPTION_CLOSEST_SYNC = 2;
    public static final int OPTION_NEXT_SYNC = 1;
    public static final int OPTION_PREVIOUS_SYNC = 0;
    private static final String TAG = "MediaMetadataRetriever";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    private long mNativeContext;

    public enum TrackType {
        VideoTrack,
        AudioTrack,
        SubtitleTrack
    }

    static {
        try {
            System.loadLibrary("vlcffmpeg");
            System.loadLibrary("tranretriever");
            native_init();
        } catch (Throwable th) {
            Log.w(TAG, "Unable to load the library: " + th);
        }
    }

    public MediaMetadataRetriever() {
        native_setup();
    }

    private native Bitmap _getFrameAtTime(long j, int i, int i2, int i3);

    private native int _getTrackType(int i);

    private native void _setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IllegalStateException, IOException, IllegalArgumentException;

    private native void _setDataSource(String str, Map<String, String> map) throws IllegalArgumentException;

    public static Bitmap createVideoThumbnail(String str, int i) {
        return createVideoThumbnail(str, i, -1L);
    }

    public static Bitmap extractThumbnail(Bitmap bitmap, int i, int i2, int i3) {
        float f;
        int height;
        Log.i(TAG, "extractThumbnail ---- Begin .");
        if (bitmap == null) {
            Log.i(TAG, "extractThumbnail ---- return null. Because of source is null .");
            return null;
        }
        if (bitmap.getWidth() < bitmap.getHeight()) {
            f = i;
            height = bitmap.getWidth();
        } else {
            f = i2;
            height = bitmap.getHeight();
        }
        float f2 = f / height;
        Matrix matrix = new Matrix();
        matrix.setScale(f2, f2);
        Bitmap bitmapTransform = transform(matrix, bitmap, i, i2, i3 | 1);
        Log.i(TAG, "extractThumbnail ---- After transform .");
        if (bitmapTransform == null) {
            Log.i(TAG, "extractThumbnail ---- thumbnail is null .");
        }
        return bitmapTransform;
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

    private final native void native_finalize();

    private static native void native_init();

    private native void native_setup();

    /* JADX WARN: Code duplicated, block: B:37:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:38:0x010c  */
    /* JADX WARN: Code duplicated, block: B:48:0x0139  */
    private static Bitmap transform(Matrix matrix, Bitmap bitmap, int i, int i2, int i3) {
        Matrix matrix2;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmapCreateBitmap2;
        Matrix matrix3 = matrix;
        Log.i(TAG, "transform ---- Begin .");
        boolean z = (i3 & 1) != 0;
        boolean z2 = (i3 & 2) != 0;
        int width = bitmap.getWidth() - i;
        int height = bitmap.getHeight() - i2;
        if (!z && (width < 0 || height < 0)) {
            Bitmap bitmapCreateBitmap3 = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap3);
            int iMax = Math.max(0, width / 2);
            int iMax2 = Math.max(0, height / 2);
            Rect rect = new Rect(iMax, iMax2, Math.min(i, bitmap.getWidth()) + iMax, Math.min(i2, bitmap.getHeight()) + iMax2);
            int iWidth = (i - rect.width()) / 2;
            int iHeight = (i2 - rect.height()) / 2;
            canvas.drawBitmap(bitmap, rect, new Rect(iWidth, iHeight, i - iWidth, i2 - iHeight), (Paint) null);
            if (z2) {
                bitmap.recycle();
            }
            canvas.setBitmap(null);
            Log.i(TAG, "transform ---- return b2.");
            return bitmapCreateBitmap3;
        }
        float width2 = bitmap.getWidth();
        float height2 = bitmap.getHeight();
        Log.i(TAG, "bitmapWidthF:" + width2 + ",bitmapHeightF:" + height2);
        float f = width2 / height2;
        float f2 = (float) i;
        float f3 = (float) i2;
        float f4 = f2 / f3;
        Log.i(TAG, "targetWidth:" + i + ",targetHeight:" + i2);
        if (f <= f4) {
            float f5 = f2 / width2;
            if (f5 < 0.9f || f5 > 1.0f) {
                matrix3.setScale(f5, f5);
            } else {
                matrix2 = null;
            }
            if (matrix2 != null) {
                bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
            } else {
                bitmapCreateBitmap = bitmap;
            }
            if (z2 && bitmapCreateBitmap != bitmap) {
                bitmap.recycle();
            }
            bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, Math.max(0, bitmapCreateBitmap.getWidth() - i) / 2, Math.max(0, bitmapCreateBitmap.getHeight() - i2) / 2, i, i2);
            if (bitmapCreateBitmap2 != bitmapCreateBitmap && (z2 || bitmapCreateBitmap != bitmap)) {
                bitmapCreateBitmap.recycle();
            }
            if (bitmapCreateBitmap2 == null) {
                Log.i(TAG, "transform ---- return b2 is null .");
            }
            return bitmapCreateBitmap2;
        }
        float f6 = f3 / height2;
        if (f6 < 0.9f || f6 > 1.0f) {
            matrix3.setScale(f6, f6);
        } else {
            matrix3 = null;
        }
        matrix2 = matrix3;
        if (matrix2 != null) {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true);
        } else {
            bitmapCreateBitmap = bitmap;
        }
        if (z2) {
            bitmap.recycle();
        }
        bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, Math.max(0, bitmapCreateBitmap.getWidth() - i) / 2, Math.max(0, bitmapCreateBitmap.getHeight() - i2) / 2, i, i2);
        if (bitmapCreateBitmap2 != bitmapCreateBitmap) {
            bitmapCreateBitmap.recycle();
        }
        if (bitmapCreateBitmap2 == null) {
            Log.i(TAG, "transform ---- return b2 is null .");
        }
        return bitmapCreateBitmap2;
    }

    public native int _setFrameParam(int i, int i2);

    public native String extractMetadata(int i);

    public native String extractMetadata(int i, int i2);

    public Bitmap getFrameAtTime(long j, int i) {
        if (i >= 0 && i <= 3) {
            return _getFrameAtTime(j, i, -1, -1);
        }
        throw new IllegalArgumentException("Unsupported option: " + i);
    }

    public native int getTrackCount();

    public TrackType getTrackType(int i) {
        TrackType trackType = TrackType.VideoTrack;
        int i_getTrackType = _getTrackType(i);
        if (i_getTrackType == 0) {
            return trackType;
        }
        if (i_getTrackType != 1) {
            return i_getTrackType != 3 ? trackType : TrackType.SubtitleTrack;
        }
        return TrackType.AudioTrack;
    }

    public native int getVideoTrack();

    public native int pauseDecoder();

    public native void release();

    public void releaseRetriever() throws IllegalStateException {
        try {
            native_finalize();
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0080  */
    public void setDataSource(Context context, Uri uri) throws IOException, SecurityException, IllegalArgumentException {
        if (uri == null) {
            throw new IllegalArgumentException();
        }
        String scheme = uri.getScheme();
        if (scheme == null || scheme.equals("file")) {
            setDataSource(uri.getPath());
            return;
        }
        if (scheme.equals(ICode.CALL.CALL_KEY_CONTENT)) {
            String realFilePathFromContentUri = getRealFilePathFromContentUri(context, uri);
            if (realFilePathFromContentUri == null) {
                throw new IllegalArgumentException("Can not get real path from content uri!!!");
            }
            setDataSource(realFilePathFromContentUri);
            return;
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
            } catch (IOException unused) {
                Log.d(TAG, "open fd failed, IOException!");
                Log.d(TAG, "open fd failed, finally!");
                if (0 != 0) {
                    assetFileDescriptor.close();
                }
                setDataSource(uri.toString());
            } catch (SecurityException unused2) {
                Log.d(TAG, "open fd failed, SecurityException!");
                Log.d(TAG, "open fd failed, finally!");
                if (0 != 0) {
                    assetFileDescriptor.close();
                }
                setDataSource(uri.toString());
            }
        } catch (Throwable th) {
            Log.d(TAG, "open fd failed, finally!");
            if (0 != 0) {
                assetFileDescriptor.close();
            }
            throw th;
        }
    }

    public native void setDataSource(String str) throws IllegalArgumentException;

    public native int setDecoderWork(long j);

    public int setFrameParam(int i, Bitmap.Config config) {
        int i2;
        if (config == Bitmap.Config.ALPHA_8) {
            i2 = 1;
        } else if (config == Bitmap.Config.RGB_565) {
            i2 = 3;
        } else if (config == Bitmap.Config.ARGB_4444) {
            i2 = 4;
        } else if (config == Bitmap.Config.RGBA_F16) {
            i2 = 6;
        } else {
            i2 = config == Bitmap.Config.HARDWARE ? 7 : 5;
        }
        return _setFrameParam(i, i2);
    }

    public native int setScale(int i);

    public native int setSurface(Surface surface);

    public native int setVideoTrack(int i);

    public native long showPreviewFrameAtTime(long j);

    public native int startDecoder();

    /* JADX WARN: Code duplicated, block: B:12:0x0033  */
    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    /* JADX WARN: Code duplicated, block: B:16:0x003c  */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    /* JADX WARN: Code duplicated, block: B:19:0x005f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0062  */
    /* JADX WARN: Code duplicated, block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:35:? A[RETURN, SYNTHETIC] */
    public static Bitmap createVideoThumbnail(String str, int i, long j) {
        Bitmap frameAtTime;
        int width;
        int height;
        int iMax;
        Log.i(TAG, "createVideoThumbnail ---- Begin .");
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                Log.i(TAG, "createVideoThumbnail ---- Before setDataSource .");
                mediaMetadataRetriever.setDataSource(str);
                frameAtTime = mediaMetadataRetriever.getFrameAtTime(j);
                try {
                    Log.i(TAG, "createVideoThumbnail ---- Before release.");
                    mediaMetadataRetriever.release();
                } catch (RuntimeException unused) {
                }
            } catch (RuntimeException unused2) {
                frameAtTime = null;
            }
        } catch (IllegalArgumentException | RuntimeException unused3) {
            Log.i(TAG, "createVideoThumbnail ---- Before release.");
            mediaMetadataRetriever.release();
            frameAtTime = null;
            if (frameAtTime == null) {
                Log.i(TAG, "bitmap is null");
                return null;
            }
            if (i == 1) {
                if (i == 3) {
                    return frameAtTime;
                }
                Log.i(TAG, "createVideoThumbnail ---- Before extractThumbnail .");
                return extractThumbnail(frameAtTime, 96, 96, 2);
            }
            width = frameAtTime.getWidth();
            height = frameAtTime.getHeight();
            iMax = Math.max(width, height);
            if (iMax > 512) {
                return frameAtTime;
            }
            float f = 512.0f / iMax;
            Math.round(width * f);
            Math.round(f * height);
            return Bitmap.createScaledBitmap(frameAtTime, width, height, true);
        } catch (Throwable th) {
            try {
                Log.i(TAG, "createVideoThumbnail ---- Before release.");
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused4) {
            }
            throw th;
        }
        if (frameAtTime == null) {
            Log.i(TAG, "bitmap is null");
            return null;
        }
        if (i == 1) {
            if (i == 3) {
                return frameAtTime;
            }
            Log.i(TAG, "createVideoThumbnail ---- Before extractThumbnail .");
            return extractThumbnail(frameAtTime, 96, 96, 2);
        }
        width = frameAtTime.getWidth();
        height = frameAtTime.getHeight();
        iMax = Math.max(width, height);
        if (iMax > 512) {
            return frameAtTime;
        }
        float f2 = 512.0f / iMax;
        Math.round(width * f2);
        Math.round(f2 * height);
        return Bitmap.createScaledBitmap(frameAtTime, width, height, true);
    }

    public Bitmap getFrameAtTime(long j, int i, int i2, int i3) {
        if (i >= 0 && i <= 3) {
            return _getFrameAtTime(j, i, i2, i3);
        }
        throw new IllegalArgumentException("Unsupported option: " + i);
    }

    public Bitmap getFrameAtTime(long j) {
        return getFrameAtTime(j, 2);
    }

    public Bitmap getFrameAtTime() {
        return getFrameAtTime(-1L, 2);
    }

    public void setDataSource(FileDescriptor fileDescriptor) throws IllegalStateException, IOException, IllegalArgumentException {
        setDataSource(fileDescriptor, 0L, -1L);
    }

    public void setDataSource(FileDescriptor fileDescriptor, long j, long j2) throws IllegalStateException, IOException, IllegalArgumentException {
        _setDataSource(fileDescriptor, j, j2);
    }

    public void setDataSource(String str, Map<String, String> map) throws IllegalArgumentException {
        _setDataSource(str, map);
    }
}
