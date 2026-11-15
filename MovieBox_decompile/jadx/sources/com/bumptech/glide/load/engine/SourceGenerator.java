package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

class SourceGenerator implements DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback {
    private static final String TAG = "SourceGenerator";

    private final DataFetcherGenerator.FetcherReadyCallback f19533cb;
    private volatile Object dataToCache;
    private final DecodeHelper<?> helper;
    private volatile ModelLoader.LoadData<?> loadData;
    private volatile int loadDataListIndex;
    private volatile DataCacheKey originalKey;
    private volatile DataCacheGenerator sourceCacheGenerator;

    SourceGenerator(DecodeHelper<?> decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.helper = decodeHelper;
        this.f19533cb = fetcherReadyCallback;
    }

    private boolean cacheData(Object obj) throws Throwable {
        long logTime = LogTime.getLogTime();
        boolean z10 = false;
        try {
            DataRewinder<T> rewinder = this.helper.getRewinder(obj);
            Object objRewindAndGet = rewinder.rewindAndGet();
            Encoder<X> sourceEncoder = this.helper.getSourceEncoder(objRewindAndGet);
            DataCacheWriter dataCacheWriter = new DataCacheWriter(sourceEncoder, objRewindAndGet, this.helper.getOptions());
            DataCacheKey dataCacheKey = new DataCacheKey(this.loadData.sourceKey, this.helper.getSignature());
            DiskCache diskCache = this.helper.getDiskCache();
            diskCache.put(dataCacheKey, dataCacheWriter);
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Finished encoding source to cache, key: " + dataCacheKey + ", data: " + obj + ", encoder: " + sourceEncoder + ", duration: " + LogTime.getElapsedMillis(logTime));
            }
            if (diskCache.get(dataCacheKey) != null) {
                this.originalKey = dataCacheKey;
                this.sourceCacheGenerator = new DataCacheGenerator(Collections.singletonList(this.loadData.sourceKey), this.helper, this);
                this.loadData.fetcher.cleanup();
                return true;
            }
            if (Log.isLoggable(TAG, 3)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Attempt to write: ");
                sb2.append(this.originalKey);
                sb2.append(", data: ");
                sb2.append(obj);
                sb2.append(" to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f19533cb.onDataFetcherReady(this.loadData.sourceKey, rewinder.rewindAndGet(), this.loadData.fetcher, this.loadData.fetcher.getDataSource(), this.loadData.sourceKey);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z10 = true;
                if (!z10) {
                    this.loadData.fetcher.cleanup();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private boolean hasNextModelLoader() {
        return this.loadDataListIndex < this.helper.getLoadData().size();
    }

    private void startNextLoad(final ModelLoader.LoadData<?> loadData) {
        this.loadData.fetcher.loadData(this.helper.getPriority(), new DataFetcher.DataCallback<Object>() {
            @Override
            public void onDataReady(@Nullable Object obj) {
                if (SourceGenerator.this.isCurrentRequest(loadData)) {
                    SourceGenerator.this.onDataReadyInternal(loadData, obj);
                }
            }

            @Override
            public void onLoadFailed(@NonNull Exception exc) {
                if (SourceGenerator.this.isCurrentRequest(loadData)) {
                    SourceGenerator.this.onLoadFailedInternal(loadData, exc);
                }
            }
        });
    }

    @Override
    public void cancel() {
        ModelLoader.LoadData<?> loadData = this.loadData;
        if (loadData != null) {
            loadData.fetcher.cancel();
        }
    }

    boolean isCurrentRequest(ModelLoader.LoadData<?> loadData) {
        ModelLoader.LoadData<?> loadData2 = this.loadData;
        return loadData2 != null && loadData2 == loadData;
    }

    @Override
    public void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource) {
        this.f19533cb.onDataFetcherFailed(key, exc, dataFetcher, this.loadData.fetcher.getDataSource());
    }

    @Override
    public void onDataFetcherReady(Key key, Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2) {
        this.f19533cb.onDataFetcherReady(key, obj, dataFetcher, this.loadData.fetcher.getDataSource(), key);
    }

    void onDataReadyInternal(ModelLoader.LoadData<?> loadData, Object obj) {
        DiskCacheStrategy diskCacheStrategy = this.helper.getDiskCacheStrategy();
        if (obj != null && diskCacheStrategy.isDataCacheable(loadData.fetcher.getDataSource())) {
            this.dataToCache = obj;
            this.f19533cb.reschedule();
        } else {
            DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f19533cb;
            Key key = loadData.sourceKey;
            DataFetcher<?> dataFetcher = loadData.fetcher;
            fetcherReadyCallback.onDataFetcherReady(key, obj, dataFetcher, dataFetcher.getDataSource(), this.originalKey);
        }
    }

    void onLoadFailedInternal(ModelLoader.LoadData<?> loadData, @NonNull Exception exc) {
        DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = this.f19533cb;
        DataCacheKey dataCacheKey = this.originalKey;
        DataFetcher<?> dataFetcher = loadData.fetcher;
        fetcherReadyCallback.onDataFetcherFailed(dataCacheKey, exc, dataFetcher, dataFetcher.getDataSource());
    }

    @Override
    public void reschedule() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean startNext() {
        if (this.dataToCache != null) {
            Object obj = this.dataToCache;
            this.dataToCache = null;
            try {
                if (!cacheData(obj)) {
                    return true;
                }
            } catch (IOException unused) {
                Log.isLoggable(TAG, 3);
            }
        }
        if (this.sourceCacheGenerator != null && this.sourceCacheGenerator.startNext()) {
            return true;
        }
        this.sourceCacheGenerator = null;
        this.loadData = null;
        boolean z10 = false;
        while (!z10 && hasNextModelLoader()) {
            List<ModelLoader.LoadData<?>> loadData = this.helper.getLoadData();
            int i10 = this.loadDataListIndex;
            this.loadDataListIndex = i10 + 1;
            this.loadData = loadData.get(i10);
            if (this.loadData != null && (this.helper.getDiskCacheStrategy().isDataCacheable(this.loadData.fetcher.getDataSource()) || this.helper.hasLoadPath(this.loadData.fetcher.getDataClass()))) {
                startNextLoad(this.loadData);
                z10 = true;
            }
        }
        return z10;
    }
}
