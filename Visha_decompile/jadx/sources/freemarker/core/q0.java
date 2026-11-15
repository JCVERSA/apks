package freemarker.core;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.a0d;
import defpackage.bfa;
import defpackage.e0d;
import defpackage.ffa;
import defpackage.g0d;
import defpackage.h0d;
import defpackage.hga;
import defpackage.mga;
import defpackage.nga;
import defpackage.rd0;
import defpackage.zfa;
import freemarker.template.TemplateModelException;
import java.util.Date;
import java.util.List;
import org.apache.commons.lang3.BooleanUtils;

public abstract class q0 {
    public static Class a;
    public static Class b;
    public static Class c;

    public static Class a(String str) throws Throwable {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            throw new NoClassDefFoundError().initCause(e);
        }
    }

    public static String b(int i, String str) {
        if (str != null) {
            return str;
        }
        switch (i) {
            case 1:
                return "equals";
            case 2:
                return "not-equals";
            case 3:
                return "less-than";
            case 4:
                return "greater-than";
            case 5:
                return "less-than-equals";
            case 6:
                return "greater-than-equals";
            default:
                return "???";
        }
    }

    public static String c(zfa zfaVar, t0 t0Var, String str, Environment environment) throws InvalidReferenceException, NonStringException {
        if (zfaVar instanceof hga) {
            return environment.t0(g((hga) zfaVar, t0Var));
        }
        if (zfaVar instanceof ffa) {
            return environment.r0((ffa) zfaVar, t0Var);
        }
        if (zfaVar instanceof mga) {
            return h((mga) zfaVar, t0Var, environment);
        }
        if (zfaVar == null) {
            if (environment.J()) {
                return "";
            }
            if (t0Var != null) {
                throw InvalidReferenceException.getInstance(t0Var, environment);
            }
            throw new InvalidReferenceException("Null/missing value (no more informatoin avilable)", environment);
        }
        if (!(zfaVar instanceof freemarker.template.a)) {
            if (environment.J() && (zfaVar instanceof rd0)) {
                return a0d.a((rd0) zfaVar);
            }
            if (str == null || !((zfaVar instanceof nga) || (zfaVar instanceof bfa))) {
                throw new NonStringException(t0Var, zfaVar, environment);
            }
            throw new NonStringException(t0Var, zfaVar, str, environment);
        }
        boolean asBoolean = ((freemarker.template.a) zfaVar).getAsBoolean();
        int i = environment.i();
        if (i == 0) {
            return environment.e(asBoolean, false);
        }
        if (i == 1) {
            return asBoolean ? BooleanUtils.TRUE : "";
        }
        if (i == 2) {
            if (zfaVar instanceof rd0) {
                return a0d.a((rd0) zfaVar);
            }
            return asBoolean ? BooleanUtils.TRUE : "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Unsupported classic_compatible variation: ");
        stringBuffer.append(i);
        throw new BugException(stringBuffer.toString());
    }

    public static boolean d(zfa zfaVar, t0 t0Var, int i, String str, zfa zfaVar2, t0 t0Var2, t0 t0Var3, boolean z, boolean z2, boolean z3, boolean z4, Environment environment) throws Throwable {
        zfa zfaVar3;
        zfa zfaVar4;
        int iCompare;
        String str2;
        c cVarF;
        t0 t0Var4 = t0Var;
        if (zfaVar != null) {
            zfaVar3 = zfaVar;
        } else {
            if (environment == null || !environment.J()) {
                if (z3) {
                    return false;
                }
                if (t0Var4 != null) {
                    throw InvalidReferenceException.getInstance(t0Var4, environment);
                }
                throw new _MiscTemplateException(t0Var3, environment, "The left operand of the comparison was undefined or null.");
            }
            zfaVar3 = mga.Y4;
        }
        if (zfaVar2 != null) {
            zfaVar4 = zfaVar2;
        } else {
            if (environment == null || !environment.J()) {
                if (z4) {
                    return false;
                }
                if (t0Var2 != null) {
                    throw InvalidReferenceException.getInstance(t0Var2, environment);
                }
                throw new _MiscTemplateException(t0Var3, environment, "The right operand of the comparison was undefined or null.");
            }
            zfaVar4 = mga.Y4;
        }
        if ((zfaVar3 instanceof hga) && (zfaVar4 instanceof hga)) {
            Number numberG = g((hga) zfaVar3, t0Var4);
            Number numberG2 = g((hga) zfaVar4, t0Var2);
            if (environment != null) {
                cVarF = environment.f();
            } else {
                cVarF = t0Var4 != null ? t0Var.y().f() : c.d;
            }
            try {
                iCompare = cVarF.e(numberG, numberG2);
            } catch (RuntimeException e) {
                throw new _MiscTemplateException(t0Var3, e, environment, new Object[]{"Unexpected error while comparing two numbers: ", e});
            }
        } else if ((zfaVar3 instanceof ffa) && (zfaVar4 instanceof ffa)) {
            ffa ffaVar = (ffa) zfaVar3;
            ffa ffaVar2 = (ffa) zfaVar4;
            int iJ = ffaVar.j();
            int iJ2 = ffaVar2.j();
            if (iJ == 0 || iJ2 == 0) {
                if (iJ == 0) {
                    str2 = TtmlNode.LEFT;
                } else {
                    str2 = TtmlNode.RIGHT;
                    t0Var4 = t0Var2;
                }
                if (t0Var4 == null) {
                    t0Var4 = t0Var3;
                }
                throw new _MiscTemplateException(t0Var4, environment, new Object[]{"The ", str2, " ", "value of the comparison is a date-like value where it's not known if it's a date (no time part), time, or date-time, and thus can't be used in a comparison."});
            }
            if (iJ != iJ2) {
                List list = ffa.W4;
                throw new _MiscTemplateException(t0Var3, environment, new Object[]{"Can't compare dates of different types. Left date type is ", list.get(iJ), ", right date type is ", list.get(iJ2), Consts.DOT});
            }
            iCompare = f(ffaVar, t0Var4).compareTo(f(ffaVar2, t0Var2));
        } else if ((zfaVar3 instanceof mga) && (zfaVar4 instanceof mga)) {
            if (i != 1 && i != 2) {
                throw new _MiscTemplateException(t0Var3, environment, new Object[]{"Can't use operator \"", b(i, str), "\" on string values."});
            }
            iCompare = environment.w0().compare(h((mga) zfaVar3, t0Var4, environment), h((mga) zfaVar4, t0Var2, environment));
        } else if ((zfaVar3 instanceof freemarker.template.a) && (zfaVar4 instanceof freemarker.template.a)) {
            if (i != 1 && i != 2) {
                throw new _MiscTemplateException(t0Var3, environment, new Object[]{"Can't use operator \"", b(i, str), "\" on boolean values."});
            }
            iCompare = (((freemarker.template.a) zfaVar3).getAsBoolean() ? 1 : 0) - (((freemarker.template.a) zfaVar4).getAsBoolean() ? 1 : 0);
        } else {
            if (!environment.J()) {
                if (z2) {
                    if (i == 1) {
                        return false;
                    }
                    if (i == 2) {
                        return true;
                    }
                }
                String str3 = "";
                Object obj = (!z || t0Var4 == null) ? "" : new Object[]{"(", new h0d(t0Var4), ") value "};
                e0d e0dVar = new e0d(new g0d(zfaVar3));
                Object obj2 = str3;
                obj2 = str3;
                if (z && t0Var2 != null) {
                    obj2 = new Object[]{"(", new h0d(t0Var2), ") value "};
                }
                throw new _MiscTemplateException(t0Var3, environment, new Object[]{"Can't compare values of these types. ", "Allowed comparisons are between two numbers, two strings, two dates, or two booleans.\n", "Left hand operand ", obj, "is ", e0dVar, ".\n", "Right hand operand ", obj2, "is ", new e0d(new g0d(zfaVar4)), Consts.DOT});
            }
            iCompare = environment.w0().compare(t0Var4.L(environment), t0Var2.L(environment));
        }
        switch (i) {
            case 1:
                return iCompare == 0;
            case 2:
                return iCompare != 0;
            case 3:
                return iCompare < 0;
            case 4:
                return iCompare > 0;
            case 5:
                return iCompare <= 0;
            case 6:
                return iCompare >= 0;
            default:
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Unsupported comparator operator code: ");
                stringBuffer.append(i);
                throw new BugException(stringBuffer.toString());
        }
    }

    public static boolean e(t0 t0Var, int i, String str, t0 t0Var2, t0 t0Var3, Environment environment) {
        return d(t0Var.K(environment), t0Var, i, str, t0Var2.K(environment), t0Var2, t0Var3, false, false, false, false, environment);
    }

    public static Date f(ffa ffaVar, t0 t0Var) throws Throwable {
        Date dateF = ffaVar.f();
        if (dateF != null) {
            return dateF;
        }
        Class clsA = c;
        if (clsA == null) {
            clsA = a("java.util.Date");
            c = clsA;
        }
        throw i(clsA, ffaVar, t0Var);
    }

    public static Number g(hga hgaVar, t0 t0Var) throws Throwable {
        Number asNumber = hgaVar.getAsNumber();
        if (asNumber != null) {
            return asNumber;
        }
        Class clsA = b;
        if (clsA == null) {
            clsA = a("java.lang.Number");
            b = clsA;
        }
        throw i(clsA, hgaVar, t0Var);
    }

    public static String h(mga mgaVar, t0 t0Var, Environment environment) throws Throwable {
        String asString = mgaVar.getAsString();
        if (asString != null) {
            return asString;
        }
        if (environment == null) {
            environment = Environment.y0();
        }
        if (environment != null && environment.J()) {
            return "";
        }
        Class clsA = a;
        if (clsA == null) {
            clsA = a("java.lang.String");
            a = clsA;
        }
        throw i(clsA, mgaVar, t0Var);
    }

    public static TemplateModelException i(Class cls, zfa zfaVar, t0 t0Var) {
        return new _TemplateModelException(t0Var, _TemplateModelException.modelHasStoredNullDescription(cls, zfaVar));
    }
}
