package androidx.window.area;

import android.content.Context;
import android.view.View;
import androidx.window.core.ExperimentalWindowApi;
import androidx.window.extensions.area.ExtensionWindowAreaPresentation;
import androidx.window.extensions.area.WindowAreaComponent;
import com.lzy.okgo.model.HttpHeaders;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@ExperimentalWindowApi
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0010R\u001a\u0010\u0012\u001a\u00020\u00118\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Landroidx/window/area/RearDisplayPresentationSessionPresenterImpl;", "Landroidx/window/area/WindowAreaSessionPresenter;", "Landroidx/window/extensions/area/WindowAreaComponent;", "windowAreaComponent", "Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;", "presentation", MethodDecl.initName, "(Landroidx/window/extensions/area/WindowAreaComponent;Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;)V", "Landroid/view/View;", "view", "Lzfb;", "setContentView", "(Landroid/view/View;)V", HttpHeaders.HEAD_VALUE_CONNECTION_CLOSE, "()V", "Landroidx/window/extensions/area/WindowAreaComponent;", "Landroidx/window/extensions/area/ExtensionWindowAreaPresentation;", "Landroid/content/Context;", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class RearDisplayPresentationSessionPresenterImpl implements WindowAreaSessionPresenter {
    private final Context context;
    private final ExtensionWindowAreaPresentation presentation;
    private final WindowAreaComponent windowAreaComponent;

    public RearDisplayPresentationSessionPresenterImpl(WindowAreaComponent windowAreaComponent, ExtensionWindowAreaPresentation extensionWindowAreaPresentation) {
        y45.j(windowAreaComponent, "windowAreaComponent");
        y45.j(extensionWindowAreaPresentation, "presentation");
        this.windowAreaComponent = windowAreaComponent;
        this.presentation = extensionWindowAreaPresentation;
        Context presentationContext = extensionWindowAreaPresentation.getPresentationContext();
        y45.i(presentationContext, "presentation.presentationContext");
        this.context = presentationContext;
    }

    @Override
    public void close() {
        this.windowAreaComponent.endRearDisplayPresentationSession();
    }

    @Override
    public Context getContext() {
        return this.context;
    }

    @Override
    public void setContentView(View view) {
        y45.j(view, "view");
        this.presentation.setPresentationView(view);
    }
}
