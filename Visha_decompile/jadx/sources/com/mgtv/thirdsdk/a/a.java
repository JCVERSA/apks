package com.mgtv.thirdsdk.a;

import android.content.Context;
import android.text.TextUtils;
import com.hunantv.imgo.util.l;

public class a {
    private com.mgtv.thirdsdk.a.a.a a;
    private com.mgtv.thirdsdk.a.b.a b;
    private com.mgtv.thirdsdk.a.b.b c;
    private b d;
    private com.mgtv.thirdsdk.a.a.b e = new com.mgtv.thirdsdk.a.a.b() {
        @Override
        public void a(int i) {
            if (i == 1) {
                a.this.a();
            }
            if (i != 2 || a.this.a == null) {
                return;
            }
            a.this.a.onDlnaPrepare(a.this.d.f);
        }

        @Override
        public void a(String str) {
            if (a.this.a != null) {
                a.this.a.onDlnaError(str);
            }
        }
    };

    public void a(Context context) {
        this.d = new b();
        com.mgtv.thirdsdk.a.b.a aVar = new com.mgtv.thirdsdk.a.b.a(this.d, context);
        this.b = aVar;
        aVar.a(this.e);
        com.mgtv.thirdsdk.a.b.b bVar = new com.mgtv.thirdsdk.a.b.b(this.d, context);
        this.c = bVar;
        bVar.a(this.e);
    }

    public void b(String str, int i) {
        this.d.c();
        com.mgtv.thirdsdk.a.b.a aVar = this.b;
        if (aVar != null) {
            aVar.a(str, i);
        }
    }

    public void a(String str, int i) {
        if (com.mgtv.ssp.auth.b.a().b() != 0) {
            com.mgtv.thirdsdk.a.a.a aVar = this.a;
            if (aVar != null) {
                aVar.onDlnaError("110000");
                return;
            }
            return;
        }
        b bVar = this.d;
        bVar.d = i;
        if (!TextUtils.isEmpty(bVar.a) && this.d.a.equals(str) && !l.a(this.d.c)) {
            b bVar2 = this.d;
            bVar2.a(bVar2.d);
            a();
        } else {
            this.d.a = str;
            b(str, i);
        }
    }

    public void a() {
        com.mgtv.thirdsdk.a.b.b bVar = this.c;
        if (bVar != null) {
            bVar.a();
        }
    }

    public void a(com.mgtv.thirdsdk.a.a.a aVar) {
        this.a = aVar;
    }
}
