package com.transsion.push.utils;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.transsion.http.impl.BitmapCallback;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class n {

    class a implements c {

        final HashMap f48935a;

        final AtomicInteger f48936b;

        final d f48937c;

        a(HashMap map, AtomicInteger atomicInteger, d dVar) {
            this.f48935a = map;
            this.f48936b = atomicInteger;
            this.f48937c = dVar;
        }

        @Override
        public void a(String str, Bitmap bitmap) {
            this.f48935a.put(str, bitmap);
            if (this.f48936b.decrementAndGet() == 0) {
                this.f48937c.a(this.f48935a);
            }
        }
    }

    class b extends BitmapCallback {

        final String f48938e;

        final c f48939f;

        final int f48940g;

        b(String str, c cVar, int i10) {
            this.f48938e = str;
            this.f48939f = cVar;
            this.f48940g = i10;
        }

        @Override
        public void y(int i10, Bitmap bitmap, Throwable th2) {
            PushLogUtils.LOG.i("image download fail, url:" + this.f48938e);
            c cVar = this.f48939f;
            if (cVar != null) {
                cVar.a(this.f48938e, null);
            }
        }

        @Override
        public void z(int i10, Bitmap bitmap) {
            PushLogUtils.LOG.g("image download complete, url:" + this.f48938e);
            c cVar = this.f48939f;
            if (cVar != null) {
                if (this.f48940g != 3) {
                    cVar.a(this.f48938e, bitmap);
                    return;
                }
                try {
                    this.f48939f.a(this.f48938e, com.transsion.push.utils.b.a(yj.a.a(), bitmap));
                } catch (Exception unused) {
                    this.f48939f.a(this.f48938e, null);
                }
            }
        }
    }

    interface c {
        void a(String str, Bitmap bitmap);
    }

    interface d {
        void a(HashMap map);
    }

    private static void a(int i10, String str, c cVar) {
        try {
            ((gl.a) ((gl.a) ((gl.a) ((gl.a) el.a.a(yj.a.a()).f(true).b(yj.a.c())).a(10000)).c(10000)).d(str)).e().a(new b(str, cVar, i10));
        } catch (Exception unused) {
            if (cVar != null) {
                cVar.a(str, null);
            }
        }
    }

    public static void b(int i10, List list, d dVar) {
        HashMap map = new HashMap();
        AtomicInteger atomicInteger = new AtomicInteger(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!TextUtils.isEmpty(str)) {
                a(i10, str, new a(map, atomicInteger, dVar));
            }
        }
    }
}
