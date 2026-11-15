package com.mgadplus.Imagework;

import android.content.Context;
import com.bumptech.glide.Glide;
import defpackage.cjd;
import defpackage.sed;
import java.io.File;

class i$4 implements Runnable {
    final String a;
    final sed b;
    final Context c;
    final cjd d;

    public i$4(cjd cjdVar, String str, sed sedVar, Context context) {
        this.a = str;
        this.b = sedVar;
        this.c = context;
    }

    @Override
    public void run() {
        sed sedVar;
        int iIndexOf;
        String str = this.a;
        try {
            if (str == null) {
                sed sedVar2 = this.b;
                if (sedVar2 != null) {
                    sedVar2.a();
                    return;
                }
                return;
            }
            try {
                String string = str.toString();
                if (string.contains(".gif") && string.contains(",webp") && (iIndexOf = string.indexOf(".gif") + 4) <= string.length()) {
                    string = string.substring(0, iIndexOf);
                }
                File file = Glide.with(this.c).load(string).downloadOnly(Integer.MIN_VALUE, Integer.MIN_VALUE).get();
                sedVar = this.b;
                if (sedVar != null) {
                    if (file != null) {
                        sedVar.a(file);
                        return;
                    }
                    sedVar.a();
                }
            } catch (Exception e) {
                e.printStackTrace();
                sedVar = this.b;
                if (sedVar == null) {
                }
            }
        } catch (Throwable th) {
            sed sedVar3 = this.b;
            if (sedVar3 != null) {
                sedVar3.a();
            }
            throw th;
        }
    }
}
