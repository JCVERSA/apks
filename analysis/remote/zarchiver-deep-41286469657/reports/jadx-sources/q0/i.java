package q0;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public final class i {

    public final int f1416b;

    public int f1417c = 0;

    public final LinkedHashMap<Integer, e.a> f1415a = new LinkedHashMap<>(0, 0.75f, true);

    public i(int i2) {
        this.f1416b = i2;
    }

    public static int c(e.a aVar) {
        Bitmap bitmap = aVar.f1379a;
        if (bitmap != null) {
            return 1024 + (Build.VERSION.SDK_INT < 19 ? bitmap.getByteCount() : bitmap.getAllocationByteCount());
        }
        return 1024;
    }

    public final synchronized void a() {
        this.f1415a.clear();
        this.f1417c = 0;
    }

    public final synchronized e.a b(Integer num) {
        return this.f1415a.get(num);
    }

    public final void d(Integer num, e.a aVar) {
        synchronized (this) {
            e.a aVarPut = this.f1415a.put(num, aVar);
            int iC = this.f1417c + c(aVar);
            this.f1417c = iC;
            if (aVarPut != null) {
                this.f1417c = iC - c(aVarPut);
            }
        }
        f(this.f1416b);
    }

    public final synchronized void e(Integer num) {
        e.a aVarRemove = this.f1415a.remove(num);
        if (aVarRemove != null) {
            this.f1417c -= c(aVarRemove);
        }
    }

    public final void f(int i2) {
        while (this.f1417c > i2) {
            synchronized (this) {
                Iterator<Integer> it = this.f1415a.keySet().iterator();
                if (!it.hasNext()) {
                    this.f1417c = 0;
                    return;
                }
                e(it.next());
            }
        }
    }

    public final void g() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = null;
            for (Map.Entry<Integer, e.a> entry : this.f1415a.entrySet()) {
                e.a value = entry.getValue();
                if (value != null && value.f1382d != 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(entry.getKey());
                }
            }
        }
        if (arrayList == null) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            e((Integer) it.next());
        }
    }
}
