package defpackage;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public final class r3i extends AbstractCollection {
    public final s3i b;

    public r3i(s3i s3iVar) {
        this.b = s3iVar;
    }

    @Override
    public final void clear() {
        this.b.zzp();
    }

    @Override
    public final boolean contains(Object obj) {
        Iterator it = this.b.zzs().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final Iterator iterator() {
        return this.b.zzg();
    }

    @Override
    public final int size() {
        return this.b.zze();
    }
}
