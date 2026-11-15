package androidx.window.embedding;

import android.app.Activity;
import android.content.Context;
import androidx.core.util.Consumer;
import androidx.window.RequiresWindowSdkExtension;
import androidx.window.core.ExperimentalWindowApi;
import defpackage.c74;
import defpackage.e74;
import defpackage.gh8;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.ur1;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.ProduceKt;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000  2\u00020\u0001:\u0002 !B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0012\u001a\u00020\u00112\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0016\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u001bR\u0011\u0010\u001f\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Landroidx/window/embedding/SplitController;", "", "Landroidx/window/embedding/EmbeddingBackend;", "embeddingBackend", MethodDecl.initName, "(Landroidx/window/embedding/EmbeddingBackend;)V", "Landroid/app/Activity;", "activity", "Lnz3;", "", "Landroidx/window/embedding/SplitInfo;", "splitInfoList", "(Landroid/app/Activity;)Lnz3;", "Lkotlin/Function1;", "Landroidx/window/embedding/SplitAttributesCalculatorParams;", "Landroidx/window/embedding/SplitAttributes;", "calculator", "Lzfb;", "setSplitAttributesCalculator", "(Le74;)V", "clearSplitAttributesCalculator", "()V", "invalidateTopVisibleSplitAttributes", "splitInfo", "splitAttributes", "updateSplitAttributes", "(Landroidx/window/embedding/SplitInfo;Landroidx/window/embedding/SplitAttributes;)V", "Landroidx/window/embedding/EmbeddingBackend;", "Landroidx/window/embedding/SplitController$SplitSupportStatus;", "getSplitSupportStatus", "()Landroidx/window/embedding/SplitController$SplitSupportStatus;", "splitSupportStatus", "Companion", "SplitSupportStatus", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class SplitController {

    public static final Companion INSTANCE = new Companion(null);
    public static final boolean sDebug = false;
    private final EmbeddingBackend embeddingBackend;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/window/embedding/SplitController$Companion;", "", "()V", "sDebug", "", "getInstance", "Landroidx/window/embedding/SplitController;", "context", "Landroid/content/Context;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SplitController getInstance(Context context) {
            y45.j(context, "context");
            return new SplitController(EmbeddingBackend.INSTANCE.getInstance(context));
        }

        private Companion() {
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Landroidx/window/embedding/SplitController$SplitSupportStatus;", "", "rawValue", "", "(I)V", "toString", "", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class SplitSupportStatus {
        private final int rawValue;
        public static final SplitSupportStatus SPLIT_AVAILABLE = new SplitSupportStatus(0);
        public static final SplitSupportStatus SPLIT_UNAVAILABLE = new SplitSupportStatus(1);
        public static final SplitSupportStatus SPLIT_ERROR_PROPERTY_NOT_DECLARED = new SplitSupportStatus(2);

        private SplitSupportStatus(int i) {
            this.rawValue = i;
        }

        public String toString() {
            int i = this.rawValue;
            if (i == 0) {
                return "SplitSupportStatus: AVAILABLE";
            }
            if (i != 1) {
                return i != 2 ? "UNKNOWN" : "SplitSupportStatus: ERROR_SPLIT_PROPERTY_NOT_DECLARED";
            }
            return "SplitSupportStatus: UNAVAILABLE";
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lgh8;", "", "Landroidx/window/embedding/SplitInfo;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.window.embedding.SplitController$splitInfoList$1", f = "SplitController.kt", l = {64}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends SuspendLambda implements s74 {
        final Activity $activity;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Activity activity, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$activity = activity;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = SplitController.this.new AnonymousClass1(this.$activity, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                final gh8 gh8Var = (gh8) this.L$0;
                final Consumer<List<SplitInfo>> consumer = new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        gh8Var.f((List) obj2);
                    }
                };
                SplitController.this.embeddingBackend.addSplitListenerForActivity(this.$activity, new ur1(), consumer);
                final SplitController splitController = SplitController.this;
                c74 c74Var = new c74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override
                    public Object invoke() {
                        m58invoke();
                        return zfb.a;
                    }

                    public final void m58invoke() {
                        splitController.embeddingBackend.removeSplitListenerForActivity(consumer);
                    }
                };
                this.label = 1;
                if (ProduceKt.a(gh8Var, c74Var, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    public SplitController(EmbeddingBackend embeddingBackend) {
        y45.j(embeddingBackend, "embeddingBackend");
        this.embeddingBackend = embeddingBackend;
    }

    public static final SplitController getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    @RequiresWindowSdkExtension(version = 2)
    public final void clearSplitAttributesCalculator() {
        this.embeddingBackend.clearSplitAttributesCalculator();
    }

    public final SplitSupportStatus getSplitSupportStatus() {
        return this.embeddingBackend.getSplitSupportStatus();
    }

    @ExperimentalWindowApi
    @RequiresWindowSdkExtension(version = 3)
    public final void invalidateTopVisibleSplitAttributes() {
        this.embeddingBackend.invalidateTopVisibleSplitAttributes();
    }

    @RequiresWindowSdkExtension(version = 2)
    public final void setSplitAttributesCalculator(e74 calculator) {
        y45.j(calculator, "calculator");
        this.embeddingBackend.setSplitAttributesCalculator(calculator);
    }

    public final nz3 splitInfoList(Activity activity) {
        y45.j(activity, "activity");
        return sz3.d(new AnonymousClass1(activity, null));
    }

    @ExperimentalWindowApi
    @RequiresWindowSdkExtension(version = 3)
    public final void updateSplitAttributes(SplitInfo splitInfo, SplitAttributes splitAttributes) {
        y45.j(splitInfo, "splitInfo");
        y45.j(splitAttributes, "splitAttributes");
        this.embeddingBackend.updateSplitAttributes(splitInfo, splitAttributes);
    }
}
