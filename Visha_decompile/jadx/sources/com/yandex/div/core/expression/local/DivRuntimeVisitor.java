package com.yandex.div.core.expression.local;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.state.DivPathUtils;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTabs;
import defpackage.ae5;
import defpackage.d81;
import defpackage.e74;
import defpackage.i81;
import defpackage.imb;
import defpackage.lq2;
import defpackage.oj3;
import defpackage.qnb;
import defpackage.rda;
import defpackage.rga;
import defpackage.vj3;
import defpackage.xi;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import org.apache.commons.io.IOUtils;

public class DivRuntimeVisitor {
    public final lq2 a;
    public final rga b;
    public final rda c;

    public DivRuntimeVisitor(lq2 lq2Var, rga rgaVar, rda rdaVar) {
        y45.j(lq2Var, "divStateCache");
        y45.j(rgaVar, "temporaryStateCache");
        y45.j(rdaVar, "tabsCache");
        this.a = lq2Var;
        this.b = rgaVar;
        this.c = rdaVar;
    }

    public final String a(String str, String str2) {
        return str + IOUtils.DIR_SEPARATOR_UNIX + str2;
    }

    public void b(Div div, DivStatePath divStatePath, Div2View div2View) {
        vj3 vj3VarG;
        y45.j(div, "rootDiv");
        y45.j(divStatePath, "rootPath");
        y45.j(div2View, "divView");
        RuntimeStore runtimeStore = div2View.getRuntimeStore();
        if (runtimeStore == null || (vj3VarG = runtimeStore.g()) == null) {
            return;
        }
        vj3VarG.h(div2View);
        h(div, div2View, divStatePath.e(), g(divStatePath), vj3VarG);
    }

