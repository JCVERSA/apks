package com.yandex.div.core.view2.divs;

import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import androidx.appcompat.widget.PopupMenu;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.transsion.push.PushConstants;
import com.yandex.div.core.view2.AccessibilityDelegateWrapper;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAccessibility;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivAnimation;
import defpackage.ae5;
import defpackage.bk2;
import defpackage.c74;
import defpackage.ce2;
import defpackage.cf2;
import defpackage.e74;
import defpackage.gd2;
import defpackage.hi;
import defpackage.le2;
import defpackage.me2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.sv2;
import defpackage.w71;
import defpackage.x71;
import defpackage.xi;
import defpackage.y45;
import defpackage.zfb;
import defpackage.zt7;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Ref$BooleanRef;

public class DivActionBinder {
    public final cf2 a;
    public final gd2 b;
    public final ce2 c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final e74 g;

    public final class MenuWrapperListener extends zt7.a.C0466a {
        public final com.yandex.div.core.view2.a a;
        public final List b;
        public final DivActionBinder c;

        public MenuWrapperListener(DivActionBinder divActionBinder, com.yandex.div.core.view2.a aVar, List list) {
            y45.j(aVar, "context");
            y45.j(list, "items");
            this.c = divActionBinder;
            this.a = aVar;
            this.b = list;
        }

