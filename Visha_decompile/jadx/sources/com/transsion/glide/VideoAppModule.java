package com.transsion.glide;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Registry;
import com.bumptech.glide.annotation.GlideModule;
import com.bumptech.glide.module.AppGlideModule;
import com.transsion.glide.load.model.LocalMediaLoadInfo;
import com.transsion.glide.model.MediaCoverLoader;

@GlideModule
public class VideoAppModule extends AppGlideModule {
    @Override
    public boolean isManifestParsingEnabled() {
        return false;
    }

    @Override
    public void registerComponents(Context context, Glide glide, Registry registry) {
        registry.append(LocalMediaLoadInfo.class, Bitmap.class, new MediaCoverLoader.Factory(context));
    }
}
