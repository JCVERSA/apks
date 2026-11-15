package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.HashMap;

public class oj0 {
    private final iq1 a;
    private final b b;
    private final HashMap<String, a> c = new HashMap<>();
    private final HashMap<String, a> d = new HashMap<>();
    private final Handler e = new Handler(Looper.getMainLooper());
    private Runnable f;

    public static class a {
        private final up1<?> a;
        private Bitmap b;
        private si2 c;
        private final ArrayList d;

        public a(tj0 tj0Var, c cVar) {
            ArrayList arrayList = new ArrayList();
            this.d = arrayList;
            this.a = tj0Var;
            arrayList.add(cVar);
        }
    }

    public interface b {
        @Nullable
        Bitmap a(String str);

        void a(String str, Bitmap bitmap);
    }

    public class c {
        private Bitmap a;
        private final d b;
        private final String c;

        public c(Bitmap bitmap, String str, d dVar) {
            this.a = bitmap;
            this.c = str;
            this.b = dVar;
        }

        @MainThread
        public final void a() {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                throw new IllegalStateException("Must be invoked from the main thread.");
            }
            if (this.b == null) {
                return;
            }
            a aVar = (a) oj0.this.c.get(this.c);
            if (aVar != null) {
                aVar.d.remove(this);
                if (aVar.d.size() == 0) {
                    aVar.a.a();
                    oj0.this.c.remove(this.c);
                    return;
                }
                return;
            }
            a aVar2 = (a) oj0.this.d.get(this.c);
            if (aVar2 != null) {
                aVar2.d.remove(this);
                if (aVar2.d.size() == 0) {
                    aVar2.a.a();
                }
                if (aVar2.d.size() == 0) {
                    oj0.this.d.remove(this.c);
                }
            }
        }

        public final Bitmap b() {
            return this.a;
        }
    }

    public interface d extends xq1.a {
        void a(c cVar, boolean z);
    }

    public oj0(iq1 iq1Var, id1.b bVar) {
        this.a = iq1Var;
        this.b = bVar;
    }

    public String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        throw null;
    }

    public final c a(String str, d dVar, int i, int i2) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            String strA = a(str, i, i2, scaleType);
            Bitmap bitmapA = this.b.a(strA);
            if (bitmapA != null) {
                c cVar = new c(bitmapA, null, null);
                dVar.a(cVar, true);
                return cVar;
            }
            c cVar2 = new c(null, strA, dVar);
            dVar.a(cVar2, true);
            a aVar = this.c.get(strA);
            if (aVar == null) {
                aVar = this.d.get(strA);
            }
            if (aVar != null) {
                aVar.d.add(cVar2);
            } else {
                tj0 tj0Var = new tj0(str, new lj0(this, strA), i, i2, scaleType, Bitmap.Config.RGB_565, new mj0(this, strA));
                this.a.a(tj0Var);
                this.c.put(strA, new a(tj0Var, cVar2));
            }
            return cVar2;
        }
        throw new IllegalStateException("Must be invoked from the main thread.");
    }
}
