package p0;

public final class g extends a {
    public static boolean c(o0.a aVar, String str, boolean z2) {
        StringBuilder sb = new StringBuilder();
        if (a.b()) {
            sb.append(a.a());
            sb.append(" rm -f ");
        } else {
            sb.append("rm ");
        }
        if (z2) {
            sb.append("-r ");
        }
        sb.append('\'');
        sb.append(str.replace("'", "'\\''"));
        sb.append('\'');
        if (!aVar.b(sb.toString())) {
            return false;
        }
        aVar.k(false);
        return aVar.f1294h == 0;
    }
}
