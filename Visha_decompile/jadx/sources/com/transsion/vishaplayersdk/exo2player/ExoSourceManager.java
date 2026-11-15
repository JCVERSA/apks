package com.transsion.vishaplayersdk.exo2player;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Util;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.database.StandaloneDatabaseProvider;
import androidx.media3.datasource.AssetDataSource;
import androidx.media3.datasource.DataSink;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.DefaultDataSource;
import androidx.media3.datasource.DefaultHttpDataSource;
import androidx.media3.datasource.RawResourceDataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheKeyFactory;
import androidx.media3.datasource.cache.CacheSpan;
import androidx.media3.datasource.cache.ContentMetadata;
import androidx.media3.datasource.cache.LeastRecentlyUsedCacheEvictor;
import androidx.media3.datasource.cache.SimpleCache;
import androidx.media3.datasource.rtmp.RtmpDataSource;
import androidx.media3.exoplayer.dash.DashMediaSource;
import androidx.media3.exoplayer.dash.DefaultDashChunkSource;
import androidx.media3.exoplayer.hls.HlsMediaSource;
import androidx.media3.exoplayer.rtsp.RtspMediaSource;
import androidx.media3.exoplayer.smoothstreaming.DefaultSsChunkSource;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.extractor.DefaultExtractorsFactory;
import defpackage.ui;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import org.apache.commons.lang3.BooleanUtils;

public class ExoSourceManager {
    private static final long DEFAULT_MAX_SIZE = 536870912;
    private static final String TAG = "ExoSourceManager";
    public static final int TYPE_RTMP = 14;
    private static boolean isForceRtspTcp = true;
    private static Cache mCache = null;
    private static String mCachePath = null;
    private static DatabaseProvider sDatabaseProvider = null;
    private static ExoMediaSourceInterceptListener sExoMediaSourceInterceptListener = null;
    private static int sHttpConnectTimeout = -1;
    private static int sHttpReadTimeout = -1;

    @Deprecated
    private static boolean sSkipSSLChain = false;
    private boolean isCached = false;
    private final Context mAppContext;
    private String mDataSource;
    private final Map<String, String> mMapHeadData;

    private ExoSourceManager(Context context, Map<String, String> map) {
        this.mAppContext = context.getApplicationContext();
        this.mMapHeadData = map;
    }

    public static String buildCacheKey(String str) {
        return CacheKeyFactory.DEFAULT.buildCacheKey(new DataSpec(Uri.parse(str)));
    }

    public static boolean cachePreView(Context context, File file, String str) {
        return resolveCacheState(getCacheSingleInstance(context, file), str);
    }

