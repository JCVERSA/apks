package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.IOException;
import java.io.InputStream;

public final class DirectResourceLoader<DataT> implements ModelLoader<Integer, DataT> {
    private final Context context;
    private final ResourceOpener<DataT> resourceOpener;

    private static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Integer, AssetFileDescriptor>, ResourceOpener<AssetFileDescriptor> {
        private final Context context;

        AssetFileDescriptorFactory(Context context) {
            this.context = context;
        }

        @Override
        @NonNull
        public ModelLoader<Integer, AssetFileDescriptor> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.context, this);
        }

        @Override
        public Class<AssetFileDescriptor> getDataClass() {
            return AssetFileDescriptor.class;
        }

        @Override
        public void close(AssetFileDescriptor assetFileDescriptor) throws IOException {
            assetFileDescriptor.close();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public AssetFileDescriptor open(@Nullable Resources.Theme theme, Resources resources, int i10) {
            return resources.openRawResourceFd(i10);
        }

        @Override
        public void teardown() {
        }
    }

    private static final class DrawableFactory implements ModelLoaderFactory<Integer, Drawable>, ResourceOpener<Drawable> {
        private final Context context;

        DrawableFactory(Context context) {
            this.context = context;
        }

        @Override
        @NonNull
        public ModelLoader<Integer, Drawable> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.context, this);
        }

        @Override
        public void close(Drawable drawable) throws IOException {
        }

        @Override
        public Class<Drawable> getDataClass() {
            return Drawable.class;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Drawable open(@Nullable Resources.Theme theme, Resources resources, int i10) {
            return DrawableDecoderCompat.getDrawable(this.context, i10, theme);
        }

        @Override
        public void teardown() {
        }
    }

    private static final class InputStreamFactory implements ModelLoaderFactory<Integer, InputStream>, ResourceOpener<InputStream> {
        private final Context context;

        InputStreamFactory(Context context) {
            this.context = context;
        }

        @Override
        @NonNull
        public ModelLoader<Integer, InputStream> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.context, this);
        }

        @Override
        public Class<InputStream> getDataClass() {
            return InputStream.class;
        }

        @Override
        public void close(InputStream inputStream) throws IOException {
            inputStream.close();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public InputStream open(@Nullable Resources.Theme theme, Resources resources, int i10) {
            return resources.openRawResource(i10);
        }

        @Override
        public void teardown() {
        }
    }

    private interface ResourceOpener<DataT> {
        void close(DataT datat) throws IOException;

        Class<DataT> getDataClass();

        DataT open(@Nullable Resources.Theme theme, Resources resources, int i10);
    }

    DirectResourceLoader(Context context, ResourceOpener<DataT> resourceOpener) {
        this.context = context.getApplicationContext();
        this.resourceOpener = resourceOpener;
    }

    public static ModelLoaderFactory<Integer, AssetFileDescriptor> assetFileDescriptorFactory(Context context) {
        return new AssetFileDescriptorFactory(context);
    }

    public static ModelLoaderFactory<Integer, Drawable> drawableFactory(Context context) {
        return new DrawableFactory(context);
    }

    public static ModelLoaderFactory<Integer, InputStream> inputStreamFactory(Context context) {
        return new InputStreamFactory(context);
    }

    @Override
    public boolean handles(@NonNull Integer num) {
        return true;
    }

    @Override
    public ModelLoader.LoadData<DataT> buildLoadData(@NonNull Integer num, int i10, int i11, @NonNull Options options) {
        Resources.Theme theme = (Resources.Theme) options.get(ResourceDrawableDecoder.THEME);
        return new ModelLoader.LoadData<>(new ObjectKey(num), new ResourceDataFetcher(theme, theme != null ? theme.getResources() : this.context.getResources(), this.resourceOpener, num.intValue()));
    }

    private static final class ResourceDataFetcher<DataT> implements DataFetcher<DataT> {

        @Nullable
        private DataT data;
        private final int resourceId;
        private final ResourceOpener<DataT> resourceOpener;
        private final Resources resources;

        @Nullable
        private final Resources.Theme theme;

        ResourceDataFetcher(@Nullable Resources.Theme theme, Resources resources, ResourceOpener<DataT> resourceOpener, int i10) {
            this.theme = theme;
            this.resources = resources;
            this.resourceOpener = resourceOpener;
            this.resourceId = i10;
        }

        @Override
        public void cleanup() {
            DataT datat = this.data;
            if (datat != null) {
                try {
                    this.resourceOpener.close(datat);
                } catch (IOException unused) {
                }
            }
        }

        @Override
        @NonNull
        public Class<DataT> getDataClass() {
            return this.resourceOpener.getDataClass();
        }

        @Override
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [DataT, java.lang.Object] */
        @Override
        public void loadData(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super DataT> dataCallback) {
            try {
                DataT datatOpen = this.resourceOpener.open(this.theme, this.resources, this.resourceId);
                this.data = datatOpen;
                dataCallback.onDataReady(datatOpen);
            } catch (Resources.NotFoundException e10) {
                dataCallback.onLoadFailed(e10);
            }
        }

        @Override
        public void cancel() {
        }
    }
}
