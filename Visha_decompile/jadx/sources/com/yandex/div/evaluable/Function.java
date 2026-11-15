package com.yandex.div.evaluable;

import com.yandex.div.evaluable.types.DateTime;
import defpackage.e74;
import defpackage.f84;
import defpackage.i81;
import defpackage.k81;
import defpackage.pd3;
import defpackage.s74;
import defpackage.vib;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class Function {
    public static final b a = new b(null);
    public static final Function b = new a();

    public static final class a extends Function {
        public final String c = "stub";
        public final List d = y71.k();
        public final EvaluableType e = EvaluableType.BOOLEAN;
        public final boolean f = true;

        @Override
        public Object c(pd3 pd3Var, com.yandex.div.evaluable.a aVar, List list) {
            y45.j(pd3Var, "evaluationContext");
            y45.j(aVar, "expressionContext");
            y45.j(list, "args");
            return Boolean.TRUE;
        }

        @Override
        public List d() {
            return this.d;
        }

        @Override
        public String f() {
            return this.c;
        }

        @Override
        public EvaluableType g() {
            return this.e;
        }

        @Override
        public boolean i() {
            return this.f;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public b() {
        }
    }

    public static abstract class c {

        public static final class a extends c {
            public final int a;

            public a(int i) {
                super(null);
                this.a = i;
            }

            public final int a() {
                return this.a;
            }
        }

        public static final class b extends c {
            public final EvaluableType a;
            public final EvaluableType b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(EvaluableType evaluableType, EvaluableType evaluableType2) {
                super(null);
                y45.j(evaluableType, "expected");
                y45.j(evaluableType2, "actual");
                this.a = evaluableType;
                this.b = evaluableType2;
            }

            public final EvaluableType a() {
                return this.b;
            }

            public final EvaluableType b() {
                return this.a;
            }
        }

        public static final class C0295c extends c {
            public static final C0295c a = new C0295c();

            public C0295c() {
                super(null);
            }
        }

        public c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public c() {
        }
    }

    public class d {
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

    public final boolean b(EvaluableType evaluableType, EvaluableType evaluableType2) {
        return evaluableType == EvaluableType.INTEGER && d.a[evaluableType2.ordinal()] == 1;
    }

    public abstract Object c(pd3 pd3Var, com.yandex.div.evaluable.a aVar, List list);

    public abstract List d();

    public final boolean e() {
        f84 f84Var = (f84) i81.C0(d());
        if (f84Var != null) {
            return f84Var.b();
        }
        return false;
    }

    public abstract String f();

    public abstract EvaluableType g();

    public final Object h(pd3 pd3Var, com.yandex.div.evaluable.a aVar, List list) {
        EvaluableType evaluableType;
        EvaluableType evaluableType2;
        y45.j(pd3Var, "evaluationContext");
        y45.j(aVar, "expressionContext");
        y45.j(list, "args");
        Object objC = c(pd3Var, aVar, list);
        EvaluableType.Companion companion = EvaluableType.INSTANCE;
        boolean z = objC instanceof Long;
        if (z) {
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
        if (evaluableType == g()) {
            return objC;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Function ");
        sb2.append(this);
        sb2.append(" returned ");
        if (z) {
            evaluableType2 = EvaluableType.INTEGER;
        } else if (objC instanceof Double) {
            evaluableType2 = EvaluableType.NUMBER;
        } else if (objC instanceof Boolean) {
            evaluableType2 = EvaluableType.BOOLEAN;
        } else if (objC instanceof String) {
            evaluableType2 = EvaluableType.STRING;
        } else if (objC instanceof DateTime) {
            evaluableType2 = EvaluableType.DATETIME;
        } else if (objC instanceof k81) {
            evaluableType2 = EvaluableType.COLOR;
        } else if (objC instanceof vib) {
            evaluableType2 = EvaluableType.URL;
        } else if (objC instanceof JSONObject) {
            evaluableType2 = EvaluableType.DICT;
        } else {
            if (!(objC instanceof JSONArray)) {
                if (objC == null) {
                    throw new EvaluableException("Unable to find type for null", null, 2, null);
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Unable to find type for ");
                y45.g(objC);
                sb3.append(objC.getClass().getName());
                throw new EvaluableException(sb3.toString(), null, 2, null);
            }
            evaluableType2 = EvaluableType.ARRAY;
        }
        sb2.append(evaluableType2);
        sb2.append(", but ");
        sb2.append(g());
        sb2.append(" was expected.");
        throw new EvaluableException(sb2.toString(), null, 2, null);
    }

    public abstract boolean i();

    public final c j(List list, s74 s74Var) {
        int size = d().size();
        int size2 = e() ? Integer.MAX_VALUE : d().size();
        if (list.size() < size || list.size() > size2) {
            return new c.a(size);
        }
        int size3 = list.size();
        for (int i = 0; i < size3; i++) {
            EvaluableType evaluableTypeA = ((f84) d().get(wn8.g(i, y71.m(d())))).a();
            if (!((Boolean) s74Var.invoke(list.get(i), evaluableTypeA)).booleanValue()) {
                return new c.b(evaluableTypeA, (EvaluableType) list.get(i));
            }
        }
        return c.C0295c.a;
    }

    public final c k(List list) {
        y45.j(list, "argTypes");
        return j(list, new s74() {
            @Override
            public final Boolean invoke(EvaluableType evaluableType, EvaluableType evaluableType2) {
                y45.j(evaluableType, "type");
                y45.j(evaluableType2, "declaredType");
                return Boolean.valueOf(evaluableType == evaluableType2);
            }
        });
    }

    public final c l(List list) {
        y45.j(list, "argTypes");
        return j(list, new s74() {
            {
                super(2);
            }

            @Override
            public final Boolean invoke(EvaluableType evaluableType, EvaluableType evaluableType2) {
                y45.j(evaluableType, "type");
                y45.j(evaluableType2, "declaredType");
                return Boolean.valueOf(evaluableType == evaluableType2 || this.this$0.b(evaluableType, evaluableType2));
            }
        });
    }

    public String toString() {
        return i81.y0(d(), null, f() + '(', ")", 0, null, new e74() {
            @Override
            public final CharSequence invoke(f84 f84Var) {
                y45.j(f84Var, "arg");
                if (!f84Var.b()) {
                    return f84Var.a().toString();
                }
                return "vararg " + f84Var.a();
            }
        }, 25, null);
    }
}
