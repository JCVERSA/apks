package com.bumptech.glide.load.model;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public class ByteBufferFileLoader implements ModelLoader<File, ByteBuffer> {
    private static final String TAG = "ByteBufferFileLoader";

    @Override
    public boolean handles(@NonNull File file) {
        return true;
    }

    @Override
    public ModelLoader.LoadData<ByteBuffer> buildLoadData(@NonNull File file, int i10, int i11, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(file), new ByteBufferFetcher(file));
    }

    private static final class ByteBufferFetcher implements DataFetcher<ByteBuffer> {
        private final File file;

        ByteBufferFetcher(File file) {
            this.file = file;
        }

        @Override
        @NonNull
        public Class<ByteBuffer> getDataClass() {
            return ByteBuffer.class;
        }

        @Override
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        @Override
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super ByteBuffer> dataCallback) {
            try {
                dataCallback.onDataReady(ByteBufferUtil.fromFile(this.file));
            } catch (IOException e10) {
                Log.isLoggable(ByteBufferFileLoader.TAG, 3);
                dataCallback.onLoadFailed(e10);
            }
        }

        @Override
        public void cancel() {
        }

        @Override
        public void cleanup() {
        }
    }

    public static class Factory implements ModelLoaderFactory<File, ByteBuffer> {
        @Override
        @NonNull
        public ModelLoader<File, ByteBuffer> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ByteBufferFileLoader();
        }

        @Override
        public void teardown() {
        }
    }
}
