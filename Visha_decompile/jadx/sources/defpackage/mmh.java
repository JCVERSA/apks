package defpackage;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

public abstract class mmh extends AbstractList implements npi {
    public boolean b;

    public mmh(boolean z) {
        this.b = z;
    }

    @Override
    public final boolean addAll(int i, Collection collection) {
        b();
        return super.addAll(i, collection);
    }

    public final void b() {
        if (this.b) {
            return;
        }
        c();
    }

    public final void c() {
        throw new UnsupportedOperationException();
    }

    @Override
    public final void clear() {
        b();
        super.clear();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public abstract Object remove(int i);

    @Override
    public final boolean remove(Object obj) {
        b();
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override
    public final boolean removeAll(Collection collection) {
        b();
        return super.removeAll(collection);
    }

    @Override
    public final boolean retainAll(Collection collection) {
        b();
        return super.retainAll(collection);
    }

    @Override
    public final void zzb() {
        if (this.b) {
            this.b = false;
        }
    }

    @Override
    public final boolean zzc() {
        return this.b;
    }

    @Override
    public boolean addAll(Collection collection) {
        b();
        return super.addAll(collection);
    }
}
