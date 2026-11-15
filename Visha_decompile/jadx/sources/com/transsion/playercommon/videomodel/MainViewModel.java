package com.transsion.playercommon.videomodel;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.playercommon.core.MainApp;

public class MainViewModel extends AndroidViewModel {
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
    public MutableLiveData k;
    public MutableLiveData l;

    public MainViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.b = new MutableLiveData();
        this.c = new MutableLiveData();
        this.d = new MutableLiveData();
        this.e = new MutableLiveData(0);
        this.f = new MutableLiveData();
        Boolean bool = Boolean.FALSE;
        this.g = new MutableLiveData(bool);
        this.h = new MutableLiveData(Boolean.valueOf(MainApp.l));
        this.i = new MutableLiveData(Boolean.valueOf(MainApp.q));
        this.j = new MutableLiveData(bool);
        this.k = new MutableLiveData(bool);
        this.l = new MutableLiveData(bool);
        this.a.setValue(bool);
        this.b.setValue(0);
        this.c.setValue(Boolean.TRUE);
        this.d.setValue(bool);
        this.f.setValue(bool);
        this.h.setValue(Boolean.valueOf(MainApp.l));
        this.k.setValue(bool);
    }
}
