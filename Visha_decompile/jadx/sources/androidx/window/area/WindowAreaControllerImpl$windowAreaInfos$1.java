package androidx.window.area;

import androidx.window.extensions.area.ExtensionWindowAreaStatus;
import androidx.window.extensions.core.util.function.Consumer;
import defpackage.bc9;
import defpackage.c74;
import defpackage.gh8;
import defpackage.i81;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.channels.ProduceKt;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lgh8;", "", "Landroidx/window/area/WindowAreaInfo;", "Lzfb;", "<anonymous>", "(Lgh8;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.window.area.WindowAreaControllerImpl$windowAreaInfos$1", f = "WindowAreaControllerImpl.kt", l = {94}, m = "invokeSuspend")
public final class WindowAreaControllerImpl$windowAreaInfos$1 extends SuspendLambda implements s74 {
    private Object L$0;
    int label;
    final WindowAreaControllerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowAreaControllerImpl$windowAreaInfos$1(WindowAreaControllerImpl windowAreaControllerImpl, wh1<? super WindowAreaControllerImpl$windowAreaInfos$1> wh1Var) {
        super(2, wh1Var);
        this.this$0 = windowAreaControllerImpl;
    }

    public static final void invokeSuspend$lambda$0(WindowAreaControllerImpl windowAreaControllerImpl, gh8 gh8Var, Integer num) {
        y45.i(num, "status");
        windowAreaControllerImpl.updateRearDisplayAvailability(num.intValue());
        bc9 bc9VarB = gh8Var.b();
        Collection collectionValues = windowAreaControllerImpl.currentWindowAreaInfoMap.values();
        y45.i(collectionValues, "currentWindowAreaInfoMap.values");
        bc9VarB.f(i81.b1(collectionValues));
    }

    public static final void invokeSuspend$lambda$1(WindowAreaControllerImpl windowAreaControllerImpl, gh8 gh8Var, ExtensionWindowAreaStatus extensionWindowAreaStatus) {
        y45.i(extensionWindowAreaStatus, "extensionWindowAreaStatus");
        windowAreaControllerImpl.updateRearDisplayPresentationAvailability(extensionWindowAreaStatus);
        bc9 bc9VarB = gh8Var.b();
        Collection collectionValues = windowAreaControllerImpl.currentWindowAreaInfoMap.values();
        y45.i(collectionValues, "currentWindowAreaInfoMap.values");
        bc9VarB.f(i81.b1(collectionValues));
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        WindowAreaControllerImpl$windowAreaInfos$1 windowAreaControllerImpl$windowAreaInfos$1 = new WindowAreaControllerImpl$windowAreaInfos$1(this.this$0, wh1Var);
        windowAreaControllerImpl$windowAreaInfos$1.L$0 = obj;
        return windowAreaControllerImpl$windowAreaInfos$1;
    }

    @Override
    public final Object invoke(gh8 gh8Var, wh1<? super zfb> wh1Var) {
        return ((WindowAreaControllerImpl$windowAreaInfos$1) create(gh8Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = z45.f();
        int i = this.label;
        if (i == 0) {
            c.b(obj);
            final gh8 gh8Var = (gh8) this.L$0;
            final WindowAreaControllerImpl windowAreaControllerImpl = this.this$0;
            final Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    WindowAreaControllerImpl$windowAreaInfos$1.invokeSuspend$lambda$0(windowAreaControllerImpl, gh8Var, (Integer) obj2);
                }
            };
            final WindowAreaControllerImpl windowAreaControllerImpl2 = this.this$0;
            final Consumer consumer2 = new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    WindowAreaControllerImpl$windowAreaInfos$1.invokeSuspend$lambda$1(windowAreaControllerImpl2, gh8Var, (ExtensionWindowAreaStatus) obj2);
                }
            };
            this.this$0.windowAreaComponent.addRearDisplayStatusListener(consumer);
            if (this.this$0.vendorApiLevel > 2) {
                this.this$0.windowAreaComponent.addRearDisplayPresentationStatusListener(consumer2);
            }
            final WindowAreaControllerImpl windowAreaControllerImpl3 = this.this$0;
            c74 c74Var = new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m57invoke();
                    return zfb.a;
                }

                public final void m57invoke() {
                    windowAreaControllerImpl3.windowAreaComponent.removeRearDisplayStatusListener(consumer);
                    if (windowAreaControllerImpl3.vendorApiLevel > 2) {
                        windowAreaControllerImpl3.windowAreaComponent.removeRearDisplayPresentationStatusListener(consumer2);
                    }
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
