package com.snaptube.premium.vault;

import com.wandoujia.base.utils.RxBus;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.dx2;
import o.mg8;
import o.z31;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "it", "Lo/mg8;", "invoke", "(Ljava/lang/Integer;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
public final class LockManager$resumeFromRemainFile$3 extends Lambda implements dx2 {
    final boolean $forceUpdate;
    final boolean $isQuickly;
    final Set<String> $mediaList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LockManager$resumeFromRemainFile$3(boolean z, boolean z2, Set<String> set) {
        super(1);
        this.$isQuickly = z;
        this.$forceUpdate = z2;
        this.$mediaList = set;
    }

    @Override
    public Object invoke(Object obj) {
        invoke((Integer) obj);
        return mg8.a;
    }

    public final void invoke(Integer num) {
        z31.D(false);
        RxBus.d().f(1157);
        if (this.$isQuickly) {
            LockManager.a.W(this.$forceUpdate, this.$mediaList, false);
        }
    }
}
