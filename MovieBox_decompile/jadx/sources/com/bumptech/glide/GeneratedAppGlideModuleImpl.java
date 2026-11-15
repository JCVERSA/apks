package com.bumptech.glide;

import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.integration.cronet.CronetLibraryGlideModule;
import com.bumptech.glide.integration.okhttp3.OkHttpLibraryGlideModule;
import com.transsion.base.image.CustomGlideModule;
import java.util.Collections;
import java.util.Set;

final class GeneratedAppGlideModuleImpl extends GeneratedAppGlideModule {
    private final CustomGlideModule appGlideModule = new CustomGlideModule();

    public GeneratedAppGlideModuleImpl(Context context) {
        Log.isLoggable("Glide", 3);
    }

    @Override
    public void applyOptions(@NonNull Context context, @NonNull GlideBuilder glideBuilder) {
        this.appGlideModule.applyOptions(context, glideBuilder);
    }

    @Override
    @NonNull
    public Set<Class<?>> getExcludedModuleClasses() {
        return Collections.emptySet();
    }

    @Override
    public boolean isManifestParsingEnabled() {
        return this.appGlideModule.isManifestParsingEnabled();
    }

    @Override
    public void registerComponents(@NonNull Context context, @NonNull Glide glide, @NonNull Registry registry) {
        new CronetLibraryGlideModule().registerComponents(context, glide, registry);
        new OkHttpLibraryGlideModule().registerComponents(context, glide, registry);
        this.appGlideModule.registerComponents(context, glide, registry);
    }

    @Override
    @NonNull
    public GeneratedRequestManagerFactory getRequestManagerFactory() {
        return new GeneratedRequestManagerFactory();
    }
}
