package com.cloud.hisavana.sdk.common;

import androidx.core.content.FileProvider;
import defpackage.ikd;

public class HisavanaFileProvider extends FileProvider {
    @Override
    public boolean onCreate() {
        ikd.b().d("HisavanaFileProvider", "onCreate");
        return super.onCreate();
    }
}
