package com.transsion.playercommon.gallery;

import android.app.Application;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.AndroidViewModel;
import androidx.p004lifecycle.MutableLiveData;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.gallery.ImageViewModel;
import defpackage.ad4;
import defpackage.k29;
import defpackage.mc7;
import defpackage.ne6;
import defpackage.t74;
import defpackage.vb;
import defpackage.zf1;
import java.util.List;

public class ImageViewModel extends AndroidViewModel {
    public MutableLiveData a;
    public MutableLiveData b;

    public ImageViewModel(@NonNull Application application) {
        super(application);
        this.a = new MutableLiveData();
        this.b = new MutableLiveData();
    }

    public static ne6 g(Context context, long j, boolean z, ImageViewModel imageViewModel) {
        return ad4.k(context, j, z);
    }

    public static List i(Context context, ImageViewModel imageViewModel) {
        return ad4.j(context);
    }

    public MutableLiveData e() {
        return this.b;
    }

    public MutableLiveData f() {
        return this.a;
    }

    public final void h(ne6 ne6Var) {
        this.b.setValue(ne6Var);
    }

    public final void j(List list) {
        this.a.setValue(list);
    }

    public void k(final Context context, final long j, final boolean z) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ImageViewModel.g(context, j, z, (ImageViewModel) obj);
            }
        }).M(vb.a()).d0(k29.c()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.h((ne6) obj);
            }
        });
    }

    public void l(final Context context) {
        mc7.K(this).g(((BaseActivity) context).bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return ImageViewModel.i(context, (ImageViewModel) obj);
            }
        }).M(vb.a()).d0(k29.c()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.j((List) obj);
            }
        });
    }
}
