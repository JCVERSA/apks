package com.transsion.shorttv.viewmodel;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.db.ShortTvAdUnlockDao;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$getShortTvInfo$1", f = "ShortTvDownloadViewModel.kt", l = {78, 86, 97}, m = "invokeSuspend")
final class ShortTvDownloadViewModel$getShortTvInfo$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $forLoginRefresh;
    final String $subjectId;
    private Object L$0;
    int label;
    final ShortTvDownloadViewModel this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.shorttv.viewmodel.ShortTvDownloadViewModel$getShortTvInfo$1$3", f = "ShortTvDownloadViewModel.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final boolean $forLoginRefresh;
        final Subject $subject;
        int label;
        final ShortTvDownloadViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(ShortTvDownloadViewModel shortTvDownloadViewModel, Subject subject, boolean z10, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.this$0 = shortTvDownloadViewModel;
            this.$subject = subject;
            this.$forLoginRefresh = z10;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.this$0, this.$subject, this.$forLoginRefresh, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            this.this$0.p().q(this.$subject);
            if (this.$forLoginRefresh) {
                this.this$0.j().q(Unit.f64096a);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ShortTvDownloadViewModel$getShortTvInfo$1(String str, ShortTvDownloadViewModel shortTvDownloadViewModel, boolean z10, Continuation<? super ShortTvDownloadViewModel$getShortTvInfo$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.this$0 = shortTvDownloadViewModel;
        this.$forLoginRefresh = z10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ShortTvDownloadViewModel$getShortTvInfo$1 shortTvDownloadViewModel$getShortTvInfo$1 = new ShortTvDownloadViewModel$getShortTvInfo$1(this.$subjectId, this.this$0, this.$forLoginRefresh, continuation);
        shortTvDownloadViewModel$getShortTvInfo$1.L$0 = obj;
        return shortTvDownloadViewModel$getShortTvInfo$1;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00de A[PHI: r1
      0x00de: PHI (r1v4 ??) = (r1v24 ??), (r1v25 ??), (r1v26 ??) binds: [B:32:0x0093, B:37:0x00a2, B:39:0x00a8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:50:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:53:0x012b A[RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:50:0x00f4, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v8, types: [dr.b] */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.transsion.shorttv.bean.Subject] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.transsion.shorttv.bean.Subject] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public final Object invokeSuspend(Object obj) {
        ?? r10;
        Object objM453constructorimpl;
        ?? r11;
        Unit unit;
        a2 a2VarC;
        AnonymousClass3 anonymousClass3;
        Throwable thM456exceptionOrNullimpl;
        ?? r12;
        com.transsion.shorttv.db.e eVar;
        Set setC;
        Object objF = IntrinsicsKt.f();
        ?? r13 = this.label;
        try {
            try {
                if (r13 != 0) {
                    if (r13 == 1) {
                        ResultKt.b(obj);
                    } else if (r13 == 2) {
                        Subject subject = (Subject) this.L$0;
                        ResultKt.b(obj);
                        r12 = subject;
                        r12 = r10;
                        eVar = (com.transsion.shorttv.db.e) obj;
                        r11 = r12;
                        if (eVar != null || (setC = eVar.c()) == null) {
                            r11 = r12;
                            unit = null;
                            r13 = r11;
                        } else {
                            wf.a.C0922a.r(wf.a.f74274a, "ShortTvDownload", new String[]{"loadAdUnlockedEps result=" + setC}, false, 4, null);
                            if (!setC.isEmpty()) {
                                r11 = r12;
                                r12.getAdUnlockedEps().addAll(setC);
                            }
                            r11 = r12;
                            unit = Unit.f64096a;
                            r13 = r12;
                        }
                        objM453constructorimpl = Result.m453constructorimpl(unit);
                        r10 = r13;
                        thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                        if (thM456exceptionOrNullimpl != null) {
                            wf.a.C0922a.l(wf.a.f74274a, "ShortTvDownload", "loadAdUnlockedEps error: " + thM456exceptionOrNullimpl, false, 4, null);
                        }
                        dr.b.f59061a.e(r10);
                        a2VarC = y0.c();
                        anonymousClass3 = new AnonymousClass3(this.this$0, r10, this.$forLoginRefresh, null);
                        this.L$0 = null;
                        this.label = 3;
                        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass3, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (r13 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f64096a;
                }
                ResultKt.b(obj);
                n0 n0Var = (n0) this.L$0;
                wf.a.C0922a.f(wf.a.f74274a, "ShortTvDownload", "getShortTvInfo, subjectId = " + this.$subjectId, false, 4, null);
                sr.a aVarK = this.this$0.k();
                String str = this.$subjectId;
                this.L$0 = n0Var;
                this.label = 1;
                obj = sr.a.C0885a.d(aVarK, str, null, this, 2, null);
                if (obj == objF) {
                    return objF;
                }
                BaseDto baseDto = (BaseDto) obj;
                r10 = Intrinsics.c(baseDto.getCode(), "0") ? (Subject) baseDto.getData() : null;
            } catch (Throwable th2) {
                Result.Companion companion = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                r10 = r13;
            }
        } catch (Exception unused) {
            r10 = 0;
        }
        if (r10 != 0) {
            ShortTvDownloadViewModel shortTvDownloadViewModel = this.this$0;
            String str2 = this.$subjectId;
            Result.Companion companion2 = Result.INSTANCE;
            ShortTvAdUnlockDao shortTvAdUnlockDaoH = shortTvDownloadViewModel.h();
            r11 = r10;
            if (shortTvAdUnlockDaoH != null) {
                this.L$0 = r10;
                this.label = 2;
                obj = shortTvAdUnlockDaoH.a(str2, this);
                if (obj == objF) {
                    r12 = r10;
                    return objF;
                }
                r12 = r10;
                eVar = (com.transsion.shorttv.db.e) obj;
                r11 = r12;
                if (eVar != null) {
                    r11 = r12;
                    unit = null;
                    r13 = r11;
                } else {
                    r11 = r12;
                    unit = null;
                    r13 = r11;
                }
            } else {
                r11 = r12;
                unit = null;
                r13 = r11;
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
            r10 = r13;
            thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
            if (thM456exceptionOrNullimpl != null) {
                wf.a.C0922a.l(wf.a.f74274a, "ShortTvDownload", "loadAdUnlockedEps error: " + thM456exceptionOrNullimpl, false, 4, null);
            }
        }
        dr.b.f59061a.e(r10);
        a2VarC = y0.c();
        anonymousClass3 = new AnonymousClass3(this.this$0, r10, this.$forLoginRefresh, null);
        this.L$0 = null;
        this.label = 3;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass3, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ShortTvDownloadViewModel$getShortTvInfo$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
