package defpackage;

public abstract class q75 {
    public static final boolean a(s75 s75Var) {
        o54 o54VarD;
        x85 x85Var = (x85) i81.Q0(s75Var.f());
        o85 type = x85Var != null ? x85Var.getType() : null;
        b75 b75Var = type instanceof b75 ? (b75) type : null;
        if (b75Var == null) {
            return false;
        }
        a75 a75VarJ = b75Var.j();
        return (a75VarJ instanceof s65) && (o54VarD = ((s65) a75VarJ).d()) != null && y45.e(o54VarD.b(), "java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
    
        if (r0.equals("hashCode") == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
    
        if (r0.equals("toString") != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return r3.f().isEmpty();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean b(s75 s75Var) {
        String strB = s75Var.getName().b();
        int iHashCode = strB.hashCode();
        if (iHashCode != -1776922004) {
            if (iHashCode != -1295482945) {
                if (iHashCode == 147696667) {
                }
            } else if (strB.equals("equals")) {
                return a(s75Var);
            }
            return false;
        }
    }

    public static final boolean c(r75 r75Var) {
        y45.j(r75Var, "<this>");
        return r75Var.D().L() && (r75Var instanceof s75) && b((s75) r75Var);
    }
}
