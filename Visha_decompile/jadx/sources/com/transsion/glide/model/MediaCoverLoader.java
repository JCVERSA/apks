package com.transsion.glide.model;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.glide.load.model.LocalMediaLoadInfo;
import com.transsion.tranplayer.MediaMetadataRetriever;
import defpackage.ao;
import defpackage.bx9;
import defpackage.bya;
import defpackage.ge;
import defpackage.me6;
import defpackage.tn;
import defpackage.vk1;
import defpackage.zu3;

public class MediaCoverLoader implements ModelLoader<LocalMediaLoadInfo, Bitmap> {
    private final Context context;

    public static class Factory implements ModelLoaderFactory<LocalMediaLoadInfo, Bitmap> {
        private final Context context;

        public Factory(Context context) {
            this.context = context;
        }

        @Override
        @NonNull
        public final ModelLoader<LocalMediaLoadInfo, Bitmap> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaCoverLoader(this.context);
        }

        @Override
        public final void teardown() {
        }
    }

    public static class MediaCoverDataFetcher implements DataFetcher<Bitmap> {
        private static final String TAG = "MediaCoverDataFetcher";
        private final Context context;
        private final LocalMediaLoadInfo loadInfo;
        private MediaMetadataRetriever mMediaMetadataRetriever;

        public MediaCoverDataFetcher(Context context, LocalMediaLoadInfo localMediaLoadInfo) {
            this.context = context;
            this.loadInfo = localMediaLoadInfo;
        }

        private static boolean isOsStubTranssionFlavor() {
            String strA = ge.a();
            return "os".equalsIgnoreCase(strA) || "os_test".equalsIgnoreCase(strA);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0024  */
        /* JADX WARN: Code duplicated, block: B:17:0x0038 A[Catch: Exception -> 0x0034, TRY_LEAVE, TryCatch #1 {Exception -> 0x0034, blocks: (B:13:0x0027, B:17:0x0038), top: B:26:0x0027 }] */
        /* JADX WARN: Code duplicated, block: B:19:0x004e  */
        /* JADX WARN: Code duplicated, block: B:20:0x0052 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:21:0x0054  */
        private void loadAudioCover(DataFetcher.DataCallback<? super Bitmap> dataCallback) {
            Bitmap bitmapDecodeFile;
            AudioAlbum audioAlbumD = ao.U().D(this.loadInfo.getMediaId());
            Exception exc = null;
            if (audioAlbumD != null) {
                try {
                    if (zu3.y(audioAlbumD.imgPath)) {
                        bitmapDecodeFile = BitmapFactory.decodeFile(audioAlbumD.imgPath);
                    } else {
                        bitmapDecodeFile = null;
                    }
                } catch (Exception e) {
                    e = e;
                    bitmapDecodeFile = null;
                    exc = e;
                    if (bitmapDecodeFile != null) {
                        dataCallback.onDataReady(bitmapDecodeFile);
                        return;
                    }
                    if (exc == null) {
                        exc = new Exception("loadAudioCover error");
                    }
                    dataCallback.onLoadFailed(exc);
                }
            } else {
                bitmapDecodeFile = null;
            }
            if (bitmapDecodeFile == null) {
                try {
                    bitmapDecodeFile = vk1.i(this.context, this.loadInfo.getUri());
                    if (bitmapDecodeFile == null) {
                        bitmapDecodeFile = BitmapFactory.decodeResource(this.context.getResources(), tn.k(this.loadInfo.getDisplayName()));
                    }
                } catch (Exception e2) {
                    e = e2;
                    exc = e;
                }
            } else if (bitmapDecodeFile == null) {
                bitmapDecodeFile = BitmapFactory.decodeResource(this.context.getResources(), tn.k(this.loadInfo.getDisplayName()));
            }
            if (bitmapDecodeFile != null) {
                dataCallback.onDataReady(bitmapDecodeFile);
                return;
            }
            if (exc == null) {
                exc = new Exception("loadAudioCover error");
            }
            dataCallback.onLoadFailed(exc);
        }

        private void loadVideoCover(@NonNull DataFetcher.DataCallback<? super Bitmap> dataCallback) {
            Bitmap frameAtTime;
            if (isOsStubTranssionFlavor() || !bx9.t()) {
                loadVideoCoverWithAndroidRetriever(dataCallback);
                return;
            }
            Log.i(TAG, "<loadData by transsion MediaMetadataRetriever> " + this.loadInfo);
            try {
                bya.c();
                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                this.mMediaMetadataRetriever = mediaMetadataRetriever;
                mediaMetadataRetriever.setDataSource(this.context, this.loadInfo.getUri());
                frameAtTime = this.mMediaMetadataRetriever.getFrameAtTime();
                releaseMediaMetadataRetriever();
            } catch (Throwable th) {
                try {
                    Log.e(TAG, "<loadData error>,<" + this.loadInfo.getUri() + ">,msg:" + th.getMessage());
                    releaseMediaMetadataRetriever();
                    frameAtTime = null;
                } catch (Throwable th2) {
                    releaseMediaMetadataRetriever();
                    throw th2;
                }
            }
            if (frameAtTime != null) {
                dataCallback.onDataReady(frameAtTime);
            } else {
                loadVideoCoverWithAndroidRetriever(dataCallback);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v6 */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v8 */
        private void loadVideoCoverWithAndroidRetriever(@NonNull DataFetcher.DataCallback<? super Bitmap> dataCallback) {
            ?? r2;
            String str = "android MediaMetadataRetriever release ";
            android.media.MediaMetadataRetriever mediaMetadataRetriever = new android.media.MediaMetadataRetriever();
            Bitmap bitmap = null;
            try {
                try {
                    mediaMetadataRetriever.setDataSource(this.context, this.loadInfo.getUri());
                    Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(-1L, 2);
                    try {
                        mediaMetadataRetriever.release();
                        r2 = mediaMetadataRetriever;
                    } catch (Exception e) {
                        str = "android MediaMetadataRetriever release " + e;
                        Log.e(TAG, str);
                        r2 = e;
                    }
                    e = null;
                    bitmap = frameAtTime;
                    mediaMetadataRetriever = r2;
                } catch (Exception e2) {
                    e = e2;
                    Log.e(TAG, "<loadVideoCoverWithAndroidRetriever>,<" + this.loadInfo.getUri() + ">,msg:" + e.getMessage());
                    try {
                        mediaMetadataRetriever.release();
                        mediaMetadataRetriever = mediaMetadataRetriever;
                    } catch (Exception e3) {
                        Log.e(TAG, "android MediaMetadataRetriever release " + e3);
                    }
                }
                if (bitmap != null) {
                    dataCallback.onDataReady(bitmap);
                    return;
                }
                if (e == null) {
                    e = new Exception("loadVideoCoverWithAndroidRetriever error");
                }
                dataCallback.onLoadFailed(e);
            } catch (Throwable th) {
                try {
                    mediaMetadataRetriever.release();
                } catch (Exception e4) {
                    Log.e(TAG, str + e4);
                }
                throw th;
            }
        }

        private void releaseMediaMetadataRetriever() {
            MediaMetadataRetriever mediaMetadataRetriever = this.mMediaMetadataRetriever;
            if (mediaMetadataRetriever != null) {
                try {
                    mediaMetadataRetriever.releaseRetriever();
                } catch (Exception e) {
                    Log.e(TAG, "releaseRetriever error " + e);
                }
                this.mMediaMetadataRetriever = null;
            }
        }

        @Override
        public void cancel() {
        }

        @Override
        public void cleanup() {
            releaseMediaMetadataRetriever();
        }

        @Override
        @NonNull
        public Class<Bitmap> getDataClass() {
            return Bitmap.class;
        }

        @Override
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        @Override
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Bitmap> dataCallback) {
            if (this.loadInfo.isVideoFile()) {
                loadVideoCover(dataCallback);
            } else {
                loadAudioCover(dataCallback);
            }
        }
    }

    public MediaCoverLoader(Context context) {
        this.context = context;
    }

    @Override
    public boolean handles(@NonNull LocalMediaLoadInfo localMediaLoadInfo) {
        return true;
    }

    @Override
    @Nullable
    public ModelLoader.LoadData<Bitmap> buildLoadData(@NonNull LocalMediaLoadInfo localMediaLoadInfo, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new me6(localMediaLoadInfo), new MediaCoverDataFetcher(this.context, localMediaLoadInfo));
    }
}
