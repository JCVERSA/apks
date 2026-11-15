package u6;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {
    public static final View a(ViewGroup viewGroup, int i10) {
        Intrinsics.h(viewGroup, "<this>");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i10, viewGroup, false);
        Intrinsics.g(viewInflate, "from(this.context).infla…layoutResId, this, false)");
        return viewInflate;
    }
}
