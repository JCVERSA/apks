package com.cloud.tmc.kernel.api.classloader;

import androidx.annotation.Keep;

@Keep
public class DefaultClassLoaderFactory implements ClassLoaderFactory {
    @Override
    public ClassLoader getClassLoader(String str) {
        return DefaultClassLoaderFactory.class.getClassLoader();
    }
}
