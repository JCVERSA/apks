package com.bytedance.adsdk.ugeno.Dq;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

public abstract class sP {
    private final DataSetObservable Sj = new DataSetObservable();
    private DataSetObserver sP;

    public float Sj(int i10) {
        return 1.0f;
    }

    public abstract int Sj();

    public abstract boolean Sj(View view, Object obj);

    public void TKC() {
        synchronized (this) {
            try {
                DataSetObserver dataSetObserver = this.sP;
                if (dataSetObserver != null) {
                    dataSetObserver.onChanged();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.Sj.notifyChanged();
    }

    public Parcelable sP() {
        return null;
    }

    public int Sj(Object obj) {
        return -1;
    }

    public Object Sj(ViewGroup viewGroup, int i10) {
        return Sj((View) viewGroup, i10);
    }

    public void Sj(ViewGroup viewGroup, int i10, Object obj) {
        Sj((View) viewGroup, i10, obj);
    }

    @Deprecated
    public Object Sj(View view, int i10) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    @Deprecated
    public void Sj(View view, int i10, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    void Sj(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.sP = dataSetObserver;
        }
    }
}