        public static final boolean d(final Div2View div2View, final DivAction.MenuItem menuItem, final oj3 oj3Var, final DivActionBinder divActionBinder, final int i, MenuItem menuItem2) {
            y45.j(div2View, "$divView");
            y45.j(menuItem, "$itemData");
            y45.j(oj3Var, "$expressionResolver");
            y45.j(divActionBinder, "this$0");
            y45.j(menuItem2, "it");
            final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
            div2View.bulkActions$div_release(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m150invoke();
                    return zfb.a;
                }

                public final void m150invoke() {
                    List list = menuItem.b;
                    List list2 = list;
                    List listE = null;
                    if (list2 == null || list2.isEmpty()) {
                        list = null;
                    }
                    if (list == null) {
                        DivAction divAction = menuItem.a;
                        if (divAction != null) {
                            listE = x71.e(divAction);
                        }
                    } else {
                        listE = list;
                    }
                    List list3 = listE;
                    if (list3 == null || list3.isEmpty()) {
                        ae5 ae5Var = ae5.a;
                        if (xi.o()) {
                            xi.i("Menu item does not have any action");
                            return;
                        }
                        return;
                    }
                    List<DivAction> listK = me2.k(listE, oj3Var);
                    DivActionBinder divActionBinder2 = divActionBinder;
                    Div2View div2View2 = div2View;
                    oj3 oj3Var2 = oj3Var;
                    int i2 = i;
                    DivAction.MenuItem menuItem3 = menuItem;
                    for (DivAction divAction2 : listK) {
                        divActionBinder2.b.s(div2View2, oj3Var2, i2, (String) menuItem3.c.b(oj3Var2), divAction2);
                        divActionBinder2.c.c(divAction2, oj3Var2);
                        DivActionBinder.G(divActionBinder2, div2View2, oj3Var2, divAction2, "menu", null, null, 48, null);
                    }
                    ref$BooleanRef.element = true;
                }
            });
            return ref$BooleanRef.element;
        }

        @Override
        public void a(PopupMenu popupMenu) {
            y45.j(popupMenu, "popupMenu");
            final Div2View div2ViewA = this.a.a();
            final oj3 oj3VarB = this.a.b();
            Menu menu = popupMenu.getMenu();
            y45.i(menu, "popupMenu.menu");
            for (final DivAction.MenuItem menuItem : this.b) {
                final int size = menu.size();
                MenuItem menuItemAdd = menu.add((CharSequence) menuItem.c.b(oj3VarB));
                final DivActionBinder divActionBinder = this.c;
                menuItemAdd.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() {
                    @Override
                    public final boolean onMenuItemClick(MenuItem menuItem2) {
                        return DivActionBinder.MenuWrapperListener.d(div2ViewA, menuItem, oj3VarB, divActionBinder, size, menuItem2);
                    }
                });
            }
        }
    }

    public DivActionBinder(cf2 cf2Var, gd2 gd2Var, ce2 ce2Var, boolean z, boolean z2, boolean z3) {
        y45.j(cf2Var, "actionHandler");
        y45.j(gd2Var, "logger");
        y45.j(ce2Var, "divActionBeaconSender");
        this.a = cf2Var;
        this.b = gd2Var;
        this.c = ce2Var;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = new e74() {
            @Override
            public final Boolean invoke(View view) {
                y45.j(view, "view");
                boolean zPerformLongClick = false;
                do {
                    ViewParent parent = view.getParent();
                    view = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (view == null || view.getParent() == null) {
                        break;
                    }
                    zPerformLongClick = view.performLongClick();
                } while (!zPerformLongClick);
                return Boolean.valueOf(zPerformLongClick);
            }
        };
    }

    public static final boolean B(e74 e74Var, View view) {
        y45.j(e74Var, "$tmp0");
        return ((Boolean) e74Var.invoke(view)).booleanValue();
    }

    public static boolean E(DivActionBinder divActionBinder, sv2 sv2Var, oj3 oj3Var, DivAction divAction, String str, String str2, cf2 cf2Var, int i, Object obj) {
        cf2 actionHandler;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleAction");
        }
        String str3 = (i & 16) != 0 ? null : str2;
        if ((i & 32) != 0) {
            Div2View div2View = sv2Var instanceof Div2View ? (Div2View) sv2Var : null;
            actionHandler = div2View != null ? div2View.getActionHandler() : null;
        } else {
            actionHandler = cf2Var;
        }
        return divActionBinder.D(sv2Var, oj3Var, divAction, str, str3, actionHandler);
    }

    public static boolean G(DivActionBinder divActionBinder, sv2 sv2Var, oj3 oj3Var, DivAction divAction, String str, String str2, cf2 cf2Var, int i, Object obj) {
        cf2 actionHandler;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleActionWithoutEnableCheck");
        }
        String str3 = (i & 16) != 0 ? null : str2;
        if ((i & 32) != 0) {
            Div2View div2View = sv2Var instanceof Div2View ? (Div2View) sv2Var : null;
            actionHandler = div2View != null ? div2View.getActionHandler() : null;
        } else {
            actionHandler = cf2Var;
        }
        return divActionBinder.F(sv2Var, oj3Var, divAction, str, str3, actionHandler);
    }

    public static void I(DivActionBinder divActionBinder, sv2 sv2Var, oj3 oj3Var, List list, String str, e74 e74Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleActions");
        }
        if ((i & 16) != 0) {
            e74Var = null;
        }
        divActionBinder.H(sv2Var, oj3Var, list, str, e74Var);
    }

    public static void K(DivActionBinder divActionBinder, com.yandex.div.core.view2.a aVar, View view, List list, String str, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleBulkActions");
        }
        if ((i & 8) != 0) {
            str = PushConstants.PUSH_SERVICE_TYPE_CLICK;
        }
        divActionBinder.J(aVar, view, list, str);
    }

    public static final boolean n(List list, View view, MotionEvent motionEvent) {
        y45.j(list, "$nnListeners");
        Iterator it = list.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                s74 s74Var = (s74) it.next();
                y45.i(view, "view");
                y45.i(motionEvent, "motionEvent");
                if (((Boolean) s74Var.invoke(view, motionEvent)).booleanValue() || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    public static final boolean s(DivActionBinder divActionBinder, com.yandex.div.core.view2.a aVar, View view, List list, List list2, View view2, MotionEvent motionEvent) {
        y45.j(divActionBinder, "this$0");
        y45.j(aVar, "$context");
        y45.j(view, "$target");
        y45.j(list, "$startActions");
        y45.j(list2, "$endActions");
        int action = motionEvent.getAction();
        if (action == 9) {
            divActionBinder.J(aVar, view, list, "hover");
            return false;
        }
        if (action != 10) {
            return false;
        }
        divActionBinder.J(aVar, view, list2, "unhover");
        return false;
    }

    public static final boolean u(Expression expression, com.yandex.div.core.view2.a aVar, DivActionBinder divActionBinder, View view, List list, View view2) {
        y45.j(expression, "$captureFocusOnAction");
        y45.j(aVar, "$context");
        y45.j(divActionBinder, "this$0");
        y45.j(view, "$target");
        y45.j(list, "$actions");
        y45.i(view2, "it");
        me2.g(view2, expression, aVar.a().getInputFocusTracker(), aVar.b());
        divActionBinder.J(aVar, view, list, "long_click");
        return true;
    }

    public static final boolean v(DivActionBinder divActionBinder, DivAction divAction, com.yandex.div.core.view2.a aVar, Expression expression, zt7 zt7Var, View view, List list, View view2) {
        y45.j(divActionBinder, "this$0");
        y45.j(aVar, "$context");
        y45.j(expression, "$captureFocusOnAction");
        y45.j(zt7Var, "$overflowMenuWrapper");
        y45.j(view, "$target");
        y45.j(list, "$actions");
        String string = UUID.randomUUID().toString();
        y45.i(string, "randomUUID().toString()");
        divActionBinder.c.c(divAction, aVar.b());
        y45.i(view2, "it");
        me2.g(view2, expression, aVar.a().getInputFocusTracker(), aVar.b());
        zt7Var.c().onClick(view);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            divActionBinder.b.i(aVar.a(), aVar.b(), view, (DivAction) it.next(), string);
        }
        return true;
    }

    public static final void x(DivActionBinder divActionBinder, com.yandex.div.core.view2.a aVar, View view, DivAction divAction, Expression expression, zt7 zt7Var, View view2) {
        y45.j(divActionBinder, "this$0");
        y45.j(aVar, "$context");
        y45.j(view, "$target");
        y45.j(expression, "$captureFocusOnAction");
        y45.j(zt7Var, "$overflowMenuWrapper");
        divActionBinder.b.c(aVar.a(), aVar.b(), view, divAction);
        divActionBinder.c.c(divAction, aVar.b());
        y45.i(view2, "it");
        me2.g(view2, expression, aVar.a().getInputFocusTracker(), aVar.b());
        zt7Var.c().onClick(view);
    }

    public static final void y(Expression expression, com.yandex.div.core.view2.a aVar, DivActionBinder divActionBinder, View view, List list, View view2) {
        y45.j(expression, "$captureFocusOnAction");
        y45.j(aVar, "$context");
        y45.j(divActionBinder, "this$0");
        y45.j(view, "$target");
        y45.j(list, "$actions");
        y45.i(view2, "it");
        me2.g(view2, expression, aVar.a().getInputFocusTracker(), aVar.b());
        K(divActionBinder, aVar, view, list, null, 8, null);
    }

    public static final void z(bk2 bk2Var, final View view, final View.OnClickListener onClickListener) {
        if (bk2Var.a() != null) {
            bk2Var.d(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m158invoke();
                    return zfb.a;
                }

                public final void m158invoke() {
                    onClickListener.onClick(view);
                }
            });
        } else {
            view.setOnClickListener(onClickListener);
        }
    }

    public final void A(View view, boolean z, boolean z2) {
        if (!z || z2) {
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
        } else if (me2.l(view)) {
            final e74 e74Var = this.g;
            view.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public final boolean onLongClick(View view2) {
                    return DivActionBinder.B(e74Var, view2);
                }
            });
            me2.n(view, null, 1, null);
        } else {
            view.setOnLongClickListener(null);
            view.setLongClickable(false);
            me2.m(view, null);
        }
    }

    public final s74 C(final com.yandex.div.core.view2.a aVar, final View view, final List list, final List list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        return new s74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override
            public final Boolean invoke(View view2, MotionEvent motionEvent) {
                y45.j(view2, "<anonymous parameter 0>");
                y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
                int action = motionEvent.getAction();
                boolean z = true;
                if (action == 0) {
                    this.this$0.J(aVar, view, list, "press");
                } else if (action == 1 || action == 3) {
                    this.this$0.J(aVar, view, list2, "release");
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        };
    }

    public boolean D(sv2 sv2Var, oj3 oj3Var, DivAction divAction, String str, String str2, cf2 cf2Var) {
        y45.j(sv2Var, "divView");
        y45.j(oj3Var, "resolver");
        y45.j(divAction, "action");
        y45.j(str, "reason");
        if (((Boolean) divAction.b.b(oj3Var)).booleanValue()) {
            return F(sv2Var, oj3Var, divAction, str, str2, cf2Var);
        }
        return false;
    }

    public boolean F(sv2 sv2Var, oj3 oj3Var, DivAction divAction, String str, String str2, cf2 cf2Var) {
        y45.j(sv2Var, "divView");
        y45.j(oj3Var, "resolver");
        y45.j(divAction, "action");
        y45.j(str, "reason");
        if (!this.a.getUseActionUid() || str2 == null) {
            if (cf2Var == null || !cf2Var.handleActionWithReason(divAction, sv2Var, oj3Var, str)) {
                return this.a.handleActionWithReason(divAction, sv2Var, oj3Var, str);
            }
            return true;
        }
        if (cf2Var == null || !cf2Var.handleActionWithReason(divAction, sv2Var, oj3Var, str2, str)) {
            return this.a.handleActionWithReason(divAction, sv2Var, oj3Var, str2, str);
        }
        return true;
    }

    public void H(sv2 sv2Var, oj3 oj3Var, List list, String str, e74 e74Var) {
        y45.j(sv2Var, "divView");
        y45.j(oj3Var, "resolver");
        y45.j(str, "reason");
        if (list == null) {
            return;
        }
        for (DivAction divAction : me2.k(list, oj3Var)) {
            G(this, sv2Var, oj3Var, divAction, str, null, null, 48, null);
            if (e74Var != null) {
                e74Var.invoke(divAction);
            }
        }
    }

    public void J(com.yandex.div.core.view2.a aVar, final View view, final List list, final String str) {
        y45.j(aVar, "context");
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        y45.j(list, "actions");
        y45.j(str, "actionLogType");
        final Div2View div2ViewA = aVar.a();
        final oj3 oj3VarB = aVar.b();
        div2ViewA.bulkActions$div_release(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m159invoke();
                return zfb.a;
            }

            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            /* JADX WARN: Code duplicated, block: B:46:0x0112  */
            public final void m159invoke() {
                String string = UUID.randomUUID().toString();
                y45.i(string, "randomUUID().toString()");
                List<DivAction> listK = me2.k(list, oj3VarB);
                String str2 = str;
                DivActionBinder divActionBinder = this;
                Div2View div2View = div2ViewA;
                oj3 oj3Var = oj3VarB;
                View view2 = view;
                for (DivAction divAction : listK) {
                    switch (str2) {
                        case "long_click":
                            divActionBinder.b.i(div2View, oj3Var, view2, divAction, string);
                            break;
                        case "unhover":
                            divActionBinder.b.a(div2View, oj3Var, view2, divAction, false);
                            break;
                        case "blur":
                            divActionBinder.b.u(div2View, oj3Var, view2, divAction, false);
                            break;
                        case "click":
                            divActionBinder.b.e(div2View, oj3Var, view2, divAction, string);
                            break;
                        case "enter":
                            divActionBinder.b.t(div2View, oj3Var, view2, divAction);
                            break;
                        case "focus":
                            divActionBinder.b.u(div2View, oj3Var, view2, divAction, true);
                            break;
                        case "hover":
                            divActionBinder.b.a(div2View, oj3Var, view2, divAction, true);
                            break;
                        case "press":
                            divActionBinder.b.y(div2View, oj3Var, view2, divAction, true);
                            break;
                        case "release":
                            divActionBinder.b.y(div2View, oj3Var, view2, divAction, false);
                            break;
                        case "double_click":
                            divActionBinder.b.r(div2View, oj3Var, view2, divAction, string);
                            break;
                        default:
                            xi.i("Please, add new logType");
                            break;
                    }
                    divActionBinder.c.c(divAction, oj3Var);
                    DivActionBinder.G(divActionBinder, div2View, oj3Var, divAction, divActionBinder.M(str2), string, null, 32, null);
                }
            }
        });
    }

    public void L(com.yandex.div.core.view2.a aVar, View view, List list) {
        Object next;
        List list2;
        y45.j(aVar, "context");
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        y45.j(list, "actions");
        oj3 oj3VarB = aVar.b();
        List listK = me2.k(list, oj3VarB);
        Iterator it = listK.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                list2 = ((DivAction) next).e;
            }
        } while (list2 == null || list2.isEmpty());
        DivAction divAction = (DivAction) next;
        if (divAction == null) {
            K(this, aVar, view, listK, null, 8, null);
            return;
        }
        List list3 = divAction.e;
        if (list3 == null) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Unable to bind empty menu action: " + divAction.c);
                return;
            }
            return;
        }
        zt7 zt7VarF = new zt7(view.getContext(), view, aVar.a()).e(new MenuWrapperListener(this, aVar, list3)).f(53);
        y45.i(zt7VarF, "OverflowMenuWrapper(\n   …ity.RIGHT or Gravity.TOP)");
        Div2View div2ViewA = aVar.a();
        div2ViewA.clearSubscriptions();
        div2ViewA.subscribe(new le2(zt7VarF));
        this.b.c(aVar.a(), oj3VarB, view, divAction);
        this.c.c(divAction, oj3VarB);
        zt7VarF.c().onClick(view);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:34:0x0061 A[ORIG_RETURN, RETURN] */
    public final String M(String str) {
        switch (str) {
            case "long_click":
                return "long_click";
            case "unhover":
                return "unhover";
            case "blur":
                return "blur";
            case "click":
                return PushConstants.PUSH_SERVICE_TYPE_CLICK;
            case "enter":
                return "enter";
            case "focus":
                return "focus";
            case "hover":
                return "hover";
            case "press":
                return "press";
            case "release":
                return "release";
            case "double_click":
                return "double_click";
            default:
                return "external";
        }
    }

    public final void l(com.yandex.div.core.view2.a aVar, View view, List list, List list2, List list3, List list4, List list5, List list6, List list7, DivAnimation divAnimation, DivAccessibility divAccessibility, Expression expression) {
        boolean zIsClickable = view.isClickable();
        boolean zIsLongClickable = view.isLongClickable();
        bk2 bk2Var = new bk2(!list2.isEmpty() || me2.l(view));
        t(aVar, view, list2, list.isEmpty(), expression);
        q(aVar, view, bk2Var, list3, expression);
        w(aVar, view, bk2Var, list, this.e, expression);
        s74 s74VarH = BaseDivViewExtensionsKt.H(view, aVar, !w71.a(list, list2, list3) ? divAnimation : null, bk2Var);
        s74 s74VarC = C(aVar, view, list6, list7);
        r(aVar, view, list4, list5);
        m(view, s74VarH, s74VarC);
        if (this.f) {
            if (DivAccessibility.Mode.MERGE == aVar.a().getPropagatedAccessibilityMode$div_release(view) && aVar.a().isDescendantAccessibilityMode$div_release(view)) {
                view.setClickable(zIsClickable);
                view.setLongClickable(zIsLongClickable);
            }
            o(view, list, list2, divAccessibility);
        }
    }

    public final void m(View view, s74... s74VarArr) {
        final List listS = hi.S(s74VarArr);
        if (listS.isEmpty()) {
            view.setOnTouchListener(null);
        } else {
            view.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return DivActionBinder.n(listS, view2, motionEvent);
                }
            });
        }
    }

    public final void o(final View view, final List list, final List list2, final DivAccessibility divAccessibility) {
        AccessibilityDelegateWrapper accessibilityDelegateWrapper;
        AccessibilityDelegateCompat accessibilityDelegate = ViewCompat.getAccessibilityDelegate(view);
        s74 s74Var = new s74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override
            public Object invoke(Object obj, Object obj2) {
                invoke((View) obj, (AccessibilityNodeInfoCompat) obj2);
                return zfb.a;
            }

            public final void invoke(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                if (!list.isEmpty() && accessibilityNodeInfoCompat != null) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
                }
                if (!list2.isEmpty() && accessibilityNodeInfoCompat != null) {
                    accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_LONG_CLICK);
                }
                if (view instanceof ImageView) {
                    DivAccessibility divAccessibility2 = divAccessibility;
                    if ((divAccessibility2 != null ? divAccessibility2.g : null) == DivAccessibility.Type.AUTO || divAccessibility2 == null) {
                        if (list2.isEmpty() && list.isEmpty()) {
                            DivAccessibility divAccessibility3 = divAccessibility;
                            if ((divAccessibility3 != null ? divAccessibility3.a : null) == null) {
                                if (accessibilityNodeInfoCompat == null) {
                                    return;
                                }
                                accessibilityNodeInfoCompat.setClassName("");
                                return;
                            }
                        }
                        if (accessibilityNodeInfoCompat == null) {
                            return;
                        }
                        accessibilityNodeInfoCompat.setClassName("android.widget.ImageView");
                    }
                }
            }
        };
        if (accessibilityDelegate instanceof AccessibilityDelegateWrapper) {
            accessibilityDelegateWrapper = (AccessibilityDelegateWrapper) accessibilityDelegate;
            accessibilityDelegateWrapper.a(s74Var);
        } else {
            accessibilityDelegateWrapper = new AccessibilityDelegateWrapper(accessibilityDelegate, null, s74Var, 2, null);
        }
        ViewCompat.setAccessibilityDelegate(view, accessibilityDelegateWrapper);
    }

    public void p(final com.yandex.div.core.view2.a aVar, final View view, final List list, final List list2, final List list3, final List list4, final List list5, final List list6, final List list7, final DivAnimation divAnimation, final DivAccessibility divAccessibility, final Expression expression) {
        y45.j(aVar, "context");
        y45.j(view, TypedValues.AttributesType.S_TARGET);
        y45.j(divAnimation, "actionAnimation");
        y45.j(expression, "captureFocusOnAction");
        final oj3 oj3VarB = aVar.b();
        final c74 c74Var = new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m155invoke();
                return zfb.a;
            }

            public final void m155invoke() {
                List listK = me2.k(list, oj3VarB);
                List listK2 = me2.k(list3, oj3VarB);
                this.l(aVar, view, listK, me2.k(list2, oj3VarB), listK2, me2.k(list4, oj3VarB), me2.k(list5, oj3VarB), me2.k(list6, oj3VarB), me2.k(list7, oj3VarB), divAnimation, divAccessibility, expression);
            }
        };
        me2.j(view, list, oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m151invoke(obj);
                return zfb.a;
            }

            public final void m151invoke(Object obj) {
                y45.j(obj, "it");
                c74Var.invoke();
            }
        });
        me2.j(view, list2, oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m152invoke(obj);
                return zfb.a;
            }

            public final void m152invoke(Object obj) {
                y45.j(obj, "it");
                c74Var.invoke();
            }
        });
        me2.j(view, list3, oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m153invoke(obj);
                return zfb.a;
            }

            public final void m153invoke(Object obj) {
                y45.j(obj, "it");
                c74Var.invoke();
            }
        });
        me2.i(view, expression, oj3VarB, new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                m154invoke(obj);
                return zfb.a;
            }

            public final void m154invoke(Object obj) {
                y45.j(obj, "it");
                c74Var.invoke();
            }
        });
        c74Var.invoke();
    }

    public final void q(final com.yandex.div.core.view2.a aVar, final View view, bk2 bk2Var, final List list, final Expression expression) {
        Object obj = null;
        if (list.isEmpty()) {
            bk2Var.c(null);
            return;
        }
        for (Object obj2 : list) {
            List list2 = ((DivAction) obj2).e;
            if (list2 != null && !list2.isEmpty() && !this.e) {
                obj = obj2;
                break;
            }
        }
        final DivAction divAction = (DivAction) obj;
        if (divAction == null) {
            bk2Var.c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m157invoke();
                    return zfb.a;
                }

                public final void m157invoke() {
                    me2.g(view, expression, aVar.a().getInputFocusTracker(), aVar.b());
                    this.J(aVar, view, list, "double_click");
                }
            });
            return;
        }
        List list3 = divAction.e;
        if (list3 != null) {
            final zt7 zt7VarF = new zt7(view.getContext(), view, aVar.a()).e(new MenuWrapperListener(this, aVar, list3)).f(53);
            y45.i(zt7VarF, "OverflowMenuWrapper(\n   …ity.RIGHT or Gravity.TOP)");
            Div2View div2ViewA = aVar.a();
            div2ViewA.clearSubscriptions();
            div2ViewA.subscribe(new le2(zt7VarF));
            bk2Var.c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public Object invoke() {
                    m156invoke();
                    return zfb.a;
                }

                public final void m156invoke() {
                    this.this$0.b.j(aVar.a(), aVar.b(), view, divAction);
                    this.this$0.c.c(divAction, aVar.b());
                    me2.g(view, expression, aVar.a().getInputFocusTracker(), aVar.b());
                    zt7VarF.c().onClick(view);
                }
            });
            return;
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("Unable to bind empty menu action: " + divAction.c);
        }
    }

    public final void r(final com.yandex.div.core.view2.a aVar, final View view, final List list, final List list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            view.setOnHoverListener(null);
        } else {
            view.setOnHoverListener(new View.OnHoverListener() {
                @Override
                public final boolean onHover(View view2, MotionEvent motionEvent) {
                    return DivActionBinder.s(this.b, aVar, view, list, list2, view2, motionEvent);
                }
            });
        }
    }

    public final void t(final com.yandex.div.core.view2.a aVar, final View view, final List list, boolean z, final Expression expression) {
        Object next;
        if (list.isEmpty()) {
            A(view, this.d, z);
            return;
        }
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            List list2 = ((DivAction) next).e;
            if (list2 != null && !list2.isEmpty() && !this.e) {
                break;
            }
        }
        final DivAction divAction = (DivAction) next;
        if (divAction != null) {
            List list3 = divAction.e;
            if (list3 == null) {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable to bind empty menu action: " + divAction.c);
                }
            } else {
                final zt7 zt7VarF = new zt7(view.getContext(), view, aVar.a()).e(new MenuWrapperListener(this, aVar, list3)).f(53);
                y45.i(zt7VarF, "OverflowMenuWrapper(\n   …ity.RIGHT or Gravity.TOP)");
                Div2View div2ViewA = aVar.a();
                div2ViewA.clearSubscriptions();
                div2ViewA.subscribe(new le2(zt7VarF));
                view.setOnLongClickListener(new View.OnLongClickListener() {
                    @Override
                    public final boolean onLongClick(View view2) {
                        return DivActionBinder.v(this.b, divAction, aVar, expression, zt7VarF, view, list, view2);
                    }
                });
            }
        } else {
            view.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public final boolean onLongClick(View view2) {
                    return DivActionBinder.u(expression, aVar, this, view, list, view2);
                }
            });
        }
        if (this.d) {
            me2.n(view, null, 1, null);
        }
    }

    public final void w(final com.yandex.div.core.view2.a aVar, final View view, bk2 bk2Var, final List list, boolean z, final Expression expression) {
        Object obj = null;
        if (list.isEmpty()) {
            bk2Var.d(null);
            view.setOnClickListener(null);
            view.setClickable(false);
            return;
        }
        for (Object obj2 : list) {
            List list2 = ((DivAction) obj2).e;
            if (list2 != null && !list2.isEmpty() && !z) {
                obj = obj2;
                break;
            }
        }
        final DivAction divAction = (DivAction) obj;
        if (divAction == null) {
            z(bk2Var, view, new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    DivActionBinder.y(expression, aVar, this, view, list, view2);
                }
            });
            return;
        }
        List list3 = divAction.e;
        if (list3 != null) {
            final zt7 zt7VarF = new zt7(view.getContext(), view, aVar.a()).e(new MenuWrapperListener(this, aVar, list3)).f(53);
            y45.i(zt7VarF, "OverflowMenuWrapper(\n   …ity.RIGHT or Gravity.TOP)");
            Div2View div2ViewA = aVar.a();
            div2ViewA.clearSubscriptions();
            div2ViewA.subscribe(new le2(zt7VarF));
            z(bk2Var, view, new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    DivActionBinder.x(this.b, aVar, view, divAction, expression, zt7VarF, view2);
                }
            });
            return;
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("Unable to bind empty menu action: " + divAction.c);
        }
    }
}
