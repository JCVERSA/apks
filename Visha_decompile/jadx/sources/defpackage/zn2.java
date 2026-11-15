package defpackage;

import androidx.collection.ArrayMap;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.lzy.okgo.model.Progress;
import com.yandex.div2.DivPatch;
import java.util.List;

public class zn2 {
    public final ArrayMap a = new ArrayMap();

    public do2 a(ei2 ei2Var) {
        y45.j(ei2Var, Progress.TAG);
        return (do2) this.a.get(ei2Var);
    }

    public List b(ei2 ei2Var, String str) {
        y45.j(ei2Var, Progress.TAG);
        y45.j(str, TtmlNode.ATTR_ID);
        do2 do2Var = (do2) this.a.get(ei2Var);
        if (do2Var == null) {
            return null;
        }
        return (List) do2Var.b().get(str);
    }

    public do2 c(ei2 ei2Var, DivPatch divPatch) {
        y45.j(ei2Var, Progress.TAG);
        y45.j(divPatch, "patch");
        do2 do2Var = new do2(divPatch);
        this.a.put(ei2Var, do2Var);
        return do2Var;
    }

    public void d(ei2 ei2Var) {
        y45.j(ei2Var, Progress.TAG);
        this.a.remove(ei2Var);
    }
}
