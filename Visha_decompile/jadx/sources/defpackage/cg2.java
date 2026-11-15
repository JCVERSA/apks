package defpackage;

import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.expression.local.RuntimeStore;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.evaluable.MissingVariableException;
import com.yandex.div.internal.core.DivTreeVisitor;
import com.yandex.div2.Div;
import com.yandex.div2.DivActionSubmit;
import com.yandex.div2.DivActionTyped;
import com.yandex.div2.DivData;
import com.yandex.div2.DivVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Triple;
import org.json.JSONObject;

public final class cg2 implements uf2 {
    public final yo2 a;

    public static final class a extends DivTreeVisitor {
        public final String c;
        public final List d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str) {
            super(null, 1, null);
            y45.j(str, TtmlNode.ATTR_ID);
            this.c = str;
            this.d = new ArrayList();
        }

        @Override
        public Object c(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            y(div, aVar, divStatePath);
            return zfb.a;
        }

        public void y(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath) {
            y45.j(div, "data");
            y45.j(aVar, "context");
            y45.j(divStatePath, "path");
            if (y45.e(div.b().getId(), this.c)) {
                this.d.add(new Triple(div, aVar, divStatePath));
            }
        }

        public final Triple z(Div2View div2View) {
            y45.j(div2View, "view");
            DivData divData = div2View.getDivData();
            if (divData == null) {
                return null;
            }
            for (DivData.State state : divData.c) {
                x(state.a, div2View.getBindingContext(), DivStatePath.f.j(state));
            }
            if (this.d.isEmpty()) {
                eg2.e(div2View, new RuntimeException("Error resolving container. Elements that respond to id '" + this.c + "' are not found."));
                return null;
            }
            if (this.d.size() <= 1) {
                return (Triple) i81.o0(this.d);
            }
            eg2.e(div2View, new RuntimeException("Error resolving container. Found multiple elements that respond to id '" + this.c + "'."));
            return null;
        }
    }

    public static final class b implements yo2.a {
        public final List a;
        public final List b;
        public final Div2View c;
        public final oj3 d;

        public b(List list, List list2, Div2View div2View, oj3 oj3Var) {
            this.a = list;
            this.b = list2;
            this.c = div2View;
            this.d = oj3Var;
        }
    }

    public cg2(yo2 yo2Var) {
        y45.j(yo2Var, "requestExecutor");
        this.a = yo2Var;
    }

    @Override
    public boolean a(String str, DivActionTyped divActionTyped, Div2View div2View, oj3 oj3Var) {
        DivActionSubmit divActionSubmitC;
        Triple tripleZ;
        y45.j(divActionTyped, "action");
        y45.j(div2View, "view");
        y45.j(oj3Var, "resolver");
        ArrayList arrayList = null;
        DivActionTyped.s sVar = divActionTyped instanceof DivActionTyped.s ? (DivActionTyped.s) divActionTyped : null;
        if (sVar == null || (divActionSubmitC = sVar.c()) == null || (tripleZ = new a((String) divActionSubmitC.a.b(oj3Var)).z(div2View)) == null) {
            return false;
        }
        Div div = (Div) tripleZ.component1();
        com.yandex.div.core.view2.a aVar = (com.yandex.div.core.view2.a) tripleZ.component2();
        DivStatePath divStatePath = (DivStatePath) tripleZ.component3();
        List list = divActionSubmitC.d.a;
        if (list != null) {
            List<DivActionSubmit.Request.Header> list2 = list;
            arrayList = new ArrayList(z71.v(list2, 10));
            for (DivActionSubmit.Request.Header header : list2) {
                arrayList.add(new yo2.d((String) header.a.b(oj3Var), (String) header.b.b(oj3Var)));
            }
        }
        div2View.addLoadReference(this.a.a(new yo2.e((Uri) divActionSubmitC.d.c.b(oj3Var), ((DivActionSubmit.Request.Method) divActionSubmitC.d.b.b(oj3Var)).toString(), arrayList, b(div, aVar, divStatePath, div2View)), c(divActionSubmitC.c, divActionSubmitC.b, div2View, oj3Var)), div2View);
        return true;
    }

    public final String b(Div div, com.yandex.div.core.view2.a aVar, DivStatePath divStatePath, Div2View div2View) {
        RuntimeStore runtimeStoreE;
        vj3 vj3VarF;
        snb snbVarG;
        List listC = div.b().c();
        List list = listC;
        if (list == null || list.isEmpty() || (runtimeStoreE = aVar.e()) == null || (vj3VarF = RuntimeStore.f(runtimeStoreE, divStatePath.e(), div, aVar.b(), null, 8, null)) == null || (snbVarG = vj3VarF.g()) == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        Iterator it = listC.iterator();
        while (it.hasNext()) {
            String strA = yj3.a((DivVariable) it.next());
            Object obj = snbVarG.get(strA);
            if ((obj != null ? jSONObject.put(strA, obj) : null) == null) {
                eg2.e(div2View, new MissingVariableException(strA, null, 2, null));
            }
        }
        String string = jSONObject.toString();
        y45.i(string, "body.toString()");
        return string;
    }

    public final yo2.a c(List list, List list2, Div2View div2View, oj3 oj3Var) {
        List list3;
        List list4 = list;
        if ((list4 == null || list4.isEmpty()) && ((list3 = list2) == null || list3.isEmpty())) {
            return null;
        }
        return new b(list, list2, div2View, oj3Var);
    }
}
