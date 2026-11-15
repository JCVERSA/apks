package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;

public final class g {

    private final androidx.collection.x f4679a;

    private final y f4680b;

    private boolean f4681c;

    public g(androidx.collection.x xVar, y yVar) {
        this.f4679a = xVar;
        this.f4680b = yVar;
    }

    public final boolean a(long j10) {
        Object obj;
        List listB = this.f4680b.b();
        int size = listB.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                obj = null;
                break;
            }
            obj = listB.get(i10);
            if (v.d(((z) obj).d(), j10)) {
                break;
            }
            i10++;
        }
        z zVar = (z) obj;
        if (zVar != null) {
            return zVar.a();
        }
        return false;
    }

    public final androidx.collection.x b() {
        return this.f4679a;
    }

    public final MotionEvent c() {
        return this.f4680b.a();
    }

    public final boolean d() {
        return this.f4681c;
    }

    public final void e(boolean z10) {
        this.f4681c = z10;
    }
}
