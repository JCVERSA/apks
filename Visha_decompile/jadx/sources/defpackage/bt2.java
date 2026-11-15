package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.timer.TimerController;
import com.yandex.div.core.view2.Div2View;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class bt2 {
    public final wc3 a;
    public final Map b;
    public final Set c;

    public bt2(wc3 wc3Var) {
        y45.j(wc3Var, "errorCollector");
        this.a = wc3Var;
        this.b = new LinkedHashMap();
        this.c = new LinkedHashSet();
    }

    public final void a(TimerController timerController) {
        y45.j(timerController, "timerController");
        String str = timerController.f().c;
        if (this.b.containsKey(str)) {
            return;
        }
        this.b.put(str, timerController);
    }

    public final void b(String str, String str2) {
        zfb zfbVar;
        y45.j(str, TtmlNode.ATTR_ID);
        y45.j(str2, "command");
        TimerController timerControllerC = c(str);
        if (timerControllerC != null) {
            timerControllerC.e(str2);
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            this.a.e(new IllegalArgumentException("Timer with id '" + str + "' does not exist!"));
        }
    }

    public final TimerController c(String str) {
        y45.j(str, TtmlNode.ATTR_ID);
        if (this.c.contains(str)) {
            return (TimerController) this.b.get(str);
        }
        return null;
    }

    public final void d(Div2View div2View) {
        y45.j(div2View, "view");
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            TimerController timerController = (TimerController) this.b.get((String) it.next());
            if (timerController != null && !timerController.g(div2View)) {
                timerController.h(div2View);
            }
        }
    }

    public final void e(Div2View div2View) {
        y45.j(div2View, "view");
        Iterator it = this.b.values().iterator();
        while (it.hasNext()) {
            ((TimerController) it.next()).i(div2View);
        }
    }

    public final void f(List list) {
        y45.j(list, "ids");
        Map map = this.b;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (!list.contains(entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            ((TimerController) it.next()).l();
        }
        this.c.clear();
        this.c.addAll(list);
    }
}
