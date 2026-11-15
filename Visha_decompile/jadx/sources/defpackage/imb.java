package defpackage;

import com.yandex.div2.Div;
import java.util.List;

public abstract class imb {
    public static final boolean a(Div div) {
        List listW;
        List listY;
        y45.j(div, "<this>");
        og2 og2VarB = div.b();
        List listC = og2VarB.c();
        return !((listC == null || listC.isEmpty()) && ((listW = og2VarB.w()) == null || listW.isEmpty()) && ((listY = og2VarB.y()) == null || listY.isEmpty()));
    }

    public static final boolean b(List list, List list2, List list3) {
        List list4;
        List list5;
        List list6 = list;
        return ((list6 == null || list6.isEmpty()) && ((list4 = list2) == null || list4.isEmpty()) && ((list5 = list3) == null || list5.isEmpty())) ? false : true;
    }
}
