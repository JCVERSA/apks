package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.z4;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public abstract class SaversKt {

    private static final androidx.compose.runtime.saveable.d f5731a = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, AnnotatedString, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, AnnotatedString annotatedString) {
            return CollectionsKt.h(SaversKt.x(annotatedString.i()), SaversKt.y(annotatedString.g(), SaversKt.f5732b, eVar), SaversKt.y(annotatedString.e(), SaversKt.f5732b, eVar), SaversKt.y(annotatedString.b(), SaversKt.f5732b, eVar));
        }
    }, new Function1<Object, AnnotatedString>() {
        @Override
        public final AnnotatedString invoke(Object obj) {
            List list;
            List list2;
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list3 = (List) obj;
            Object obj2 = list3.get(1);
            androidx.compose.runtime.saveable.d dVar = SaversKt.f5732b;
            Boolean bool = Boolean.FALSE;
            List list4 = null;
            List list5 = ((!Intrinsics.c(obj2, bool) || (dVar instanceof j)) && obj2 != null) ? (List) dVar.b(obj2) : null;
            Object obj3 = list3.get(2);
            androidx.compose.runtime.saveable.d dVar2 = SaversKt.f5732b;
            List list6 = ((!Intrinsics.c(obj3, bool) || (dVar2 instanceof j)) && obj3 != null) ? (List) dVar2.b(obj3) : null;
            Object obj4 = list3.get(0);
            String str = obj4 != null ? (String) obj4 : null;
            Intrinsics.e(str);
            if (list5 != null) {
                List list7 = list5;
                if (list7.isEmpty()) {
                    list7 = null;
                }
                list = list7;
            } else {
                list = null;
            }
            if (list6 != null) {
                List list8 = list6;
                if (list8.isEmpty()) {
                    list8 = null;
                }
                list2 = list8;
            } else {
                list2 = null;
            }
            Object obj5 = list3.get(3);
            androidx.compose.runtime.saveable.d dVar3 = SaversKt.f5732b;
            if ((!Intrinsics.c(obj5, bool) || (dVar3 instanceof j)) && obj5 != null) {
                list4 = (List) dVar3.b(obj5);
            }
            return new AnnotatedString(str, list, list2, list4);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5732b = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, List<? extends AnnotatedString.c>, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, List<? extends AnnotatedString.c> list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(SaversKt.y(list.get(i10), SaversKt.f5733c, eVar));
            }
            return arrayList;
        }
    }, new Function1<Object, List<? extends AnnotatedString.c>>() {
        @Override
        public final List<AnnotatedString.c> invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj2 = list.get(i10);
                androidx.compose.runtime.saveable.d dVar = SaversKt.f5733c;
                AnnotatedString.c cVar = null;
                if ((!Intrinsics.c(obj2, Boolean.FALSE) || (dVar instanceof j)) && obj2 != null) {
                    cVar = (AnnotatedString.c) dVar.b(obj2);
                }
                Intrinsics.e(cVar);
                arrayList.add(cVar);
            }
            return arrayList;
        }
    });

    private static final androidx.compose.runtime.saveable.d f5733c = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, AnnotatedString.c, Object>() {

        public class a {

            public static final int[] f5753a;

            static {
                int[] iArr = new int[AnnotationType.values().length];
                try {
                    iArr[AnnotationType.Paragraph.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[AnnotationType.Span.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[AnnotationType.Url.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[AnnotationType.Link.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[AnnotationType.Clickable.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[AnnotationType.String.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f5753a = iArr;
            }
        }

        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, AnnotatedString.c cVar) {
            AnnotationType annotationType;
            Object objY;
            Object objE = cVar.e();
            if (objE instanceof r) {
                annotationType = AnnotationType.Paragraph;
            } else if (objE instanceof x) {
                annotationType = AnnotationType.Span;
            } else if (objE instanceof h0) {
                annotationType = AnnotationType.VerbatimTts;
            } else if (objE instanceof g0) {
                annotationType = AnnotationType.Url;
            } else if (objE instanceof f.b) {
                annotationType = AnnotationType.Link;
            } else {
                annotationType = objE instanceof f.a ? AnnotationType.Clickable : AnnotationType.String;
            }
            switch (a.f5753a[annotationType.ordinal()]) {
                case 1:
                    Object objE2 = cVar.e();
                    Intrinsics.f(objE2, "null cannot be cast to non-null type androidx.compose.ui.text.ParagraphStyle");
                    objY = SaversKt.y((r) objE2, SaversKt.i(), eVar);
                    break;
                case 2:
                    Object objE3 = cVar.e();
                    Intrinsics.f(objE3, "null cannot be cast to non-null type androidx.compose.ui.text.SpanStyle");
                    objY = SaversKt.y((x) objE3, SaversKt.v(), eVar);
                    break;
                case 3:
                    Object objE4 = cVar.e();
                    Intrinsics.f(objE4, "null cannot be cast to non-null type androidx.compose.ui.text.VerbatimTtsAnnotation");
                    objY = SaversKt.y((h0) objE4, SaversKt.f5734d, eVar);
                    break;
                case 4:
                    Object objE5 = cVar.e();
                    Intrinsics.f(objE5, "null cannot be cast to non-null type androidx.compose.ui.text.UrlAnnotation");
                    objY = SaversKt.y((g0) objE5, SaversKt.f5735e, eVar);
                    break;
                case 5:
                    Object objE6 = cVar.e();
                    Intrinsics.f(objE6, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Url");
                    objY = SaversKt.y((f.b) objE6, SaversKt.f5736f, eVar);
                    break;
                case 6:
                    Object objE7 = cVar.e();
                    Intrinsics.f(objE7, "null cannot be cast to non-null type androidx.compose.ui.text.LinkAnnotation.Clickable");
                    objY = SaversKt.y((f.a) objE7, SaversKt.f5737g, eVar);
                    break;
                case 7:
                    objY = SaversKt.x(cVar.e());
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            return CollectionsKt.h(SaversKt.x(annotationType), objY, SaversKt.x(Integer.valueOf(cVar.f())), SaversKt.x(Integer.valueOf(cVar.d())), SaversKt.x(cVar.g()));
        }
    }, new Function1<Object, AnnotatedString.c>() {

        public class a {

            public static final int[] f5754a;

            static {
                int[] iArr = new int[AnnotationType.values().length];
                try {
                    iArr[AnnotationType.Paragraph.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[AnnotationType.Span.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[AnnotationType.Url.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[AnnotationType.Link.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[AnnotationType.Clickable.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[AnnotationType.String.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                f5754a = iArr;
            }
        }

        @Override
        public final AnnotatedString.c invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Object obj3 = null;
            AnnotationType annotationType = obj2 != null ? (AnnotationType) obj2 : null;
            Intrinsics.e(annotationType);
            Object obj4 = list.get(2);
            Integer num = obj4 != null ? (Integer) obj4 : null;
            Intrinsics.e(num);
            int iIntValue = num.intValue();
            Object obj5 = list.get(3);
            Integer num2 = obj5 != null ? (Integer) obj5 : null;
            Intrinsics.e(num2);
            int iIntValue2 = num2.intValue();
            Object obj6 = list.get(4);
            String str = obj6 != null ? (String) obj6 : null;
            Intrinsics.e(str);
            switch (a.f5754a[annotationType.ordinal()]) {
                case 1:
                    Object obj7 = list.get(1);
                    androidx.compose.runtime.saveable.d dVarI = SaversKt.i();
                    if ((!Intrinsics.c(obj7, Boolean.FALSE) || (dVarI instanceof j)) && obj7 != null) {
                        obj3 = (r) dVarI.b(obj7);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 2:
                    Object obj8 = list.get(1);
                    androidx.compose.runtime.saveable.d dVarV = SaversKt.v();
                    if ((!Intrinsics.c(obj8, Boolean.FALSE) || (dVarV instanceof j)) && obj8 != null) {
                        obj3 = (x) dVarV.b(obj8);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 3:
                    Object obj9 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar = SaversKt.f5734d;
                    if ((!Intrinsics.c(obj9, Boolean.FALSE) || (dVar instanceof j)) && obj9 != null) {
                        obj3 = (h0) dVar.b(obj9);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 4:
                    Object obj10 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar2 = SaversKt.f5735e;
                    if ((!Intrinsics.c(obj10, Boolean.FALSE) || (dVar2 instanceof j)) && obj10 != null) {
                        obj3 = (g0) dVar2.b(obj10);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 5:
                    Object obj11 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar3 = SaversKt.f5736f;
                    if ((!Intrinsics.c(obj11, Boolean.FALSE) || (dVar3 instanceof j)) && obj11 != null) {
                        obj3 = (f.b) dVar3.b(obj11);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 6:
                    Object obj12 = list.get(1);
                    androidx.compose.runtime.saveable.d dVar4 = SaversKt.f5737g;
                    if ((!Intrinsics.c(obj12, Boolean.FALSE) || (dVar4 instanceof j)) && obj12 != null) {
                        obj3 = (f.a) dVar4.b(obj12);
                    }
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                case 7:
                    Object obj13 = list.get(1);
                    obj3 = obj13 != null ? (String) obj13 : null;
                    Intrinsics.e(obj3);
                    return new AnnotatedString.c(obj3, iIntValue, iIntValue2, str);
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    });

    private static final androidx.compose.runtime.saveable.d f5734d = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, h0, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, h0 h0Var) {
            return SaversKt.x(h0Var.a());
        }
    }, new Function1<Object, h0>() {
        @Override
        public final h0 invoke(Object obj) {
            String str = obj != null ? (String) obj : null;
            Intrinsics.e(str);
            return new h0(str);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5735e = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, g0, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, g0 g0Var) {
            return SaversKt.x(g0Var.a());
        }
    }, new Function1<Object, g0>() {
        @Override
        public final g0 invoke(Object obj) {
            String str = obj != null ? (String) obj : null;
            Intrinsics.e(str);
            return new g0(str);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5736f = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, f.b, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, f.b bVar) {
            return CollectionsKt.h(SaversKt.x(bVar.c()), SaversKt.y(bVar.b(), SaversKt.w(), eVar));
        }
    }, new Function1<Object, f.b>() {
        @Override
        public final f.b invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            a0 a0Var = null;
            String str = obj2 != null ? (String) obj2 : null;
            Intrinsics.e(str);
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarW = SaversKt.w();
            if ((!Intrinsics.c(obj3, Boolean.FALSE) || (dVarW instanceof j)) && obj3 != null) {
                a0Var = (a0) dVarW.b(obj3);
            }
            return new f.b(str, a0Var, null, 4, null);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5737g = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, f.a, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, f.a aVar) {
            return CollectionsKt.h(SaversKt.x(aVar.c()), SaversKt.y(aVar.b(), SaversKt.w(), eVar));
        }
    }, new Function1<Object, f.a>() {
        @Override
        public final f.a invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            String str = obj2 != null ? (String) obj2 : null;
            Intrinsics.e(str);
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarW = SaversKt.w();
            return new f.a(str, ((!Intrinsics.c(obj3, Boolean.FALSE) || (dVarW instanceof j)) && obj3 != null) ? (a0) dVarW.b(obj3) : null, null);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5738h = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, r, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, r rVar) {
            return CollectionsKt.h(SaversKt.x(androidx.compose.ui.text.style.h.h(rVar.h())), SaversKt.x(androidx.compose.ui.text.style.j.g(rVar.i())), SaversKt.y(o0.w.b(rVar.e()), SaversKt.t(o0.w.f67429b), eVar), SaversKt.y(rVar.j(), SaversKt.q(androidx.compose.ui.text.style.n.f6120c), eVar));
        }
    }, new Function1<Object, r>() {
        @Override
        public final r invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.ui.text.style.h hVar = obj2 != null ? (androidx.compose.ui.text.style.h) obj2 : null;
            Intrinsics.e(hVar);
            int iN = hVar.n();
            Object obj3 = list.get(1);
            androidx.compose.ui.text.style.j jVar = obj3 != null ? (androidx.compose.ui.text.style.j) obj3 : null;
            Intrinsics.e(jVar);
            int iM = jVar.m();
            Object obj4 = list.get(2);
            androidx.compose.runtime.saveable.d dVarT = SaversKt.t(o0.w.f67429b);
            Boolean bool = Boolean.FALSE;
            o0.w wVar = ((!Intrinsics.c(obj4, bool) || (dVarT instanceof j)) && obj4 != null) ? (o0.w) dVarT.b(obj4) : null;
            Intrinsics.e(wVar);
            long jK = wVar.k();
            Object obj5 = list.get(3);
            androidx.compose.runtime.saveable.d dVarQ = SaversKt.q(androidx.compose.ui.text.style.n.f6120c);
            return new r(iN, iM, jK, ((!Intrinsics.c(obj5, bool) || (dVarQ instanceof j)) && obj5 != null) ? (androidx.compose.ui.text.style.n) dVarQ.b(obj5) : null, null, null, 0, 0, null, 496, null);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5739i = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, x, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, x xVar) {
            u1 u1VarG = u1.g(xVar.g());
            u1.a aVar = u1.f4349b;
            Object objY = SaversKt.y(u1VarG, SaversKt.j(aVar), eVar);
            o0.w wVarB = o0.w.b(xVar.k());
            o0.w.a aVar2 = o0.w.f67429b;
            return CollectionsKt.h(objY, SaversKt.y(wVarB, SaversKt.t(aVar2), eVar), SaversKt.y(xVar.n(), SaversKt.m(androidx.compose.ui.text.font.p.f5840b), eVar), SaversKt.x(xVar.l()), SaversKt.x(xVar.m()), SaversKt.x(-1), SaversKt.x(xVar.j()), SaversKt.y(o0.w.b(xVar.o()), SaversKt.t(aVar2), eVar), SaversKt.y(xVar.e(), SaversKt.n(androidx.compose.ui.text.style.a.f6045b), eVar), SaversKt.y(xVar.u(), SaversKt.p(androidx.compose.ui.text.style.m.f6116c), eVar), SaversKt.y(xVar.p(), SaversKt.s(n0.i.f66852c), eVar), SaversKt.y(u1.g(xVar.d()), SaversKt.j(aVar), eVar), SaversKt.y(xVar.s(), SaversKt.o(androidx.compose.ui.text.style.i.f6100b), eVar), SaversKt.y(xVar.r(), SaversKt.k(z4.f4612d), eVar));
        }
    }, new Function1<Object, x>() {
        @Override
        public final x invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            u1.a aVar = u1.f4349b;
            androidx.compose.runtime.saveable.d dVarJ = SaversKt.j(aVar);
            Boolean bool = Boolean.FALSE;
            u1 u1Var = ((!Intrinsics.c(obj2, bool) || (dVarJ instanceof j)) && obj2 != null) ? (u1) dVarJ.b(obj2) : null;
            Intrinsics.e(u1Var);
            long jU = u1Var.u();
            Object obj3 = list.get(1);
            o0.w.a aVar2 = o0.w.f67429b;
            androidx.compose.runtime.saveable.d dVarT = SaversKt.t(aVar2);
            o0.w wVar = ((!Intrinsics.c(obj3, bool) || (dVarT instanceof j)) && obj3 != null) ? (o0.w) dVarT.b(obj3) : null;
            Intrinsics.e(wVar);
            long jK = wVar.k();
            Object obj4 = list.get(2);
            androidx.compose.runtime.saveable.d dVarM = SaversKt.m(androidx.compose.ui.text.font.p.f5840b);
            androidx.compose.ui.text.font.p pVar = ((!Intrinsics.c(obj4, bool) || (dVarM instanceof j)) && obj4 != null) ? (androidx.compose.ui.text.font.p) dVarM.b(obj4) : null;
            Object obj5 = list.get(3);
            androidx.compose.ui.text.font.n nVar = obj5 != null ? (androidx.compose.ui.text.font.n) obj5 : null;
            Object obj6 = list.get(4);
            androidx.compose.ui.text.font.o oVar = obj6 != null ? (androidx.compose.ui.text.font.o) obj6 : null;
            Object obj7 = list.get(6);
            String str = obj7 != null ? (String) obj7 : null;
            Object obj8 = list.get(7);
            androidx.compose.runtime.saveable.d dVarT2 = SaversKt.t(aVar2);
            o0.w wVar2 = ((!Intrinsics.c(obj8, bool) || (dVarT2 instanceof j)) && obj8 != null) ? (o0.w) dVarT2.b(obj8) : null;
            Intrinsics.e(wVar2);
            long jK2 = wVar2.k();
            Object obj9 = list.get(8);
            androidx.compose.runtime.saveable.d dVarN = SaversKt.n(androidx.compose.ui.text.style.a.f6045b);
            androidx.compose.ui.text.style.a aVar3 = ((!Intrinsics.c(obj9, bool) || (dVarN instanceof j)) && obj9 != null) ? (androidx.compose.ui.text.style.a) dVarN.b(obj9) : null;
            Object obj10 = list.get(9);
            androidx.compose.runtime.saveable.d dVarP = SaversKt.p(androidx.compose.ui.text.style.m.f6116c);
            androidx.compose.ui.text.style.m mVar = ((!Intrinsics.c(obj10, bool) || (dVarP instanceof j)) && obj10 != null) ? (androidx.compose.ui.text.style.m) dVarP.b(obj10) : null;
            Object obj11 = list.get(10);
            androidx.compose.runtime.saveable.d dVarS = SaversKt.s(n0.i.f66852c);
            n0.i iVar = ((!Intrinsics.c(obj11, bool) || (dVarS instanceof j)) && obj11 != null) ? (n0.i) dVarS.b(obj11) : null;
            Object obj12 = list.get(11);
            androidx.compose.runtime.saveable.d dVarJ2 = SaversKt.j(aVar);
            u1 u1Var2 = ((!Intrinsics.c(obj12, bool) || (dVarJ2 instanceof j)) && obj12 != null) ? (u1) dVarJ2.b(obj12) : null;
            Intrinsics.e(u1Var2);
            long jU2 = u1Var2.u();
            Object obj13 = list.get(12);
            androidx.compose.runtime.saveable.d dVarO = SaversKt.o(androidx.compose.ui.text.style.i.f6100b);
            androidx.compose.ui.text.style.i iVar2 = ((!Intrinsics.c(obj13, bool) || (dVarO instanceof j)) && obj13 != null) ? (androidx.compose.ui.text.style.i) dVarO.b(obj13) : null;
            Object obj14 = list.get(13);
            androidx.compose.runtime.saveable.d dVarK = SaversKt.k(z4.f4612d);
            return new x(jU, jK, pVar, nVar, oVar, null, str, jK2, aVar3, mVar, iVar, jU2, iVar2, ((!Intrinsics.c(obj14, bool) || (dVarK instanceof j)) && obj14 != null) ? (z4) dVarK.b(obj14) : null, null, null, 49184, null);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5740j = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, a0, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, a0 a0Var) {
            return CollectionsKt.h(SaversKt.y(a0Var.d(), SaversKt.v(), eVar), SaversKt.y(a0Var.a(), SaversKt.v(), eVar), SaversKt.y(a0Var.b(), SaversKt.v(), eVar), SaversKt.y(a0Var.c(), SaversKt.v(), eVar));
        }
    }, new Function1<Object, a0>() {
        @Override
        public final a0 invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.runtime.saveable.d dVarV = SaversKt.v();
            Boolean bool = Boolean.FALSE;
            x xVar = null;
            x xVar2 = ((!Intrinsics.c(obj2, bool) || (dVarV instanceof j)) && obj2 != null) ? (x) dVarV.b(obj2) : null;
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarV2 = SaversKt.v();
            x xVar3 = ((!Intrinsics.c(obj3, bool) || (dVarV2 instanceof j)) && obj3 != null) ? (x) dVarV2.b(obj3) : null;
            Object obj4 = list.get(2);
            androidx.compose.runtime.saveable.d dVarV3 = SaversKt.v();
            x xVar4 = ((!Intrinsics.c(obj4, bool) || (dVarV3 instanceof j)) && obj4 != null) ? (x) dVarV3.b(obj4) : null;
            Object obj5 = list.get(3);
            androidx.compose.runtime.saveable.d dVarV4 = SaversKt.v();
            if ((!Intrinsics.c(obj5, bool) || (dVarV4 instanceof j)) && obj5 != null) {
                xVar = (x) dVarV4.b(obj5);
            }
            return new a0(xVar2, xVar3, xVar4, xVar);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5741k = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.i, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.style.i iVar) {
            return Integer.valueOf(iVar.e());
        }
    }, new Function1<Object, androidx.compose.ui.text.style.i>() {
        @Override
        public final androidx.compose.ui.text.style.i invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
            return new androidx.compose.ui.text.style.i(((Integer) obj).intValue());
        }
    });

    private static final androidx.compose.runtime.saveable.d f5742l = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.m, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.style.m mVar) {
            return CollectionsKt.h(Float.valueOf(mVar.b()), Float.valueOf(mVar.c()));
        }
    }, new Function1<Object, androidx.compose.ui.text.style.m>() {
        @Override
        public final androidx.compose.ui.text.style.m invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Float>");
            List list = (List) obj;
            return new androidx.compose.ui.text.style.m(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue());
        }
    });

    private static final androidx.compose.runtime.saveable.d f5743m = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.n, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.style.n nVar) {
            o0.w wVarB = o0.w.b(nVar.b());
            o0.w.a aVar = o0.w.f67429b;
            return CollectionsKt.h(SaversKt.y(wVarB, SaversKt.t(aVar), eVar), SaversKt.y(o0.w.b(nVar.c()), SaversKt.t(aVar), eVar));
        }
    }, new Function1<Object, androidx.compose.ui.text.style.n>() {
        @Override
        public final androidx.compose.ui.text.style.n invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            o0.w.a aVar = o0.w.f67429b;
            androidx.compose.runtime.saveable.d dVarT = SaversKt.t(aVar);
            Boolean bool = Boolean.FALSE;
            o0.w wVar = null;
            o0.w wVar2 = ((!Intrinsics.c(obj2, bool) || (dVarT instanceof j)) && obj2 != null) ? (o0.w) dVarT.b(obj2) : null;
            Intrinsics.e(wVar2);
            long jK = wVar2.k();
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarT2 = SaversKt.t(aVar);
            if ((!Intrinsics.c(obj3, bool) || (dVarT2 instanceof j)) && obj3 != null) {
                wVar = (o0.w) dVarT2.b(obj3);
            }
            Intrinsics.e(wVar);
            return new androidx.compose.ui.text.style.n(jK, wVar.k(), null);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5744n = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.font.p, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, androidx.compose.ui.text.font.p pVar) {
            return Integer.valueOf(pVar.h());
        }
    }, new Function1<Object, androidx.compose.ui.text.font.p>() {
        @Override
        public final androidx.compose.ui.text.font.p invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
            return new androidx.compose.ui.text.font.p(((Integer) obj).intValue());
        }
    });

    private static final androidx.compose.runtime.saveable.d f5745o = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, androidx.compose.ui.text.style.a, Object>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            return m167invoke8a2Sb4w((androidx.compose.runtime.saveable.e) obj, ((androidx.compose.ui.text.style.a) obj2).h());
        }

        public final Object m167invoke8a2Sb4w(androidx.compose.runtime.saveable.e eVar, float f10) {
            return Float.valueOf(f10);
        }
    }, new Function1<Object, androidx.compose.ui.text.style.a>() {
        @Override
        public final androidx.compose.ui.text.style.a invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Float");
            return androidx.compose.ui.text.style.a.b(androidx.compose.ui.text.style.a.c(((Float) obj).floatValue()));
        }
    });

    private static final androidx.compose.runtime.saveable.d f5746p = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, b0, Object>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            return m173invokeFDrldGo((androidx.compose.runtime.saveable.e) obj, ((b0) obj2).n());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object m173invokeFDrldGo(androidx.compose.runtime.saveable.e eVar, long j10) {
            return CollectionsKt.h(SaversKt.x(Integer.valueOf(b0.k(j10))), SaversKt.x(Integer.valueOf(b0.g(j10))));
        }
    }, new Function1<Object, b0>() {
        @Override
        public final b0 invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Integer num = obj2 != null ? (Integer) obj2 : null;
            Intrinsics.e(num);
            int iIntValue = num.intValue();
            Object obj3 = list.get(1);
            Integer num2 = obj3 != null ? (Integer) obj3 : null;
            Intrinsics.e(num2);
            return b0.b(c0.b(iIntValue, num2.intValue()));
        }
    });

    private static final androidx.compose.runtime.saveable.d f5747q = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, z4, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, z4 z4Var) {
            return CollectionsKt.h(SaversKt.y(u1.g(z4Var.c()), SaversKt.j(u1.f4349b), eVar), SaversKt.y(y.g.d(z4Var.d()), SaversKt.u(y.g.f75999b), eVar), SaversKt.x(Float.valueOf(z4Var.b())));
        }
    }, new Function1<Object, z4>() {
        @Override
        public final z4 invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            androidx.compose.runtime.saveable.d dVarJ = SaversKt.j(u1.f4349b);
            Boolean bool = Boolean.FALSE;
            u1 u1Var = ((!Intrinsics.c(obj2, bool) || (dVarJ instanceof j)) && obj2 != null) ? (u1) dVarJ.b(obj2) : null;
            Intrinsics.e(u1Var);
            long jU = u1Var.u();
            Object obj3 = list.get(1);
            androidx.compose.runtime.saveable.d dVarU = SaversKt.u(y.g.f75999b);
            y.g gVar = ((!Intrinsics.c(obj3, bool) || (dVarU instanceof j)) && obj3 != null) ? (y.g) dVarU.b(obj3) : null;
            Intrinsics.e(gVar);
            long jV = gVar.v();
            Object obj4 = list.get(2);
            Float f10 = obj4 != null ? (Float) obj4 : null;
            Intrinsics.e(f10);
            return new z4(jU, jV, f10.floatValue(), null);
        }
    });

    private static final j f5748r = a(new Function2<androidx.compose.runtime.saveable.e, u1, Object>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            return m169invoke4WTKRHQ((androidx.compose.runtime.saveable.e) obj, ((u1) obj2).u());
        }

        public final Object m169invoke4WTKRHQ(androidx.compose.runtime.saveable.e eVar, long j10) {
            return j10 == 16 ? Boolean.FALSE : Integer.valueOf(w1.j(j10));
        }
    }, new Function1<Object, u1>() {
        @Override
        public final u1 invoke(Object obj) {
            long jB;
            if (Intrinsics.c(obj, Boolean.FALSE)) {
                jB = u1.f4349b.e();
            } else {
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
                jB = w1.b(((Integer) obj).intValue());
            }
            return u1.g(jB);
        }
    });

    private static final j f5749s = a(new Function2<androidx.compose.runtime.saveable.e, o0.w, Object>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            return m175invokempE4wyQ((androidx.compose.runtime.saveable.e) obj, ((o0.w) obj2).k());
        }

        public final Object m175invokempE4wyQ(androidx.compose.runtime.saveable.e eVar, long j10) {
            return o0.w.e(j10, o0.w.f67429b.a()) ? Boolean.FALSE : CollectionsKt.h(SaversKt.x(Float.valueOf(o0.w.h(j10))), SaversKt.x(o0.y.d(o0.w.g(j10))));
        }
    }, new Function1<Object, o0.w>() {
        @Override
        public final o0.w invoke(Object obj) {
            if (Intrinsics.c(obj, Boolean.FALSE)) {
                return o0.w.b(o0.w.f67429b.a());
            }
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Float f10 = obj2 != null ? (Float) obj2 : null;
            Intrinsics.e(f10);
            float fFloatValue = f10.floatValue();
            Object obj3 = list.get(1);
            o0.y yVar = obj3 != null ? (o0.y) obj3 : null;
            Intrinsics.e(yVar);
            return o0.w.b(o0.x.a(fFloatValue, yVar.j()));
        }
    });

    private static final j f5750t = a(new Function2<androidx.compose.runtime.saveable.e, y.g, Object>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            return m171invokeUv8p0NA((androidx.compose.runtime.saveable.e) obj, ((y.g) obj2).v());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object m171invokeUv8p0NA(androidx.compose.runtime.saveable.e eVar, long j10) {
            return y.g.j(j10, y.g.f75999b.b()) ? Boolean.FALSE : CollectionsKt.h(SaversKt.x(Float.valueOf(y.g.m(j10))), SaversKt.x(Float.valueOf(y.g.n(j10))));
        }
    }, new Function1<Object, y.g>() {
        @Override
        public final y.g invoke(Object obj) {
            if (Intrinsics.c(obj, Boolean.FALSE)) {
                return y.g.d(y.g.f75999b.b());
            }
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any?>");
            List list = (List) obj;
            Object obj2 = list.get(0);
            Float f10 = obj2 != null ? (Float) obj2 : null;
            Intrinsics.e(f10);
            float fFloatValue = f10.floatValue();
            Object obj3 = list.get(1);
            Float f11 = obj3 != null ? (Float) obj3 : null;
            Intrinsics.e(f11);
            return y.g.d(y.h.a(fFloatValue, f11.floatValue()));
        }
    });

    private static final androidx.compose.runtime.saveable.d f5751u = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, n0.i, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, n0.i iVar) {
            List listF = iVar.f();
            ArrayList arrayList = new ArrayList(listF.size());
            int size = listF.size();
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(SaversKt.y((n0.h) listF.get(i10), SaversKt.r(n0.h.f66850b), eVar));
            }
            return arrayList;
        }
    }, new Function1<Object, n0.i>() {
        @Override
        public final n0.i invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.collections.List<kotlin.Any>");
            List list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj2 = list.get(i10);
                androidx.compose.runtime.saveable.d dVarR = SaversKt.r(n0.h.f66850b);
                n0.h hVar = null;
                if ((!Intrinsics.c(obj2, Boolean.FALSE) || (dVarR instanceof j)) && obj2 != null) {
                    hVar = (n0.h) dVarR.b(obj2);
                }
                Intrinsics.e(hVar);
                arrayList.add(hVar);
            }
            return new n0.i(arrayList);
        }
    });

    private static final androidx.compose.runtime.saveable.d f5752v = SaverKt.a(new Function2<androidx.compose.runtime.saveable.e, n0.h, Object>() {
        @Override
        public final Object invoke(androidx.compose.runtime.saveable.e eVar, n0.h hVar) {
            return hVar.b();
        }
    }, new Function1<Object, n0.h>() {
        @Override
        public final n0.h invoke(Object obj) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.String");
            return new n0.h((String) obj);
        }
    });

    public static final class a implements j {

        final Function2 f5755a;

        final Function1 f5756b;

        a(Function2 function2, Function1 function1) {
            this.f5755a = function2;
            this.f5756b = function1;
        }

        @Override
        public Object a(androidx.compose.runtime.saveable.e eVar, Object obj) {
            return this.f5755a.invoke(eVar, obj);
        }

        @Override
        public Object b(Object obj) {
            return this.f5756b.invoke(obj);
        }
    }

    private static final j a(Function2 function2, Function1 function1) {
        return new a(function2, function1);
    }

    public static final androidx.compose.runtime.saveable.d h() {
        return f5731a;
    }

    public static final androidx.compose.runtime.saveable.d i() {
        return f5738h;
    }

    public static final androidx.compose.runtime.saveable.d j(u1.a aVar) {
        return f5748r;
    }

    public static final androidx.compose.runtime.saveable.d k(z4.a aVar) {
        return f5747q;
    }

    public static final androidx.compose.runtime.saveable.d l(b0.a aVar) {
        return f5746p;
    }

    public static final androidx.compose.runtime.saveable.d m(androidx.compose.ui.text.font.p.a aVar) {
        return f5744n;
    }

    public static final androidx.compose.runtime.saveable.d n(androidx.compose.ui.text.style.a.C0049a c0049a) {
        return f5745o;
    }

    public static final androidx.compose.runtime.saveable.d o(androidx.compose.ui.text.style.i.a aVar) {
        return f5741k;
    }

    public static final androidx.compose.runtime.saveable.d p(androidx.compose.ui.text.style.m.a aVar) {
        return f5742l;
    }

    public static final androidx.compose.runtime.saveable.d q(androidx.compose.ui.text.style.n.a aVar) {
        return f5743m;
    }

    public static final androidx.compose.runtime.saveable.d r(n0.h.a aVar) {
        return f5752v;
    }

    public static final androidx.compose.runtime.saveable.d s(n0.i.a aVar) {
        return f5751u;
    }

    public static final androidx.compose.runtime.saveable.d t(o0.w.a aVar) {
        return f5749s;
    }

    public static final androidx.compose.runtime.saveable.d u(y.g.a aVar) {
        return f5750t;
    }

    public static final androidx.compose.runtime.saveable.d v() {
        return f5739i;
    }

    public static final androidx.compose.runtime.saveable.d w() {
        return f5740j;
    }

    public static final Object y(Object obj, androidx.compose.runtime.saveable.d dVar, androidx.compose.runtime.saveable.e eVar) {
        Object objA;
        return (obj == null || (objA = dVar.a(eVar, obj)) == null) ? Boolean.FALSE : objA;
    }

    public static final Object x(Object obj) {
        return obj;
    }
}
