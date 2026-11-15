package androidx.core.os;

import android.os.Bundle;
import android.util.Size;
import android.util.SizeF;
import androidx.annotation.RequiresApi;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@RequiresApi(21)
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007¢\u0006\u0004\b\u000b\u0010\fJ)\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\rH\u0007¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/core/os/BundleApi21ImplKt;", "", MethodDecl.initName, "()V", "Landroid/os/Bundle;", "bundle", "", "key", "Landroid/util/Size;", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "putSize", "(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V", "Landroid/util/SizeF;", "putSizeF", "(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class BundleApi21ImplKt {
    public static final BundleApi21ImplKt INSTANCE = new BundleApi21ImplKt();

    private BundleApi21ImplKt() {
    }

    public static final void putSize(Bundle bundle, String key, Size value) {
        bundle.putSize(key, value);
    }

    public static final void putSizeF(Bundle bundle, String key, SizeF value) {
        bundle.putSizeF(key, value);
    }
}
