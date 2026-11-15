package androidx.p003activity.contextaware;

import android.content.Context;
import defpackage.cr0;
import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.c;

@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"androidx/activity/contextaware/ContextAwareKt$withContextAvailable$2$listener$1", "Landroidx/activity/contextaware/OnContextAvailableListener;", "Landroid/content/Context;", "context", "Lzfb;", "onContextAvailable", "(Landroid/content/Context;)V", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 176)
public final class ContextAwareKt$withContextAvailable$2$listener$1 implements OnContextAvailableListener {
    final cr0 $co;
    final e74 $onContextAvailable;

    public ContextAwareKt$withContextAvailable$2$listener$1(cr0 cr0Var, e74 e74Var) {
        this.$co = cr0Var;
        this.$onContextAvailable = e74Var;
    }

    @Override
    public void onContextAvailable(Context context) {
        Object objM279constructorimpl;
        y45.j(context, "context");
        cr0 cr0Var = this.$co;
        e74 e74Var = this.$onContextAvailable;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(e74Var.invoke(context));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        cr0Var.resumeWith(objM279constructorimpl);
    }
}
