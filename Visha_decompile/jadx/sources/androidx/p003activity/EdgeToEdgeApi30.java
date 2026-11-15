package androidx.p003activity;

import android.view.Window;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@RequiresApi(30)
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0017¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/activity/EdgeToEdgeApi30;", "Landroidx/activity/EdgeToEdgeApi29;", MethodDecl.initName, "()V", "Landroid/view/Window;", "window", "Lzfb;", "adjustLayoutInDisplayCutoutMode", "(Landroid/view/Window;)V", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class EdgeToEdgeApi30 extends EdgeToEdgeApi29 {
    @Override
    @DoNotInline
    public void adjustLayoutInDisplayCutoutMode(Window window) {
        y45.j(window, "window");
        window.getAttributes().layoutInDisplayCutoutMode = 3;
    }
}
