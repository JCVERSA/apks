package androidx.compose.ui.text.font;

import androidx.datastore.preferences.protobuf.DescriptorProtos$Edition;
import com.google.logging.type.LogSeverity;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class p implements Comparable {

    public static final a f5840b = new a(null);

    private static final p f5841c;

    private static final p f5842d;

    private static final p f5843e;

    private static final p f5844f;

    private static final p f5845g;

    private static final p f5846h;

    private static final p f5847i;

    private static final p f5848j;

    private static final p f5849k;

    private static final p f5850l;

    private static final p f5851m;

    private static final p f5852n;

    private static final p f5853o;

    private static final p f5854p;

    private static final p f5855q;

    private static final p f5856r;

    private static final p f5857s;

    private static final p f5858t;

    private static final List f5859u;

    private final int f5860a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final p a() {
            return p.f5853o;
        }

        public final p b() {
            return p.f5844f;
        }

        public final p c() {
            return p.f5845g;
        }

        public final p d() {
            return p.f5846h;
        }

        public final p e() {
            return p.f5847i;
        }

        private a() {
        }
    }

    static {
        p pVar = new p(100);
        f5841c = pVar;
        p pVar2 = new p(200);
        f5842d = pVar2;
        p pVar3 = new p(300);
        f5843e = pVar3;
        p pVar4 = new p(400);
        f5844f = pVar4;
        p pVar5 = new p(500);
        f5845g = pVar5;
        p pVar6 = new p(600);
        f5846h = pVar6;
        p pVar7 = new p(LogSeverity.ALERT_VALUE);
        f5847i = pVar7;
        p pVar8 = new p(LogSeverity.EMERGENCY_VALUE);
        f5848j = pVar8;
        p pVar9 = new p(DescriptorProtos$Edition.EDITION_LEGACY_VALUE);
        f5849k = pVar9;
        f5850l = pVar;
        f5851m = pVar2;
        f5852n = pVar3;
        f5853o = pVar4;
        f5854p = pVar5;
        f5855q = pVar6;
        f5856r = pVar7;
        f5857s = pVar8;
        f5858t = pVar9;
        f5859u = CollectionsKt.o(pVar, pVar2, pVar3, pVar4, pVar5, pVar6, pVar7, pVar8, pVar9);
    }

    public p(int i10) {
        this.f5860a = i10;
        if (1 > i10 || i10 >= 1001) {
            throw new IllegalArgumentException(("Font weight can be in range [1, 1000]. Current value: " + i10).toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && this.f5860a == ((p) obj).f5860a;
    }

    @Override
    public int compareTo(p pVar) {
        return Intrinsics.j(this.f5860a, pVar.f5860a);
    }

    public final int h() {
        return this.f5860a;
    }

    public int hashCode() {
        return this.f5860a;
    }

    public String toString() {
        return "FontWeight(weight=" + this.f5860a + ')';
    }
}
