package af;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class c {

    protected com.google.zxing.j f301a;

    protected r f302b;

    private final int f303c = 2;

    public c(com.google.zxing.j jVar, r rVar) {
        this.f301a = jVar;
        this.f302b = rVar;
    }

    public static List f(List list, r rVar) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(rVar.f((com.google.zxing.k) it.next()));
        }
        return arrayList;
    }

    public BarcodeFormat a() {
        return this.f301a.b();
    }

    public Bitmap b() {
        return this.f302b.b(null, 2);
    }

    public byte[] c() {
        return this.f301a.c();
    }

    public Map d() {
        return this.f301a.d();
    }

    public String e() {
        return this.f301a.f();
    }

    public String toString() {
        return this.f301a.f();
    }
}
