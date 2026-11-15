package com.yandex.div2;

import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.s74;
import defpackage.y45;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public abstract class DivActionTypedTemplate implements d65, ac5 {
    public static final g a = new g(null);
    public static final s74 b = new s74() {
        @Override
        public final DivActionTypedTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionTypedTemplate.g.b(DivActionTypedTemplate.a, hx7Var, false, jSONObject, 2, null);
        }
    };

    public static final class a extends DivActionTypedTemplate {
        public final DivActionAnimatorStartTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(DivActionAnimatorStartTemplate divActionAnimatorStartTemplate) {
            super(null);
            y45.j(divActionAnimatorStartTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionAnimatorStartTemplate;
        }

        public final DivActionAnimatorStartTemplate c() {
            return this.c;
        }
    }

    public static final class b extends DivActionTypedTemplate {
        public final DivActionAnimatorStopTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(DivActionAnimatorStopTemplate divActionAnimatorStopTemplate) {
            super(null);
            y45.j(divActionAnimatorStopTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionAnimatorStopTemplate;
        }

        public final DivActionAnimatorStopTemplate c() {
            return this.c;
        }
    }

    public static final class c extends DivActionTypedTemplate {
        public final DivActionArrayInsertValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(DivActionArrayInsertValueTemplate divActionArrayInsertValueTemplate) {
            super(null);
            y45.j(divActionArrayInsertValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionArrayInsertValueTemplate;
        }

        public final DivActionArrayInsertValueTemplate c() {
            return this.c;
        }
    }

    public static final class d extends DivActionTypedTemplate {
        public final DivActionArrayRemoveValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(DivActionArrayRemoveValueTemplate divActionArrayRemoveValueTemplate) {
            super(null);
            y45.j(divActionArrayRemoveValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionArrayRemoveValueTemplate;
        }

        public final DivActionArrayRemoveValueTemplate c() {
            return this.c;
        }
    }

    public static final class e extends DivActionTypedTemplate {
        public final DivActionArraySetValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(DivActionArraySetValueTemplate divActionArraySetValueTemplate) {
            super(null);
            y45.j(divActionArraySetValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionArraySetValueTemplate;
        }

        public final DivActionArraySetValueTemplate c() {
            return this.c;
        }
    }

    public static final class f extends DivActionTypedTemplate {
        public final DivActionClearFocusTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(DivActionClearFocusTemplate divActionClearFocusTemplate) {
            super(null);
            y45.j(divActionClearFocusTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionClearFocusTemplate;
        }

        public final DivActionClearFocusTemplate c() {
            return this.c;
        }
    }

    public static final class g {
        public g(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static DivActionTypedTemplate b(g gVar, hx7 hx7Var, boolean z, JSONObject jSONObject, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return gVar.a(hx7Var, z, jSONObject);
        }

        public final DivActionTypedTemplate a(hx7 hx7Var, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((com.yandex.div2.s) ml0.a().i1().getValue()).a(hx7Var, jSONObject);
        }

        public g() {
        }
    }

    public static final class h extends DivActionTypedTemplate {
        public final DivActionCopyToClipboardTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(DivActionCopyToClipboardTemplate divActionCopyToClipboardTemplate) {
            super(null);
            y45.j(divActionCopyToClipboardTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionCopyToClipboardTemplate;
        }

        public final DivActionCopyToClipboardTemplate c() {
            return this.c;
        }
    }

    public static final class i extends DivActionTypedTemplate {
        public final DivActionDictSetValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(DivActionDictSetValueTemplate divActionDictSetValueTemplate) {
            super(null);
            y45.j(divActionDictSetValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionDictSetValueTemplate;
        }

        public final DivActionDictSetValueTemplate c() {
            return this.c;
        }
    }

    public static final class j extends DivActionTypedTemplate {
        public final DivActionDownloadTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(DivActionDownloadTemplate divActionDownloadTemplate) {
            super(null);
            y45.j(divActionDownloadTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionDownloadTemplate;
        }

        public final DivActionDownloadTemplate c() {
            return this.c;
        }
    }

    public static final class k extends DivActionTypedTemplate {
        public final DivActionFocusElementTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(DivActionFocusElementTemplate divActionFocusElementTemplate) {
            super(null);
            y45.j(divActionFocusElementTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionFocusElementTemplate;
        }

        public final DivActionFocusElementTemplate c() {
            return this.c;
        }
    }

    public static final class l extends DivActionTypedTemplate {
        public final DivActionHideTooltipTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(DivActionHideTooltipTemplate divActionHideTooltipTemplate) {
            super(null);
            y45.j(divActionHideTooltipTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionHideTooltipTemplate;
        }

        public final DivActionHideTooltipTemplate c() {
            return this.c;
        }
    }

    public static final class m extends DivActionTypedTemplate {
        public final DivActionScrollByTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public m(DivActionScrollByTemplate divActionScrollByTemplate) {
            super(null);
            y45.j(divActionScrollByTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionScrollByTemplate;
        }

        public final DivActionScrollByTemplate c() {
            return this.c;
        }
    }

    public static final class n extends DivActionTypedTemplate {
        public final DivActionScrollToTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public n(DivActionScrollToTemplate divActionScrollToTemplate) {
            super(null);
            y45.j(divActionScrollToTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionScrollToTemplate;
        }

        public final DivActionScrollToTemplate c() {
            return this.c;
        }
    }

    public static final class o extends DivActionTypedTemplate {
        public final DivActionSetStateTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public o(DivActionSetStateTemplate divActionSetStateTemplate) {
            super(null);
            y45.j(divActionSetStateTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionSetStateTemplate;
        }

        public final DivActionSetStateTemplate c() {
            return this.c;
        }
    }

    public static final class p extends DivActionTypedTemplate {
        public final DivActionSetStoredValueTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public p(DivActionSetStoredValueTemplate divActionSetStoredValueTemplate) {
            super(null);
            y45.j(divActionSetStoredValueTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionSetStoredValueTemplate;
        }

        public final DivActionSetStoredValueTemplate c() {
            return this.c;
        }
    }

    public static final class q extends DivActionTypedTemplate {
        public final DivActionSetVariableTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public q(DivActionSetVariableTemplate divActionSetVariableTemplate) {
            super(null);
            y45.j(divActionSetVariableTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionSetVariableTemplate;
        }

        public final DivActionSetVariableTemplate c() {
            return this.c;
        }
    }

    public static final class r extends DivActionTypedTemplate {
        public final DivActionShowTooltipTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public r(DivActionShowTooltipTemplate divActionShowTooltipTemplate) {
            super(null);
            y45.j(divActionShowTooltipTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionShowTooltipTemplate;
        }

        public final DivActionShowTooltipTemplate c() {
            return this.c;
        }
    }

    public static final class s extends DivActionTypedTemplate {
        public final DivActionSubmitTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public s(DivActionSubmitTemplate divActionSubmitTemplate) {
            super(null);
            y45.j(divActionSubmitTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionSubmitTemplate;
        }

        public final DivActionSubmitTemplate c() {
            return this.c;
        }
    }

    public static final class t extends DivActionTypedTemplate {
        public final DivActionTimerTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public t(DivActionTimerTemplate divActionTimerTemplate) {
            super(null);
            y45.j(divActionTimerTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionTimerTemplate;
        }

        public final DivActionTimerTemplate c() {
            return this.c;
        }
    }

    public static final class u extends DivActionTypedTemplate {
        public final DivActionVideoTemplate c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public u(DivActionVideoTemplate divActionVideoTemplate) {
            super(null);
            y45.j(divActionVideoTemplate, ES6Iterator.VALUE_PROPERTY);
            this.c = divActionVideoTemplate;
        }

        public final DivActionVideoTemplate c() {
            return this.c;
        }
    }

    public DivActionTypedTemplate(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final String a() {
        if (this instanceof a) {
            return "animator_start";
        }
        if (this instanceof b) {
            return "animator_stop";
        }
        if (this instanceof c) {
            return "array_insert_value";
        }
        if (this instanceof d) {
            return "array_remove_value";
        }
        if (this instanceof e) {
            return "array_set_value";
        }
        if (this instanceof f) {
            return "clear_focus";
        }
        if (this instanceof h) {
            return "copy_to_clipboard";
        }
        if (this instanceof i) {
            return "dict_set_value";
        }
        if (this instanceof j) {
            return "download";
        }
        if (this instanceof k) {
            return "focus_element";
        }
        if (this instanceof l) {
            return "hide_tooltip";
        }
        if (this instanceof m) {
            return "scroll_by";
        }
        if (this instanceof n) {
            return "scroll_to";
        }
        if (this instanceof o) {
            return "set_state";
        }
        if (this instanceof p) {
            return "set_stored_value";
        }
        if (this instanceof q) {
            return "set_variable";
        }
        if (this instanceof r) {
            return "show_tooltip";
        }
        if (this instanceof s) {
            return "submit";
        }
        if (this instanceof t) {
            return "timer";
        }
        if (this instanceof u) {
            return "video";
        }
        throw new NoWhenBranchMatchedException();
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
    public JSONObject s() {
        return ((com.yandex.div2.s) ml0.a().i1().getValue()).b(ml0.b(), this);
    }

    public DivActionTypedTemplate() {
    }
}
