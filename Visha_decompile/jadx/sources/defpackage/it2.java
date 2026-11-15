package defpackage;

import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import androidx.core.view.ViewGroupKt;
import androidx.p003activity.OnBackPressedCallback;
import com.yandex.div.R;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.DivDimension;
import com.yandex.div2.DivPoint;
import com.yandex.div2.DivTooltip;
import com.yandex.div2.DivTooltipMode;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;

public abstract class it2 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivTooltip.Position.values().length];
            try {
                iArr[DivTooltip.Position.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivTooltip.Position.TOP_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivTooltip.Position.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivTooltip.Position.TOP_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DivTooltip.Position.RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DivTooltip.Position.BOTTOM_RIGHT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DivTooltip.Position.TOP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DivTooltip.Position.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DivTooltip.Position.CENTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            a = iArr;
        }
    }

    public static final Point f(View view, View view2, DivTooltip divTooltip, oj3 oj3Var) {
        int width;
        int height;
        int iG0;
        DivDimension divDimension;
        DivDimension divDimension2;
        y45.j(view, "popupView");
        y45.j(view2, "anchor");
        y45.j(divTooltip, "divTooltip");
        y45.j(oj3Var, "resolver");
        int[] iArr = new int[2];
        view2.getLocationInWindow(iArr);
        int iG1 = 0;
        Point point = new Point(iArr[0], iArr[1]);
        DivTooltip.Position position = (DivTooltip.Position) divTooltip.j.b(oj3Var);
        int i = point.x;
        int[] iArr2 = a.a;
        switch (iArr2[position.ordinal()]) {
            case 1:
            case 2:
            case 3:
                width = -view.getWidth();
                break;
            case 4:
            case 5:
            case 6:
                width = view2.getWidth();
                break;
            case 7:
            case 8:
            case 9:
                width = (view2.getWidth() - view.getWidth()) / 2;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        point.x = i + width;
        int i2 = point.y;
        switch (iArr2[position.ordinal()]) {
            case 1:
            case 5:
            case 9:
                height = (view2.getHeight() - view.getHeight()) / 2;
                break;
            case 2:
            case 4:
            case 7:
                height = -view.getHeight();
                break;
            case 3:
            case 6:
            case 8:
                height = view2.getHeight();
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        point.y = i2 + height;
        DisplayMetrics displayMetrics = view2.getResources().getDisplayMetrics();
        int i3 = point.x;
        DivPoint divPoint = divTooltip.i;
        if (divPoint == null || (divDimension2 = divPoint.a) == null) {
            iG0 = 0;
        } else {
            y45.i(displayMetrics, "displayMetrics");
            iG0 = BaseDivViewExtensionsKt.G0(divDimension2, displayMetrics, oj3Var);
        }
        point.x = i3 + iG0;
        int i4 = point.y;
        DivPoint divPoint2 = divTooltip.i;
        if (divPoint2 != null && (divDimension = divPoint2.b) != null) {
            y45.i(displayMetrics, "displayMetrics");
            iG1 = BaseDivViewExtensionsKt.G0(divDimension, displayMetrics, oj3Var);
        }
        point.y = i4 + iG1;
        return point;
    }

    public static final Pair g(String str, View view) {
        Object tag = view.getTag(R.id.div_tooltips_tag);
        List<DivTooltip> list = tag instanceof List ? (List) tag : null;
        if (list != null) {
            for (DivTooltip divTooltip : list) {
                if (y45.e(divTooltip.g, str)) {
                    return abb.a(divTooltip, view);
                }
            }
        }
        if (view instanceof ViewGroup) {
            Iterator it = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it.hasNext()) {
                Pair pairG = g(str, (View) it.next());
                if (pairG != null) {
                    return pairG;
                }
            }
        }
        return null;
    }

    public static final Rect h(Div2View div2View) {
        Rect rect = new Rect();
        div2View.getWindowVisibleDisplayFrame(rect);
        return rect;
    }

    public static final boolean i(DivTooltip divTooltip) {
        return divTooltip.h instanceof DivTooltipMode.b;
    }

    public static final void j(PopupWindow popupWindow, gqa gqaVar, b5 b5Var) {
        BaseDivViewExtensionsKt.p0(32, popupWindow.getContentView(), b5Var);
        OnBackPressedCallback onBackPressedCallbackE = gqaVar.e();
        if (onBackPressedCallbackE == null) {
            return;
        }
        onBackPressedCallbackE.setEnabled(false);
    }

    public static final boolean k(DivTooltip divTooltip, oj3 oj3Var) {
        return ((Boolean) divTooltip.d.b(oj3Var)).booleanValue();
    }
}
