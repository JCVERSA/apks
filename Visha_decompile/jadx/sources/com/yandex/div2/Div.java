package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.og2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class Div implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final Div invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return Div.c.a(hx7Var, jSONObject);
        }
    };
    public Integer a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Div a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((g2) ml0.a().J4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public static final class b extends Div {
        public final DivContainer e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivContainer divContainer) {
            super(null);
            y45.j(divContainer, ES6Iterator.VALUE_PROPERTY);
            this.e = divContainer;
        }

        public final DivContainer c() {
            return this.e;
        }
    }

    public static final class c extends Div {
        public final DivCustom e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivCustom divCustom) {
            super(null);
            y45.j(divCustom, ES6Iterator.VALUE_PROPERTY);
            this.e = divCustom;
        }

        public final DivCustom c() {
            return this.e;
        }
    }

    public static final class d extends Div {
        public final DivGallery e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivGallery divGallery) {
            super(null);
            y45.j(divGallery, ES6Iterator.VALUE_PROPERTY);
            this.e = divGallery;
        }

        public final DivGallery c() {
            return this.e;
        }
    }

    public static final class e extends Div {
        public final DivGifImage e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivGifImage divGifImage) {
            super(null);
            y45.j(divGifImage, ES6Iterator.VALUE_PROPERTY);
            this.e = divGifImage;
        }

        public final DivGifImage c() {
            return this.e;
        }
    }

    public static final class f extends Div {
        public final DivGrid e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DivGrid divGrid) {
            super(null);
            y45.j(divGrid, ES6Iterator.VALUE_PROPERTY);
            this.e = divGrid;
        }

        public final DivGrid c() {
            return this.e;
        }
    }

    public static final class g extends Div {
        public final DivImage e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(DivImage divImage) {
            super(null);
            y45.j(divImage, ES6Iterator.VALUE_PROPERTY);
            this.e = divImage;
        }

        public final DivImage c() {
            return this.e;
        }
    }

    public static final class h extends Div {
        public final DivIndicator e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(DivIndicator divIndicator) {
            super(null);
            y45.j(divIndicator, ES6Iterator.VALUE_PROPERTY);
            this.e = divIndicator;
        }

        public final DivIndicator c() {
            return this.e;
        }
    }

    public static final class i extends Div {
        public final DivInput e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(DivInput divInput) {
            super(null);
            y45.j(divInput, ES6Iterator.VALUE_PROPERTY);
            this.e = divInput;
        }

        public final DivInput c() {
            return this.e;
        }
    }

    public static final class j extends Div {
        public final DivPager e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(DivPager divPager) {
            super(null);
            y45.j(divPager, ES6Iterator.VALUE_PROPERTY);
            this.e = divPager;
        }

        public final DivPager c() {
            return this.e;
        }
    }

    public static final class k extends Div {
        public final DivSelect e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(DivSelect divSelect) {
            super(null);
            y45.j(divSelect, ES6Iterator.VALUE_PROPERTY);
            this.e = divSelect;
        }

        public final DivSelect c() {
            return this.e;
        }
    }

    public static final class l extends Div {
        public final DivSeparator e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(DivSeparator divSeparator) {
            super(null);
            y45.j(divSeparator, ES6Iterator.VALUE_PROPERTY);
            this.e = divSeparator;
        }

        public final DivSeparator c() {
            return this.e;
        }
    }

    public static final class m extends Div {
        public final DivSlider e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(DivSlider divSlider) {
            super(null);
            y45.j(divSlider, ES6Iterator.VALUE_PROPERTY);
            this.e = divSlider;
        }

        public final DivSlider c() {
            return this.e;
        }
    }

    public static final class n extends Div {
        public final DivState e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(DivState divState) {
            super(null);
            y45.j(divState, ES6Iterator.VALUE_PROPERTY);
            this.e = divState;
        }

        public final DivState c() {
            return this.e;
        }
    }

    public static final class o extends Div {
        public final DivSwitch e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(DivSwitch divSwitch) {
            super(null);
            y45.j(divSwitch, ES6Iterator.VALUE_PROPERTY);
            this.e = divSwitch;
        }

        public final DivSwitch c() {
            return this.e;
        }
    }

    public static final class p extends Div {
        public final DivTabs e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(DivTabs divTabs) {
            super(null);
            y45.j(divTabs, ES6Iterator.VALUE_PROPERTY);
            this.e = divTabs;
        }

        public final DivTabs c() {
            return this.e;
        }
    }

    public static final class q extends Div {
        public final DivText e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(DivText divText) {
            super(null);
            y45.j(divText, ES6Iterator.VALUE_PROPERTY);
            this.e = divText;
        }

        public final DivText c() {
            return this.e;
        }
    }

    public static final class r extends Div {
        public final DivVideo e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(DivVideo divVideo) {
            super(null);
            y45.j(divVideo, ES6Iterator.VALUE_PROPERTY);
            this.e = divVideo;
        }

        public final DivVideo c() {
            return this.e;
        }
    }

    public Div(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final boolean a(Div div, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (div == null) {
            return false;
        }
        if (this instanceof g) {
            DivImage divImageC = ((g) this).c();
            og2 og2VarB = div.b();
            return divImageC.E(og2VarB instanceof DivImage ? (DivImage) og2VarB : null, oj3Var, oj3Var2);
        }
        if (this instanceof e) {
            DivGifImage divGifImageC = ((e) this).c();
            og2 og2VarB2 = div.b();
            return divGifImageC.E(og2VarB2 instanceof DivGifImage ? (DivGifImage) og2VarB2 : null, oj3Var, oj3Var2);
        }
        if (this instanceof q) {
            DivText divTextC = ((q) this).c();
            og2 og2VarB3 = div.b();
            return divTextC.E(og2VarB3 instanceof DivText ? (DivText) og2VarB3 : null, oj3Var, oj3Var2);
        }
        if (this instanceof l) {
            DivSeparator divSeparatorC = ((l) this).c();
            og2 og2VarB4 = div.b();
            return divSeparatorC.E(og2VarB4 instanceof DivSeparator ? (DivSeparator) og2VarB4 : null, oj3Var, oj3Var2);
        }
        if (this instanceof b) {
            DivContainer divContainerC = ((b) this).c();
            og2 og2VarB5 = div.b();
            return divContainerC.E(og2VarB5 instanceof DivContainer ? (DivContainer) og2VarB5 : null, oj3Var, oj3Var2);
        }
        if (this instanceof f) {
            DivGrid divGridC = ((f) this).c();
            og2 og2VarB6 = div.b();
            return divGridC.E(og2VarB6 instanceof DivGrid ? (DivGrid) og2VarB6 : null, oj3Var, oj3Var2);
        }
        if (this instanceof d) {
            DivGallery divGalleryC = ((d) this).c();
            og2 og2VarB7 = div.b();
            return divGalleryC.E(og2VarB7 instanceof DivGallery ? (DivGallery) og2VarB7 : null, oj3Var, oj3Var2);
        }
        if (this instanceof j) {
            DivPager divPagerC = ((j) this).c();
            og2 og2VarB8 = div.b();
            return divPagerC.E(og2VarB8 instanceof DivPager ? (DivPager) og2VarB8 : null, oj3Var, oj3Var2);
        }
        if (this instanceof p) {
            DivTabs divTabsC = ((p) this).c();
            og2 og2VarB9 = div.b();
            return divTabsC.E(og2VarB9 instanceof DivTabs ? (DivTabs) og2VarB9 : null, oj3Var, oj3Var2);
        }
        if (this instanceof n) {
            DivState divStateC = ((n) this).c();
            og2 og2VarB10 = div.b();
            return divStateC.E(og2VarB10 instanceof DivState ? (DivState) og2VarB10 : null, oj3Var, oj3Var2);
        }
        if (this instanceof c) {
            DivCustom divCustomC = ((c) this).c();
            og2 og2VarB11 = div.b();
            return divCustomC.E(og2VarB11 instanceof DivCustom ? (DivCustom) og2VarB11 : null, oj3Var, oj3Var2);
        }
        if (this instanceof h) {
            DivIndicator divIndicatorC = ((h) this).c();
            og2 og2VarB12 = div.b();
            return divIndicatorC.E(og2VarB12 instanceof DivIndicator ? (DivIndicator) og2VarB12 : null, oj3Var, oj3Var2);
        }
        if (this instanceof m) {
            DivSlider divSliderC = ((m) this).c();
            og2 og2VarB13 = div.b();
            return divSliderC.E(og2VarB13 instanceof DivSlider ? (DivSlider) og2VarB13 : null, oj3Var, oj3Var2);
        }
        if (this instanceof o) {
            DivSwitch divSwitchC = ((o) this).c();
            og2 og2VarB14 = div.b();
            return divSwitchC.E(og2VarB14 instanceof DivSwitch ? (DivSwitch) og2VarB14 : null, oj3Var, oj3Var2);
        }
        if (this instanceof i) {
            DivInput divInputC = ((i) this).c();
            og2 og2VarB15 = div.b();
            return divInputC.E(og2VarB15 instanceof DivInput ? (DivInput) og2VarB15 : null, oj3Var, oj3Var2);
        }
        if (this instanceof k) {
            DivSelect divSelectC = ((k) this).c();
            og2 og2VarB16 = div.b();
            return divSelectC.E(og2VarB16 instanceof DivSelect ? (DivSelect) og2VarB16 : null, oj3Var, oj3Var2);
        }
        if (!(this instanceof r)) {
            throw new NoWhenBranchMatchedException();
        }
        DivVideo divVideoC = ((r) this).c();
        og2 og2VarB17 = div.b();
        return divVideoC.E(og2VarB17 instanceof DivVideo ? (DivVideo) og2VarB17 : null, oj3Var, oj3Var2);
    }

    public final og2 b() {
        if (this instanceof g) {
            return ((g) this).c();
        }
        if (this instanceof e) {
            return ((e) this).c();
        }
        if (this instanceof q) {
            return ((q) this).c();
        }
        if (this instanceof l) {
            return ((l) this).c();
        }
        if (this instanceof b) {
            return ((b) this).c();
        }
        if (this instanceof f) {
            return ((f) this).c();
        }
        if (this instanceof d) {
            return ((d) this).c();
        }
        if (this instanceof j) {
            return ((j) this).c();
        }
        if (this instanceof p) {
            return ((p) this).c();
        }
        if (this instanceof n) {
            return ((n) this).c();
        }
        if (this instanceof c) {
            return ((c) this).c();
        }
        if (this instanceof h) {
            return ((h) this).c();
        }
        if (this instanceof m) {
            return ((m) this).c();
        }
        if (this instanceof o) {
            return ((o) this).c();
        }
        if (this instanceof i) {
            return ((i) this).c();
        }
        if (this instanceof k) {
            return ((k) this).c();
        }
        if (this instanceof r) {
            return ((r) this).c();
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(getClass()).hashCode();
        if (this instanceof g) {
            iHash = ((g) this).c().hash();
        } else if (this instanceof e) {
            iHash = ((e) this).c().hash();
        } else if (this instanceof q) {
            iHash = ((q) this).c().hash();
        } else if (this instanceof l) {
            iHash = ((l) this).c().hash();
        } else if (this instanceof b) {
            iHash = ((b) this).c().hash();
        } else if (this instanceof f) {
            iHash = ((f) this).c().hash();
        } else if (this instanceof d) {
            iHash = ((d) this).c().hash();
        } else if (this instanceof j) {
            iHash = ((j) this).c().hash();
        } else if (this instanceof p) {
            iHash = ((p) this).c().hash();
        } else if (this instanceof n) {
            iHash = ((n) this).c().hash();
        } else if (this instanceof c) {
            iHash = ((c) this).c().hash();
        } else if (this instanceof h) {
            iHash = ((h) this).c().hash();
        } else if (this instanceof m) {
            iHash = ((m) this).c().hash();
        } else if (this instanceof o) {
            iHash = ((o) this).c().hash();
        } else if (this instanceof i) {
            iHash = ((i) this).c().hash();
        } else if (this instanceof k) {
            iHash = ((k) this).c().hash();
        } else {
            if (!(this instanceof r)) {
                throw new NoWhenBranchMatchedException();
            }
            iHash = ((r) this).c().hash();
        }
        int i2 = iHashCode + iHash;
        this.b = Integer.valueOf(i2);
        return i2;
    }

    @Override
    public int l() {
        int iL;
        Integer num = this.a;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(getClass()).hashCode();
        if (this instanceof g) {
            iL = ((g) this).c().l();
        } else if (this instanceof e) {
            iL = ((e) this).c().l();
        } else if (this instanceof q) {
            iL = ((q) this).c().l();
        } else if (this instanceof l) {
            iL = ((l) this).c().l();
        } else if (this instanceof b) {
            iL = ((b) this).c().l();
        } else if (this instanceof f) {
            iL = ((f) this).c().l();
        } else if (this instanceof d) {
            iL = ((d) this).c().l();
        } else if (this instanceof j) {
            iL = ((j) this).c().l();
        } else if (this instanceof p) {
            iL = ((p) this).c().l();
        } else if (this instanceof n) {
            iL = ((n) this).c().l();
        } else if (this instanceof c) {
            iL = ((c) this).c().l();
        } else if (this instanceof h) {
            iL = ((h) this).c().l();
        } else if (this instanceof m) {
            iL = ((m) this).c().l();
        } else if (this instanceof o) {
            iL = ((o) this).c().l();
        } else if (this instanceof i) {
            iL = ((i) this).c().l();
        } else if (this instanceof k) {
            iL = ((k) this).c().l();
        } else {
            if (!(this instanceof r)) {
                throw new NoWhenBranchMatchedException();
            }
            iL = ((r) this).c().l();
        }
        int i2 = iHashCode + iL;
        this.a = Integer.valueOf(i2);
        return i2;
    }

    @Override
    public JSONObject s() {
        return ((g2) ml0.a().J4().getValue()).b(ml0.b(), this);
    }

    public Div() {
    }
}
