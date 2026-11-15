package com.transsion.upload.auth;

import com.transsion.upload.bean.TstTokenEntity;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import uu.b;
import uu.c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.transsion.upload.auth.AuthCheckManager$requestAuth$1", f = "AuthCheckManager.kt", l = {105}, m = "invokeSuspend")
final class AuthCheckManager$requestAuth$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final a $callBack;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AuthCheckManager$requestAuth$1(a aVar, Continuation<? super AuthCheckManager$requestAuth$1> continuation) {
        super(2, continuation);
        this.$callBack = aVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AuthCheckManager$requestAuth$1(this.$callBack, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Unit unit;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                final a aVar = this.$callBack;
                Result.Companion companion = Result.INSTANCE;
                b bVarC = c.f73250a.c();
                if (bVarC != null) {
                    Function1<TstTokenEntity, Unit> function1 = new Function1<TstTokenEntity, Unit>() {
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj2) {
                            invoke((TstTokenEntity) obj2);
                            return Unit.f64096a;
                        }

                        public final void invoke(TstTokenEntity tstTokenEntity) {
                            if (tstTokenEntity != null) {
                                a aVar2 = aVar;
                                wu.a aVar3 = wu.a.f74770a;
                                AuthCheckManager authCheckManager = AuthCheckManager.f54559a;
                                aVar3.b(authCheckManager.g() + " --> requestAuth() --> tstToken = " + AuthCheckManager.f54560b);
                                if (aVar2 != null) {
                                    aVar2.a(tstTokenEntity);
                                }
                                authCheckManager.i();
                            }
                        }
                    };
                    Function1<String, Unit> function2 = new Function1<String, Unit>() {
                        {
                            super(1);
                        }

                        @Override
                        public Object invoke(Object obj2) {
                            invoke((String) obj2);
                            return Unit.f64096a;
                        }

                        public final void invoke(String str) {
                            wu.a aVar2 = wu.a.f74770a;
                            AuthCheckManager authCheckManager = AuthCheckManager.f54559a;
                            aVar2.c(authCheckManager.g() + " --> requestAuth() --> it = " + str);
                            AuthCheckManager.f54560b = null;
                            a aVar3 = aVar;
                            if (aVar3 != null) {
                                aVar3.onFail(str);
                            }
                            authCheckManager.i();
                        }
                    };
                    this.label = 1;
                    if (bVarC.f(function1, function2, this) == objF) {
                        return objF;
                    }
                } else {
                    unit = null;
                }
                Result.m453constructorimpl(unit);
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            unit = Unit.f64096a;
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AuthCheckManager$requestAuth$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
