package androidx.palette.graphics;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.AsyncTask;
import android.util.Log;
import android.util.SparseBooleanArray;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class a {

    static final c f13671f = new C0102a();

    private final List f13672a;

    private final List f13673b;

    private final SparseBooleanArray f13675d = new SparseBooleanArray();

    private final Map f13674c = new androidx.collection.a();

    private final e f13676e = a();

    static class C0102a implements c {
        C0102a() {
        }

        private boolean b(float[] fArr) {
            return fArr[2] <= 0.05f;
        }

        private boolean c(float[] fArr) {
            float f10 = fArr[0];
            return f10 >= 10.0f && f10 <= 37.0f && fArr[1] <= 0.82f;
        }

        private boolean d(float[] fArr) {
            return fArr[2] >= 0.95f;
        }

        @Override
        public boolean a(int i10, float[] fArr) {
            return (d(fArr) || b(fArr) || c(fArr)) ? false : true;
        }
    }

    public static final class b {

        private final List f13677a;

        private final Bitmap f13678b;

        private final List f13679c;

        private int f13680d;

        private int f13681e;

        private int f13682f;

        private final List f13683g;

        private Rect f13684h;

        class AsyncTaskC0103a extends AsyncTask {

            final d f13685a;

            AsyncTaskC0103a(d dVar) {
                this.f13685a = dVar;
            }

            @Override
            public a doInBackground(Bitmap... bitmapArr) {
                try {
                    return b.this.c();
                } catch (Exception e10) {
                    Log.e("Palette", "Exception thrown during async generate", e10);
                    return null;
                }
            }

            @Override
            public void onPostExecute(a aVar) {
                this.f13685a.a(aVar);
            }
        }

        public b(Bitmap bitmap) {
            ArrayList arrayList = new ArrayList();
            this.f13679c = arrayList;
            this.f13680d = 16;
            this.f13681e = 12544;
            this.f13682f = -1;
            ArrayList arrayList2 = new ArrayList();
            this.f13683g = arrayList2;
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            arrayList2.add(a.f13671f);
            this.f13678b = bitmap;
            this.f13677a = null;
            arrayList.add(androidx.palette.graphics.b.f13696e);
            arrayList.add(androidx.palette.graphics.b.f13697f);
            arrayList.add(androidx.palette.graphics.b.f13698g);
            arrayList.add(androidx.palette.graphics.b.f13699h);
            arrayList.add(androidx.palette.graphics.b.f13700i);
            arrayList.add(androidx.palette.graphics.b.f13701j);
        }

        private int[] d(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            Rect rect = this.f13684h;
            if (rect == null) {
                return iArr;
            }
            int iWidth = rect.width();
            int iHeight = this.f13684h.height();
            int[] iArr2 = new int[iWidth * iHeight];
            for (int i10 = 0; i10 < iHeight; i10++) {
                Rect rect2 = this.f13684h;
                System.arraycopy(iArr, ((rect2.top + i10) * width) + rect2.left, iArr2, i10 * iWidth, iWidth);
            }
            return iArr2;
        }

        private Bitmap e(Bitmap bitmap) {
            int iMax;
            int i10;
            double dSqrt = -1.0d;
            if (this.f13681e > 0) {
                int width = bitmap.getWidth() * bitmap.getHeight();
                int i11 = this.f13681e;
                if (width > i11) {
                    dSqrt = Math.sqrt(((double) i11) / ((double) width));
                }
            } else if (this.f13682f > 0 && (iMax = Math.max(bitmap.getWidth(), bitmap.getHeight())) > (i10 = this.f13682f)) {
                dSqrt = ((double) i10) / ((double) iMax);
            }
            return dSqrt <= 0.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(((double) bitmap.getWidth()) * dSqrt), (int) Math.ceil(((double) bitmap.getHeight()) * dSqrt), false);
        }

        public b a() {
            this.f13683g.clear();
            return this;
        }

        public AsyncTask b(d dVar) {
            if (dVar != null) {
                return new AsyncTaskC0103a(dVar).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.f13678b);
            }
            throw new IllegalArgumentException("listener can not be null");
        }

        public a c() {
            List listD;
            c[] cVarArr;
            Bitmap bitmap = this.f13678b;
            if (bitmap != null) {
                Bitmap bitmapE = e(bitmap);
                Rect rect = this.f13684h;
                if (bitmapE != this.f13678b && rect != null) {
                    double width = ((double) bitmapE.getWidth()) / ((double) this.f13678b.getWidth());
                    rect.left = (int) Math.floor(((double) rect.left) * width);
                    rect.top = (int) Math.floor(((double) rect.top) * width);
                    rect.right = Math.min((int) Math.ceil(((double) rect.right) * width), bitmapE.getWidth());
                    rect.bottom = Math.min((int) Math.ceil(((double) rect.bottom) * width), bitmapE.getHeight());
                }
                int[] iArrD = d(bitmapE);
                int i10 = this.f13680d;
                if (this.f13683g.isEmpty()) {
                    cVarArr = null;
                } else {
                    List list = this.f13683g;
                    cVarArr = (c[]) list.toArray(new c[list.size()]);
                }
                ColorCutQuantizer colorCutQuantizer = new ColorCutQuantizer(iArrD, i10, cVarArr);
                if (bitmapE != this.f13678b) {
                    bitmapE.recycle();
                }
                listD = colorCutQuantizer.d();
            } else {
                listD = this.f13677a;
                if (listD == null) {
                    throw new AssertionError();
                }
            }
            a aVar = new a(listD, this.f13679c);
            aVar.c();
            return aVar;
        }
    }

    public interface c {
        boolean a(int i10, float[] fArr);
    }

    public interface d {
        void a(a aVar);
    }

    public static final class e {

        private final int f13687a;

        private final int f13688b;

        private final int f13689c;

        private final int f13690d;

        private final int f13691e;

        private boolean f13692f;

        private int f13693g;

        private int f13694h;

        private float[] f13695i;

        public e(int i10, int i11) {
            this.f13687a = Color.red(i10);
            this.f13688b = Color.green(i10);
            this.f13689c = Color.blue(i10);
            this.f13690d = i10;
            this.f13691e = i11;
        }

        private void a() {
            if (this.f13692f) {
                return;
            }
            int iG = z0.b.g(-1, this.f13690d, 4.5f);
            int iG2 = z0.b.g(-1, this.f13690d, 3.0f);
            if (iG != -1 && iG2 != -1) {
                this.f13694h = z0.b.p(-1, iG);
                this.f13693g = z0.b.p(-1, iG2);
                this.f13692f = true;
                return;
            }
            int iG3 = z0.b.g(ViewCompat.MEASURED_STATE_MASK, this.f13690d, 4.5f);
            int iG4 = z0.b.g(ViewCompat.MEASURED_STATE_MASK, this.f13690d, 3.0f);
            if (iG3 == -1 || iG4 == -1) {
                this.f13694h = iG != -1 ? z0.b.p(-1, iG) : z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG3);
                this.f13693g = iG2 != -1 ? z0.b.p(-1, iG2) : z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG4);
                this.f13692f = true;
            } else {
                this.f13694h = z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG3);
                this.f13693g = z0.b.p(ViewCompat.MEASURED_STATE_MASK, iG4);
                this.f13692f = true;
            }
        }

        public int b() {
            a();
            return this.f13694h;
        }

        public float[] c() {
            if (this.f13695i == null) {
                this.f13695i = new float[3];
            }
            z0.b.a(this.f13687a, this.f13688b, this.f13689c, this.f13695i);
            return this.f13695i;
        }

        public int d() {
            return this.f13691e;
        }

        public int e() {
            return this.f13690d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f13691e == eVar.f13691e && this.f13690d == eVar.f13690d;
        }

        public int f() {
            a();
            return this.f13693g;
        }

        public int hashCode() {
            return (this.f13690d * 31) + this.f13691e;
        }

        public String toString() {
            return e.class.getSimpleName() + " [RGB: #" + Integer.toHexString(e()) + "] [HSL: " + Arrays.toString(c()) + "] [Population: " + this.f13691e + "] [Title Text: #" + Integer.toHexString(f()) + "] [Body Text: #" + Integer.toHexString(b()) + ']';
        }
    }

    a(List list, List list2) {
        this.f13672a = list;
        this.f13673b = list2;
    }

    private e a() {
        int size = this.f13672a.size();
        int iD = Integer.MIN_VALUE;
        e eVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar2 = (e) this.f13672a.get(i10);
            if (eVar2.d() > iD) {
                iD = eVar2.d();
                eVar = eVar2;
            }
        }
        return eVar;
    }

    public static b b(Bitmap bitmap) {
        return new b(bitmap);
    }

    private float d(e eVar, androidx.palette.graphics.b bVar) {
        float[] fArrC = eVar.c();
        e eVar2 = this.f13676e;
        return (bVar.g() > 0.0f ? bVar.g() * (1.0f - Math.abs(fArrC[1] - bVar.i())) : 0.0f) + (bVar.a() > 0.0f ? bVar.a() * (1.0f - Math.abs(fArrC[2] - bVar.h())) : 0.0f) + (bVar.f() > 0.0f ? bVar.f() * (eVar.d() / (eVar2 != null ? eVar2.d() : 1)) : 0.0f);
    }

    private e e(androidx.palette.graphics.b bVar) {
        e eVarL = l(bVar);
        if (eVarL != null && bVar.j()) {
            this.f13675d.append(eVarL.e(), true);
        }
        return eVarL;
    }

    private e l(androidx.palette.graphics.b bVar) {
        int size = this.f13672a.size();
        float f10 = 0.0f;
        e eVar = null;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar2 = (e) this.f13672a.get(i10);
            if (p(eVar2, bVar)) {
                float fD = d(eVar2, bVar);
                if (eVar == null || fD > f10) {
                    eVar = eVar2;
                    f10 = fD;
                }
            }
        }
        return eVar;
    }

    private boolean p(e eVar, androidx.palette.graphics.b bVar) {
        float[] fArrC = eVar.c();
        return fArrC[1] >= bVar.e() && fArrC[1] <= bVar.c() && fArrC[2] >= bVar.d() && fArrC[2] <= bVar.b() && !this.f13675d.get(eVar.e());
    }

    void c() {
        int size = this.f13673b.size();
        for (int i10 = 0; i10 < size; i10++) {
            androidx.palette.graphics.b bVar = (androidx.palette.graphics.b) this.f13673b.get(i10);
            bVar.k();
            this.f13674c.put(bVar, e(bVar));
        }
        this.f13675d.clear();
    }

    public e f() {
        return n(androidx.palette.graphics.b.f13701j);
    }

    public e g() {
        return n(androidx.palette.graphics.b.f13698g);
    }

    public int h(int i10) {
        e eVar = this.f13676e;
        return eVar != null ? eVar.e() : i10;
    }

    public e i() {
        return this.f13676e;
    }

    public e j() {
        return n(androidx.palette.graphics.b.f13699h);
    }

    public e k() {
        return n(androidx.palette.graphics.b.f13696e);
    }

    public e m() {
        return n(androidx.palette.graphics.b.f13700i);
    }

    public e n(androidx.palette.graphics.b bVar) {
        return (e) this.f13674c.get(bVar);
    }

    public e o() {
        return n(androidx.palette.graphics.b.f13697f);
    }
}
