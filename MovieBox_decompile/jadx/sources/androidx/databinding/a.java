package androidx.databinding;

import androidx.annotation.NonNull;

public class a implements i {
    private transient l mCallbacks;

    @Override
    public void addOnPropertyChangedCallback(@NonNull i.a aVar) {
        synchronized (this) {
            try {
                if (this.mCallbacks == null) {
                    this.mCallbacks = new l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.mCallbacks.a(aVar);
    }

    public void notifyChange() {
        synchronized (this) {
            try {
                l lVar = this.mCallbacks;
                if (lVar == null) {
                    return;
                }
                lVar.d(this, 0, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void notifyPropertyChanged(int i10) {
        synchronized (this) {
            try {
                l lVar = this.mCallbacks;
                if (lVar == null) {
                    return;
                }
                lVar.d(this, i10, null);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void removeOnPropertyChangedCallback(@NonNull i.a aVar) {
        synchronized (this) {
            try {
                l lVar = this.mCallbacks;
                if (lVar == null) {
                    return;
                }
                lVar.j(aVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
