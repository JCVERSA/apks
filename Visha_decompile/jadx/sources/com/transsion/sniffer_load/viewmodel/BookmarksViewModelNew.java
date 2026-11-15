package com.transsion.sniffer_load.viewmodel;

import android.app.Application;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.LiveData;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.database.BookmarkDatabase;
import com.transsion.sniffer_load.viewmodel.BookmarksViewModelNew;
import defpackage.ig0;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;

public class BookmarksViewModelNew extends AndroidViewModel {
    public LiveData a;
    public final ig0 b;

    public BookmarksViewModelNew(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        ig0 ig0VarA = BookmarkDatabase.c(application).a();
        this.b = ig0VarA;
        this.a = ig0VarA.getAll();
    }

    public static void k(Boolean bool) {
    }

    public static void m(Boolean bool) {
    }

    public static void o(Boolean bool) {
    }

    public void g(final Bookmark bookmark, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.j(bookmark, (BookmarksViewModelNew) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModelNew.k((Boolean) obj);
            }
        });
    }

    public void h(final long j, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.l(j, (BookmarksViewModelNew) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModelNew.m((Boolean) obj);
            }
        });
    }

    public LiveData i() {
        return this.a;
    }

    public final Boolean j(Bookmark bookmark, BookmarksViewModelNew bookmarksViewModelNew) {
        this.b.insertItem(bookmark);
        return Boolean.TRUE;
    }

    public final Boolean l(long j, BookmarksViewModelNew bookmarksViewModelNew) {
        this.b.deleteItemById(j);
        return Boolean.TRUE;
    }

    public final Boolean n(Bookmark bookmark, BookmarksViewModelNew bookmarksViewModelNew) {
        this.b.updateItem(bookmark);
        return Boolean.TRUE;
    }

    public void p(final Bookmark bookmark, BaseActivity baseActivity) {
        mc7.K(this).g(baseActivity.bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.n(bookmark, (BookmarksViewModelNew) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                BookmarksViewModelNew.o((Boolean) obj);
            }
        });
    }
}
