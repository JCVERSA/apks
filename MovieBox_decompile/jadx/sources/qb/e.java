package qb;

import java.util.ArrayList;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import tb.o;

public final class e implements dd.f {

    private final o f69608a;

    public e(o userMetadata) {
        Intrinsics.h(userMetadata, "userMetadata");
        this.f69608a = userMetadata;
    }

    @Override
    public void a(dd.e rolloutsState) {
        Intrinsics.h(rolloutsState, "rolloutsState");
        o oVar = this.f69608a;
        Set setB = rolloutsState.b();
        Intrinsics.g(setB, "rolloutsState.rolloutAssignments");
        Set<dd.d> set = setB;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(set, 10));
        for (dd.d dVar : set) {
            arrayList.add(tb.i.b(dVar.d(), dVar.b(), dVar.c(), dVar.f(), dVar.e()));
        }
        oVar.t(arrayList);
        g.f().b("Updated Crashlytics Rollout State");
    }
}
