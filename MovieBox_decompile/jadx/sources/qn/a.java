package qn;

import androidx.media3.common.f0;
import androidx.media3.common.i0;
import androidx.media3.common.r;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.r4;
import kotlin.jvm.internal.Intrinsics;

public abstract class a {
    public static final f0 a(i0 i0Var, d mediaTrackGroup) {
        Intrinsics.h(i0Var, "<this>");
        Intrinsics.h(mediaTrackGroup, "mediaTrackGroup");
        r4 it = i0Var.a().iterator();
        Intrinsics.g(it, "iterator(...)");
        while (it.hasNext()) {
            i0.a aVar = (i0.a) it.next();
            if (Intrinsics.c(aVar.a().f9660b, mediaTrackGroup.c()) && aVar.a().f9661c == mediaTrackGroup.e()) {
                return aVar.a();
            }
        }
        return null;
    }

    public static final b b(r rVar) {
        Intrinsics.h(rVar, "<this>");
        return new b(rVar.f9835a, rVar.f9836b, rVar.f9838d, rVar.f9839e, rVar.f9842h, rVar.f9843i, rVar.f9844j, rVar.f9845k, rVar.f9856v, rVar.f9857w, rVar.f9858x, rVar.f9859y, rVar.f9860z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final c c(i0 i0Var) {
        Intrinsics.h(i0Var, "<this>");
        if (i0Var.b()) {
            return new c(null, 1, null);
        }
        int size = i0Var.a().size();
        d[] dVarArr = new d[size];
        for (int i10 = 0; i10 < size; i10++) {
            E e10 = i0Var.a().get(i10);
            Intrinsics.g(e10, "get(...)");
            dVarArr[i10] = d((i0.a) e10);
        }
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(dVarArr);
        Intrinsics.g(immutableListCopyOf, "copyOf(...)");
        return new c(immutableListCopyOf);
    }

    public static final d d(i0.a aVar) {
        Intrinsics.h(aVar, "<this>");
        int i10 = aVar.f9779a;
        b[] bVarArr = new b[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            r rVarB = aVar.b(i11);
            Intrinsics.g(rVarB, "getTrackFormat(...)");
            bVarArr[i11] = b(rVarB);
        }
        return new d(aVar.f9779a, aVar.a().f9660b, aVar.a().f9661c, aVar.e(), bVarArr);
    }
}
