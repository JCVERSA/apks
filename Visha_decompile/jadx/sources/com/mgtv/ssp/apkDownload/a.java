package com.mgtv.ssp.apkDownload;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import com.hunantv.imgo.BaseApplication;
import com.mgtv.ssp.R;
import java.io.File;

public class a {
    public static void a(String str) {
        Context context = BaseApplication.getContext();
        File file = new File(str);
        if (!file.exists()) {
            Toast.makeText(context, context.getString(R.string.file_not_exists), 0).show();
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(268435457);
        intent.setDataAndType(FileProvider.getUriForFile(context, context.getPackageName() + ".fileprovider", file), "application/vnd.android.package-archive");
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
            Toast.makeText(context, context.getString(R.string.version_update_install_apk_fail), 0).show();
        }
    }
}
