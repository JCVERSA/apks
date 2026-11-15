package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

abstract class c extends AbstractList implements w.d {

    private boolean f8425a;

    c(boolean z10) {
        this.f8425a = z10;
    }

    protected void a() {
        if (!this.f8425a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override
    public boolean addAll(Collection collection) {
        a();
        return super.addAll(collection);
    }

    @Override
    public void clear() {
        a();
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
        for (int i10 = 0; i10 < size; i10++) {
            if (!get(i10).equals(list.get(i10))) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode = (iHashCode * 31) + get(i10).hashCode();
        }
        return iHashCode;
    }

    @Override
    public boolean isModifiable() {
        return this.f8425a;
    }

    @Override
    public final void makeImmutable() {
        if (this.f8425a) {
            this.f8425a = false;
        }
    }

    @Override
    public abstract Object remove(int i10);

    @Override
    public boolean remove(Object obj) {
        a();
        int iIndexOf = indexOf(obj);
        if (iIndexOf == -1) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override
    public boolean removeAll(Collection collection) {
        a();
        return super.removeAll(collection);
    }

    @Override
    public boolean retainAll(Collection collection) {
        a();
        return super.retainAll(collection);
    }

    @Override
    public boolean addAll(int i10, Collection collection) {
        a();
        return super.addAll(i10, collection);
    }
}
