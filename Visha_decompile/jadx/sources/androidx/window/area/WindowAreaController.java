package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import android.os.Build;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.window.area.utils.DeviceUtils;
import androidx.window.core.BuildConfig;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.core.ExtensionsUtil;
import androidx.window.core.VerificationMode;
import androidx.window.extensions.area.WindowAreaComponent;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.nz3;
import defpackage.xq8;
import defpackage.y45;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@ExperimentalWindowApi
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017J/\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u000b\u0010\fJ/\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH&¢\u0006\u0004\b\u000f\u0010\u0010R \u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u00118&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0018À\u0006\u0001"}, d2 = {"Landroidx/window/area/WindowAreaController;", "", "Landroid/os/Binder;", "token", "Landroid/app/Activity;", "activity", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "windowAreaSessionCallback", "Lzfb;", "transferActivityToWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "presentContentOnWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Lnz3;", "", "Landroidx/window/area/WindowAreaInfo;", "getWindowAreaInfos", "()Lnz3;", "windowAreaInfos", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface WindowAreaController {

    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Landroidx/window/area/WindowAreaController$Companion;", "", MethodDecl.initName, "()V", "Landroidx/window/area/WindowAreaController;", "getOrCreate", "()Landroidx/window/area/WindowAreaController;", "Landroidx/window/area/WindowAreaControllerDecorator;", "overridingDecorator", "Lzfb;", "overrideDecorator", "(Landroidx/window/area/WindowAreaControllerDecorator;)V", "reset", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "decorator", "Landroidx/window/area/WindowAreaControllerDecorator;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        static final Companion $$INSTANCE = new Companion();
        private static final String TAG = xq8.b(WindowAreaController.class).o();
        private static WindowAreaControllerDecorator decorator = EmptyDecorator.INSTANCE;

        private Companion() {
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0058  */
        public final WindowAreaController getOrCreate() {
            WindowAreaController emptyWindowAreaControllerImpl;
            WindowAreaComponent windowAreaComponent = null;
            try {
                ClassLoader classLoader = Companion.class.getClassLoader();
                if (classLoader != null) {
                    windowAreaComponent = new SafeWindowAreaComponentProvider(classLoader).getWindowAreaComponent();
                }
            } catch (Throwable unused) {
                if (BuildConfig.INSTANCE.getVerificationMode() == VerificationMode.LOG) {
                    Log.d(TAG, "Failed to load WindowExtensions");
                }
            }
            if (Build.VERSION.SDK_INT <= 29 || windowAreaComponent == null) {
                emptyWindowAreaControllerImpl = new EmptyWindowAreaControllerImpl();
            } else {
                ExtensionsUtil extensionsUtil = ExtensionsUtil.INSTANCE;
                if (extensionsUtil.getSafeVendorApiLevel() < 3) {
                    DeviceUtils deviceUtils = DeviceUtils.INSTANCE;
                    String str = Build.MANUFACTURER;
                    y45.i(str, "MANUFACTURER");
                    String str2 = Build.MODEL;
                    y45.i(str2, "MODEL");
                    if (!deviceUtils.hasDeviceMetrics$window_release(str, str2)) {
                        emptyWindowAreaControllerImpl = new EmptyWindowAreaControllerImpl();
                    }
                }
                y45.g(windowAreaComponent);
                emptyWindowAreaControllerImpl = new WindowAreaControllerImpl(windowAreaComponent, extensionsUtil.getSafeVendorApiLevel());
            }
            return decorator.decorate(emptyWindowAreaControllerImpl);
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void overrideDecorator(WindowAreaControllerDecorator overridingDecorator) {
            y45.j(overridingDecorator, "overridingDecorator");
            decorator = overridingDecorator;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void reset() {
            decorator = EmptyDecorator.INSTANCE;
        }
    }

    static WindowAreaController getOrCreate() {
        return INSTANCE.getOrCreate();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void overrideDecorator(WindowAreaControllerDecorator windowAreaControllerDecorator) {
        INSTANCE.overrideDecorator(windowAreaControllerDecorator);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void reset() {
        INSTANCE.reset();
    }

    nz3 getWindowAreaInfos();

    void presentContentOnWindowArea(Binder token, Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback);

    void transferActivityToWindowArea(Binder token, Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback);
}
