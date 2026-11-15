package com.transsion.playercommon.videomodel;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.data.Repository;
import com.transsion.dbdata.beans.LyricData;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.PlayListItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import com.transsion.dbdata.source.DataSourceScope;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.videomodel.PlayListModel;
import defpackage.ao;
import defpackage.k29;
import defpackage.mc7;
import defpackage.oa1;
import defpackage.rl8;
import defpackage.t74;
import defpackage.vb;
import defpackage.we6;
import defpackage.zf1;
import defpackage.zj7;
import java.util.List;

public class PlayListModel extends AndroidViewModel {
    public LiveData a;
    public LiveData b;
    public LiveData c;
    public LiveData d;
    public MutableLiveData e;
    public MutableLiveData f;
    public MutableLiveData g;
    public MutableLiveData h;
    public MutableLiveData i;
    public MutableLiveData j;
    public MutableLiveData k;
    public MutableLiveData l;
    public MutableLiveData m;
    public volatile List n;
    public MutableLiveData o;

    public class a implements zf1 {
        public a() {
        }

        @Override
        public void accept(LyricData lyricData) {
            PlayListModel.this.m.postValue(lyricData);
        }
    }

    public PlayListModel(@NonNull Application application) {
        super(application);
        this.e = new MutableLiveData();
        this.f = new MutableLiveData();
        this.g = new MutableLiveData();
        this.h = new MutableLiveData();
        this.i = new MutableLiveData();
        this.j = new MutableLiveData();
        this.k = new MutableLiveData();
        this.l = new MutableLiveData();
        this.m = new MutableLiveData();
        this.o = new MutableLiveData(Boolean.valueOf(Repository.INSTANCE.isLrcMode));
        flushPlayList();
    }

    public static LyricData o(int i, Integer num) {
        LyricData lyricDataR = ao.U().R(i);
        return lyricDataR == null ? new LyricData() : lyricDataR;
    }

    public void c(final int i, Context context) {
        mc7.K(Integer.valueOf(i)).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return PlayListModel.o(i, (Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new a());
    }

    public MutableLiveData d() {
        return this.e;
    }

    public MutableLiveData e() {
        return this.k;
    }

    public MutableLiveData f() {
        return this.h;
    }

    public void flushPlayList() {
        int iF = oa1.f();
        we6 we6VarE = we6.e();
        DataSourceScope dataSourceScope = DataSourceScope.AUDIO;
        this.a = we6VarE.q(dataSourceScope, zj7.c(new rl8.i(1, false, false, iF), PlayListItem.class));
        this.b = we6.e().q(dataSourceScope, zj7.c(new rl8.e(false), MediaPlayCount.class));
        this.c = we6.e().q(dataSourceScope, zj7.c(new rl8.c(false, iF), PlayListMediaItem.class));
        this.d = we6.e().q(dataSourceScope, zj7.c(new rl8.f(false, true, iF), PlayListMediaItem.class));
    }

    public MutableLiveData g() {
        return this.i;
    }

    public LiveData h() {
        return this.m;
    }

    public LiveData i() {
        return this.d;
    }

    public LiveData j() {
        return this.j;
    }

    public LiveData k() {
        return this.b;
    }

    public LiveData l() {
        return this.c;
    }

    public LiveData m() {
        return this.a;
    }

    public List n() {
        return this.n;
    }

    public void p(boolean z) {
        this.h.postValue(Boolean.valueOf(z));
    }

    public void q(boolean z) {
        this.j.postValue(Boolean.valueOf(z));
    }

    public void r(int i) {
        this.k.setValue(Integer.valueOf(i));
    }

    public void s(boolean z) {
        this.h.setValue(Boolean.valueOf(z));
    }

    public void t(boolean z) {
        this.f.setValue(Boolean.valueOf(z));
    }

    public void u(List list) {
        this.n = list;
    }
}
