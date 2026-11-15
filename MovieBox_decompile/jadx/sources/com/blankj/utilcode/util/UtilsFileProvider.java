package com.blankj.utilcode.util;

import android.app.Application;
import androidx.core.content.FileProvider;

public class UtilsFileProvider extends FileProvider {
    @Override
    public boolean onCreate() {
        Utils.b((Application) getContext().getApplicationContext());
        return true;
    }
}
