package ru.zdevs.zarchiver.activity;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import h1.h;

public class InstallApkDlg extends Activity {
    @Override
    public final void finishAndRemoveTask() {
        if (Build.VERSION.SDK_INT < 21) {
            finish();
        } else {
            super.finishAndRemoveTask();
        }
    }

    @Override
    public final void onActivityResult(int i2, int i3, Intent intent) {
        int i4 = -1;
        if (i3 != -1 && !h.b()) {
            i4 = 0;
        }
        setResult(i4, getIntent());
        finish();
    }

    @Override
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = new Intent();
        intent.setAction("android.settings.MANAGE_UNKNOWN_APP_SOURCES");
        intent.setData(Uri.fromParts("package", "ru.zdevs.zarchiver", null));
        try {
            startActivityForResult(intent, 0);
        } catch (Throwable unused) {
            finishAndRemoveTask();
        }
    }
}
