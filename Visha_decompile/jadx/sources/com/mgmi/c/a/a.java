package com.mgmi.c.a;

import android.content.Context;
import defpackage.ey4;
import defpackage.sed;
import java.io.File;

public class a implements Runnable {
    private String a;
    private Context b;
    private b c;

    public a(Context context, String str, b bVar) {
        this.a = str;
        this.c = bVar;
        this.b = context;
    }

    @Override
    public void run() {
        ey4.b(this.b, this.a, new sed() {
            @Override
            public void a(File file) {
                if (file == null || a.this.c == null) {
                    return;
                }
                a.this.c.a(a.this.a, file);
            }

            @Override
            public void a() {
                if (a.this.c != null) {
                    a.this.c.a();
                }
            }
        });
    }
}
