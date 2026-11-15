package com.google.firebase.datastorage;

import androidx.datastore.core.g;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "Landroidx/datastore/preferences/core/c;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Landroidx/datastore/preferences/core/c;"}, k = 3, mv = {2, 0, 0})
@DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1", f = "JavaDataStorage.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE}, m = "invokeSuspend")
final class JavaDataStorage$editSync$1 extends SuspendLambda implements Function2<n0, Continuation<? super androidx.datastore.preferences.core.c>, Object> {
    final Function1<MutablePreferences, Unit> $transform;
    int label;
    final JavaDataStorage this$0;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @DebugMetadata(c = "com.google.firebase.datastorage.JavaDataStorage$editSync$1$1", f = "JavaDataStorage.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        final Function1<MutablePreferences, Unit> $transform;
        Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super MutablePreferences, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$transform = function1;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, continuation);
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
            this.$transform.invoke((MutablePreferences) this.L$0);
            return Unit.f64096a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    JavaDataStorage$editSync$1(JavaDataStorage javaDataStorage, Function1<? super MutablePreferences, Unit> function1, Continuation<? super JavaDataStorage$editSync$1> continuation) {
        super(2, continuation);
        this.this$0 = javaDataStorage;
        this.$transform = function1;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new JavaDataStorage$editSync$1(this.this$0, this.$transform, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                if (Intrinsics.c(this.this$0.f30986c.get(), Boxing.a(true))) {
                    throw new IllegalStateException("Don't call JavaDataStorage.edit() from within an existing edit() callback.\nThis causes deadlocks, and is generally indicative of a code smell.\nInstead, either pass around the initial `MutablePreferences` instance, or don't do everything in a single callback. ");
                }
                this.this$0.f30986c.set(Boxing.a(true));
                g gVar = this.this$0.f30988e;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$transform, null);
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
            androidx.datastore.preferences.core.c cVar = (androidx.datastore.preferences.core.c) obj;
            this.this$0.f30986c.set(Boxing.a(false));
            return cVar;
        } catch (Throwable th2) {
            this.this$0.f30986c.set(Boxing.a(false));
            throw th2;
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super androidx.datastore.preferences.core.c> continuation) {
        return ((JavaDataStorage$editSync$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
