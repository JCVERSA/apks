package androidx.p003activity;

import defpackage.e74;
import defpackage.j05;
import defpackage.nt1;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u001a2\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u001c\u0010\u0005\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0001H\u0086H¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/activity/FullyDrawnReporter;", "Lkotlin/Function1;", "Lwh1;", "Lzfb;", "", "reporter", "reportWhenComplete", "(Landroidx/activity/FullyDrawnReporter;Le74;Lwh1;)Ljava/lang/Object;", "activity_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class FullyDrawnReporterKt {

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 176)
    @nt1(c = "androidx.activity.FullyDrawnReporterKt", f = "FullyDrawnReporter.kt", l = {185}, m = "reportWhenComplete")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        Object result;

        public AnonymousClass1(wh1<? super AnonymousClass1> wh1Var) {
            super(wh1Var);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FullyDrawnReporterKt.reportWhenComplete(null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, zfb] */
    public static final Object reportWhenComplete(FullyDrawnReporter fullyDrawnReporter, e74 e74Var, wh1<? super zfb> wh1Var) {
        AnonymousClass1 anonymousClass1;
        FullyDrawnReporter fullyDrawnReporter2;
        if (wh1Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) wh1Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(wh1Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(wh1Var);
        }
        Object obj = anonymousClass1.result;
        Object objF = z45.f();
        int i2 = anonymousClass1.label;
        try {
            if (i2 == 0) {
                c.b(obj);
                fullyDrawnReporter.addReporter();
                if (fullyDrawnReporter.isFullyDrawnReported()) {
                    return zfb.a;
                }
                anonymousClass1.L$0 = fullyDrawnReporter;
                anonymousClass1.label = 1;
                if (e74Var.invoke(anonymousClass1) == objF) {
                    fullyDrawnReporter2 = fullyDrawnReporter;
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                FullyDrawnReporter fullyDrawnReporter3 = (FullyDrawnReporter) anonymousClass1.L$0;
                c.b(obj);
                fullyDrawnReporter2 = fullyDrawnReporter3;
            }
            fullyDrawnReporter2 = fullyDrawnReporter;
            j05.b(1);
            fullyDrawnReporter2.removeReporter();
            j05.a(1);
            fullyDrawnReporter = zfb.a;
            return fullyDrawnReporter;
        } catch (Throwable th) {
            j05.b(1);
            fullyDrawnReporter.removeReporter();
            j05.a(1);
            throw th;
        }
    }

    private static final Object reportWhenComplete$$forInline(FullyDrawnReporter fullyDrawnReporter, e74 e74Var, wh1<? super zfb> wh1Var) {
        fullyDrawnReporter.addReporter();
        if (fullyDrawnReporter.isFullyDrawnReported()) {
            return zfb.a;
        }
        try {
            e74Var.invoke(wh1Var);
            return zfb.a;
        } finally {
            j05.b(1);
            fullyDrawnReporter.removeReporter();
            j05.a(1);
        }
    }
}
