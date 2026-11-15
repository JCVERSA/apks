package com.transsion;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import defpackage.ka2;
import defpackage.woc;

public class WindowInfoViewModel extends AndroidViewModel {
    public MutableLiveData a;
    public MutableLiveData b;
    public MutableLiveData c;
    public MutableLiveData d;
    public MutableLiveData e;
    public MutableLiveData f;
    public MutableLiveData g;
    public MutableLiveData h;
    public MutableLiveData i;
    public MutableLiveData j;

    public WindowInfoViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.b = new MutableLiveData();
        this.c = new MutableLiveData();
        this.d = new MutableLiveData();
        this.e = new MutableLiveData();
        this.f = new MutableLiveData();
        this.g = new MutableLiveData();
        this.h = new MutableLiveData();
        this.i = new MutableLiveData();
        this.j = new MutableLiveData();
        this.g.setValue(new int[]{0, 0});
        this.j.setValue(0);
    }

    public final woc a(woc wocVar) {
        if (ka2.a() && wocVar.a == 1) {
            if (wocVar.k <= 15) {
                this.b.setValue(0);
                wocVar.a = 0;
            } else {
                this.b.setValue(3);
                wocVar.a = 3;
            }
        }
        return wocVar;
    }

    public final boolean b(woc wocVar) {
        if (wocVar == null) {
            return true;
        }
        int i = wocVar.a;
        return !(i == 2 || i == 3) || wocVar.c || wocVar.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c(woc wocVar) {
        this.i.setValue(Boolean.valueOf(b(wocVar)));
        if (this.b.getValue() == 0 || ((Integer) this.b.getValue()).intValue() != wocVar.a) {
            this.b.setValue(Integer.valueOf(a(wocVar).a));
        }
        if (this.c.getValue() == 0 || !((Boolean) this.c.getValue()).equals(Boolean.valueOf(wocVar.c))) {
            this.c.setValue(Boolean.valueOf(wocVar.c));
        }
        if (this.d.getValue() == 0 || !((Boolean) this.d.getValue()).equals(Boolean.valueOf(wocVar.f))) {
            this.d.setValue(Boolean.valueOf(wocVar.f));
        }
        if (this.e.getValue() == 0 || !((Boolean) this.e.getValue()).equals(Boolean.valueOf(wocVar.h))) {
            this.e.setValue(Boolean.valueOf(wocVar.h));
        }
        if (this.f.getValue() == 0 || !((Boolean) this.f.getValue()).equals(Boolean.valueOf(wocVar.g))) {
            this.f.setValue(Boolean.valueOf(wocVar.g));
        }
        if (this.g.getValue() == 0 || ((int[]) this.g.getValue())[0] != wocVar.i || ((int[]) this.g.getValue())[1] != wocVar.j) {
            this.g.setValue(new int[]{wocVar.i, wocVar.j});
        }
        if (this.h.getValue() == 0 || ((Integer) this.h.getValue()).intValue() != wocVar.k) {
            this.h.setValue(Integer.valueOf(wocVar.k));
        }
        this.a.setValue(a(wocVar));
    }
}
