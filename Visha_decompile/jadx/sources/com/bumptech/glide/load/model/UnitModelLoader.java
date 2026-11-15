package com.bumptech.glide.load.model;

import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.signature.ObjectKey;

public class UnitModelLoader<Model> implements ModelLoader<Model, Model> {
    private static final UnitModelLoader<?> INSTANCE = new UnitModelLoader<>();

    public static class Factory<Model> implements ModelLoaderFactory<Model, Model> {
        private static final Factory<?> FACTORY = new Factory<>();

        @Deprecated
        public Factory() {
        }

        public static <T> Factory<T> getInstance() {
            return (Factory<T>) FACTORY;
        }

        @Override
        @NonNull
        public ModelLoader<Model, Model> build(MultiModelLoaderFactory multiModelLoaderFactory) {
            return UnitModelLoader.getInstance();
        }

        @Override
        public void teardown() {
        }
    }

    public static class UnitFetcher<Model> implements DataFetcher<Model> {
        private final Model resource;

        public UnitFetcher(Model model) {
            this.resource = model;
        }

        @Override
        public void cancel() {
        }

        @Override
        public void cleanup() {
        }

        @Override
        @NonNull
        public Class<Model> getDataClass() {
            return (Class<Model>) this.resource.getClass();
        }

        @Override
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        @Override
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super Model> dataCallback) {
            dataCallback.onDataReady(this.resource);
        }
    }

    @Deprecated
    public UnitModelLoader() {
    }

    public static <T> UnitModelLoader<T> getInstance() {
        return (UnitModelLoader<T>) INSTANCE;
    }

    @Override
    public ModelLoader.LoadData<Model> buildLoadData(@NonNull Model model, int i, int i2, @NonNull Options options) {
        return new ModelLoader.LoadData<>(new ObjectKey(model), new UnitFetcher(model));
    }

    @Override
    public boolean handles(@NonNull Model model) {
        return true;
    }
}
