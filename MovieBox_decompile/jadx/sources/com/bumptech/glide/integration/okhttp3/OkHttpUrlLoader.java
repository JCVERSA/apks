package com.bumptech.glide.integration.okhttp3;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.OkHttpClient;

public class OkHttpUrlLoader implements ModelLoader<GlideUrl, InputStream> {
    private final Call.Factory client;

    public static class Factory implements ModelLoaderFactory<GlideUrl, InputStream> {
        private static volatile Call.Factory internalClient;
        private final Call.Factory client;

        public Factory() {
            this(getInternalClient());
        }

        private static Call.Factory getInternalClient() {
            if (internalClient == null) {
                synchronized (Factory.class) {
                    try {
                        if (internalClient == null) {
                            internalClient = new OkHttpClient();
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            return internalClient;
        }

        @Override
        @NonNull
        public ModelLoader<GlideUrl, InputStream> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new OkHttpUrlLoader(this.client);
        }

        public Factory(@NonNull Call.Factory factory) {
            this.client = factory;
        }

        @Override
        public void teardown() {
        }
    }

    public OkHttpUrlLoader(@NonNull Call.Factory factory) {
        this.client = factory;
    }

    @Override
    public boolean handles(@NonNull GlideUrl glideUrl) {
        return true;
    }

    @Override
    public ModelLoader.LoadData<InputStream> buildLoadData(@NonNull GlideUrl glideUrl, int i10, int i11, @NonNull Options options) {
        return new ModelLoader.LoadData<>(glideUrl, new OkHttpStreamFetcher(this.client, glideUrl));
    }
}
