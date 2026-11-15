package defpackage;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import com.yandex.div.core.downloader.DivPatchApply;
import com.yandex.div.core.view2.a;
import com.yandex.div2.Div;
import com.yandex.div2.DivData;
import com.yandex.div2.DivPatch;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class co2 {
    public final zn2 a;
    public final oj8 b;

    public co2(zn2 zn2Var, oj8 oj8Var) {
        y45.j(zn2Var, "divPatchCache");
        y45.j(oj8Var, "divViewCreator");
        this.a = zn2Var;
        this.b = oj8Var;
    }

    public List a(a aVar, String str) {
        y45.j(aVar, "context");
        y45.j(str, TtmlNode.ATTR_ID);
        List listB = this.a.b(aVar.a().getDataTag(), str);
        if (listB == null) {
            return null;
        }
        List list = listB;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((dd2) this.b.get()).a((Div) it.next(), aVar, aVar.a().getCurrentRootPath$div_release()));
        }
        return arrayList;
    }

    public DivData b(DivData divData, ei2 ei2Var, DivPatch divPatch, oj3 oj3Var) {
        y45.j(divData, "oldDivData");
        y45.j(ei2Var, "divDataTag");
        y45.j(divPatch, "patch");
        y45.j(oj3Var, "resolver");
        List listN = new DivPatchApply(d(ei2Var, divPatch)).n(divData.c, oj3Var);
        if (listN == null) {
            e(ei2Var);
            return null;
        }
        return new DivData(null, divData.b, listN, divData.d, null, divData.f, divData.g, null, 145, null);
    }

    public Map c(a aVar, String str) {
        y45.j(aVar, "context");
        y45.j(str, TtmlNode.ATTR_ID);
        List listB = this.a.b(aVar.a().getDataTag(), str);
        if (listB == null) {
            return null;
        }
        List list = listB;
        LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(obj, ((dd2) this.b.get()).b((Div) obj, aVar, aVar.a().getCurrentRootPath$div_release()));
        }
        return linkedHashMap;
    }

    public final do2 d(ei2 ei2Var, DivPatch divPatch) {
        return this.a.c(ei2Var, divPatch);
    }

    public void e(ei2 ei2Var) {
        y45.j(ei2Var, Progress.TAG);
        this.a.d(ei2Var);
    }
}
