package com.transsion.sniffer_load.viewmodel;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.data.ReviewHistory;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.viewmodel.HistoryViewModel;
import defpackage.dv8;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

public class HistoryViewModel extends AndroidViewModel {
    public LiveData a;
    public dv8 b;

    public HistoryViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        dv8 dv8VarD = BookmarkDatabase.c(application).d();
        this.b = dv8VarD;
        this.a = dv8VarD.getAllByDESC();
        s();
    }

    public static void l(Boolean bool) {
    }

    public static void n(Boolean bool) {
    }

    public void h(BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.k((HistoryViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                HistoryViewModel.l((Boolean) obj);
            }
        });
    }

    public void i(final List list, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.m(list, (HistoryViewModel) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                HistoryViewModel.n((Boolean) obj);
            }
        });
    }

    public LiveData j() {
        return this.a;
    }

    public final Boolean k(HistoryViewModel historyViewModel) {
        this.b.deleteAll();
        return Boolean.TRUE;
    }

    public final Boolean m(List list, HistoryViewModel historyViewModel) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.b.deleteItem(((ReviewHistory) it.next()).id);
        }
        return Boolean.TRUE;
    }

    public final byte[] o(long j) {
        return this.b.getBitmapById(j);
    }

    public final Boolean q() {
        this.b.trimExcessHistory();
        return Boolean.TRUE;
    }

    public void r(final long j, BaseActivity baseActivity, final zf1 zf1Var) {
        if (j <= 0 || zf1Var == null) {
            return;
        }
        mc7.D(new Callable() {
            @Override
            public final Object call() {
                return this.b.o(j);
            }
        }).g(baseActivity.bindToLifecycle()).d0(k29.c()).M(vb.a()).a0(zf1Var, new zf1() {
            @Override
            public final void accept(Object obj) {
                zf1Var.accept(null);
            }
        });
    }

    public final void s() {
        mc7.D(new Callable() {
            @Override
            public final Object call() {
                return this.b.q();
            }
        }).d0(k29.c()).Y();
    }
}
