package kotlinx.coroutines.flow;

import com.hunantv.media.drm.IDrmSession;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import defpackage.gx9;
import defpackage.kw6;
import defpackage.lg9;
import defpackage.mk0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 0, 0})
@nt1(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1", f = "Share.kt", l = {210, 214, IDrmSession.ERROR_SESSION_PROVISION_ERROR_WASABI_ERROR, TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_WAKE}, m = "invokeSuspend")
public final class FlowKt__ShareKt$launchSharing$1 extends SuspendLambda implements s74 {
    final Object $initialValue;
    final kw6 $shared;
    final a $started;
    final nz3 $upstream;
    int label;

    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
    @nt1(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$1", f = "Share.kt", l = {}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        int I$0;
        int label;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(wh1Var);
            anonymousClass1.I$0 = ((Number) obj).intValue();
            return anonymousClass1;
        }

        public final Object invoke(int i, wh1<? super Boolean> wh1Var) {
            return ((AnonymousClass1) create(Integer.valueOf(i), wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            z45.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c.b(obj);
            return mk0.a(this.I$0 > 0);
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return invoke(((Number) obj).intValue(), (wh1<? super Boolean>) obj2);
        }
    }

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/flow/SharingCommand;", "it", "Lzfb;", "<anonymous>", "(Lkotlinx/coroutines/flow/SharingCommand;)V"}, k = 3, mv = {2, 0, 0})
    @nt1(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharing$1$2", f = "Share.kt", l = {TranSceneConfig.SCENE_TYPE_VOICE_ASSISTANT_EYES}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final Object $initialValue;
        final kw6 $shared;
        final nz3 $upstream;
        Object L$0;
        int label;

        public class a {
            public static final int[] a;

            static {
                int[] iArr = new int[SharingCommand.values().length];
                try {
                    iArr[SharingCommand.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[SharingCommand.STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[SharingCommand.STOP_AND_RESET_REPLAY_CACHE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(nz3 nz3Var, kw6 kw6Var, Object obj, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$upstream = nz3Var;
            this.$shared = kw6Var;
            this.$initialValue = obj;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$upstream, this.$shared, this.$initialValue, wh1Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                int i2 = a.a[((SharingCommand) this.L$0).ordinal()];
                if (i2 == 1) {
                    nz3 nz3Var = this.$upstream;
                    kw6 kw6Var = this.$shared;
                    this.label = 1;
                    if (nz3Var.collect(kw6Var, this) == objF) {
                        return objF;
                    }
                } else if (i2 != 2) {
                    if (i2 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Object obj2 = this.$initialValue;
                    if (obj2 == lg9.a) {
                        this.$shared.b();
                    } else {
                        mk0.a(this.$shared.c(obj2));
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }

        @Override
        public final Object invoke(SharingCommand sharingCommand, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(sharingCommand, wh1Var)).invokeSuspend(zfb.a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharing$1(a aVar, nz3 nz3Var, kw6 kw6Var, Object obj, wh1<? super FlowKt__ShareKt$launchSharing$1> wh1Var) {
        super(2, wh1Var);
        this.$started = aVar;
        this.$upstream = nz3Var;
        this.$shared = kw6Var;
        this.$initialValue = obj;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new FlowKt__ShareKt$launchSharing$1(this.$started, this.$upstream, this.$shared, this.$initialValue, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((FlowKt__ShareKt$launchSharing$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0068 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        nz3 nz3Var;
        kw6 kw6Var;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    c.b(obj);
                    nz3Var = this.$upstream;
                    kw6Var = this.$shared;
                    this.label = 3;
                    if (nz3Var.collect(kw6Var, this) == objF) {
                        return objF;
                    }
                } else if (i != 3 && i != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
            c.b(obj);
        } else {
            c.b(obj);
            a aVar = this.$started;
            a.C0414a c0414a = a.a;
            if (aVar == c0414a.a()) {
                nz3 nz3Var2 = this.$upstream;
                kw6 kw6Var2 = this.$shared;
                this.label = 1;
                if (nz3Var2.collect(kw6Var2, this) == objF) {
                    return objF;
                }
            } else if (this.$started == c0414a.b()) {
                gx9 gx9VarF = this.$shared.f();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null);
                this.label = 2;
                if (sz3.p(gx9VarF, anonymousClass1, this) == objF) {
                    return objF;
                }
                nz3Var = this.$upstream;
                kw6Var = this.$shared;
                this.label = 3;
                if (nz3Var.collect(kw6Var, this) == objF) {
                    return objF;
                }
            } else {
                nz3 nz3VarI = sz3.i(this.$started.a(this.$shared.f()));
                AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$upstream, this.$shared, this.$initialValue, null);
                this.label = 4;
                if (sz3.g(nz3VarI, anonymousClass2, this) == objF) {
                    return objF;
                }
            }
        }
        return zfb.a;
    }
}
