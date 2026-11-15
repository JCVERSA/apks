package defpackage;

import com.yandex.div.core.timer.TimerController;
import com.yandex.div.core.view2.divs.DivActionBinder;
import com.yandex.div2.DivData;
import com.yandex.div2.DivTimer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class ct2 {
    public final DivActionBinder a;
    public final xc3 b;
    public final Map c;

    public ct2(DivActionBinder divActionBinder, xc3 xc3Var) {
        y45.j(divActionBinder, "divActionBinder");
        y45.j(xc3Var, "errorCollectors");
        this.a = divActionBinder;
        this.b = xc3Var;
        this.c = Collections.synchronizedMap(new LinkedHashMap());
    }

    public final bt2 a(ei2 ei2Var, DivData divData, oj3 oj3Var) {
        Object obj;
        y45.j(ei2Var, "dataTag");
        y45.j(divData, "data");
        y45.j(oj3Var, "expressionResolver");
        List list = divData.d;
        if (list == null) {
            return null;
        }
        wc3 wc3VarA = this.b.a(ei2Var, divData);
        Map map = this.c;
        y45.i(map, "controllers");
        String strA = ei2Var.a();
        Object obj2 = map.get(strA);
        if (obj2 == null) {
            obj = obj2;
            bt2 bt2Var = new bt2(wc3VarA);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                bt2Var.a(c((DivTimer) it.next(), wc3VarA, oj3Var));
            }
            map.put(strA, bt2Var);
            obj = bt2Var;
        }
        obj = obj2;
        bt2 bt2Var2 = (bt2) obj;
        b(bt2Var2, list, wc3VarA, oj3Var);
        return bt2Var2;
    }

    public final void b(bt2 bt2Var, List list, wc3 wc3Var, oj3 oj3Var) {
        List<DivTimer> list2 = list;
        for (DivTimer divTimer : list2) {
            if (bt2Var.c(divTimer.c) == null) {
                bt2Var.a(c(divTimer, wc3Var, oj3Var));
            }
        }
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((DivTimer) it.next()).c);
        }
        bt2Var.f(arrayList);
    }

    public final TimerController c(DivTimer divTimer, wc3 wc3Var, oj3 oj3Var) {
        return new TimerController(divTimer, this.a, wc3Var, oj3Var);
    }
}
