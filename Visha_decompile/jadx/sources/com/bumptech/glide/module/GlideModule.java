package com.bumptech.glide.module;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Registry;

@Deprecated
public interface GlideModule extends RegistersComponents, AppliesOptions {
    void applyOptions(Context context, GlideBuilder glideBuilder);

    @Override
    void registerComponents(Context context, Glide glide, Registry registry);
}
