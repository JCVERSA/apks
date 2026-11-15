package kotlin.reflect.jvm.internal.impl.types.model;

import defpackage.gbb;
import defpackage.hbb;
import java.util.ArrayList;

public final class ArgumentList extends ArrayList<hbb> implements gbb {
    public ArgumentList(int i) {
        super(i);
    }

    public boolean contains(hbb hbbVar) {
        return super.contains((Object) hbbVar);
    }

    public int getSize() {
        return super.size();
    }

    public int indexOf(hbb hbbVar) {
        return super.indexOf((Object) hbbVar);
    }

    public int lastIndexOf(hbb hbbVar) {
        return super.lastIndexOf((Object) hbbVar);
    }

    public boolean remove(hbb hbbVar) {
        return super.remove((Object) hbbVar);
    }

    @Override
    public final int size() {
        return getSize();
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof hbb) {
            return contains((hbb) obj);
        }
        return false;
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof hbb) {
            return indexOf((hbb) obj);
        }
        return -1;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof hbb) {
            return lastIndexOf((hbb) obj);
        }
        return -1;
    }

    @Override
    public final boolean remove(Object obj) {
        if (obj instanceof hbb) {
            return remove((hbb) obj);
        }
        return false;
    }
}
