package av;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {

    private Reference f15445a;

    public final void a(Object obj) {
        this.f15445a = new WeakReference(obj);
    }

    public void b() {
        Reference reference = this.f15445a;
        if (reference != null) {
            Intrinsics.e(reference);
            reference.clear();
            this.f15445a = null;
        }
    }

    protected final Object c() {
        Reference reference = this.f15445a;
        if (reference == null) {
            return null;
        }
        Intrinsics.e(reference);
        return reference.get();
    }

    protected final boolean d() {
        Reference reference = this.f15445a;
        if (reference != null) {
            Intrinsics.e(reference);
            if (reference.get() != null) {
                return true;
            }
        }
        return false;
    }
}
