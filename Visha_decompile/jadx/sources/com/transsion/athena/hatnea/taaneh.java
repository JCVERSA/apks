package com.transsion.athena.hatnea;

import android.text.TextUtils;
import com.transsion.athena.taaneh.athena;
import com.transsion.ga.AthenaAnalytics;
import defpackage.c4d;
import defpackage.z3d;
import java.io.File;

public class taaneh extends anateh {
    private final long c;
    private File d;
    private final com.transsion.athena.config.data.model.aethna e;

    public taaneh(long j, File file, com.transsion.athena.config.data.model.aethna aethnaVar) {
        this.c = j;
        this.d = file;
        this.e = aethnaVar;
    }

    @Override
    public void a() {
        String strA;
        int length;
        File file = this.d;
        if (file != null && file.exists() && this.d.isFile() && this.d.getName().contains("upload")) {
            File file2 = this.d;
            try {
                strA = !file2.exists() ? "" : new z3d(file2.getPath()).a();
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
        if (b.b(this.c, strA.getBytes(), length, this.e).a != 0) {
            c4d.d("PostEventFileTask requestByPost error");
        } else if (this.d != null) {
            c4d.g("PostEventFileTask lines : %d, deleteFile : %s", Long.valueOf(this.c), Integer.valueOf(length), Boolean.valueOf(athena.o(AthenaAnalytics.I(), this.d)));
        }
    }

    @Override
    public String c() {
        return "Upload-File";
    }
}
