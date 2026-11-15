package androidx.compose.ui.node;

public abstract class z {
    public static final int b(LookaheadCapablePlaceable lookaheadCapablePlaceable, androidx.compose.ui.layout.a aVar) {
        LookaheadCapablePlaceable lookaheadCapablePlaceableV0 = lookaheadCapablePlaceable.V0();
        if (!(lookaheadCapablePlaceableV0 != null)) {
            g0.a.b("Child of " + lookaheadCapablePlaceable + " cannot be null when calculating alignment line");
        }
        if (lookaheadCapablePlaceable.a1().v().containsKey(aVar)) {
            Integer num = (Integer) lookaheadCapablePlaceable.a1().v().get(aVar);
            if (num != null) {
                return num.intValue();
            }
            return Integer.MIN_VALUE;
        }
        int iS0 = lookaheadCapablePlaceableV0.S0(aVar);
        if (iS0 == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        lookaheadCapablePlaceableV0.n1(true);
        lookaheadCapablePlaceable.m1(true);
        lookaheadCapablePlaceable.l1();
        lookaheadCapablePlaceableV0.n1(false);
        lookaheadCapablePlaceable.m1(false);
        return iS0 + (aVar instanceof androidx.compose.ui.layout.h ? o0.p.i(lookaheadCapablePlaceableV0.d1()) : o0.p.h(lookaheadCapablePlaceableV0.d1()));
    }
}
