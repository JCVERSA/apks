package da;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class f implements com.google.android.exoplayer2.k {

    public static final f f58958b = new f(ImmutableList.of());

    public static final com.google.android.exoplayer2.k.a f58959c = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return f.c(bundle);
        }
    };

    public final ImmutableList f58960a;

    public f(List list) {
        this.f58960a = ImmutableList.copyOf((Collection) list);
    }

    private static ImmutableList b(List list) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (((b) list.get(i10)).f58927d == null) {
                aVarBuilder.a((b) list.get(i10));
            }
        }
        return aVarBuilder.e();
    }

    public static final f c(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(d(0));
        return new f(parcelableArrayList == null ? ImmutableList.of() : com.google.android.exoplayer2.util.d.b(b.f58923s, parcelableArrayList));
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(d(0), com.google.android.exoplayer2.util.d.d(b(this.f58960a)));
        return bundle;
    }
}
