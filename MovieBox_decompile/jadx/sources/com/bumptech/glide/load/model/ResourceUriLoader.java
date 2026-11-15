package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Options;
import java.io.InputStream;
import java.util.List;

public final class ResourceUriLoader<DataT> implements ModelLoader<Uri, DataT> {
    private static final int INVALID_RESOURCE_ID = 0;
    private static final String TAG = "ResourceUriLoader";
    private final Context context;
    private final ModelLoader<Integer, DataT> delegate;

    ResourceUriLoader(Context context, ModelLoader<Integer, DataT> modelLoader) {
        this.context = context.getApplicationContext();
        this.delegate = modelLoader;
    }

    public static ModelLoaderFactory<Uri, AssetFileDescriptor> newAssetFileDescriptorFactory(Context context) {
        return new AssetFileDescriptorFactory(context);
    }

    public static ModelLoaderFactory<Uri, InputStream> newStreamFactory(Context context) {
        return new InputStreamFactory(context);
    }

    @Nullable
    private ModelLoader.LoadData<DataT> parseResourceIdUri(@NonNull Uri uri, int i10, int i11, @NonNull Options options) {
        try {
            int i12 = Integer.parseInt(uri.getPathSegments().get(0));
            if (i12 != 0) {
                return this.delegate.buildLoadData(Integer.valueOf(i12), i10, i11, options);
            }
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to parse a valid non-0 resource id from: " + uri);
            }
            return null;
        } catch (NumberFormatException e10) {
            if (Log.isLoggable(TAG, 5)) {
                Log.w(TAG, "Failed to parse resource id from: " + uri, e10);
            }
            return null;
        }
    }

    @Nullable
    private ModelLoader.LoadData<DataT> parseResourceNameUri(@NonNull Uri uri, int i10, int i11, @NonNull Options options) {
        List<String> pathSegments = uri.getPathSegments();
        int identifier = this.context.getResources().getIdentifier(pathSegments.get(1), pathSegments.get(0), this.context.getPackageName());
        if (identifier != 0) {
            return this.delegate.buildLoadData(Integer.valueOf(identifier), i10, i11, options);
        }
        if (!Log.isLoggable(TAG, 5)) {
            return null;
        }
        Log.w(TAG, "Failed to find resource id for: " + uri);
        return null;
    }

    @Override
    @Nullable
    public ModelLoader.LoadData<DataT> buildLoadData(@NonNull Uri uri, int i10, int i11, @NonNull Options options) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() == 1) {
            return parseResourceIdUri(uri, i10, i11, options);
        }
        if (pathSegments.size() == 2) {
            return parseResourceNameUri(uri, i10, i11, options);
        }
        if (!Log.isLoggable(TAG, 5)) {
            return null;
        }
        Log.w(TAG, "Failed to parse resource uri: " + uri);
        return null;
    }

    @Override
    public boolean handles(@NonNull Uri uri) {
        return "android.resource".equals(uri.getScheme()) && this.context.getPackageName().equals(uri.getAuthority());
    }

    private static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor> {
        private final Context context;

        AssetFileDescriptorFactory(Context context) {
            this.context = context;
        }

        @Override
        @NonNull
        public ModelLoader<Uri, AssetFileDescriptor> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceUriLoader(this.context, multiModelLoaderFactory.build(Integer.class, AssetFileDescriptor.class));
        }

        @Override
        public void teardown() {
        }
    }

    private static final class InputStreamFactory implements ModelLoaderFactory<Uri, InputStream> {
        private final Context context;

        InputStreamFactory(Context context) {
            this.context = context;
        }

        @Override
        @NonNull
        public ModelLoader<Uri, InputStream> build(@NonNull MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceUriLoader(this.context, multiModelLoaderFactory.build(Integer.class, InputStream.class));
        }

        @Override
        public void teardown() {
        }
    }
}
