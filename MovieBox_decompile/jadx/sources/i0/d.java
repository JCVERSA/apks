package i0;

import android.content.res.Configuration;
import android.content.res.Resources;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private final HashMap f61591a = new HashMap();

    public static final class a {

        private final androidx.compose.ui.graphics.vector.c f61592a;

        private final int f61593b;

        public a(androidx.compose.ui.graphics.vector.c cVar, int i10) {
            this.f61592a = cVar;
            this.f61593b = i10;
        }

        public final int a() {
            return this.f61593b;
        }

        public final androidx.compose.ui.graphics.vector.c b() {
            return this.f61592a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Intrinsics.c(this.f61592a, aVar.f61592a) && this.f61593b == aVar.f61593b;
        }

        public int hashCode() {
            return (this.f61592a.hashCode() * 31) + this.f61593b;
        }

        public String toString() {
            return "ImageVectorEntry(imageVector=" + this.f61592a + ", configFlags=" + this.f61593b + ')';
        }
    }

    public static final class b {

        private final Resources.Theme f61594a;

        private final int f61595b;

        public b(Resources.Theme theme, int i10) {
            this.f61594a = theme;
            this.f61595b = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f61594a, bVar.f61594a) && this.f61595b == bVar.f61595b;
        }

        public int hashCode() {
            return (this.f61594a.hashCode() * 31) + this.f61595b;
        }

        public String toString() {
            return "Key(theme=" + this.f61594a + ", id=" + this.f61595b + ')';
        }
    }

    public final void a() {
        this.f61591a.clear();
    }

    public final a b(b bVar) {
        WeakReference weakReference = (WeakReference) this.f61591a.get(bVar);
        if (weakReference != null) {
            return (a) weakReference.get();
        }
        return null;
    }

    public final void c(int i10) {
        Iterator it = this.f61591a.entrySet().iterator();
        while (it.hasNext()) {
            a aVar = (a) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
            if (aVar == null || Configuration.needNewResources(i10, aVar.a())) {
                it.remove();
            }
        }
    }

    public final void d(b bVar, a aVar) {
        this.f61591a.put(bVar, new WeakReference(aVar));
    }
}
