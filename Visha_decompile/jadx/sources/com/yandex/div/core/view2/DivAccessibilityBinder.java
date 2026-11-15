package com.yandex.div.core.view2;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RadioButton;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.yandex.div.core.view2.backbutton.BackHandlingRecyclerView;
import com.yandex.div.core.view2.divs.widgets.DivInputView;
import com.yandex.div.core.view2.divs.widgets.DivSliderView;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAccessibility;
import com.yandex.div2.DivAction;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivImage;
import com.yandex.div2.DivInput;
import com.yandex.div2.DivSelect;
import com.yandex.div2.DivSeparator;
import com.yandex.div2.DivSlider;
import com.yandex.div2.DivTabs;
import com.yandex.div2.DivText;
import defpackage.b5;
import defpackage.og2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.y45;
import defpackage.zfb;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;

public class DivAccessibilityBinder {
    public final boolean a;
    public final b5 b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000f\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/yandex/div/core/view2/DivAccessibilityBinder$AccessibilityType;", "", "(Ljava/lang/String;I)V", "NONE", "BUTTON", "EDIT_TEXT", "HEADER", "IMAGE", "LIST", "SLIDER", "SELECT", "TAB_WIDGET", "PAGER", "TEXT", "RADIO_BUTTON", "CHECK_BOX", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum AccessibilityType {
        NONE,
        BUTTON,
        EDIT_TEXT,
        HEADER,
        IMAGE,
        LIST,
        SLIDER,
        SELECT,
        TAB_WIDGET,
        PAGER,
        TEXT,
        RADIO_BUTTON,
        CHECK_BOX
    }

    public class a {
        public static final int[] a;
        public static final int[] b;
        public static final int[] c;

        static {
            int[] iArr = new int[AccessibilityType.values().length];
            try {
                iArr[AccessibilityType.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccessibilityType.BUTTON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccessibilityType.EDIT_TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AccessibilityType.HEADER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AccessibilityType.IMAGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AccessibilityType.LIST.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AccessibilityType.PAGER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[AccessibilityType.SLIDER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[AccessibilityType.SELECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[AccessibilityType.TAB_WIDGET.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[AccessibilityType.TEXT.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[AccessibilityType.CHECK_BOX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[AccessibilityType.RADIO_BUTTON.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            a = iArr;
            int[] iArr2 = new int[DivAccessibility.Mode.values().length];
            try {
                iArr2[DivAccessibility.Mode.EXCLUDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr2[DivAccessibility.Mode.MERGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr2[DivAccessibility.Mode.DEFAULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            b = iArr2;
            int[] iArr3 = new int[DivAccessibility.Type.values().length];
            try {
                iArr3[DivAccessibility.Type.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr3[DivAccessibility.Type.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr3[DivAccessibility.Type.BUTTON.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr3[DivAccessibility.Type.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr3[DivAccessibility.Type.TEXT.ordinal()] = 5;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr3[DivAccessibility.Type.EDIT_TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr3[DivAccessibility.Type.HEADER.ordinal()] = 7;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr3[DivAccessibility.Type.LIST.ordinal()] = 8;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr3[DivAccessibility.Type.SELECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr3[DivAccessibility.Type.TAB_BAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr3[DivAccessibility.Type.RADIO.ordinal()] = 11;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr3[DivAccessibility.Type.CHECKBOX.ordinal()] = 12;
            } catch (NoSuchFieldError unused28) {
            }
            c = iArr3;
        }
    }

    public DivAccessibilityBinder(boolean z, b5 b5Var) {
        y45.j(b5Var, "accessibilityStateProvider");
        this.a = z;
        this.b = b5Var;
    }

    public final void b(View view, DivAccessibility.Mode mode, Div2View div2View, boolean z) {
        int i = a.b[mode.ordinal()];
        if (i == 1) {
            view.setImportantForAccessibility(4);
            view.setFocusable(false);
            if (view instanceof DivInputView) {
                ((DivInputView) view).setFocusableInTouchMode(true);
            }
        } else if (i == 2) {
            view.setImportantForAccessibility(1);
            if (z) {
                k(view, false);
            } else {
                view.setFocusable(!(view instanceof DivSliderView));
            }
        } else if (i == 3) {
            view.setImportantForAccessibility(0);
            view.setFocusable(!(view instanceof DivSliderView));
        }
        div2View.setPropagatedAccessibilityMode$div_release(view, mode);
    }

    public void c(View view, Div2View div2View, DivAccessibility.Mode mode, og2 og2Var) {
        y45.j(view, "view");
        y45.j(div2View, "divView");
        y45.j(og2Var, "divBase");
        if (f()) {
            Object parent = view.getParent();
            View view2 = parent instanceof View ? (View) parent : null;
            DivAccessibility.Mode propagatedAccessibilityMode$div_release = view2 != null ? div2View.getPropagatedAccessibilityMode$div_release(view2) : null;
            if (propagatedAccessibilityMode$div_release == null) {
                if (mode == null) {
                    mode = g(og2Var);
                }
                b(view, mode, div2View, false);
            } else {
                if (mode == null) {
                    mode = g(og2Var);
                }
                DivAccessibility.Mode modeI = i(propagatedAccessibilityMode$div_release, mode);
                b(view, modeI, div2View, propagatedAccessibilityMode$div_release == modeI);
            }
        }
    }

    public void d(View view, og2 og2Var, DivAccessibility.Type type, oj3 oj3Var) {
        y45.j(view, "view");
        y45.j(og2Var, "divBase");
        y45.j(type, "type");
        y45.j(oj3Var, "resolver");
        b5 b5Var = this.b;
        Context context = view.getContext();
        y45.i(context, "view.context");
        if (b5Var.c(context)) {
            AccessibilityDelegateCompat accessibilityDelegate = ViewCompat.getAccessibilityDelegate(view);
            final AccessibilityType accessibilityTypeL = l(type, og2Var, oj3Var);
            if (accessibilityTypeL == AccessibilityType.LIST && (view instanceof BackHandlingRecyclerView)) {
                accessibilityDelegate = new AccessibilityListDelegate((BackHandlingRecyclerView) view);
            } else if (accessibilityDelegate instanceof AccessibilityDelegateWrapper) {
                ((AccessibilityDelegateWrapper) accessibilityDelegate).b(new s74() {
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
                        if (accessibilityNodeInfoCompat != null) {
                            this.this$0.e(accessibilityNodeInfoCompat, accessibilityTypeL);
                        }
                    }
                });
            } else {
                accessibilityDelegate = new AccessibilityDelegateWrapper(accessibilityDelegate, new s74() {
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
                        if (accessibilityNodeInfoCompat != null) {
                            this.this$0.e(accessibilityNodeInfoCompat, accessibilityTypeL);
                        }
                    }
                }, null, 4, null);
            }
            ViewCompat.setAccessibilityDelegate(view, accessibilityDelegate);
        }
    }

    public final void e(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityType accessibilityType) {
        String str = "";
        switch (a.a[accessibilityType.ordinal()]) {
            case 1:
            case 6:
                break;
            case 2:
                str = "android.widget.Button";
                break;
            case 3:
                str = "android.widget.EditText";
                break;
            case 4:
            case 11:
                str = "android.widget.TextView";
                break;
            case 5:
                str = "android.widget.ImageView";
                break;
            case 7:
                str = "androidx.viewpager.widget.ViewPager";
                break;
            case 8:
                str = "android.widget.SeekBar";
                break;
            case 9:
                str = "android.widget.Spinner";
                break;
            case 10:
                str = "android.widget.TabWidget";
                break;
            case 12:
                str = "android.widget.CheckBox";
                break;
            case 13:
                str = "android.widget.RadioButton";
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        accessibilityNodeInfoCompat.setClassName(str);
        if (AccessibilityType.HEADER == accessibilityType) {
            accessibilityNodeInfoCompat.setHeading(true);
        }
    }

    public boolean f() {
        return this.a;
    }

    public final DivAccessibility.Mode g(og2 og2Var) {
        DivSeparator divSeparator;
        List list;
        List list2;
        List list3;
        DivImage divImage;
        List list4;
        List list5;
        List list6;
        if (og2Var instanceof DivImage) {
            return (og2Var.r() == null && ((list4 = (divImage = (DivImage) og2Var).r) == null || list4.isEmpty()) && (((list5 = divImage.d) == null || list5.isEmpty()) && ((list6 = divImage.D) == null || list6.isEmpty()))) ? DivAccessibility.Mode.EXCLUDE : DivAccessibility.Mode.DEFAULT;
        }
        if (og2Var instanceof DivSeparator) {
            return (og2Var.r() == null && ((list = (divSeparator = (DivSeparator) og2Var).o) == null || list.isEmpty()) && (((list2 = divSeparator.d) == null || list2.isEmpty()) && ((list3 = divSeparator.x) == null || list3.isEmpty()))) ? DivAccessibility.Mode.EXCLUDE : DivAccessibility.Mode.DEFAULT;
        }
        return DivAccessibility.Mode.DEFAULT;
    }

    public final int h(DivAccessibility.Mode mode) {
        int i = a.b[mode.ordinal()];
        if (i == 1) {
            return 0;
        }
        if (i == 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        throw new NoWhenBranchMatchedException();
    }

    public final DivAccessibility.Mode i(DivAccessibility.Mode mode, DivAccessibility.Mode mode2) {
        return h(mode) < h(mode2) ? mode : mode2;
    }

    public final boolean j(DivImage divImage, oj3 oj3Var) {
        Expression expression;
        DivAction divAction = divImage.b;
        if (divAction != null && divAction != null && (expression = divAction.b) != null && ((Boolean) expression.b(oj3Var)).booleanValue()) {
            return true;
        }
        List list = divImage.d;
        if (list != null && list != null) {
            List list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    if (((Boolean) ((DivAction) it.next()).b.b(oj3Var)).booleanValue()) {
                        return true;
                    }
                }
            }
        }
        List list3 = divImage.D;
        if (list3 != null && list3 != null) {
            List list4 = list3;
            if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                Iterator it2 = list4.iterator();
                while (it2.hasNext()) {
                    if (((Boolean) ((DivAction) it2.next()).b.b(oj3Var)).booleanValue()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void k(View view, boolean z) {
        view.setClickable(z);
        view.setLongClickable(z);
        view.setFocusable(z);
    }

    public final AccessibilityType l(DivAccessibility.Type type, og2 og2Var, oj3 oj3Var) {
        Expression expression;
        switch (a.c[type.ordinal()]) {
            case 1:
                DivAccessibility divAccessibilityR = og2Var.r();
                if (((divAccessibilityR == null || (expression = divAccessibilityR.d) == null) ? null : (DivAccessibility.Mode) expression.b(oj3Var)) == DivAccessibility.Mode.EXCLUDE) {
                    return AccessibilityType.NONE;
                }
                if (og2Var instanceof DivInput) {
                    return AccessibilityType.EDIT_TEXT;
                }
                if (og2Var instanceof DivText) {
                    return AccessibilityType.TEXT;
                }
                if (og2Var instanceof DivTabs) {
                    return AccessibilityType.TAB_WIDGET;
                }
                if (og2Var instanceof DivSelect) {
                    return AccessibilityType.SELECT;
                }
                if (og2Var instanceof DivSlider) {
                    return AccessibilityType.SLIDER;
                }
                if ((og2Var instanceof DivImage) && (og2Var.r() != null || j((DivImage) og2Var, oj3Var))) {
                    return AccessibilityType.IMAGE;
                }
                if (og2Var instanceof DivGallery) {
                    DivAccessibility divAccessibilityR2 = og2Var.r();
                    if ((divAccessibilityR2 != null ? divAccessibilityR2.a : null) != null) {
                        return AccessibilityType.PAGER;
                    }
                }
                if (og2Var instanceof RadioButton) {
                    return AccessibilityType.RADIO_BUTTON;
                }
                return og2Var instanceof CheckBox ? AccessibilityType.CHECK_BOX : AccessibilityType.NONE;
            case 2:
                return AccessibilityType.NONE;
            case 3:
                return AccessibilityType.BUTTON;
            case 4:
                return AccessibilityType.IMAGE;
            case 5:
                return AccessibilityType.TEXT;
            case 6:
                return AccessibilityType.EDIT_TEXT;
            case 7:
                return AccessibilityType.HEADER;
            case 8:
                return AccessibilityType.LIST;
            case 9:
                return AccessibilityType.SELECT;
            case 10:
                return AccessibilityType.TAB_WIDGET;
            case 11:
                return AccessibilityType.RADIO_BUTTON;
            case 12:
                return AccessibilityType.CHECK_BOX;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
