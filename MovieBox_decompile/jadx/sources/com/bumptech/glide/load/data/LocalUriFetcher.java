package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class LocalUriFetcher<T> implements DataFetcher<T> {
    private static final String TAG = "LocalUriFetcher";
    private final ContentResolver contentResolver;
    private T data;
    private final Uri uri;

    public LocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        this.contentResolver = contentResolver;
        this.uri = uri;
    }

    @Override
    public void cleanup() {
        T t10 = this.data;
        if (t10 != null) {
            try {
                close(t10);
            } catch (IOException unused) {
            }
        }
    }

    protected abstract void close(T t10) throws IOException;

    @Override
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }

    @Override
    public final void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super T> dataCallback) {
        try {
            T tLoadResource = loadResource(this.uri, this.contentResolver);
            this.data = tLoadResource;
            dataCallback.onDataReady(tLoadResource);
        } catch (FileNotFoundException e10) {
            Log.isLoggable(TAG, 3);
            dataCallback.onLoadFailed(e10);
        }
    }

    protected abstract T loadResource(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override
    public void cancel() {
    }
}
