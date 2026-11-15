package com.transsion.athena.hatnea;

import android.text.TextUtils;
import com.transsion.ga.AthenaAnalytics;
import java.io.File;

public class taaneh extends anateh {

    private final long f41667c;

    private File f41668d;

    private final com.transsion.athena.config.data.model.aethna f41669e;

    public taaneh(long j10, File file, com.transsion.athena.config.data.model.aethna aethnaVar) {
        this.f41667c = j10;
        this.f41668d = file;
        this.f41669e = aethnaVar;
    }

    @Override
    protected void a() {
        String strA;
        int length;
        File file = this.f41668d;
        if (file != null && file.exists() && this.f41668d.isFile() && this.f41668d.getName().contains("upload")) {
            File file2 = this.f41668d;
            try {
                strA = !file2.exists() ? "" : new com.transsion.athena.anateh.aethna(file2.getPath()).a();
            } catch (Exception unused) {
            }
            length = strA.split("\n").length;
        } else {
            strA = null;
            length = 0;
        }
        if (TextUtils.isEmpty(strA) || length <= 0) {
            return;
        }
        if (anehat.a(this.f41667c, strA.getBytes(), length, this.f41669e).f41651a != 0) {
            com.transsion.athena.taaneh.aethna.b("PostEventFileTask requestByPost error");
        } else if (this.f41668d != null) {
            com.transsion.athena.taaneh.aethna.c("PostEventFileTask lines : %d, deleteFile : %s", Long.valueOf(this.f41667c), Integer.valueOf(length), Boolean.valueOf(com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J(), this.f41668d)));
        }
    }

    @Override
    protected String c() {
        return "Upload-File";
    }
}
