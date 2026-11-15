package com.google.firebase.datastorage;

import androidx.datastore.core.g;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroidx/datastore/preferences/core/c;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroidx/datastore/preferences/core/c;"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1", f = "JavaDataStorage.kt", l = {145}, m = "invokeSuspend")
final class JavaDataStorage$putSync$1 extends SuspendLambda implements Function2<n0, Continuation<? super androidx.datastore.preferences.core.c>, Object> {
    final androidx.datastore.preferences.core.c.a $key;
    final Object $value;
    int label;
    final JavaDataStorage this$0;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$putSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        final androidx.datastore.preferences.core.c.a $key;
        final Object $value;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(androidx.datastore.preferences.core.c.a aVar, Object obj, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$key = aVar;
            this.$value = obj;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$key, this.$value, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(mutablePreferences, continuation)).invokeSuspend(Unit.f64096a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            ((MutablePreferences) this.L$0).i(this.$key, this.$value);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JavaDataStorage$putSync$1(JavaDataStorage javaDataStorage, androidx.datastore.preferences.core.c.a aVar, Object obj, Continuation<? super JavaDataStorage$putSync$1> continuation) {
        super(2, continuation);
        this.this$0 = javaDataStorage;
        this.$key = aVar;
        this.$value = obj;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new JavaDataStorage$putSync$1(this.this$0, this.$key, this.$value, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            g gVar = this.this$0.f30988e;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$key, this.$value, null);
            this.label = 1;
            obj = PreferencesKt.a(gVar, anonymousClass1, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return obj;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super androidx.datastore.preferences.core.c> continuation) {
        return ((JavaDataStorage$putSync$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
