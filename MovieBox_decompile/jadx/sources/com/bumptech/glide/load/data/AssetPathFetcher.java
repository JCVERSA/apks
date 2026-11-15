package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.IOException;

public abstract class AssetPathFetcher<T> implements DataFetcher<T> {
    private static final String TAG = "AssetPathFetcher";
    private final AssetManager assetManager;
    private final String assetPath;
    private T data;

    public AssetPathFetcher(AssetManager assetManager, String str) {
        this.assetManager = assetManager;
        this.assetPath = str;
    }

    @Override
    public void cleanup() {
        T t10 = this.data;
        if (t10 == null) {
            return;
        }
        try {
            close(t10);
        } catch (IOException unused) {
        }
    }

    protected abstract void close(T t10) throws IOException;

    @Override
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }

    @Override
    public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T tLoadResource = loadResource(this.assetManager, this.assetPath);
            this.data = tLoadResource;
            dataCallback.onDataReady(tLoadResource);
        } catch (IOException e10) {
            Log.isLoggable(TAG, 3);
            dataCallback.onLoadFailed(e10);
        }
    }

    protected abstract T loadResource(AssetManager assetManager, String str) throws IOException;

    @Override
    public void cancel() {
    }
}
