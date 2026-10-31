package com.snaptube.premium.selfupgrade.force;

import android.view.View;
import com.snaptube.premium.selfupgrade.a;
import com.snaptube.premium.selfupgrade.incremental_upgrade.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.dx2;
import o.mg8;
import o.or3;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/view/View;", "it", "Lo/mg8;", "invoke", "(Landroid/view/View;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class ForceUpdateActivity$initView$1 extends Lambda implements dx2 {
    final ForceUpdateActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForceUpdateActivity$initView$1(ForceUpdateActivity forceUpdateActivity) {
        super(1);
        this.this$0 = forceUpdateActivity;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((View) obj);
        return mg8.a;
    }

    public final void invoke(@NotNull View view) {
        or3.f(view, "it");
        a.a.e(true);
        ForceUpdateActivity.Z1(this.this$0);
        b.k(ForceUpdateActivity.W1(this.this$0), "force_update_dialog", true, ForceUpdateActivity.X1(this.this$0), "upgrade_main_page");
    }
}
