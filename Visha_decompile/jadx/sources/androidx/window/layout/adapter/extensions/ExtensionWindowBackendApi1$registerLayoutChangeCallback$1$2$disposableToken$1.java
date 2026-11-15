package androidx.window.layout.adapter.extensions;

import androidx.window.extensions.layout.WindowLayoutInfo;
import defpackage.e74;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionReferenceImpl;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
public class ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1 extends FunctionReferenceImpl implements e74 {
    public ExtensionWindowBackendApi1$registerLayoutChangeCallback$1$2$disposableToken$1(Object obj) {
        super(1, obj, MulticastConsumer.class, "accept", "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V", 0);
    }

    @Override
    public Object invoke(Object obj) {
        invoke((WindowLayoutInfo) obj);
        return zfb.a;
    }

    public final void invoke(WindowLayoutInfo windowLayoutInfo) {
        y45.j(windowLayoutInfo, "p0");
        ((MulticastConsumer) this.receiver).accept(windowLayoutInfo);
    }
}
