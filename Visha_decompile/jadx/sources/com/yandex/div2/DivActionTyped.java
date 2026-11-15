package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivActionTyped implements d65, ko4 {
    public static final g b = new g(null);
    public static final s74 c = new s74() {
        @Override
        public final DivActionTyped invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionTyped.b.a(hx7Var, jSONObject);
        }
    };
    public Integer a;

    public static final class a extends DivActionTyped {
        public final DivActionAnimatorStart d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivActionAnimatorStart divActionAnimatorStart) {
            super(null);
            y45.j(divActionAnimatorStart, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionAnimatorStart;
        }

        public final DivActionAnimatorStart c() {
            return this.d;
        }
    }

    public static final class b extends DivActionTyped {
        public final DivActionAnimatorStop d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivActionAnimatorStop divActionAnimatorStop) {
            super(null);
            y45.j(divActionAnimatorStop, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionAnimatorStop;
        }

        public final DivActionAnimatorStop c() {
            return this.d;
        }
    }

    public static final class c extends DivActionTyped {
        public final DivActionArrayInsertValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivActionArrayInsertValue divActionArrayInsertValue) {
            super(null);
            y45.j(divActionArrayInsertValue, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionArrayInsertValue;
        }

        public final DivActionArrayInsertValue c() {
            return this.d;
        }
    }

    public static final class d extends DivActionTyped {
        public final DivActionArrayRemoveValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivActionArrayRemoveValue divActionArrayRemoveValue) {
            super(null);
            y45.j(divActionArrayRemoveValue, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionArrayRemoveValue;
        }

        public final DivActionArrayRemoveValue c() {
            return this.d;
        }
    }

    public static final class e extends DivActionTyped {
        public final DivActionArraySetValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivActionArraySetValue divActionArraySetValue) {
            super(null);
            y45.j(divActionArraySetValue, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionArraySetValue;
        }

        public final DivActionArraySetValue c() {
            return this.d;
        }
    }

    public static final class f extends DivActionTyped {
        public final DivActionClearFocus d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DivActionClearFocus divActionClearFocus) {
            super(null);
            y45.j(divActionClearFocus, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionClearFocus;
        }

        public final DivActionClearFocus c() {
            return this.d;
        }
    }

    public static final class g {
        public g(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionTyped a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((com.yandex.div2.r) ml0.a().h1().getValue()).a(hx7Var, jSONObject);
        }

        public g() {
        }
    }

    public static final class h extends DivActionTyped {
        public final DivActionCopyToClipboard d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(DivActionCopyToClipboard divActionCopyToClipboard) {
            super(null);
            y45.j(divActionCopyToClipboard, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionCopyToClipboard;
        }

        public final DivActionCopyToClipboard c() {
            return this.d;
        }
    }

    public static final class i extends DivActionTyped {
        public final DivActionDictSetValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(DivActionDictSetValue divActionDictSetValue) {
            super(null);
            y45.j(divActionDictSetValue, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionDictSetValue;
        }

        public final DivActionDictSetValue c() {
            return this.d;
        }
    }

    public static final class j extends DivActionTyped {
        public final DivActionDownload d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(DivActionDownload divActionDownload) {
            super(null);
            y45.j(divActionDownload, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionDownload;
        }

        public final DivActionDownload c() {
            return this.d;
        }
    }

    public static final class k extends DivActionTyped {
        public final DivActionFocusElement d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(DivActionFocusElement divActionFocusElement) {
            super(null);
            y45.j(divActionFocusElement, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionFocusElement;
        }

        public final DivActionFocusElement c() {
            return this.d;
        }
    }

    public static final class l extends DivActionTyped {
        public final DivActionHideTooltip d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(DivActionHideTooltip divActionHideTooltip) {
            super(null);
            y45.j(divActionHideTooltip, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionHideTooltip;
        }

        public final DivActionHideTooltip c() {
            return this.d;
        }
    }

    public static final class m extends DivActionTyped {
        public final DivActionScrollBy d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(DivActionScrollBy divActionScrollBy) {
            super(null);
            y45.j(divActionScrollBy, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionScrollBy;
        }

        public final DivActionScrollBy c() {
            return this.d;
        }
    }

    public static final class n extends DivActionTyped {
        public final DivActionScrollTo d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(DivActionScrollTo divActionScrollTo) {
            super(null);
            y45.j(divActionScrollTo, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionScrollTo;
        }

        public final DivActionScrollTo c() {
            return this.d;
        }
    }

    public static final class o extends DivActionTyped {
        public final DivActionSetState d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(DivActionSetState divActionSetState) {
            super(null);
            y45.j(divActionSetState, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionSetState;
        }

        public final DivActionSetState c() {
            return this.d;
        }
    }

    public static final class p extends DivActionTyped {
        public final DivActionSetStoredValue d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(DivActionSetStoredValue divActionSetStoredValue) {
            super(null);
            y45.j(divActionSetStoredValue, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionSetStoredValue;
        }

        public final DivActionSetStoredValue c() {
            return this.d;
        }
    }

    public static final class q extends DivActionTyped {
        public final DivActionSetVariable d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(DivActionSetVariable divActionSetVariable) {
            super(null);
            y45.j(divActionSetVariable, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionSetVariable;
        }

        public final DivActionSetVariable c() {
            return this.d;
        }
    }

    public static final class r extends DivActionTyped {
        public final DivActionShowTooltip d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(DivActionShowTooltip divActionShowTooltip) {
            super(null);
            y45.j(divActionShowTooltip, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionShowTooltip;
        }

        public final DivActionShowTooltip c() {
            return this.d;
        }
    }

    public static final class s extends DivActionTyped {
        public final DivActionSubmit d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(DivActionSubmit divActionSubmit) {
            super(null);
            y45.j(divActionSubmit, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionSubmit;
        }

        public final DivActionSubmit c() {
            return this.d;
        }
    }

    public static final class t extends DivActionTyped {
        public final DivActionTimer d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(DivActionTimer divActionTimer) {
            super(null);
            y45.j(divActionTimer, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionTimer;
        }

        public final DivActionTimer c() {
            return this.d;
        }
    }

    public static final class u extends DivActionTyped {
        public final DivActionVideo d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(DivActionVideo divActionVideo) {
            super(null);
            y45.j(divActionVideo, ES6Iterator.VALUE_PROPERTY);
            this.d = divActionVideo;
        }

        public final DivActionVideo c() {
            return this.d;
        }
    }

    public DivActionTyped(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(DivActionTyped divActionTyped, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionTyped == null) {
            return false;
        }
        if (this instanceof a) {
            DivActionAnimatorStart divActionAnimatorStartC = ((a) this).c();
            Object objB = divActionTyped.b();
            return divActionAnimatorStartC.a(objB instanceof DivActionAnimatorStart ? (DivActionAnimatorStart) objB : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            DivActionAnimatorStop divActionAnimatorStopC = ((b) this).c();
            Object objB2 = divActionTyped.b();
            return divActionAnimatorStopC.a(objB2 instanceof DivActionAnimatorStop ? (DivActionAnimatorStop) objB2 : null, oj3Var, oj3Var2);
        }
        if (this instanceof c) {
            DivActionArrayInsertValue divActionArrayInsertValueC = ((c) this).c();
            Object objB3 = divActionTyped.b();
            return divActionArrayInsertValueC.a(objB3 instanceof DivActionArrayInsertValue ? (DivActionArrayInsertValue) objB3 : null, oj3Var, oj3Var2);
        }
        if (this instanceof d) {
            DivActionArrayRemoveValue divActionArrayRemoveValueC = ((d) this).c();
            Object objB4 = divActionTyped.b();
            return divActionArrayRemoveValueC.a(objB4 instanceof DivActionArrayRemoveValue ? (DivActionArrayRemoveValue) objB4 : null, oj3Var, oj3Var2);
        }
        if (this instanceof e) {
            DivActionArraySetValue divActionArraySetValueC = ((e) this).c();
            Object objB5 = divActionTyped.b();
            return divActionArraySetValueC.a(objB5 instanceof DivActionArraySetValue ? (DivActionArraySetValue) objB5 : null, oj3Var, oj3Var2);
        }
        if (this instanceof f) {
            DivActionClearFocus divActionClearFocusC = ((f) this).c();
            Object objB6 = divActionTyped.b();
            return divActionClearFocusC.a(objB6 instanceof DivActionClearFocus ? (DivActionClearFocus) objB6 : null, oj3Var, oj3Var2);
        }
        if (this instanceof h) {
            DivActionCopyToClipboard divActionCopyToClipboardC = ((h) this).c();
            Object objB7 = divActionTyped.b();
            return divActionCopyToClipboardC.a(objB7 instanceof DivActionCopyToClipboard ? (DivActionCopyToClipboard) objB7 : null, oj3Var, oj3Var2);
        }
        if (this instanceof i) {
            DivActionDictSetValue divActionDictSetValueC = ((i) this).c();
            Object objB8 = divActionTyped.b();
            return divActionDictSetValueC.a(objB8 instanceof DivActionDictSetValue ? (DivActionDictSetValue) objB8 : null, oj3Var, oj3Var2);
        }
        if (this instanceof j) {
            DivActionDownload divActionDownloadC = ((j) this).c();
            Object objB9 = divActionTyped.b();
            return divActionDownloadC.a(objB9 instanceof DivActionDownload ? (DivActionDownload) objB9 : null, oj3Var, oj3Var2);
        }
        if (this instanceof k) {
            DivActionFocusElement divActionFocusElementC = ((k) this).c();
            Object objB10 = divActionTyped.b();
            return divActionFocusElementC.a(objB10 instanceof DivActionFocusElement ? (DivActionFocusElement) objB10 : null, oj3Var, oj3Var2);
        }
        if (this instanceof l) {
            DivActionHideTooltip divActionHideTooltipC = ((l) this).c();
            Object objB11 = divActionTyped.b();
            return divActionHideTooltipC.a(objB11 instanceof DivActionHideTooltip ? (DivActionHideTooltip) objB11 : null, oj3Var, oj3Var2);
        }
        if (this instanceof m) {
            DivActionScrollBy divActionScrollByC = ((m) this).c();
            Object objB12 = divActionTyped.b();
            return divActionScrollByC.a(objB12 instanceof DivActionScrollBy ? (DivActionScrollBy) objB12 : null, oj3Var, oj3Var2);
        }
        if (this instanceof n) {
            DivActionScrollTo divActionScrollToC = ((n) this).c();
            Object objB13 = divActionTyped.b();
            return divActionScrollToC.a(objB13 instanceof DivActionScrollTo ? (DivActionScrollTo) objB13 : null, oj3Var, oj3Var2);
        }
        if (this instanceof o) {
            DivActionSetState divActionSetStateC = ((o) this).c();
            Object objB14 = divActionTyped.b();
            return divActionSetStateC.a(objB14 instanceof DivActionSetState ? (DivActionSetState) objB14 : null, oj3Var, oj3Var2);
        }
        if (this instanceof p) {
            DivActionSetStoredValue divActionSetStoredValueC = ((p) this).c();
            Object objB15 = divActionTyped.b();
            return divActionSetStoredValueC.a(objB15 instanceof DivActionSetStoredValue ? (DivActionSetStoredValue) objB15 : null, oj3Var, oj3Var2);
        }
        if (this instanceof q) {
            DivActionSetVariable divActionSetVariableC = ((q) this).c();
            Object objB16 = divActionTyped.b();
            return divActionSetVariableC.a(objB16 instanceof DivActionSetVariable ? (DivActionSetVariable) objB16 : null, oj3Var, oj3Var2);
        }
        if (this instanceof r) {
            DivActionShowTooltip divActionShowTooltipC = ((r) this).c();
            Object objB17 = divActionTyped.b();
            return divActionShowTooltipC.a(objB17 instanceof DivActionShowTooltip ? (DivActionShowTooltip) objB17 : null, oj3Var, oj3Var2);
        }
        if (this instanceof s) {
            DivActionSubmit divActionSubmitC = ((s) this).c();
            Object objB18 = divActionTyped.b();
            return divActionSubmitC.a(objB18 instanceof DivActionSubmit ? (DivActionSubmit) objB18 : null, oj3Var, oj3Var2);
        }
        if (this instanceof t) {
            DivActionTimer divActionTimerC = ((t) this).c();
            Object objB19 = divActionTyped.b();
            return divActionTimerC.a(objB19 instanceof DivActionTimer ? (DivActionTimer) objB19 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof u)) {
            throw new NoWhenBranchMatchedException();
        }
        DivActionVideo divActionVideoC = ((u) this).c();
        Object objB20 = divActionTyped.b();
        return divActionVideoC.a(objB20 instanceof DivActionVideo ? (DivActionVideo) objB20 : null, oj3Var, oj3Var2);
    }

    public final Object b() {
        if (this instanceof a) {
            return ((a) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof d) {
            return ((d) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof h) {
            return ((h) this).c();
        }
        if (this instanceof i) {
            return ((i) this).c();
        }
        if (this instanceof j) {
            return ((j) this).c();
        }
        if (this instanceof k) {
            return ((k) this).c();
        }
        if (this instanceof l) {
            return ((l) this).c();
        }
        if (this instanceof m) {
            return ((m) this).c();
        }
        if (this instanceof n) {
            return ((n) this).c();
        }
        if (this instanceof o) {
            return ((o) this).c();
        }
        if (this instanceof p) {
            return ((p) this).c();
        }
        if (this instanceof q) {
            return ((q) this).c();
        }
        if (this instanceof r) {
            return ((r) this).c();
        }
        if (this instanceof s) {
            return ((s) this).c();
        }
        if (this instanceof t) {
            return ((t) this).c();
        }
        if (this instanceof u) {
            return ((u) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.a;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(getClass()).hashCode();
        if (this instanceof a) {
            iHash = ((a) this).c().hash();
        } else if (this instanceof b) {
            iHash = ((b) this).c().hash();
        } else if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else if (this instanceof d) {
            iHash = ((d) this).c().hash();
        } else if (this instanceof e) {
            iHash = ((e) this).c().hash();
        } else if (this instanceof f) {
            iHash = ((f) this).c().hash();
        } else if (this instanceof h) {
            iHash = ((h) this).c().hash();
        } else if (this instanceof i) {
            iHash = ((i) this).c().hash();
        } else if (this instanceof j) {
            iHash = ((j) this).c().hash();
        } else if (this instanceof k) {
            iHash = ((k) this).c().hash();
        } else if (this instanceof l) {
            iHash = ((l) this).c().hash();
        } else if (this instanceof m) {
            iHash = ((m) this).c().hash();
        } else if (this instanceof n) {
            iHash = ((n) this).c().hash();
        } else if (this instanceof o) {
            iHash = ((o) this).c().hash();
        } else if (this instanceof p) {
            iHash = ((p) this).c().hash();
        } else if (this instanceof q) {
            iHash = ((q) this).c().hash();
        } else if (this instanceof r) {
            iHash = ((r) this).c().hash();
        } else if (this instanceof s) {
            iHash = ((s) this).c().hash();
        } else if (this instanceof t) {
            iHash = ((t) this).c().hash();
        } else {
            if (!(this instanceof u)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((u) this).c().hash();
        }
        int i2 = iHashCode + iHash;
        this.a = Integer.valueOf(i2);
        return i2;
    }

    @Override
    public JSONObject s() {
        return ((com.yandex.div2.r) ml0.a().h1().getValue()).b(ml0.b(), this);
    }

    public DivActionTyped() {
    }
}
