package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import com.transsion.apiinvoke.invoke.RspCode;
import defpackage.nt1;
import defpackage.pc9;
import defpackage.s74;
import defpackage.sc9;
import defpackage.wh1;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lsc9;", "Landroid/view/View;", "Lzfb;", "<anonymous>", "(Lsc9;)V"}, k = 3, mv = {1, 8, 0})
@nt1(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {RspCode.ERROR_SERVICE_PUBLISH_REMOTE, RspCode.ERROR_INVALID_PUBLISH_TO_REMOTE}, m = "invokeSuspend")
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements s74 {
    final View $this_allViews;
    private Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, wh1<? super ViewKt$allViews$1> wh1Var) {
        super(2, wh1Var);
        this.$this_allViews = view;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, wh1Var);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override
    public final Object invoke(sc9 sc9Var, wh1<? super zfb> wh1Var) {
        return ((ViewKt$allViews$1) create(sc9Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        sc9 sc9Var;
        Object objF = z45.f();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                sc9Var = (sc9) this.L$0;
                kotlin.c.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.c.b(obj);
            }
            return zfb.a;
        }
        kotlin.c.b(obj);
        sc9Var = (sc9) this.L$0;
        View view = this.$this_allViews;
        this.L$0 = sc9Var;
        this.label = 1;
        if (sc9Var.b(view, this) == objF) {
            return objF;
        }
        View view2 = this.$this_allViews;
        if (view2 instanceof ViewGroup) {
            pc9 descendants = ViewGroupKt.getDescendants((ViewGroup) view2);
            this.L$0 = null;
            this.label = 2;
            if (sc9Var.c(descendants, this) == objF) {
                return objF;
            }
        }
        return zfb.a;
    }
}
