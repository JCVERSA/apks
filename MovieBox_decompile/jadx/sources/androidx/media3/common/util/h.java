package androidx.media3.common.util;

import android.os.Bundle;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class h {
    public static ImmutableList a(com.google.common.base.f fVar, List list) {
        ImmutableList.a aVarBuilder = ImmutableList.builder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            aVarBuilder.a(fVar.apply((Bundle) a.e((Bundle) list.get(i10))));
        }
        return aVarBuilder.e();
    }

    public static ArrayList b(Collection collection, com.google.common.base.f fVar) {
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add((Bundle) fVar.apply(it.next()));
        }
        return arrayList;
    }
}
