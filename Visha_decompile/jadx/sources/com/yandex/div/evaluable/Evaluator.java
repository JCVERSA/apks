package com.yandex.div.evaluable;

import androidx.core.app.NotificationCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.evaluable.types.DateTime;
import defpackage.abb;
import defpackage.c74;
import defpackage.f84;
import defpackage.gpa;
import defpackage.i81;
import defpackage.k81;
import defpackage.kj3;
import defpackage.pd3;
import defpackage.vib;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import io.appmetrica.analytics.BuildConfig;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
import org.json.JSONObject;

public class Evaluator {
    public static final a b = new a(null);
    public final pd3 a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x007e, code lost:
        
            if (defpackage.y45.e(r12, -1L) != false) goto L21;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object a(gpa.c.a.InterfaceC0358c interfaceC0358c, Object obj, Object obj2) {
            double dDoubleValue;
            long jLongValue;
            y45.j(interfaceC0358c, "operator");
            y45.j(obj, TtmlNode.LEFT);
            y45.j(obj2, TtmlNode.RIGHT);
            if (!(obj instanceof Long) || !(obj2 instanceof Long)) {
                if (!(obj instanceof Double) || !(obj2 instanceof Double)) {
                    EvaluableExceptionKt.c(interfaceC0358c, obj, obj2);
                    throw new KotlinNothingValueException();
                }
                if (interfaceC0358c instanceof gpa.c.a.InterfaceC0358c.C0360c) {
                    dDoubleValue = ((Number) obj).doubleValue() * ((Number) obj2).doubleValue();
                } else if (interfaceC0358c instanceof gpa.c.a.InterfaceC0358c.C0359a) {
                    Number number = (Number) obj2;
                    if (number.doubleValue() == 0.0d) {
                        EvaluableExceptionKt.e(obj + " / " + obj2, "Division by zero is not supported.", null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                    dDoubleValue = ((Number) obj).doubleValue() / number.doubleValue();
                } else {
                    if (!(interfaceC0358c instanceof gpa.c.a.InterfaceC0358c.b)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Number number2 = (Number) obj2;
                    if (number2.doubleValue() == 0.0d) {
                        EvaluableExceptionKt.e(obj + " % " + obj2, "Division by zero is not supported.", null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                    dDoubleValue = ((Number) obj).doubleValue() % number2.doubleValue();
                }
                return Double.valueOf(dDoubleValue);
            }
            if (interfaceC0358c instanceof gpa.c.a.InterfaceC0358c.C0360c) {
                Number number3 = (Number) obj;
                Number number4 = (Number) obj2;
                long jLongValue2 = number3.longValue() * number4.longValue();
                if (((Math.abs(number3.longValue()) | Math.abs(number4.longValue())) >>> 31) != 0) {
                    if (!y45.e(obj2, 0L)) {
                        long jLongValue3 = jLongValue2 / number4.longValue();
                        if ((obj instanceof Long) && jLongValue3 == number3.longValue()) {
                        }
                        throw new IntegerOverflow(obj + " * " + obj2, null, 2, null);
                    }
                    if (y45.e(obj, Long.MIN_VALUE)) {
                    }
                }
                return Long.valueOf(jLongValue2);
            }
            if (interfaceC0358c instanceof gpa.c.a.InterfaceC0358c.C0359a) {
                if (y45.e(obj2, 0L)) {
                    EvaluableExceptionKt.e(obj + " / " + obj2, "Division by zero is not supported.", null, 4, null);
                    throw new KotlinNothingValueException();
                }
                jLongValue = ((Number) obj).longValue() / ((Number) obj2).longValue();
            } else {
                if (!(interfaceC0358c instanceof gpa.c.a.InterfaceC0358c.b)) {
                    throw new NoWhenBranchMatchedException();
                }
                if (y45.e(obj2, 0L)) {
                    EvaluableExceptionKt.e(obj + " % " + obj2, "Division by zero is not supported.", null, 4, null);
                    throw new KotlinNothingValueException();
                }
                jLongValue = ((Number) obj).longValue() % ((Number) obj2).longValue();
            }
            return Long.valueOf(jLongValue);
        }

        public final Object b(gpa.c.a.f fVar, Object obj, Object obj2) {
            double dDoubleValue;
            y45.j(fVar, "operator");
            y45.j(obj, TtmlNode.LEFT);
            y45.j(obj2, TtmlNode.RIGHT);
            if ((obj instanceof String) && (obj2 instanceof String)) {
                if (!(fVar instanceof gpa.c.a.f.b)) {
                    EvaluableExceptionKt.c(fVar, obj, obj2);
                    throw new KotlinNothingValueException();
                }
                StringBuilder sb = new StringBuilder();
                sb.append(obj);
                sb.append(obj2);
                return sb.toString();
            }
            if (!(obj instanceof Long) || !(obj2 instanceof Long)) {
                if (!(obj instanceof Double) || !(obj2 instanceof Double)) {
                    EvaluableExceptionKt.c(fVar, obj, obj2);
                    throw new KotlinNothingValueException();
                }
                if (fVar instanceof gpa.c.a.f.b) {
                    dDoubleValue = ((Number) obj).doubleValue() + ((Number) obj2).doubleValue();
                } else {
                    if (!(fVar instanceof gpa.c.a.f.C0362a)) {
                        throw new NoWhenBranchMatchedException();
                    }
                    dDoubleValue = ((Number) obj).doubleValue() - ((Number) obj2).doubleValue();
                }
                return Double.valueOf(dDoubleValue);
            }
            if (fVar instanceof gpa.c.a.f.b) {
                Number number = (Number) obj;
                Number number2 = (Number) obj2;
                long jLongValue = number.longValue() + number2.longValue();
                if (((number2.longValue() ^ jLongValue) & (number.longValue() ^ jLongValue)) >= 0) {
                    return Long.valueOf(jLongValue);
                }
                throw new IntegerOverflow(obj + " + " + obj2, null, 2, null);
            }
            if (!(fVar instanceof gpa.c.a.f.C0362a)) {
                throw new NoWhenBranchMatchedException();
            }
            Number number3 = (Number) obj;
            Number number4 = (Number) obj2;
            long jLongValue2 = number3.longValue() - number4.longValue();
            if (((number3.longValue() ^ jLongValue2) & (number3.longValue() ^ number4.longValue())) >= 0) {
                return Long.valueOf(jLongValue2);
            }
            throw new IntegerOverflow(obj + " - " + obj2, null, 2, null);
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[EvaluableType.values().length];
            try {
                iArr[EvaluableType.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public Evaluator(pd3 pd3Var) {
        y45.j(pd3Var, "evaluationContext");
        this.a = pd3Var;
    }

    public final Pair a(Object obj, Object obj2) {
        if (y45.e(obj.getClass(), obj2.getClass())) {
            return abb.a(obj, obj2);
        }
        if ((obj instanceof Long) && (obj2 instanceof Double)) {
            return abb.a(Double.valueOf(((Number) obj).longValue()), obj2);
        }
        return ((obj instanceof Double) && (obj2 instanceof Long)) ? abb.a(obj, Double.valueOf(((Number) obj2).longValue())) : abb.a(obj, obj2);
    }

    public final List b(Function function, List list) {
        EvaluableType evaluableType;
        List listD = function.d();
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        int i = 0;
        for (Object objC : list2) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            EvaluableType evaluableTypeA = ((f84) listD.get(wn8.g(i, y71.m(listD)))).a();
            EvaluableType.Companion companion = EvaluableType.INSTANCE;
            if (objC instanceof Long) {
                evaluableType = EvaluableType.INTEGER;
            } else if (objC instanceof Double) {
                evaluableType = EvaluableType.NUMBER;
            } else if (objC instanceof Boolean) {
                evaluableType = EvaluableType.BOOLEAN;
            } else if (objC instanceof String) {
                evaluableType = EvaluableType.STRING;
            } else if (objC instanceof DateTime) {
                evaluableType = EvaluableType.DATETIME;
            } else if (objC instanceof k81) {
                evaluableType = EvaluableType.COLOR;
            } else if (objC instanceof vib) {
                evaluableType = EvaluableType.URL;
            } else if (objC instanceof JSONObject) {
                evaluableType = EvaluableType.DICT;
            } else {
                if (!(objC instanceof JSONArray)) {
                    if (objC == null) {
                        throw new EvaluableException("Unable to find type for null", null, 2, null);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unable to find type for ");
                    y45.g(objC);
                    sb.append(objC.getClass().getName());
                    throw new EvaluableException(sb.toString(), null, 2, null);
                }
                evaluableType = EvaluableType.ARRAY;
            }
            if (evaluableTypeA != evaluableType) {
                objC = c(objC, evaluableTypeA);
            }
            arrayList.add(objC);
            i = i2;
        }
        return arrayList;
    }

    public final Object c(Object obj, EvaluableType evaluableType) {
        return ((obj instanceof Long) && b.a[evaluableType.ordinal()] == 1) ? Double.valueOf(((Number) obj).longValue()) : obj;
    }

    public Object d(com.yandex.div.evaluable.a aVar) {
        y45.j(aVar, "expr");
        try {
            return aVar.c(this);
        } catch (EvaluableException e) {
            throw e;
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            throw new EvaluableException(message, e2);
        }
    }

    public Object e(final com.yandex.div.evaluable.a.C0296a c0296a) {
        y45.j(c0296a, BuildConfig.SDK_DEPENDENCY);
        Object objD = d(c0296a.h());
        c0296a.g(c0296a.h().b());
        if (c0296a.j() instanceof gpa.c.a.d) {
            return j((gpa.c.a.d) c0296a.j(), objD, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Object invoke() {
                    Object objD2 = this.this$0.d(c0296a.i());
                    a.C0296a c0296a2 = c0296a;
                    c0296a2.g(c0296a2.i().b());
                    return objD2;
                }
            });
        }
        Object objD2 = d(c0296a.i());
        c0296a.g(c0296a.i().b());
        Pair pairA = a(objD, objD2);
        Object objComponent1 = pairA.component1();
        Object objComponent2 = pairA.component2();
        if (!y45.e(objComponent1.getClass(), objComponent2.getClass())) {
            EvaluableExceptionKt.c(c0296a.j(), objComponent1, objComponent2);
            throw new KotlinNothingValueException();
        }
        gpa.c.a aVarJ = c0296a.j();
        if (aVarJ instanceof gpa.c.a.b) {
            return h((gpa.c.a.b) c0296a.j(), objComponent1, objComponent2);
        }
        if (aVarJ instanceof gpa.c.a.f) {
            return b.b((gpa.c.a.f) c0296a.j(), objComponent1, objComponent2);
        }
        if (aVarJ instanceof gpa.c.a.InterfaceC0358c) {
            return b.a((gpa.c.a.InterfaceC0358c) c0296a.j(), objComponent1, objComponent2);
        }
        if (aVarJ instanceof gpa.c.a.InterfaceC0353a) {
            return g((gpa.c.a.InterfaceC0353a) c0296a.j(), objComponent1, objComponent2);
        }
        EvaluableExceptionKt.c(c0296a.j(), objComponent1, objComponent2);
        throw new KotlinNothingValueException();
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000c  */
    public final Object f(gpa.c.a.InterfaceC0353a interfaceC0353a, Comparable comparable, Comparable comparable2) {
        boolean z = false;
        if (interfaceC0353a instanceof gpa.c.a.InterfaceC0353a.C0355c) {
            if (comparable.compareTo(comparable2) < 0) {
                z = true;
            }
        } else if (interfaceC0353a instanceof gpa.c.a.InterfaceC0353a.d) {
            if (comparable.compareTo(comparable2) <= 0) {
                z = true;
            }
        } else if (interfaceC0353a instanceof gpa.c.a.InterfaceC0353a.b) {
            if (comparable.compareTo(comparable2) >= 0) {
                z = true;
            }
        } else {
            if (!(interfaceC0353a instanceof gpa.c.a.InterfaceC0353a.C0354a)) {
                throw new NoWhenBranchMatchedException();
            }
            if (comparable.compareTo(comparable2) > 0) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    public final Object g(gpa.c.a.InterfaceC0353a interfaceC0353a, Object obj, Object obj2) {
        if ((obj instanceof Double) && (obj2 instanceof Double)) {
            return f(interfaceC0353a, (Comparable) obj, (Comparable) obj2);
        }
        if ((obj instanceof Long) && (obj2 instanceof Long)) {
            return f(interfaceC0353a, (Comparable) obj, (Comparable) obj2);
        }
        if ((obj instanceof DateTime) && (obj2 instanceof DateTime)) {
            return f(interfaceC0353a, (Comparable) obj, (Comparable) obj2);
        }
        EvaluableExceptionKt.c(interfaceC0353a, obj, obj2);
        throw new KotlinNothingValueException();
    }

    public final Object h(gpa.c.a.b bVar, Object obj, Object obj2) {
        boolean zE;
        if (bVar instanceof gpa.c.a.b.C0356a) {
            zE = y45.e(obj, obj2);
        } else {
            if (!(bVar instanceof gpa.c.a.b.C0357b)) {
                throw new NoWhenBranchMatchedException();
            }
            zE = !y45.e(obj, obj2);
        }
        return Boolean.valueOf(zE);
    }

    public Object i(com.yandex.div.evaluable.a.c cVar) {
        EvaluableType evaluableType;
        y45.j(cVar, "functionCall");
        ArrayList arrayList = new ArrayList();
        for (com.yandex.div.evaluable.a aVar : cVar.h()) {
            arrayList.add(d(aVar));
            cVar.g(aVar.b());
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        for (Object obj : arrayList) {
            EvaluableType.Companion companion = EvaluableType.INSTANCE;
            if (obj instanceof Long) {
                evaluableType = EvaluableType.INTEGER;
            } else if (obj instanceof Double) {
                evaluableType = EvaluableType.NUMBER;
            } else if (obj instanceof Boolean) {
                evaluableType = EvaluableType.BOOLEAN;
            } else if (obj instanceof String) {
                evaluableType = EvaluableType.STRING;
            } else if (obj instanceof DateTime) {
                evaluableType = EvaluableType.DATETIME;
            } else if (obj instanceof k81) {
                evaluableType = EvaluableType.COLOR;
            } else if (obj instanceof vib) {
                evaluableType = EvaluableType.URL;
            } else if (obj instanceof JSONObject) {
                evaluableType = EvaluableType.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    if (obj == null) {
                        throw new EvaluableException("Unable to find type for null", null, 2, null);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unable to find type for ");
                    y45.g(obj);
                    sb.append(obj.getClass().getName());
                    throw new EvaluableException(sb.toString(), null, 2, null);
                }
                evaluableType = EvaluableType.ARRAY;
            }
            arrayList2.add(evaluableType);
        }
        try {
            Function functionB = r().a().b(cVar.i().a(), arrayList2);
            com.yandex.div.evaluable.a aVarA = kj3.a(cVar);
            cVar.g(functionB.i());
            try {
                return functionB.h(r(), aVarA, b(functionB, arrayList));
            } catch (IntegerOverflow unused) {
                throw new IntegerOverflow(EvaluableExceptionKt.a(functionB.f(), arrayList), null, 2, null);
            }
        } catch (EvaluableException e) {
            String strA = cVar.i().a();
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            EvaluableExceptionKt.g(strA, arrayList, message, null, 8, null);
            throw new KotlinNothingValueException();
        }
    }

    public final Object j(gpa.c.a.d dVar, Object obj, c74 c74Var) {
        if (!(obj instanceof Boolean)) {
            EvaluableExceptionKt.e(obj + ' ' + dVar + " ...", '\'' + dVar + "' must be called with boolean operands.", null, 4, null);
            throw new KotlinNothingValueException();
        }
        boolean z = dVar instanceof gpa.c.a.d.b;
        if (z && ((Boolean) obj).booleanValue()) {
            return obj;
        }
        if ((dVar instanceof gpa.c.a.d.C0361a) && !((Boolean) obj).booleanValue()) {
            return obj;
        }
        Object objInvoke = c74Var.invoke();
        if (!(objInvoke instanceof Boolean)) {
            EvaluableExceptionKt.c(dVar, obj, objInvoke);
            throw new KotlinNothingValueException();
        }
        boolean z2 = true;
        if (!z ? !((Boolean) obj).booleanValue() || !((Boolean) objInvoke).booleanValue() : !((Boolean) obj).booleanValue() && !((Boolean) objInvoke).booleanValue()) {
            z2 = false;
        }
        return Boolean.valueOf(z2);
    }

    public Object k(com.yandex.div.evaluable.a.e eVar) {
        EvaluableType evaluableType;
        y45.j(eVar, "methodCall");
        ArrayList arrayList = new ArrayList();
        for (com.yandex.div.evaluable.a aVar : eVar.h()) {
            arrayList.add(d(aVar));
            eVar.g(aVar.b());
        }
        ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
        for (Object obj : arrayList) {
            EvaluableType.Companion companion = EvaluableType.INSTANCE;
            if (obj instanceof Long) {
                evaluableType = EvaluableType.INTEGER;
            } else if (obj instanceof Double) {
                evaluableType = EvaluableType.NUMBER;
            } else if (obj instanceof Boolean) {
                evaluableType = EvaluableType.BOOLEAN;
            } else if (obj instanceof String) {
                evaluableType = EvaluableType.STRING;
            } else if (obj instanceof DateTime) {
                evaluableType = EvaluableType.DATETIME;
            } else if (obj instanceof k81) {
                evaluableType = EvaluableType.COLOR;
            } else if (obj instanceof vib) {
                evaluableType = EvaluableType.URL;
            } else if (obj instanceof JSONObject) {
                evaluableType = EvaluableType.DICT;
            } else {
                if (!(obj instanceof JSONArray)) {
                    if (obj == null) {
                        throw new EvaluableException("Unable to find type for null", null, 2, null);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unable to find type for ");
                    y45.g(obj);
                    sb.append(obj.getClass().getName());
                    throw new EvaluableException(sb.toString(), null, 2, null);
                }
                evaluableType = EvaluableType.ARRAY;
            }
            arrayList2.add(evaluableType);
        }
        try {
            Function functionA = r().a().a(eVar.i().a(), arrayList2);
            com.yandex.div.evaluable.a aVarA = kj3.a(eVar);
            eVar.g(functionA.i());
            return functionA.h(r(), aVarA, b(functionA, arrayList));
        } catch (EvaluableException e) {
            String strA = eVar.i().a();
            String message = e.getMessage();
            if (message == null) {
                message = "";
            }
            EvaluableExceptionKt.h(strA, arrayList, message, e);
            throw new KotlinNothingValueException();
        }
    }

    public String l(com.yandex.div.evaluable.a.f fVar) {
        y45.j(fVar, "stringTemplate");
        ArrayList arrayList = new ArrayList();
        for (com.yandex.div.evaluable.a aVar : fVar.h()) {
            arrayList.add(d(aVar).toString());
            fVar.g(aVar.b());
        }
        return i81.y0(arrayList, "", null, null, 0, null, null, 62, null);
    }

    public Object m(com.yandex.div.evaluable.a.g gVar) {
        y45.j(gVar, "ternary");
        if (!(gVar.k() instanceof gpa.c.e)) {
            EvaluableExceptionKt.e(gVar.e(), gVar.k() + " was incorrectly parsed as a ternary operator.", null, 4, null);
            throw new KotlinNothingValueException();
        }
        Object objD = d(gVar.h());
        gVar.g(gVar.h().b());
        if (objD instanceof Boolean) {
            if (((Boolean) objD).booleanValue()) {
                Object objD2 = d(gVar.i());
                gVar.g(gVar.i().b());
                return objD2;
            }
            Object objD3 = d(gVar.j());
            gVar.g(gVar.j().b());
            return objD3;
        }
        EvaluableExceptionKt.e(gVar.h() + " ? " + gVar.i() + " : " + gVar.j(), "Ternary must be called with a Boolean value as a condition.", null, 4, null);
        throw new KotlinNothingValueException();
    }

    public Object n(com.yandex.div.evaluable.a.h hVar) {
        Object objM279constructorimpl;
        y45.j(hVar, "tryEvaluable");
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objD = d(hVar.i());
            hVar.g(hVar.i().b());
            objM279constructorimpl = Result.m279constructorimpl(objD);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(c.a(th));
        }
        if (Result.m282exceptionOrNullimpl(objM279constructorimpl) == null) {
            return objM279constructorimpl;
        }
        Object objD2 = d(hVar.h());
        hVar.g(hVar.h().b());
        return objD2;
    }

    public Object o(com.yandex.div.evaluable.a.i iVar) {
        y45.j(iVar, "unary");
        Object objD = d(iVar.h());
        iVar.g(iVar.h().b());
        gpa.c cVarI = iVar.i();
        if (cVarI instanceof gpa.c.g.C0364c) {
            if (objD instanceof Long) {
                return Long.valueOf(((Number) objD).longValue());
            }
            if (objD instanceof Double) {
                return Double.valueOf(((Number) objD).doubleValue());
            }
            StringBuilder sb = new StringBuilder();
            sb.append('+');
            sb.append(objD);
            EvaluableExceptionKt.e(sb.toString(), "A Number is expected after a unary plus.", null, 4, null);
            throw new KotlinNothingValueException();
        }
        if (cVarI instanceof gpa.c.g.a) {
            if (objD instanceof Long) {
                return Long.valueOf(-((Number) objD).longValue());
            }
            if (objD instanceof Double) {
                return Double.valueOf(-((Number) objD).doubleValue());
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append('-');
            sb2.append(objD);
            EvaluableExceptionKt.e(sb2.toString(), "A Number is expected after a unary minus.", null, 4, null);
            throw new KotlinNothingValueException();
        }
        if (!y45.e(cVarI, gpa.c.g.b.a)) {
            throw new EvaluableException(iVar.i() + " was incorrectly parsed as a unary operator.", null, 2, null);
        }
        if (objD instanceof Boolean) {
            return Boolean.valueOf(!((Boolean) objD).booleanValue());
        }
        String str = objD instanceof String ? "'" : "";
        EvaluableExceptionKt.e('!' + str + objD + str, "A Boolean is expected after a unary not.", null, 4, null);
        throw new KotlinNothingValueException();
    }

    public Object p(com.yandex.div.evaluable.a.j jVar) {
        y45.j(jVar, NotificationCompat.CATEGORY_CALL);
        gpa.b.a aVarH = jVar.h();
        if (aVarH instanceof gpa.b.a.C0351b) {
            return ((gpa.b.a.C0351b) aVarH).f();
        }
        if (aVarH instanceof gpa.b.a.C0350a) {
            return Boolean.valueOf(((gpa.b.a.C0350a) aVarH).f());
        }
        if (aVarH instanceof gpa.b.a.c) {
            return ((gpa.b.a.c) aVarH).f();
        }
        throw new NoWhenBranchMatchedException();
    }

    public Object q(com.yandex.div.evaluable.a.k kVar) {
        y45.j(kVar, NotificationCompat.CATEGORY_CALL);
        Object obj = r().c().get(kVar.h());
        if (obj != null) {
            return obj;
        }
        throw new MissingVariableException(kVar.h(), null, 2, null);
    }

    public pd3 r() {
        return this.a;
    }
}
