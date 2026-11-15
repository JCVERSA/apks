package androidx.window.layout;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.annotation.RestrictTo;
import androidx.window.core.ConsumerAdapter;
import androidx.window.extensions.layout.WindowLayoutComponent;
import androidx.window.layout.adapter.WindowBackend;
import androidx.window.layout.adapter.extensions.ExtensionWindowBackend;
import androidx.window.layout.adapter.sidecar.SidecarWindowBackend;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import defpackage.c74;
import defpackage.nz3;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yi5;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NotImplementedError;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bJ\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\t\u001a\u00020\bH&¢\u0006\u0004\b\u0006\u0010\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Landroidx/window/layout/WindowInfoTracker;", "", "Landroid/content/Context;", "context", "Lnz3;", "Landroidx/window/layout/WindowLayoutInfo;", "windowLayoutInfo", "(Landroid/content/Context;)Lnz3;", "Landroid/app/Activity;", "activity", "(Landroid/app/Activity;)Lnz3;", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public interface WindowInfoTracker {

    public static final Companion INSTANCE = Companion.$$INSTANCE;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\u000e\u0010\u0003R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R#\u0010\u001b\u001a\u0004\u0018\u00010\u00158@X\u0080\u0084\u0002¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u0012\u0004\b\u001a\u0010\u0003\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001e"}, d2 = {"Landroidx/window/layout/WindowInfoTracker$Companion;", "", MethodDecl.initName, "()V", "Landroid/content/Context;", "context", "Landroidx/window/layout/WindowInfoTracker;", "getOrCreate", "(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;", "Landroidx/window/layout/WindowInfoTrackerDecorator;", "overridingDecorator", "Lzfb;", "overrideDecorator", "(Landroidx/window/layout/WindowInfoTrackerDecorator;)V", "reset", "", "DEBUG", "Z", "", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Landroidx/window/layout/adapter/WindowBackend;", "extensionBackend$delegate", "Lyi5;", "getExtensionBackend$window_release", "()Landroidx/window/layout/adapter/WindowBackend;", "getExtensionBackend$window_release$annotations", "extensionBackend", "decorator", "Landroidx/window/layout/WindowInfoTrackerDecorator;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        private static final boolean DEBUG = false;
        static final Companion $$INSTANCE = new Companion();
        private static final String TAG = xq8.b(WindowInfoTracker.class).o();

        private static final yi5 extensionBackend = kotlin.b.a(new c74() {
            @Override
            public final WindowBackend invoke() {
                WindowLayoutComponent windowLayoutComponent;
                try {
                    ClassLoader classLoader = WindowInfoTracker.class.getClassLoader();
                    SafeWindowLayoutComponentProvider safeWindowLayoutComponentProvider = classLoader != null ? new SafeWindowLayoutComponentProvider(classLoader, new ConsumerAdapter(classLoader)) : null;
                    if (safeWindowLayoutComponentProvider == null || (windowLayoutComponent = safeWindowLayoutComponentProvider.getWindowLayoutComponent()) == null) {
                        return null;
                    }
                    ExtensionWindowBackend.Companion companion = ExtensionWindowBackend.Companion;
                    y45.i(classLoader, "loader");
                    return companion.newInstance(windowLayoutComponent, new ConsumerAdapter(classLoader));
                } catch (Throwable unused) {
                    if (!WindowInfoTracker.Companion.DEBUG) {
                        return null;
                    }
                    Log.d(WindowInfoTracker.Companion.TAG, "Failed to load WindowExtensions");
                    return null;
                }
            }
        });
        private static WindowInfoTrackerDecorator decorator = EmptyDecorator.INSTANCE;

        private Companion() {
        }

        public static void getExtensionBackend$window_release$annotations() {
        }

        public final WindowBackend getExtensionBackend$window_release() {
            return (WindowBackend) extensionBackend.getValue();
        }

        public final WindowInfoTracker getOrCreate(Context context) {
            y45.j(context, "context");
            WindowBackend extensionBackend$window_release = getExtensionBackend$window_release();
            if (extensionBackend$window_release == null) {
                extensionBackend$window_release = SidecarWindowBackend.INSTANCE.getInstance(context);
            }
            return decorator.decorate(new WindowInfoTrackerImpl(WindowMetricsCalculatorCompat.INSTANCE, extensionBackend$window_release));
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void overrideDecorator(WindowInfoTrackerDecorator overridingDecorator) {
            y45.j(overridingDecorator, "overridingDecorator");
            decorator = overridingDecorator;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final void reset() {
            decorator = EmptyDecorator.INSTANCE;
        }
    }

    static WindowInfoTracker getOrCreate(Context context) {
        return INSTANCE.getOrCreate(context);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void overrideDecorator(WindowInfoTrackerDecorator windowInfoTrackerDecorator) {
        INSTANCE.overrideDecorator(windowInfoTrackerDecorator);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    static void reset() {
        INSTANCE.reset();
    }

    nz3 windowLayoutInfo(Activity activity);

    default nz3 windowLayoutInfo(Context context) {
        y45.j(context, "context");
        Activity activity = context instanceof Activity ? (Activity) context : null;
        nz3 nz3VarWindowLayoutInfo = activity != null ? windowLayoutInfo(activity) : null;
        if (nz3VarWindowLayoutInfo != null) {
            return nz3VarWindowLayoutInfo;
        }
        throw new NotImplementedError("Must override windowLayoutInfo(context) and provide an implementation.");
    }
}
