package com.google.firebase.datastorage;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\n"}, d2 = {"T", "Lkotlinx/coroutines/n0;", "<anonymous>"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$getSync$1", f = "JavaDataStorage.kt", l = {104}, m = "invokeSuspend")
final class JavaDataStorage$getSync$1 extends SuspendLambda implements Function2<n0, Continuation<Object>, Object> {
    final Object $defaultValue;
    final androidx.datastore.preferences.core.c.a $key;
    int label;
    final JavaDataStorage this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JavaDataStorage$getSync$1(JavaDataStorage javaDataStorage, androidx.datastore.preferences.core.c.a aVar, Object obj, Continuation<? super JavaDataStorage$getSync$1> continuation) {
        super(2, continuation);
        this.this$0 = javaDataStorage;
        this.$key = aVar;
        this.$defaultValue = obj;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new JavaDataStorage$getSync$1(this.this$0, this.$key, this.$defaultValue, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objB;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.a data = this.this$0.f30988e.getData();
            this.label = 1;
            obj = kotlinx.coroutines.flow.c.q(data, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        androidx.datastore.preferences.core.c cVar = (androidx.datastore.preferences.core.c) obj;
        return (cVar == null || (objB = cVar.b(this.$key)) == null) ? this.$defaultValue : objB;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<Object> continuation) {
        return ((JavaDataStorage$getSync$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
