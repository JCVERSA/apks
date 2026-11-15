package androidx.window;

import androidx.annotation.IntRange;
import androidx.window.core.ExtensionsUtil;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\t\b\u0000¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\t\u001a\u00020\u00062\b\b\u0001\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\u00020\u00048WX\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/window/WindowSdkExtensions;", "", MethodDecl.initName, "()V", "", "version", "Lzfb;", "requireExtensionVersion$window_release", "(I)V", "requireExtensionVersion", "extensionVersion", "I", "getExtensionVersion", "()I", "Companion", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class WindowSdkExtensions {

    public static final Companion INSTANCE = new Companion(null);
    private static WindowSdkExtensionsDecorator decorator = EmptyDecoratorWindowSdk.INSTANCE;
    private final int extensionVersion = ExtensionsUtil.INSTANCE.getSafeVendorApiLevel();

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0000¢\u0006\u0004\b\r\u0010\u0003R\u0016\u0010\u000f\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/window/WindowSdkExtensions$Companion;", "", MethodDecl.initName, "()V", "Landroidx/window/WindowSdkExtensions;", "getInstance", "()Landroidx/window/WindowSdkExtensions;", "Landroidx/window/WindowSdkExtensionsDecorator;", "overridingDecorator", "Lzfb;", "overrideDecorator$window_release", "(Landroidx/window/WindowSdkExtensionsDecorator;)V", "overrideDecorator", "reset$window_release", "reset", "decorator", "Landroidx/window/WindowSdkExtensionsDecorator;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final WindowSdkExtensions getInstance() {
            return WindowSdkExtensions.decorator.decorate(new WindowSdkExtensions() {
            });
        }

        public final void overrideDecorator$window_release(WindowSdkExtensionsDecorator overridingDecorator) {
            y45.j(overridingDecorator, "overridingDecorator");
            WindowSdkExtensions.decorator = overridingDecorator;
        }

        public final void reset$window_release() {
            WindowSdkExtensions.decorator = EmptyDecoratorWindowSdk.INSTANCE;
        }

        private Companion() {
        }
    }

    public static final WindowSdkExtensions getInstance() {
        return INSTANCE.getInstance();
    }

    @IntRange(from = 0)
    public int getExtensionVersion() {
        return this.extensionVersion;
    }

    public final void requireExtensionVersion$window_release(@IntRange(from = 1) int version) {
        if (getExtensionVersion() >= version) {
            return;
        }
        throw new UnsupportedOperationException("This API requires extension version " + version + ", but the device is on " + getExtensionVersion());
    }
}
