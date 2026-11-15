package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

public class StreamAssetPathFetcher extends AssetPathFetcher<InputStream> {
    public StreamAssetPathFetcher(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    @Override
    @NonNull
    public Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    @Override
    public void close(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public InputStream loadResource(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }
}
