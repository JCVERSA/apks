package com.google.firebase.datastorage;

import androidx.datastore.preferences.core.Preferences;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import java.util.Map;
import kotlin.Metadata;
import kotlin.c;
import kotlin.collections.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0004\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lnk1;", "", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "<anonymous>", "(Lnk1;)Ljava/util/Map;"}, k = 3, mv = {2, 0, 0})
@nt1(c = "com.google.firebase.datastorage.JavaDataStorage$getAllSync$1", f = "JavaDataStorage.kt", l = {170}, m = "invokeSuspend")
public final class JavaDataStorage$getAllSync$1 extends SuspendLambda implements s74 {
    int label;
    final JavaDataStorage this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$getAllSync$1(JavaDataStorage javaDataStorage, wh1<? super JavaDataStorage$getAllSync$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = javaDataStorage;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new JavaDataStorage$getAllSync$1(this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super Map<Preferences.Key<?>, ? extends Object>> wh1Var) {
        return ((JavaDataStorage$getAllSync$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Map<Preferences.Key<?>, Object> mapAsMap;
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            nz3 data = this.this$0.e.getData();
            this.label = 1;
            obj = sz3.q(data, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
        }
        Preferences preferences = (Preferences) obj;
        return (preferences == null || (mapAsMap = preferences.asMap()) == null) ? a.l() : mapAsMap;
    }
}
