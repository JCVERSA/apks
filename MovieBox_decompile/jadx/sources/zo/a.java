package zo;

import androidx.p009lifecycle.u;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

public final class a {

    private final u f76867a;

    private final RewardsCenterModel f76868b;

    private final WeakReference f76869c;

    private final n0 f76870d;

    public a(u owner, RewardsCenterModel viewModel, WeakReference fragment, n0 scope) {
        Intrinsics.h(owner, "owner");
        Intrinsics.h(viewModel, "viewModel");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(scope, "scope");
        this.f76867a = owner;
        this.f76868b = viewModel;
        this.f76869c = fragment;
        this.f76870d = scope;
    }

    public final WeakReference a() {
        return this.f76869c;
    }

    public final n0 b() {
        return this.f76870d;
    }

    public final RewardsCenterModel c() {
        return this.f76868b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f76867a, aVar.f76867a) && Intrinsics.c(this.f76868b, aVar.f76868b) && Intrinsics.c(this.f76869c, aVar.f76869c) && Intrinsics.c(this.f76870d, aVar.f76870d);
    }

    public int hashCode() {
        return (((((this.f76867a.hashCode() * 31) + this.f76868b.hashCode()) * 31) + this.f76869c.hashCode()) * 31) + this.f76870d.hashCode();
    }

    public String toString() {
        return "TaskConfig(owner=" + this.f76867a + ", viewModel=" + this.f76868b + ", fragment=" + this.f76869c + ", scope=" + this.f76870d + ")";
    }
}
