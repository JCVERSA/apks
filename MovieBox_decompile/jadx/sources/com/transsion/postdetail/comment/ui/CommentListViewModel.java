package com.transsion.postdetail.comment.ui;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

public final class CommentListViewModel extends androidx.p009lifecycle.b {

    private final Lazy f46786b;

    private final b0 f46787c;

    private final List f46788d;

    private String f46789e;

    private int f46790f;

    private boolean f46791g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommentListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f46786b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return CommentListViewModel.j();
            }
        });
        this.f46787c = new b0();
        this.f46788d = new ArrayList();
        this.f46789e = "1";
        this.f46790f = 20;
        this.f46791g = true;
    }

    public static final ao.a j() {
        return (ao.a) kg.c.f63982e.a().h(ao.a.class);
    }

    public final ao.a l() {
        return (ao.a) this.f46786b.getValue();
    }

    public final void k(boolean z10) {
        if (z10) {
            this.f46789e = "1";
            this.f46788d.clear();
            this.f46791g = true;
        }
        k.d(u0.a(this), null, null, new CommentListViewModel$getCommentList$1(this, null), 3, null);
    }

    public final b0 m() {
        return this.f46787c;
    }

    public final boolean n() {
        return this.f46791g;
    }
}
