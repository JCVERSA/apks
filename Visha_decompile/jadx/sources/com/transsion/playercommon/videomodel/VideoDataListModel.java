package com.transsion.playercommon.videomodel;

import android.app.Application;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import defpackage.gd1;
import defpackage.k29;
import defpackage.ls1;
import defpackage.mc7;
import defpackage.pp3;
import defpackage.tpb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;

public class VideoDataListModel extends AndroidViewModel {
    public final gd1 a;
    public MutableLiveData b;
    public MutableLiveData c;
    public MutableLiveData d;
    public MutableLiveData e;

    public VideoDataListModel(@NonNull Application application) {
        super(application);
        this.a = new gd1();
        this.b = new MutableLiveData();
        this.c = new MutableLiveData();
        this.d = new MutableLiveData();
        this.e = new MutableLiveData();
    }

    public List d() {
        return (List) this.c.getValue();
    }

    public List e() {
        return (List) this.b.getValue();
    }

    public List f() {
        return (List) this.d.getValue();
    }

    public List g() {
        return (List) this.e.getValue();
    }

    public final Boolean h() {
        boolean zE = pp3.e(getApplication());
        ArrayList arrayList = new ArrayList();
        if (zE) {
            arrayList.addAll(tpb.j0().r(30));
        } else {
            arrayList.addAll(tpb.j0().U(30));
        }
        ls1.a(arrayList);
        m(arrayList);
        Log.d("VideoDataListModel", "preloadAllVideoDataList " + arrayList.size());
        if (zE) {
            ArrayList arrayList2 = new ArrayList(tpb.j0().e0(30));
            ls1.a(arrayList2);
            l(arrayList2);
            Log.d("VideoDataListModel", "preloadAllShortVideoDataList " + arrayList2.size());
        }
        ArrayList arrayList3 = new ArrayList(tpb.j0().O(false, 30, true));
        n(arrayList3);
        Log.d("VideoDataListModel", "preloadAllVideoHistoryStates " + arrayList3.size());
        return Boolean.TRUE;
    }

    public void k() {
        this.a.b(mc7.D(new Callable() {
            @Override
            public final Object call() {
                return this.b.h();
            }
        }).d0(k29.c()).a0(new zf1() {
            @Override
            public final void accept(Object obj) {
                Log.d("VideoDataListModel", "preloadAllVideoDataList end");
            }
        }, new zf1() {
            @Override
            public final void accept(Object obj) {
                Log.e("VideoDataListModel", "preloadAllAudioDataList failed: ", (Throwable) obj);
            }
        }));
    }

    public void l(List list) {
        this.c.postValue(list);
    }

    public void m(List list) {
        this.b.postValue(list);
    }

    public void n(List list) {
        this.d.postValue(list);
    }

    public void o(List list) {
        this.e.setValue(list);
    }

    @Override
    public void onCleared() {
        super.onCleared();
        Log.d("VideoDataListModel", "onCleared");
        gd1 gd1Var = this.a;
        if (gd1Var != null) {
            gd1Var.d();
        }
    }
}
