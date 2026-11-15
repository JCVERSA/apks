package com.cloud.hisavana.sdk.common;

import androidx.core.content.FileProvider;
import com.cloud.hisavana.sdk.b4;

public class HisavanaFileProvider extends FileProvider {
    @Override
    public boolean onCreate() {
        b4.b().d("HisavanaFileProvider", "onCreate");
        return super.onCreate();
    }
}
