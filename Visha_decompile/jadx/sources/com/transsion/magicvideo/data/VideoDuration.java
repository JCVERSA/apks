package com.transsion.magicvideo.data;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.util.Log;
import androidx.webkit.ProxyConfig;
import com.transsion.arch.threads.TaskExecutor;
import defpackage.gpb;
import java.util.HashMap;
import java.util.concurrent.Executor;

public class VideoDuration {
    static final int MAX_TRY = 3;
    static final String TAG = "VideoDuration";
    private static HashMap<String, Long> sTimeMap = new HashMap<>();
    private Context mContext;
    private long mDuration = 0;
    private boolean mLoading = false;
    private int mTryCount = 0;
    private Uri mUri;
    private String mUriString;
    private IVideoDurationListener mVideoDurationListener;

    public interface IVideoDurationListener {
        void onVideoDurationDone();
    }

    private void loadDuration() {
        final Uri uri = this.mUri;
        if (uri == null || this.mLoading || this.mTryCount >= 3) {
            return;
        }
        final Context context = this.mContext;
        final String str = this.mUriString;
        Long l = sTimeMap.get(str);
        if (l != null) {
            this.mDuration = l.longValue();
            return;
        }
        this.mLoading = true;
        this.mTryCount++;
        Executor executorE = str.startsWith(ProxyConfig.MATCH_HTTP) ? TaskExecutor.e() : TaskExecutor.b();
        Log.d(TAG, "call-loadDuration:" + this + ":::" + str);
        executorE.execute(new TaskExecutor.Task<Long>() {
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Code duplicated, block: B:31:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override
            public Long onBackground() throws Throwable {
                MediaMetadataRetriever mediaMetadataRetriever;
                gpb.c(uri);
                MediaMetadataRetriever mediaMetadataRetriever2 = null;
                try {
                    Log.d(VideoDuration.TAG, "start-onBackground:" + this + ":::" + str);
                    mediaMetadataRetriever = new MediaMetadataRetriever();
                    try {
                        try {
                            if (str.startsWith(ProxyConfig.MATCH_HTTP)) {
                                mediaMetadataRetriever.setDataSource(VideoDuration.this.mUri.toString(), new HashMap());
                            } else {
                                mediaMetadataRetriever.setDataSource(context, uri);
                            }
                            long j = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                            Log.d(VideoDuration.TAG, "loadDuration:" + j + ":::" + this + ":::" + str);
                            Long lValueOf = Long.valueOf(j);
                            try {
                                mediaMetadataRetriever.close();
                            } catch (Exception unused) {
                            }
                            return lValueOf;
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            if (mediaMetadataRetriever != null) {
                                try {
                                    mediaMetadataRetriever.close();
                                } catch (Exception unused2) {
                                }
                            }
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        mediaMetadataRetriever2 = mediaMetadataRetriever;
                        if (mediaMetadataRetriever2 != null) {
                            try {
                                mediaMetadataRetriever2.close();
                            } catch (Exception unused3) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    mediaMetadataRetriever = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (mediaMetadataRetriever2 != null) {
                        mediaMetadataRetriever2.close();
                    }
                    throw th;
                }
            }

            @Override
            public void onResult(Long l2) {
                Log.d(VideoDuration.TAG, "onResult-1:" + l2 + ":::" + this + ":::" + str);
                VideoDuration.this.mLoading = false;
                if (l2 == null) {
                    return;
                }
                if (l2.longValue() > 0) {
                    VideoDuration.sTimeMap.put(str, l2);
                }
                VideoDuration.this.mDuration = l2.longValue();
                Log.d(VideoDuration.TAG, "onResult-2:" + l2 + ":::" + this + ":::" + str);
                if (VideoDuration.this.mVideoDurationListener != null) {
                    VideoDuration.this.mVideoDurationListener.onVideoDurationDone();
                }
            }
        });
    }

    public void checkLoadDuration() {
        if (this.mDuration <= 0) {
            loadDuration();
        }
    }

    public long getDuration() {
        Long l;
        if (this.mDuration <= 0 && (l = sTimeMap.get(this.mUriString)) != null) {
            this.mDuration = l.longValue();
        }
        return this.mDuration;
    }

    public VideoDuration setUri(Context context, Uri uri) {
        if (uri != null && this.mUri != null && uri.toString().equals(this.mUri.toString())) {
            return this;
        }
        this.mUri = uri;
        this.mContext = context;
        this.mLoading = false;
        this.mTryCount = 0;
        this.mDuration = 0L;
        if (uri != null) {
            this.mUriString = uri.toString().toLowerCase();
        } else {
            this.mUriString = null;
        }
        loadDuration();
        return this;
    }

    public VideoDuration setVideoDurationListener(IVideoDurationListener iVideoDurationListener) {
        this.mVideoDurationListener = iVideoDurationListener;
        return this;
    }
}
