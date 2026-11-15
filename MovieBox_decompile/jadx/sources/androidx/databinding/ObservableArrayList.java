package androidx.databinding;

import java.util.ArrayList;
import java.util.Collection;

public class ObservableArrayList<T> extends ArrayList<T> implements j {
    private transient h mListeners = new h();

    private void notifyAdd(int i10, int i11) {
        h hVar = this.mListeners;
        if (hVar != null) {
            hVar.p(this, i10, i11);
        }
    }

    private void notifyRemove(int i10, int i11) {
        h hVar = this.mListeners;
        if (hVar != null) {
            hVar.q(this, i10, i11);
        }
    }

    @Override
    public boolean add(T t10) {
        super.add(t10);
        notifyAdd(size() - 1, 1);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean addAll(Collection<? extends T> collection) {
        int size = size();
        boolean zAddAll = super.addAll(collection);
        if (zAddAll) {
            notifyAdd(size, size() - size);
        }
        return zAddAll;
    }

    public void addOnListChangedCallback(j.a aVar) {
        if (this.mListeners == null) {
            this.mListeners = new h();
        }
        this.mListeners.a(aVar);
    }

    @Override
    public void clear() {
        int size = size();
        super.clear();
        if (size != 0) {
            notifyRemove(0, size);
        }
    }

    @Override
    public T remove(int i10) {
        T t10 = (T) super.remove(i10);
        notifyRemove(i10, 1);
        return t10;
    }

    public void removeOnListChangedCallback(j.a aVar) {
        h hVar = this.mListeners;
        if (hVar != null) {
            hVar.j(aVar);
        }
    }

    @Override
    protected void removeRange(int i10, int i11) {
        super.removeRange(i10, i11);
        notifyRemove(i10, i11 - i10);
    }

    @Override
    public T set(int i10, T t10) {
        T t11 = (T) super.set(i10, t10);
        h hVar = this.mListeners;
        if (hVar != null) {
            hVar.o(this, i10, 1);
        }
        return t11;
    }

    @Override
    public void add(int i10, T t10) {
        super.add(i10, t10);
        notifyAdd(i10, 1);
    }

    @Override
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public boolean addAll(int i10, Collection<? extends T> collection) {
        boolean zAddAll = super.addAll(i10, collection);
        if (zAddAll) {
            notifyAdd(i10, collection.size());
        }
        return zAddAll;
    }
}
