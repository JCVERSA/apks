package eq;

import com.transsion.search_pugc.bean.SecondTab;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class a {

    private SecondTab f59789a;

    /* JADX WARN: Multi-variable type inference failed */
    public a() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final SecondTab a() {
        return this.f59789a;
    }

    public final void b(SecondTab secondTab) {
        this.f59789a = secondTab;
    }

    public a(SecondTab secondTab) {
        this.f59789a = secondTab;
    }

    public a(SecondTab secondTab, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : secondTab);
    }
}
