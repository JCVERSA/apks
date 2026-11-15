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
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"T", "Lnk1;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@nt1(c = "com.google.firebase.datastorage.JavaDataStorage$getSync$1", f = "JavaDataStorage.kt", l = {104}, m = "invokeSuspend")
public final class JavaDataStorage$getSync$1 extends SuspendLambda implements s74 {
    final Object $defaultValue;
    final Preferences.Key<Object> $key;
    int label;
    final JavaDataStorage this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaDataStorage$getSync$1(JavaDataStorage javaDataStorage, Preferences.Key<Object> key, Object obj, wh1<? super JavaDataStorage$getSync$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = javaDataStorage;
        this.$key = key;
        this.$defaultValue = obj;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new JavaDataStorage$getSync$1(this.this$0, this.$key, this.$defaultValue, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<Object> wh1Var) {
        return ((JavaDataStorage$getSync$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object obj2;
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
        return (preferences == null || (obj2 = preferences.get(this.$key)) == null) ? this.$defaultValue : obj2;
    }
}
