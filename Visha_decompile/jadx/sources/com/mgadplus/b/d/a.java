package com.mgadplus.b.d;

import android.text.TextUtils;
import com.mgadplus.mgutil.SourceKitLogger;
import defpackage.b2d;
import defpackage.n8d;
import java.io.File;

public class a implements Runnable {
    public n8d a;
    private String b;
    private boolean c = false;

    public a(String str, n8d n8dVar) {
        this.b = str;
    }

    @Override
    public void run() {
        SourceKitLogger.a("DeleteFileTask", "start delete mPath=" + this.b);
        String str = this.b;
        if (str != null) {
            TextUtils.isEmpty(str);
        }
        if (b2d.a(this.b)) {
            SourceKitLogger.a("DeleteFileTask", "start delete mPath exist");
            try {
                new File(this.b).delete();
                return;
            } catch (Exception unused) {
                SourceKitLogger.a("DeleteFileTask", "start delete mPath exception");
                return;
            }
        }
        SourceKitLogger.a("DeleteFileTask", "start delete mPath not exist=" + this.b);
    }
}
