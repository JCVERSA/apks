package com.mgmi.ads.api.render;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import defpackage.i4d;
import java.io.File;
import java.lang.ref.WeakReference;

public class c {
    private a a;
    private String b;

    public static class a extends Handler {
        WeakReference<com.mgmi.ads.api.render.a> a;

        public a(Looper looper, com.mgmi.ads.api.render.a aVar) {
            super(looper);
            this.a = new WeakReference<>(aVar);
        }

        @Override
        public void handleMessage(Message message) {
            super.handleMessage(message);
            WeakReference<com.mgmi.ads.api.render.a> weakReference = this.a;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            try {
                switch (message.what) {
                    case 45828:
                        com.mgmi.ads.api.render.a aVar = this.a.get();
                        if (aVar == null) {
                            return;
                        } else {
                            aVar.k();
                        }
                        break;
                    case 45829:
                        com.mgmi.ads.api.render.a aVar2 = this.a.get();
                        if (aVar2 == null) {
                            return;
                        } else {
                            aVar2.l();
                        }
                        break;
                    default:
                        return;
                }
            } catch (Exception unused) {
            }
        }
    }

    public c(com.mgmi.ads.api.render.a aVar, String str) {
        this.a = new a(Looper.getMainLooper(), aVar);
        this.b = str;
    }

    public void a() {
        a(com.mgmi.ads.api.c.a(), this.b);
    }

    public void b() {
        a aVar = this.a;
        if (aVar != null) {
            try {
                aVar.sendEmptyMessage(45828);
            } catch (Exception unused) {
            }
        }
    }

    public void c() {
        a aVar = this.a;
        if (aVar != null) {
            try {
                aVar.sendEmptyMessage(45829);
            } catch (Exception unused) {
            }
        }
    }

    private void a(@NonNull Context context, String str) {
        i4d.a().b(new com.mgmi.c.a.a(context, str, new com.mgmi.c.a.b() {
            @Override
            public void a(String str2, File file) throws Throwable {
                com.mgmi.b.c.a().a(str2, file.getAbsolutePath());
                c.this.b();
            }

            @Override
            public void a() {
                c.this.c();
            }
        }));
    }
}