    public static void clearCache(Context context, File file, String str) {
        try {
            Cache cacheSingleInstance = getCacheSingleInstance(context, file);
            if (!TextUtils.isEmpty(str)) {
                if (cacheSingleInstance != null) {
                    removeCache(cacheSingleInstance, str);
                }
            } else if (cacheSingleInstance != null) {
                Iterator<String> it = cacheSingleInstance.getKeys().iterator();
                while (it.hasNext()) {
                    removeCache(cacheSingleInstance, it.next());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static synchronized Cache getCacheSingleInstance(Context context, File file) {
        try {
            String absolutePath = context.getCacheDir().getAbsolutePath();
            if (file != null) {
                absolutePath = file.getAbsolutePath();
            }
            if (mCache == null) {
                mCachePath = absolutePath + File.separator + "exo";
                if (!SimpleCache.isCacheFolderLocked(new File(mCachePath))) {
                    File file2 = new File(mCachePath);
                    LeastRecentlyUsedCacheEvictor leastRecentlyUsedCacheEvictor = new LeastRecentlyUsedCacheEvictor(536870912L);
                    DatabaseProvider standaloneDatabaseProvider = sDatabaseProvider;
                    if (standaloneDatabaseProvider == null) {
                        standaloneDatabaseProvider = new StandaloneDatabaseProvider(context);
                    }
                    mCache = new SimpleCache(file2, leastRecentlyUsedCacheEvictor, standaloneDatabaseProvider);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return mCache;
    }

    public static DataSource.Factory getDataSourceFactory(Context context, boolean z, String str, Map<String, String> map) {
        DefaultDataSource.Factory factory = new DefaultDataSource.Factory(context, getHttpDataSourceFactory(context, z, str, map));
        if (z) {
            factory.setTransferListener(new DefaultBandwidthMeter.Builder(context).build());
        }
        return factory;
    }

    private DataSource.Factory getDataSourceFactoryCache(Context context, boolean z, boolean z2, File file, String str) {
        Cache cacheSingleInstance;
        if (!z || (cacheSingleInstance = getCacheSingleInstance(context, file)) == null) {
            return getDataSourceFactory(context, z2, str, this.mMapHeadData);
        }
        ExoMediaSourceInterceptListener exoMediaSourceInterceptListener = sExoMediaSourceInterceptListener;
        DataSink.Factory factoryCacheWriteDataSinkFactory = exoMediaSourceInterceptListener != null ? exoMediaSourceInterceptListener.cacheWriteDataSinkFactory(mCachePath, this.mDataSource) : null;
        this.isCached = resolveCacheState(cacheSingleInstance, this.mDataSource);
        CacheDataSource.Factory upstreamDataSourceFactory = new CacheDataSource.Factory().setCache(cacheSingleInstance).setCacheReadDataSourceFactory(getDataSourceFactory(context, z2, str, this.mMapHeadData)).setFlags(2).setUpstreamDataSourceFactory(getHttpDataSourceFactory(context, z2, str, this.mMapHeadData));
        if (sExoMediaSourceInterceptListener != null && factoryCacheWriteDataSinkFactory != null) {
            upstreamDataSourceFactory.setCacheWriteDataSinkFactory(factoryCacheWriteDataSinkFactory);
        }
        return upstreamDataSourceFactory;
    }

    public static DatabaseProvider getDatabaseProvider() {
        return sDatabaseProvider;
    }

    public static ExoMediaSourceInterceptListener getExoMediaSourceInterceptListener() {
        return sExoMediaSourceInterceptListener;
    }

    public static int getHttpConnectTimeout() {
        return sHttpConnectTimeout;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6, types: [androidx.media3.datasource.DataSource$Factory] */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.media3.datasource.DefaultHttpDataSource$Factory] */
    public static DataSource.Factory getHttpDataSourceFactory(Context context, boolean z, String str, Map<String, String> map) {
        ?? transferListener;
        if (str == null) {
            str = Util.getUserAgent(context, TAG);
        }
        String str2 = str;
        int i = sHttpConnectTimeout;
        if (i <= 0) {
            i = 8000;
        }
        int i2 = sHttpReadTimeout;
        int i3 = i2 > 0 ? i2 : 8000;
        boolean zEquals = (map == null || map.size() <= 0) ? false : BooleanUtils.TRUE.equals(map.get("allowCrossProtocolRedirects"));
        ExoMediaSourceInterceptListener exoMediaSourceInterceptListener = sExoMediaSourceInterceptListener;
        if (exoMediaSourceInterceptListener != null) {
            transferListener = exoMediaSourceInterceptListener.getHttpDataSourceFactory(str2, z ? null : new DefaultBandwidthMeter.Builder(context.getApplicationContext()).build(), i, i3, map, zEquals);
        } else {
            transferListener = 0;
        }
        if (transferListener == 0) {
            transferListener = new DefaultHttpDataSource.Factory().setAllowCrossProtocolRedirects(zEquals).setConnectTimeoutMs(i).setReadTimeoutMs(i3).setTransferListener(z ? null : new DefaultBandwidthMeter.Builder(context.getApplicationContext()).build());
            if (map != null && map.size() > 0) {
                transferListener.setDefaultRequestProperties(map);
            }
        }
        return transferListener;
    }

    public static int getHttpReadTimeout() {
        return sHttpReadTimeout;
    }

    @SuppressLint({"WrongConstant"})
    public static int inferContentType(String str, @Nullable String str2) {
        String strE = ui.e(str);
        if (strE.startsWith("rtmp:")) {
            return 14;
        }
        return inferContentType(Uri.parse(strE), str2);
    }

    public static boolean isForceRtspTcp() {
        return isForceRtspTcp;
    }

    @Deprecated
    public static boolean isSkipSSLChain() {
        return sSkipSSLChain;
    }

    public static ExoSourceManager newInstance(Context context, @Nullable Map<String, String> map) {
        return new ExoSourceManager(context, map);
    }

    public static void removeCache(Cache cache, String str) {
        Iterator<CacheSpan> it = cache.getCachedSpans(buildCacheKey(str)).iterator();
        while (it.hasNext()) {
            try {
                cache.removeSpan(it.next());
            } catch (Exception unused) {
            }
        }
    }

    public static void resetExoMediaSourceInterceptListener() {
        sExoMediaSourceInterceptListener = null;
    }

    private static boolean resolveCacheState(Cache cache, String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        String strBuildCacheKey = buildCacheKey(str);
        if (!TextUtils.isEmpty(strBuildCacheKey)) {
            NavigableSet<CacheSpan> cachedSpans = cache.getCachedSpans(strBuildCacheKey);
            if (cachedSpans.size() != 0) {
                long j = cache.getContentMetadata(strBuildCacheKey).get(ContentMetadata.KEY_CONTENT_LENGTH, -1L);
                long cachedLength = 0;
                for (CacheSpan cacheSpan : cachedSpans) {
                    cachedLength += cache.getCachedLength(strBuildCacheKey, cacheSpan.position, cacheSpan.length);
                }
                if (cachedLength >= j) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void setDatabaseProvider(DatabaseProvider databaseProvider) {
        sDatabaseProvider = databaseProvider;
    }

    public static void setExoMediaSourceInterceptListener(ExoMediaSourceInterceptListener exoMediaSourceInterceptListener) {
        sExoMediaSourceInterceptListener = exoMediaSourceInterceptListener;
    }

    public static void setForceRtspTcp(boolean z) {
        isForceRtspTcp = z;
    }

    public static void setHttpConnectTimeout(int i) {
        sHttpConnectTimeout = i;
    }

    public static void setHttpReadTimeout(int i) {
        sHttpReadTimeout = i;
    }

    @Deprecated
    public static void setSkipSSLChain(boolean z) {
        sSkipSSLChain = z;
    }

    public MediaSource getMediaSource(String str, boolean z, boolean z2, boolean z3, File file, @Nullable String str2) {
        ExoMediaSourceInterceptListener exoMediaSourceInterceptListener = sExoMediaSourceInterceptListener;
        MediaSource mediaSource = exoMediaSourceInterceptListener != null ? exoMediaSourceInterceptListener.getMediaSource(str, z, z2, z3, file) : null;
        if (mediaSource != null) {
            return mediaSource;
        }
        this.mDataSource = str;
        Uri uri = Uri.parse(str);
        MediaItem mediaItemFromUri = MediaItem.fromUri(uri);
        int iInferContentType = inferContentType(str, str2);
        Map<String, String> map = this.mMapHeadData;
        String str3 = map != null ? map.get("User-Agent") : null;
        if ("android.resource".equals(uri.getScheme())) {
            DataSpec dataSpec = new DataSpec(uri);
            final RawResourceDataSource rawResourceDataSource = new RawResourceDataSource(this.mAppContext);
            try {
                rawResourceDataSource.open(dataSpec);
            } catch (RawResourceDataSource.RawResourceDataSourceException e) {
                e.printStackTrace();
            }
            return new ProgressiveMediaSource.Factory(new DataSource.Factory() {
                @Override
                public DataSource createDataSource() {
                    return rawResourceDataSource;
                }
            }).createMediaSource(mediaItemFromUri);
        }
        if ("assets".equals(uri.getScheme())) {
            DataSpec dataSpec2 = new DataSpec(uri);
            final AssetDataSource assetDataSource = new AssetDataSource(this.mAppContext);
            try {
                assetDataSource.open(dataSpec2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return new ProgressiveMediaSource.Factory(new DataSource.Factory() {
                @Override
                public DataSource createDataSource() {
                    return assetDataSource;
                }
            }).createMediaSource(mediaItemFromUri);
        }
        if (iInferContentType == 0) {
            DefaultDashChunkSource.Factory factory = new DefaultDashChunkSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file, str3));
            Context context = this.mAppContext;
            return new DashMediaSource.Factory(factory, new DefaultDataSource.Factory(context, getHttpDataSourceFactory(context, z, str3, this.mMapHeadData))).createMediaSource(mediaItemFromUri);
        }
        if (iInferContentType == 1) {
            DefaultSsChunkSource.Factory factory2 = new DefaultSsChunkSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file, str3));
            Context context2 = this.mAppContext;
            return new SsMediaSource.Factory(factory2, new DefaultDataSource.Factory(context2, getHttpDataSourceFactory(context2, z, str3, this.mMapHeadData))).createMediaSource(mediaItemFromUri);
        }
        if (iInferContentType == 2) {
            return new HlsMediaSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file, str3)).setAllowChunklessPreparation(true).createMediaSource(mediaItemFromUri);
        }
        if (iInferContentType != 3) {
            return iInferContentType != 14 ? new ProgressiveMediaSource.Factory(getDataSourceFactoryCache(this.mAppContext, z2, z, file, str3), new DefaultExtractorsFactory()).createMediaSource(mediaItemFromUri) : new ProgressiveMediaSource.Factory(new RtmpDataSource.Factory(), new DefaultExtractorsFactory()).createMediaSource(mediaItemFromUri);
        }
        RtspMediaSource.Factory factory3 = new RtspMediaSource.Factory();
        if (str3 != null) {
            factory3.setUserAgent(str3);
        }
        int i = sHttpConnectTimeout;
        if (i > 0) {
            factory3.setTimeoutMs(i);
        }
        factory3.setForceUseRtpTcp(isForceRtspTcp);
        return factory3.createMediaSource(mediaItemFromUri);
    }

    public boolean hadCached() {
        return this.isCached;
    }

    public void release() {
        this.isCached = false;
        Cache cache = mCache;
        if (cache != null) {
            try {
                cache.release();
                mCache = null;
                mCachePath = null;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static int inferContentType(Uri uri, @Nullable String str) {
        return TextUtils.isEmpty(str) ? Util.inferContentType(uri) : Util.inferContentTypeForExtension(str);
    }
}
