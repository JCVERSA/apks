package defpackage;

import java.util.ArrayList;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.a;

public abstract class bc8 {
    public static final void a(int i, int i2, a aVar) {
        y45.j(aVar, "descriptor");
        ArrayList arrayList = new ArrayList();
        int i3 = (~i) & i2;
        for (int i4 = 0; i4 < 32; i4++) {
            if ((i3 & 1) != 0) {
                arrayList.add(aVar.f(i4));
            }
            i3 >>>= 1;
        }
        throw new MissingFieldException(arrayList, aVar.h());
    }
}
