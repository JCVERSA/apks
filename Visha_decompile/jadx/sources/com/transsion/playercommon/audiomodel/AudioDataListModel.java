package com.transsion.playercommon.audiomodel;

import android.app.Application;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import defpackage.ao;
import defpackage.gd1;
import defpackage.k29;
import defpackage.mc7;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class AudioDataListModel extends AndroidViewModel {
    public final gd1 a;
    public MutableLiveData b;

    public AudioDataListModel(@NonNull Application application) {
        super(application);
        this.a = new gd1();
        this.b = new MutableLiveData();
    }

    public List d() {
        return (List) this.b.getValue();
    }

    public final Boolean e() {
        i(new ArrayList(ao.U().k0()));
        return Boolean.TRUE;
    }

    public void h() {
        this.a.b(mc7.D(new Callable() {
            @Override
            public final Object call() {
                return this.b.e();
            }
        }).d0(k29.c()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                Log.d("AudioDataListModel", "preloadAllAudioDataList end");
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                Log.e("AudioDataListModel", "preloadAllAudioDataList failed: ", (Throwable) obj);
            }
        }));
    }

    public void i(List list) {
        this.b.postValue(list);
    }

    @Override
    public void onCleared() {
        super.onCleared();
        gd1 gd1Var = this.a;
        if (gd1Var != null) {
            gd1Var.d();
        }
    }
}
