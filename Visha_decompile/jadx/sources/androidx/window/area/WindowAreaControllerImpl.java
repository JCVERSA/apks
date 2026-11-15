package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.window.area.WindowAreaControllerImpl;
import androidx.window.area.utils.DeviceUtils;
import androidx.window.core.BuildConfig;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.core.VerificationMode;
import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import androidx.window.extensions.area.ExtensionWindowAreaStatus;
import androidx.window.extensions.area.WindowAreaComponent;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.layout.WindowMetrics;
import androidx.window.layout.WindowMetricsCalculator;
import com.transsion.audiotagger.audio.mp3.MPEGFrameHeader;
import defpackage.ef3;
import defpackage.el0;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.nz3;
import defpackage.s74;
import defpackage.sz3;
import defpackage.wh1;
import defpackage.xq8;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import java.util.HashMap;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.d;

@RequiresApi(29)
@ExperimentalWindowApi
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0007\b\u0001\u0018\u0000 @2\u00020\u0001:\u0003@ABB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ'\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ'\u0010\"\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b\"\u0010#J'\u0010&\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J/\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b*\u0010+J/\u0010,\u001a\u00020\t2\u0006\u0010)\u001a\u00020(2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b,\u0010-R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010.R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010/R\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020\u0004008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00105\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00104R0\u00109\u001a\u001e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u001706j\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u0017`88\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010:R \u0010?\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170<0;8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006C"}, d2 = {"Landroidx/window/area/WindowAreaControllerImpl;", "Landroidx/window/area/WindowAreaController;", "Landroidx/window/extensions/area/WindowAreaComponent;", "windowAreaComponent", "", "vendorApiLevel", MethodDecl.initName, "(Landroidx/window/extensions/area/WindowAreaComponent;I)V", "status", "Lzfb;", "updateRearDisplayAvailability", "(I)V", "Landroidx/window/extensions/area/ExtensionWindowAreaStatus;", "extensionWindowAreaStatus", "updateRearDisplayPresentationAvailability", "(Landroidx/window/extensions/area/ExtensionWindowAreaStatus;)V", "Landroidx/window/area/WindowAreaCapability$Operation;", "operation", "Landroidx/window/area/WindowAreaCapability$Status;", "Landroidx/window/layout/WindowMetrics;", "metrics", "updateRearDisplayWindowArea", "(Landroidx/window/area/WindowAreaCapability$Operation;Landroidx/window/area/WindowAreaCapability$Status;Landroidx/window/layout/WindowMetrics;)V", "Landroidx/window/area/WindowAreaInfo;", "windowAreaInfo", "", "shouldRemoveWindowAreaInfo", "(Landroidx/window/area/WindowAreaInfo;)Z", "Landroid/app/Activity;", "activity", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "windowAreaSessionCallback", "startRearDisplayMode", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "startRearDisplayPresentationMode", "(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Landroid/os/Binder;", "token", "transferActivityToWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "presentContentOnWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Landroidx/window/extensions/area/WindowAreaComponent;", "I", "Landroidx/window/extensions/core/util/function/Consumer;", "rearDisplaySessionConsumer", "Landroidx/window/extensions/core/util/function/Consumer;", "currentRearDisplayModeStatus", "Landroidx/window/area/WindowAreaCapability$Status;", "currentRearDisplayPresentationStatus", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "currentWindowAreaInfoMap", "Ljava/util/HashMap;", "Lnz3;", "", "getWindowAreaInfos", "()Lnz3;", "windowAreaInfos", "Companion", "RearDisplayPresentationSessionConsumer", "RearDisplaySessionConsumer", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class WindowAreaControllerImpl implements WindowAreaController {
    private static final String REAR_DISPLAY_BINDER_DESCRIPTOR = "WINDOW_AREA_REAR_DISPLAY";
    private WindowAreaCapability.Status currentRearDisplayModeStatus;
    private WindowAreaCapability.Status currentRearDisplayPresentationStatus;
    private final HashMap<String, WindowAreaInfo> currentWindowAreaInfoMap;
    private Consumer<Integer> rearDisplaySessionConsumer;
    private final int vendorApiLevel;
    private final WindowAreaComponent windowAreaComponent;
    private static final String TAG = xq8.b(WindowAreaControllerImpl.class).o();

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u000fR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0010R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u0016\u0010\u0012\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer;", "Landroidx/window/extensions/core/util/function/Consumer;", "", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "Landroidx/window/extensions/area/WindowAreaComponent;", "windowAreaComponent", MethodDecl.initName, "(Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;Landroidx/window/extensions/area/WindowAreaComponent;)V", "t", "Lzfb;", "accept", "(I)V", "Ljava/util/concurrent/Executor;", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "Landroidx/window/extensions/area/WindowAreaComponent;", "lastReportedSessionStatus", "I", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class RearDisplayPresentationSessionConsumer implements Consumer<Integer> {
        private final Executor executor;
        private int lastReportedSessionStatus;
        private final WindowAreaComponent windowAreaComponent;
        private final WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback;

        public RearDisplayPresentationSessionConsumer(Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback, WindowAreaComponent windowAreaComponent) {
            y45.j(executor, "executor");
            y45.j(windowAreaPresentationSessionCallback, "windowAreaPresentationSessionCallback");
            y45.j(windowAreaComponent, "windowAreaComponent");
            this.executor = executor;
            this.windowAreaPresentationSessionCallback = windowAreaPresentationSessionCallback;
            this.windowAreaComponent = windowAreaComponent;
        }

        public static final void accept$lambda$0(int i, int i2, RearDisplayPresentationSessionConsumer rearDisplayPresentationSessionConsumer) {
            y45.j(rearDisplayPresentationSessionConsumer, "this$0");
            if (i == 0) {
                rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback.onSessionEnded(null);
                return;
            }
            if (i != 1) {
                if (i == 2) {
                    rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback.onContainerVisibilityChanged(true);
                    return;
                }
                Log.e(WindowAreaControllerImpl.TAG, "Invalid session state value received: " + i);
                return;
            }
            if (i2 == 2) {
                rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback.onContainerVisibilityChanged(false);
                return;
            }
            WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback = rearDisplayPresentationSessionConsumer.windowAreaPresentationSessionCallback;
            WindowAreaComponent windowAreaComponent = rearDisplayPresentationSessionConsumer.windowAreaComponent;
            ExtensionWindowAreaPresentation rearDisplayPresentation = windowAreaComponent.getRearDisplayPresentation();
            y45.g(rearDisplayPresentation);
            windowAreaPresentationSessionCallback.onSessionStarted(new RearDisplayPresentationSessionPresenterImpl(windowAreaComponent, rearDisplayPresentation));
        }

        @Override
        public void accept(Integer num) {
            accept(num.intValue());
        }

        public void accept(final int t) {
            final int i = this.lastReportedSessionStatus;
            this.lastReportedSessionStatus = t;
            this.executor.execute(new Runnable() {
                @Override
                public final void run() {
                    WindowAreaControllerImpl.RearDisplayPresentationSessionConsumer.accept$lambda$0(t, i, this);
                }
            });
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0013R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/window/area/WindowAreaControllerImpl$RearDisplaySessionConsumer;", "Landroidx/window/extensions/core/util/function/Consumer;", "", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "appCallback", "Landroidx/window/extensions/area/WindowAreaComponent;", "extensionsComponent", MethodDecl.initName, "(Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;Landroidx/window/extensions/area/WindowAreaComponent;)V", "Lzfb;", "onSessionStarted", "()V", "onSessionFinished", "t", "accept", "(I)V", "Ljava/util/concurrent/Executor;", "Landroidx/window/area/WindowAreaSessionCallback;", "Landroidx/window/extensions/area/WindowAreaComponent;", "Landroidx/window/area/WindowAreaSession;", "session", "Landroidx/window/area/WindowAreaSession;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class RearDisplaySessionConsumer implements Consumer<Integer> {
        private final WindowAreaSessionCallback appCallback;
        private final Executor executor;
        private final WindowAreaComponent extensionsComponent;
        private WindowAreaSession session;

        public RearDisplaySessionConsumer(Executor executor, WindowAreaSessionCallback windowAreaSessionCallback, WindowAreaComponent windowAreaComponent) {
            y45.j(executor, "executor");
            y45.j(windowAreaSessionCallback, "appCallback");
            y45.j(windowAreaComponent, "extensionsComponent");
            this.executor = executor;
            this.appCallback = windowAreaSessionCallback;
            this.extensionsComponent = windowAreaComponent;
        }

        private final void onSessionFinished() {
            this.session = null;
            this.executor.execute(new Runnable() {
                @Override
                public final void run() {
                    WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionFinished$lambda$2(this.b);
                }
            });
        }

        public static final void onSessionFinished$lambda$2(RearDisplaySessionConsumer rearDisplaySessionConsumer) {
            y45.j(rearDisplaySessionConsumer, "this$0");
            rearDisplaySessionConsumer.appCallback.onSessionEnded(null);
        }

        private final void onSessionStarted() {
            final RearDisplaySessionImpl rearDisplaySessionImpl = new RearDisplaySessionImpl(this.extensionsComponent);
            this.session = rearDisplaySessionImpl;
            this.executor.execute(new Runnable() {
                @Override
                public final void run() {
                    WindowAreaControllerImpl.RearDisplaySessionConsumer.onSessionStarted$lambda$1$lambda$0(this.b, rearDisplaySessionImpl);
                }
            });
        }

        public static final void onSessionStarted$lambda$1$lambda$0(RearDisplaySessionConsumer rearDisplaySessionConsumer, WindowAreaSession windowAreaSession) {
            y45.j(rearDisplaySessionConsumer, "this$0");
            y45.j(windowAreaSession, "$it");
            rearDisplaySessionConsumer.appCallback.onSessionStarted(windowAreaSession);
        }

        @Override
        public void accept(Integer num) {
            accept(num.intValue());
        }

        public void accept(int t) {
            if (t == 0) {
                onSessionFinished();
                return;
            }
            if (t == 1) {
                onSessionStarted();
                return;
            }
            if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.STRICT) {
                Log.d(WindowAreaControllerImpl.TAG, "Received an unknown session status value: " + t);
            }
            onSessionFinished();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.window.area.WindowAreaControllerImpl$presentContentOnWindowArea$2", f = "WindowAreaControllerImpl.kt", l = {MPEGFrameHeader.SYNC_BIT_ANDSAMPING_BYTE3}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends SuspendLambda implements s74 {
        final Activity $activity;
        final Executor $executor;
        final WindowAreaPresentationSessionCallback $windowAreaPresentationSessionCallback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback, wh1<? super AnonymousClass2> wh1Var) {
            super(2, wh1Var);
            this.$activity = activity;
            this.$executor = executor;
            this.$windowAreaPresentationSessionCallback = windowAreaPresentationSessionCallback;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return WindowAreaControllerImpl.this.new AnonymousClass2(this.$activity, this.$executor, this.$windowAreaPresentationSessionCallback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass2) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                nz3 windowAreaInfos = WindowAreaControllerImpl.this.getWindowAreaInfos();
                this.label = 1;
                if (sz3.o(windowAreaInfos, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            WindowAreaControllerImpl.this.startRearDisplayPresentationMode(this.$activity, this.$executor, this.$windowAreaPresentationSessionCallback);
            return zfb.a;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {1, 8, 0})
    @nt1(c = "androidx.window.area.WindowAreaControllerImpl$transferActivityToWindowArea$2", f = "WindowAreaControllerImpl.kt", l = {224}, m = "invokeSuspend")
    public static final class C05082 extends SuspendLambda implements s74 {
        final Activity $activity;
        final Executor $executor;
        final WindowAreaSessionCallback $windowAreaSessionCallback;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05082(Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback, wh1<? super C05082> wh1Var) {
            super(2, wh1Var);
            this.$activity = activity;
            this.$executor = executor;
            this.$windowAreaSessionCallback = windowAreaSessionCallback;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            return WindowAreaControllerImpl.this.new C05082(this.$activity, this.$executor, this.$windowAreaSessionCallback, wh1Var);
        }

        @Override
        public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
            return ((C05082) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = z45.f();
            int i = this.label;
            if (i == 0) {
                c.b(obj);
                nz3 windowAreaInfos = WindowAreaControllerImpl.this.getWindowAreaInfos();
                this.label = 1;
                if (sz3.o(windowAreaInfos, this) == objF) {
                    return objF;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(obj);
            }
            WindowAreaControllerImpl.this.startRearDisplayMode(this.$activity, this.$executor, this.$windowAreaSessionCallback);
            return zfb.a;
        }
    }

    public WindowAreaControllerImpl(WindowAreaComponent windowAreaComponent, int i) {
        y45.j(windowAreaComponent, "windowAreaComponent");
        this.windowAreaComponent = windowAreaComponent;
        this.vendorApiLevel = i;
        WindowAreaCapability.Status.Companion companion = WindowAreaCapability.Status.INSTANCE;
        this.currentRearDisplayModeStatus = companion.getWINDOW_AREA_STATUS_UNKNOWN$window_release();
        this.currentRearDisplayPresentationStatus = companion.getWINDOW_AREA_STATUS_UNKNOWN$window_release();
        this.currentWindowAreaInfoMap = new HashMap<>();
    }

    public static final void presentContentOnWindowArea$lambda$2(WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        y45.j(windowAreaPresentationSessionCallback, "$windowAreaPresentationSessionCallback");
        windowAreaPresentationSessionCallback.onSessionEnded(new IllegalArgumentException("Invalid WindowAreaInfo token"));
    }

    private final boolean shouldRemoveWindowAreaInfo(WindowAreaInfo windowAreaInfo) {
        for (WindowAreaCapability windowAreaCapability : windowAreaInfo.getCapabilityMap$window_release().values()) {
            y45.i(windowAreaCapability, "windowAreaInfo.capabilityMap.values");
            if (!y45.e(windowAreaCapability.getStatus(), WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED)) {
                return false;
            }
        }
        return true;
    }

    public final void startRearDisplayMode(Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback) {
        if (y45.e(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_ACTIVE)) {
            windowAreaSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently active, WindowAreaInfo#getActiveSessioncan be used to get an instance of the current active session"));
        } else {
            if (!y45.e(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_AVAILABLE)) {
                windowAreaSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently not available to be entered"));
                return;
            }
            RearDisplaySessionConsumer rearDisplaySessionConsumer = new RearDisplaySessionConsumer(executor, windowAreaSessionCallback, this.windowAreaComponent);
            this.rearDisplaySessionConsumer = rearDisplaySessionConsumer;
            this.windowAreaComponent.startRearDisplaySession(activity, rearDisplaySessionConsumer);
        }
    }

    public final void startRearDisplayPresentationMode(Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        if (!y45.e(this.currentRearDisplayPresentationStatus, WindowAreaCapability.Status.WINDOW_AREA_STATUS_AVAILABLE)) {
            windowAreaPresentationSessionCallback.onSessionEnded(new IllegalStateException("The WindowArea feature is currently not available to be entered"));
        } else {
            WindowAreaComponent windowAreaComponent = this.windowAreaComponent;
            windowAreaComponent.startRearDisplayPresentationSession(activity, new RearDisplayPresentationSessionConsumer(executor, windowAreaPresentationSessionCallback, windowAreaComponent));
        }
    }

    public static final void transferActivityToWindowArea$lambda$1(WindowAreaSessionCallback windowAreaSessionCallback) {
        y45.j(windowAreaSessionCallback, "$windowAreaSessionCallback");
        windowAreaSessionCallback.onSessionEnded(new IllegalArgumentException("Invalid WindowAreaInfo token"));
    }

    public final void updateRearDisplayAvailability(int status) {
        WindowMetrics windowMetricsFromDisplayMetrics$window_release;
        if (this.vendorApiLevel >= 3) {
            WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.INSTANCE;
            DisplayMetrics rearDisplayMetrics = this.windowAreaComponent.getRearDisplayMetrics();
            y45.i(rearDisplayMetrics, "windowAreaComponent.rearDisplayMetrics");
            windowMetricsFromDisplayMetrics$window_release = companion.fromDisplayMetrics$window_release(rearDisplayMetrics);
        } else {
            DeviceUtils deviceUtils = DeviceUtils.INSTANCE;
            String str = Build.MANUFACTURER;
            y45.i(str, "MANUFACTURER");
            String str2 = Build.MODEL;
            y45.i(str2, "MODEL");
            DisplayMetrics rearDisplayMetrics$window_release = deviceUtils.getRearDisplayMetrics$window_release(str, str2);
            if (rearDisplayMetrics$window_release == null) {
                throw new IllegalArgumentException("DeviceUtils rear display metrics entry should not be null");
            }
            windowMetricsFromDisplayMetrics$window_release = WindowMetricsCalculator.INSTANCE.fromDisplayMetrics$window_release(rearDisplayMetrics$window_release);
        }
        WindowAreaCapability.Status statusTranslate$window_release = WindowAreaAdapter.INSTANCE.translate$window_release(status);
        this.currentRearDisplayModeStatus = statusTranslate$window_release;
        updateRearDisplayWindowArea(WindowAreaCapability.Operation.OPERATION_TRANSFER_ACTIVITY_TO_AREA, statusTranslate$window_release, windowMetricsFromDisplayMetrics$window_release);
    }

    public final void updateRearDisplayPresentationAvailability(ExtensionWindowAreaStatus extensionWindowAreaStatus) {
        this.currentRearDisplayPresentationStatus = WindowAreaAdapter.INSTANCE.translate$window_release(extensionWindowAreaStatus.getWindowAreaStatus());
        WindowMetricsCalculator.Companion companion = WindowMetricsCalculator.INSTANCE;
        DisplayMetrics windowAreaDisplayMetrics = extensionWindowAreaStatus.getWindowAreaDisplayMetrics();
        y45.i(windowAreaDisplayMetrics, "extensionWindowAreaStatus.windowAreaDisplayMetrics");
        updateRearDisplayWindowArea(WindowAreaCapability.Operation.OPERATION_PRESENT_ON_AREA, this.currentRearDisplayPresentationStatus, companion.fromDisplayMetrics$window_release(windowAreaDisplayMetrics));
    }

    private final void updateRearDisplayWindowArea(WindowAreaCapability.Operation operation, WindowAreaCapability.Status status, WindowMetrics metrics) {
        WindowAreaInfo windowAreaInfo = this.currentWindowAreaInfoMap.get(REAR_DISPLAY_BINDER_DESCRIPTOR);
        if (!y45.e(status, WindowAreaCapability.Status.WINDOW_AREA_STATUS_UNSUPPORTED)) {
            if (windowAreaInfo == null) {
                windowAreaInfo = new WindowAreaInfo(metrics, WindowAreaInfo.Type.TYPE_REAR_FACING, new Binder(REAR_DISPLAY_BINDER_DESCRIPTOR), this.windowAreaComponent);
            }
            windowAreaInfo.getCapabilityMap$window_release().put(operation, new WindowAreaCapability(operation, status));
            windowAreaInfo.setMetrics(metrics);
            this.currentWindowAreaInfoMap.put(REAR_DISPLAY_BINDER_DESCRIPTOR, windowAreaInfo);
            return;
        }
        if (windowAreaInfo != null) {
            if (shouldRemoveWindowAreaInfo(windowAreaInfo)) {
                this.currentWindowAreaInfoMap.remove(REAR_DISPLAY_BINDER_DESCRIPTOR);
            } else {
                windowAreaInfo.getCapabilityMap$window_release().put(operation, new WindowAreaCapability(operation, status));
            }
        }
    }

    @Override
    public nz3 getWindowAreaInfos() {
        return sz3.d(new WindowAreaControllerImpl$windowAreaInfos$1(this, null));
    }

    @Override
    public void presentContentOnWindowArea(Binder token, Activity activity, Executor executor, final WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        y45.j(token, "token");
        y45.j(activity, "activity");
        y45.j(executor, "executor");
        y45.j(windowAreaPresentationSessionCallback, "windowAreaPresentationSessionCallback");
        if (!y45.e(token.getInterfaceDescriptor(), REAR_DISPLAY_BINDER_DESCRIPTOR)) {
            executor.execute(new Runnable() {
                @Override
                public final void run() {
                    WindowAreaControllerImpl.presentContentOnWindowArea$lambda$2(windowAreaPresentationSessionCallback);
                }
            });
        } else if (!y45.e(this.currentRearDisplayPresentationStatus, WindowAreaCapability.Status.INSTANCE.getWINDOW_AREA_STATUS_UNKNOWN$window_release())) {
            startRearDisplayPresentationMode(activity, executor, windowAreaPresentationSessionCallback);
        } else {
            Log.d(TAG, "Force updating currentRearDisplayPresentationStatus");
            el0.d(d.a(ef3.a(executor)), null, null, new AnonymousClass2(activity, executor, windowAreaPresentationSessionCallback, null), 3, null);
        }
    }

    @Override
    public void transferActivityToWindowArea(Binder token, Activity activity, Executor executor, final WindowAreaSessionCallback windowAreaSessionCallback) {
        y45.j(token, "token");
        y45.j(activity, "activity");
        y45.j(executor, "executor");
        y45.j(windowAreaSessionCallback, "windowAreaSessionCallback");
        if (!y45.e(token.getInterfaceDescriptor(), REAR_DISPLAY_BINDER_DESCRIPTOR)) {
            executor.execute(new Runnable() {
                @Override
                public final void run() {
                    WindowAreaControllerImpl.transferActivityToWindowArea$lambda$1(windowAreaSessionCallback);
                }
            });
        } else if (!y45.e(this.currentRearDisplayModeStatus, WindowAreaCapability.Status.INSTANCE.getWINDOW_AREA_STATUS_UNKNOWN$window_release())) {
            startRearDisplayMode(activity, executor, windowAreaSessionCallback);
        } else {
            Log.d(TAG, "Force updating currentRearDisplayModeStatus");
            el0.d(d.a(ef3.a(executor)), null, null, new C05082(activity, executor, windowAreaSessionCallback, null), 3, null);
        }
    }
}
