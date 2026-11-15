package com.transsion.push.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.transsion.http.impl.BitmapCallback;
import defpackage.cy4;
import defpackage.es4;
import defpackage.lf0;
import defpackage.xj1;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a {

    public class C0250a implements c {
        public final HashMap a;
        public final AtomicInteger b;
        public final d c;

        public C0250a(HashMap map, AtomicInteger atomicInteger, d dVar) {
            this.a = map;
            this.b = atomicInteger;
            this.c = dVar;
        }

        @Override
        public void a(String str, Bitmap bitmap) {
            this.a.put(str, bitmap);
            if (this.b.decrementAndGet() == 0) {
                this.c.a(this.a);
            }
        }
    }

    public class b extends BitmapCallback {
        public final String e;
        public final c f;
        public final int g;

        public b(String str, c cVar, int i) {
            this.e = str;
            this.f = cVar;
            this.g = i;
        }

        @Override
        public void E(int i, Bitmap bitmap, Throwable th) {
            PushLogUtils.LOG.i("image download fail, url:" + this.e);
            c cVar = this.f;
            if (cVar != null) {
                cVar.a(this.e, null);
            }
        }

        @Override
        public void F(int i, Bitmap bitmap) {
            PushLogUtils.LOG.g("image download complete, url:" + this.e);
            c cVar = this.f;
            if (cVar != null) {
                if (this.g != 3) {
                    cVar.a(this.e, bitmap);
                    return;
                }
                try {
                    this.f.a(this.e, lf0.a(xj1.a(), bitmap));
                } catch (Exception unused) {
                    this.f.a(this.e, null);
                }
            }
        }
    }

    public interface c {
        void a(String str, Bitmap bitmap);
    }

    public interface d {
        void a(HashMap map);
    }

    public static void a(int i, String str, c cVar) {
        try {
            ((cy4) ((cy4) ((cy4) ((cy4) es4.a(xj1.a()).h(true).c(xj1.c())).b(10000)).d(10000)).f(str)).g().a(new b(str, cVar, i));
        } catch (Exception unused) {
            if (cVar != null) {
                cVar.a(str, null);
            }
        }
    }

    public static void b(int i, List list, d dVar) {
        HashMap map = new HashMap();
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                a(i, str, new C0250a(map, atomicInteger, dVar));
            }
        }
    }
}
