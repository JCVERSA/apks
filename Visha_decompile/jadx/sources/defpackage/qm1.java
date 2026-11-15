package defpackage;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class qm1 implements e {
    public static final qm1 c = new qm1(ImmutableList.of());
    public static final e.a d = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return qm1.c(bundle);
        }
    };
    public final ImmutableList b;

    public qm1(List list) {
        this.b = ImmutableList.copyOf((Collection) list);
    }

    public static ImmutableList b(List list) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (int i = 0; i < list.size(); i++) {
            if (((jm1) list.get(i)).e == null) {
                aVarBuilder.a((jm1) list.get(i));
            }
        }
        return aVarBuilder.e();
    }

    public static final qm1 c(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return new qm1(parcelableArrayList == null ? ImmutableList.of() : xn0.b(jm1.t, parcelableArrayList));
    }

    private static String d(int i) {
        return Integer.toString(i, 36);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), xn0.d(b(this.b)));
        return bundle;
    }
}
