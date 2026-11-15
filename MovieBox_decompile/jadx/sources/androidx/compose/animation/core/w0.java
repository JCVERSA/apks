package androidx.compose.animation.core;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

public abstract class w0 {

    public static final class a implements q {

        private final List f2203a;

        a(o oVar, float f10, float f11) {
            IntRange intRangeS = RangesKt.s(0, oVar.b());
            ArrayList arrayList = new ArrayList(CollectionsKt.v(intRangeS, 10));
            Iterator<Integer> it = intRangeS.iterator();
            while (it.hasNext()) {
                arrayList.add(new f0(f10, f11, oVar.a(((IntIterator) it).a())));
            }
            this.f2203a = arrayList;
        }

        @Override
        public f0 get(int i10) {
            return (f0) this.f2203a.get(i10);
        }
    }

    public static final class b implements q {

        private final f0 f2204a;

        b(float f10, float f11) {
            this.f2204a = new f0(f10, f11, 0.0f, 4, null);
        }

        @Override
        public f0 get(int i10) {
            return this.f2204a;
        }
    }

    public static final q b(o oVar, float f10, float f11) {
        return oVar != null ? new a(oVar, f10, f11) : new b(f10, f11);
    }
}
