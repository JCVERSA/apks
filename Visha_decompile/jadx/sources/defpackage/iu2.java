package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div2.Div;
import com.yandex.div2.DivContainer;
import com.yandex.div2.DivCustom;
import com.yandex.div2.DivData;
import com.yandex.div2.DivGallery;
import com.yandex.div2.DivGrid;
import com.yandex.div2.DivPager;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTabs;
import com.yandex.div2.DivVideo;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class iu2 {
    public static final a b = new a(null);
    public final vu2 a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public iu2(vu2 vu2Var) {
        y45.j(vu2Var, "videoViewMapper");
        this.a = vu2Var;
    }

    public final DivVideo a(og2 og2Var, String str, oj3 oj3Var) {
        og2 og2VarB;
        DivVideo divVideoA;
        if (og2Var instanceof DivVideo) {
            if (y45.e(og2Var.getId(), str)) {
                return (DivVideo) og2Var;
            }
            return null;
        }
        if (og2Var instanceof DivGallery) {
            for (zl2 zl2Var : bh2.d((DivGallery) og2Var, oj3Var)) {
                DivVideo divVideoA2 = a(zl2Var.a().b(), str, zl2Var.b());
                if (divVideoA2 != null) {
                    return divVideoA2;
                }
            }
            return null;
        }
        if (og2Var instanceof DivContainer) {
            for (zl2 zl2Var2 : bh2.c((DivContainer) og2Var, oj3Var)) {
                DivVideo divVideoA3 = a(zl2Var2.a().b(), str, zl2Var2.b());
                if (divVideoA3 != null) {
                    return divVideoA3;
                }
            }
            return null;
        }
        if (og2Var instanceof DivGrid) {
            Iterator it = bh2.n((DivGrid) og2Var).iterator();
            while (it.hasNext()) {
                DivVideo divVideoA4 = a(((Div) it.next()).b(), str, oj3Var);
                if (divVideoA4 != null) {
                    return divVideoA4;
                }
            }
            return null;
        }
        if (og2Var instanceof DivPager) {
            for (zl2 zl2Var3 : bh2.e((DivPager) og2Var, oj3Var)) {
                DivVideo divVideoA5 = a(zl2Var3.a().b(), str, zl2Var3.b());
                if (divVideoA5 != null) {
                    return divVideoA5;
                }
            }
            return null;
        }
        if (og2Var instanceof DivTabs) {
            Iterator it2 = ((DivTabs) og2Var).q.iterator();
            while (it2.hasNext()) {
                DivVideo divVideoA6 = a(((DivTabs.Item) it2.next()).a.b(), str, oj3Var);
                if (divVideoA6 != null) {
                    return divVideoA6;
                }
            }
            return null;
        }
        if (og2Var instanceof DivCustom) {
            List list = ((DivCustom) og2Var).q;
            if (list != null) {
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    DivVideo divVideoA7 = a(((Div) it3.next()).b(), str, oj3Var);
                    if (divVideoA7 != null) {
                        return divVideoA7;
                    }
                }
            }
            return null;
        }
        if (og2Var instanceof DivState) {
            Iterator it4 = ((DivState) og2Var).y.iterator();
            while (it4.hasNext()) {
                Div div = ((DivState.State) it4.next()).c;
                if (div != null && (og2VarB = div.b()) != null && (divVideoA = a(og2VarB, str, oj3Var)) != null) {
                    return divVideoA;
                }
            }
        }
        return null;
    }

    public final boolean b(Div2View div2View, String str, String str2, oj3 oj3Var) {
        DivVideo divVideoC;
        com.yandex.div.core.player.a aVarB;
        y45.j(div2View, "div2View");
        y45.j(str, "divId");
        y45.j(str2, "action");
        y45.j(oj3Var, "expressionResolver");
        DivData divData = div2View.getDivData();
        if (divData == null || (divVideoC = c(divData, str, oj3Var)) == null || (aVarB = this.a.b(divVideoC)) == null) {
            return false;
        }
        if (y45.e(str2, TtmlNode.START)) {
            aVarB.play();
            return true;
        }
        if (y45.e(str2, "pause")) {
            aVarB.pause();
            return true;
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("No such video action: " + str2);
        }
        return false;
    }

    public final DivVideo c(DivData divData, String str, oj3 oj3Var) {
        Iterator it = divData.c.iterator();
        while (it.hasNext()) {
            DivVideo divVideoA = a(((DivData.State) it.next()).a.b(), str, oj3Var);
            if (divVideoA != null) {
                return divVideoA;
            }
        }
        return null;
    }
}
