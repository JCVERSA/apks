package ul;

import com.transsion.lib_web.download_render.task.compare.CompareRequest;
import com.transsion.lib_web.download_render.task.compare.CompareResponse;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements b.a {

    private final List f73185a;

    private int f73186b;

    public a(List steps, int i10) {
        Intrinsics.h(steps, "steps");
        this.f73185a = steps;
        this.f73186b = i10;
    }

    @Override
    public CompareResponse a(CompareRequest request) {
        Intrinsics.h(request, "request");
        if (this.f73186b >= this.f73185a.size()) {
            return new CompareResponse(CollectionsKt.l(), CollectionsKt.l(), CollectionsKt.l(), 0L);
        }
        b bVar = (b) this.f73185a.get(this.f73186b);
        this.f73186b++;
        return bVar.a(request, this);
    }

    public a(List list, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i11 & 2) != 0 ? 0 : i10);
    }
}
