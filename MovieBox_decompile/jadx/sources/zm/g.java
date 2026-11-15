package zm;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.w;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class g {

    private final Fragment f76860a;

    private final int f76861b;

    private final Subject f76862c;

    private final String f76863d;

    private final String f76864e;

    private final boolean f76865f;

    private final boolean f76866g;

    public g(Fragment fragment, int i10, Subject subject, String pageName, String str, boolean z10, boolean z11) {
        Fragment fragmentB;
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(pageName, "pageName");
        this.f76860a = fragment;
        this.f76861b = i10;
        this.f76862c = subject;
        this.f76863d = pageName;
        this.f76864e = str;
        this.f76865f = z10;
        this.f76866g = z11;
        if (!fragment.isAdded() || fragment.isDetached() || fragment.isRemoving()) {
            return;
        }
        FragmentManager childFragmentManager = fragment.getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        w wVarP = childFragmentManager.p();
        Intrinsics.g(wVarP, "beginTransaction()");
        wv.a aVar = (wv.a) TheRouter.d(wv.a.class, new Object[0]);
        if (aVar != null && (fragmentB = aVar.b(subject, pageName, str, z10, z11)) != null) {
            wVarP.s(i10, fragmentB);
        }
        wVarP.j();
    }

    public g(Fragment fragment, int i10, Subject subject, String str, String str2, boolean z10, boolean z11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, i10, subject, str, str2, (i11 & 32) != 0 ? false : z10, (i11 & 64) != 0 ? false : z11);
    }
}