    public void c(Div2View div2View, DivState divState, DivStatePath divStatePath, oj3 oj3Var) {
        vj3 vj3VarJ;
        y45.j(div2View, "divView");
        y45.j(divState, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        y45.j(oj3Var, "expressionResolver");
        RuntimeStore runtimeStore = div2View.getRuntimeStore();
        if (runtimeStore == null || (vj3VarJ = runtimeStore.j(oj3Var)) == null) {
            return;
        }
        vj3VarJ.h(div2View);
        j(divState, div2View, divStatePath.e(), g(divStatePath), vj3VarJ);
    }

    public void d(Div2View div2View, DivTabs divTabs, DivStatePath divStatePath, oj3 oj3Var) {
        vj3 vj3VarJ;
        y45.j(div2View, "divView");
        y45.j(divTabs, TtmlNode.TAG_DIV);
        y45.j(divStatePath, "path");
        y45.j(oj3Var, "expressionResolver");
        RuntimeStore runtimeStore = div2View.getRuntimeStore();
        if (runtimeStore == null || (vj3VarJ = runtimeStore.j(oj3Var)) == null) {
            return;
        }
        vj3VarJ.h(div2View);
        k(divTabs, div2View, divStatePath.e(), g(divStatePath), vj3VarJ);
    }

    public final vj3 e(Div div, Div2View div2View, String str, vj3 vj3Var) {
        vj3 vj3VarF;
        if (!imb.a(div)) {
            return vj3Var;
        }
        RuntimeStore runtimeStore = div2View.getRuntimeStore();
        if (runtimeStore != null && (vj3VarF = RuntimeStore.f(runtimeStore, str, div, null, vj3Var, 4, null)) != null) {
            vj3VarF.h(div2View);
            return vj3VarF;
        }
        xi.i("ExpressionRuntimeVisitor cannot create runtime for path = " + str);
        return null;
    }

    public final String f(DivState divState, Div2View div2View, List list, vj3 vj3Var) {
        String strValueOf;
        String strY0 = i81.y0(list, "/", null, null, 0, null, null, 62, null);
        String strA = div2View.getDivTag().a();
        y45.i(strA, "divView.divTag.id");
        String strB = this.b.b(strA, strY0);
        if (strB != null) {
            return strB;
        }
        String strA2 = this.a.a(strA, strY0);
        if (strA2 != null) {
            return strA2;
        }
        String str = divState.x;
        if (str != null) {
            qnb qnbVarA = vj3Var.g().a(str);
            strValueOf = String.valueOf(qnbVarA != null ? qnbVarA.c() : null);
        } else {
            strValueOf = null;
        }
        if (strValueOf == null) {
            Expression expression = divState.j;
            strValueOf = expression != null ? (String) expression.b(vj3Var.c()) : null;
            if (strValueOf == null) {
                DivState.State state = (DivState.State) i81.q0(divState.y);
                if (state != null) {
                    return state.d;
                }
                return null;
            }
        }
        return strValueOf;
    }

    public final ArrayList g(DivStatePath divStatePath) {
        ArrayList arrayList = new ArrayList(divStatePath.i().size() * 4);
        arrayList.add(String.valueOf(divStatePath.k()));
        for (Pair pair : divStatePath.i()) {
            arrayList.add(pair.getFirst());
            arrayList.add(pair.getSecond());
        }
        return arrayList;
    }

    public final void h(Div div, Div2View div2View, String str, List list, vj3 vj3Var) {
        if (div instanceof Div.b) {
            i(div, div2View, ((Div.b) div).c().A, str, list, vj3Var);
            return;
        }
        if (div instanceof Div.f) {
            i(div, div2View, ((Div.f) div).c().y, str, list, vj3Var);
            return;
        }
        if (div instanceof Div.d) {
            i(div, div2View, ((Div.d) div).c().u, str, list, vj3Var);
            return;
        }
        if (div instanceof Div.j) {
            i(div, div2View, ((Div.j) div).c().t, str, list, vj3Var);
            return;
        }
        if (div instanceof Div.n) {
            j(((Div.n) div).c(), div2View, str, list, vj3Var);
            return;
        }
        if (div instanceof Div.p) {
            k(((Div.p) div).c(), div2View, str, list, vj3Var);
            return;
        }
        if (div instanceof Div.c) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.e) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.g) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.h) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.i) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.k) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.l) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.m) {
            e(div, div2View, str, vj3Var);
            return;
        }
        if (div instanceof Div.q) {
            e(div, div2View, str, vj3Var);
        } else if (div instanceof Div.r) {
            e(div, div2View, str, vj3Var);
        } else if (div instanceof Div.o) {
            e(div, div2View, str, vj3Var);
        }
    }

    public final void i(Div div, Div2View div2View, List list, String str, List list2, vj3 vj3Var) {
        vj3 vj3VarE = e(div, div2View, str, vj3Var);
        if (vj3VarE == null || list == null) {
            return;
        }
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            Div div2 = (Div) obj;
            h(div2, div2View, a(str, BaseDivViewExtensionsKt.a0(div2.b(), i)), list2, vj3VarE);
            i = i2;
        }
    }

    public final void j(DivState divState, Div2View div2View, String str, List list, vj3 vj3Var) {
        RuntimeTree runtimeTreeK;
        list.add(DivPathUtils.i(DivPathUtils.a, divState, null, 1, null));
        String strF = f(divState, div2View, list, vj3Var);
        for (DivState.State state : divState.y) {
            Div div = state.c;
            if (div != null) {
                String strA = a(str, state.d);
                if (y45.e(state.d, strF)) {
                    h(div, div2View, strA, list, vj3Var);
                } else {
                    RuntimeStore runtimeStore = div2View.getRuntimeStore();
                    if (runtimeStore != null && (runtimeTreeK = runtimeStore.k()) != null) {
                        runtimeTreeK.e(vj3Var, strA, new e74() {
                            @Override
                            public Object invoke(Object obj) {
                                invoke((RuntimeTree.a) obj);
                                return zfb.a;
                            }

                            public final void invoke(RuntimeTree.a aVar) {
                                y45.j(aVar, "node");
                                aVar.c().b();
                            }
                        });
                    }
                }
            }
        }
        d81.K(list);
    }

    public final vj3 k(DivTabs divTabs, Div2View div2View, String str, List list, vj3 vj3Var) {
        int iIntValue;
        RuntimeTree runtimeTreeK;
        rda rdaVar = this.c;
        String strA = div2View.getDataTag().a();
        y45.i(strA, "divView.dataTag.id");
        Integer numA = rdaVar.a(strA, str);
        if (numA != null) {
            iIntValue = numA.intValue();
        } else {
            long jLongValue = ((Number) divTabs.y.b(vj3Var.c())).longValue();
            long j = jLongValue >> 31;
            if (j == 0 || j == -1) {
                iIntValue = (int) jLongValue;
            } else {
                ae5 ae5Var = ae5.a;
                if (xi.o()) {
                    xi.i("Unable convert '" + jLongValue + "' to Int");
                }
                iIntValue = jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
            }
        }
        int i = iIntValue;
        int i2 = 0;
        for (Object obj : divTabs.q) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                y71.u();
            }
            DivTabs.Item item = (DivTabs.Item) obj;
            String strA2 = a(str, BaseDivViewExtensionsKt.a0(item.a.b(), i2));
            if (i == i2) {
                h(item.a, div2View, strA2, list, vj3Var);
            } else {
                RuntimeStore runtimeStore = div2View.getRuntimeStore();
                if (runtimeStore != null && (runtimeTreeK = runtimeStore.k()) != null) {
                    runtimeTreeK.e(vj3Var, strA2, new e74() {
                        @Override
                        public Object invoke(Object obj2) {
                            invoke((RuntimeTree.a) obj2);
                            return zfb.a;
                        }

                        public final void invoke(RuntimeTree.a aVar) {
                            y45.j(aVar, "node");
                            aVar.c().b();
                        }
                    });
                }
                i2 = i3;
            }
            i2 = i3;
        }
        return null;
    }
}
