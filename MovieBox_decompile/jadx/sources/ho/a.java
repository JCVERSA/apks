package ho;

import android.content.Context;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;

public interface a {

    public static final C0746a f61431h1 = C0746a.f61432a;

    public static final class C0746a {

        static final C0746a f61432a = new C0746a();

        private C0746a() {
        }

        public final a a(Context context, Fragment fragment, RecyclerView recyclerView, com.transsion.postdetail.ui.adapter.f fVar, String pageName, String subpageName, boolean z10) {
            Intrinsics.h(context, "context");
            Intrinsics.h(fragment, "fragment");
            Intrinsics.h(pageName, "pageName");
            Intrinsics.h(subpageName, "subpageName");
            return new e(context, fragment, recyclerView, fVar, pageName, subpageName, z10);
        }
    }

    void a();

    void b();

    void c();

    void onPageDestroy();
}
