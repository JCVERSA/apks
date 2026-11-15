package tl;

import com.transsion.lib_web.download_render.data.PageData;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final long f72771a;

    private final PageData f72772b;

    public a(long j10, PageData remotePageData) {
        Intrinsics.h(remotePageData, "remotePageData");
        this.f72771a = j10;
        this.f72772b = remotePageData;
    }

    public final PageData a() {
        return this.f72772b;
    }

    public final long b() {
        return this.f72771a;
    }

    public final void c() {
        Iterator it = CollectionsKt.o(new e(this.f72771a, this.f72772b), new c(this.f72771a, this.f72772b)).iterator();
        while (it.hasNext()) {
            ((d) it.next()).start();
        }
    }
}
