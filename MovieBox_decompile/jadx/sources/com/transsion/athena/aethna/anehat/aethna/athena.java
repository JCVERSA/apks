package com.transsion.athena.aethna.anehat.aethna;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.transsion.athena.anateh.anehat;
import com.transsion.athena.taaneh.aethna;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.ga.anateh;
import com.transsion.ga.i;
import java.io.File;

public class athena {

    private static volatile athena f41419a;

    private byte[] f41420b;

    public boolean f41421c;

    private String f41422d;

    private String f41423e;

    private athena() {
    }

    public static athena b() {
        if (f41419a == null) {
            synchronized (athena.class) {
                try {
                    if (f41419a == null) {
                        f41419a = new athena();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f41419a;
    }

    public void a(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(AthenaAnalytics.J().getFilesDir());
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append(str);
        this.f41422d = sb2.toString();
        if (!a()) {
            this.f41422d = AthenaAnalytics.J().getFilesDir().getPath();
        }
        this.f41423e = this.f41422d + str2 + "remote_config.cfg";
    }

    @Nullable
    public String c() throws Throwable {
        if (!TextUtils.isEmpty(this.f41422d) && a()) {
            File file = new File(this.f41423e);
            try {
                return anehat.a(file, this.f41420b);
            } catch (Exception e10) {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putString("e", e10.getClass().getSimpleName());
                    bundle.putString("pwd", com.transsion.athena.config.data.model.anehat.c(this.f41420b));
                    bundle.putLong("len", file.length());
                    i.a().c(new anateh("bufferRead", bundle));
                    com.transsion.athena.taaneh.athena.b(AthenaAnalytics.J(), file);
                } catch (Exception unused) {
                    e10.printStackTrace();
                }
            }
        }
        return null;
    }

    public void a(byte[] bArr) {
        this.f41420b = bArr;
    }

    private boolean a() {
        if (!this.f41421c) {
            File file = new File(this.f41422d);
            try {
                if (!file.exists()) {
                    this.f41421c = file.mkdirs();
                } else {
                    this.f41421c = true;
                }
            } catch (Exception e10) {
                aethna.b(Log.getStackTraceString(e10));
            }
        }
        return this.f41421c;
    }

    public void b(String str) throws Throwable {
        if (!TextUtils.isEmpty(this.f41422d) && a()) {
            File file = new File(this.f41423e);
            try {
                anehat.a(file, str, this.f41420b);
            } catch (Exception e10) {
                i.a().c(new anateh("bufferSave", e10));
                try {
                    if (file.isDirectory()) {
                        com.transsion.athena.taaneh.athena.a(AthenaAnalytics.J(), this.f41423e);
                    }
                } catch (Exception unused) {
                    e10.printStackTrace();
                }
            }
        }
    }
}
