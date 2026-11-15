package defpackage;

public final class tq4 {
    public static final tq4 a = new tq4();

    public final boolean a(String str, oq4 oq4Var) {
        y45.j(str, "callType");
        y45.j(oq4Var, "configuration");
        int iHashCode = str.hashCode();
        if (iHashCode != 2106116) {
            if (iHashCode != 2106217) {
                if (iHashCode == 2688677 && str.equals("Warm")) {
                    return oq4Var.i();
                }
            } else if (str.equals("Cool")) {
                return oq4Var.c();
            }
        } else if (str.equals("Cold")) {
            return oq4Var.e();
        }
        ae5 ae5Var = ae5.a;
        if (xi.o()) {
            xi.i("Unknown histogram call type: " + str);
        }
        return false;
    }
}
