package androidx.room;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class q {

    private final InvalidationTracker.b f14390a;

    private final int[] f14391b;

    private final String[] f14392c;

    private final Set f14393d;

    public q(InvalidationTracker.b observer, int[] tableIds, String[] tableNames) {
        Intrinsics.h(observer, "observer");
        Intrinsics.h(tableIds, "tableIds");
        Intrinsics.h(tableNames, "tableNames");
        this.f14390a = observer;
        this.f14391b = tableIds;
        this.f14392c = tableNames;
        if (tableIds.length != tableNames.length) {
            throw new IllegalStateException("Check failed.");
        }
        this.f14393d = !(tableNames.length == 0) ? SetsKt.d(tableNames[0]) : SetsKt.f();
    }

    public final InvalidationTracker.b a() {
        return this.f14390a;
    }

    public final int[] b() {
        return this.f14391b;
    }

    public final void c(Set invalidatedTablesIds) {
        Set setF;
        Intrinsics.h(invalidatedTablesIds, "invalidatedTablesIds");
        int[] iArr = this.f14391b;
        int length = iArr.length;
        if (length != 0) {
            int i10 = 0;
            if (length != 1) {
                Set setB = SetsKt.b();
                int[] iArr2 = this.f14391b;
                int length2 = iArr2.length;
                int i11 = 0;
                while (i10 < length2) {
                    int i12 = i11 + 1;
                    if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i10]))) {
                        setB.add(this.f14392c[i11]);
                    }
                    i10++;
                    i11 = i12;
                }
                setF = SetsKt.a(setB);
            } else {
                setF = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.f14393d : SetsKt.f();
            }
        } else {
            setF = SetsKt.f();
        }
        if (setF.isEmpty()) {
            return;
        }
        this.f14390a.c(setF);
    }

    public final void d(Set invalidatedTablesNames) {
        Set setF;
        Intrinsics.h(invalidatedTablesNames, "invalidatedTablesNames");
        int length = this.f14392c.length;
        if (length == 0) {
            setF = SetsKt.f();
        } else if (length == 1) {
            Set set = invalidatedTablesNames;
            if (!(set instanceof Collection) || !set.isEmpty()) {
                Iterator it = set.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (StringsKt.H((String) it.next(), this.f14392c[0], true)) {
                            setF = this.f14393d;
                            break;
                        }
                    } else {
                        setF = SetsKt.f();
                        break;
                    }
                }
            } else {
                setF = SetsKt.f();
                break;
            }
        } else {
            Set setB = SetsKt.b();
            Iterator it2 = invalidatedTablesNames.iterator();
            while (it2.hasNext()) {
                String str = (String) it2.next();
                for (String str2 : this.f14392c) {
                    if (StringsKt.H(str2, str, true)) {
                        setB.add(str2);
                        break;
                    }
                }
            }
            setF = SetsKt.a(setB);
        }
        if (setF.isEmpty()) {
            return;
        }
        this.f14390a.c(setF);
    }
}
