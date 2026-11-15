package androidx.window.area;

import android.app.Activity;
import android.os.Binder;
import androidx.window.core.ExperimentalWindowApi;
import defpackage.nz3;
import defpackage.sz3;
import defpackage.y45;
import defpackage.y71;
import java.util.concurrent.Executor;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@ExperimentalWindowApi
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J/\u0010\r\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ/\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R \u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Landroidx/window/area/EmptyWindowAreaControllerImpl;", "Landroidx/window/area/WindowAreaController;", MethodDecl.initName, "()V", "Landroid/os/Binder;", "token", "Landroid/app/Activity;", "activity", "Ljava/util/concurrent/Executor;", "executor", "Landroidx/window/area/WindowAreaSessionCallback;", "windowAreaSessionCallback", "Lzfb;", "transferActivityToWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaSessionCallback;)V", "Landroidx/window/area/WindowAreaPresentationSessionCallback;", "windowAreaPresentationSessionCallback", "presentContentOnWindowArea", "(Landroid/os/Binder;Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/window/area/WindowAreaPresentationSessionCallback;)V", "Lnz3;", "", "Landroidx/window/area/WindowAreaInfo;", "getWindowAreaInfos", "()Lnz3;", "windowAreaInfos", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class EmptyWindowAreaControllerImpl implements WindowAreaController {
    @Override
    public nz3 getWindowAreaInfos() {
        return sz3.t(y71.k());
    }

    @Override
    public void presentContentOnWindowArea(Binder token, Activity activity, Executor executor, WindowAreaPresentationSessionCallback windowAreaPresentationSessionCallback) {
        y45.j(token, "token");
        y45.j(activity, "activity");
        y45.j(executor, "executor");
        y45.j(windowAreaPresentationSessionCallback, "windowAreaPresentationSessionCallback");
        windowAreaPresentationSessionCallback.onSessionEnded(new IllegalStateException("There are no WindowAreas"));
    }

    @Override
    public void transferActivityToWindowArea(Binder token, Activity activity, Executor executor, WindowAreaSessionCallback windowAreaSessionCallback) {
        y45.j(token, "token");
        y45.j(activity, "activity");
        y45.j(executor, "executor");
        y45.j(windowAreaSessionCallback, "windowAreaSessionCallback");
        windowAreaSessionCallback.onSessionEnded(new IllegalStateException("There are no WindowAreas"));
    }
}
