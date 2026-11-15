package defpackage;

public abstract class w0a {
    public static void a(Appendable appendable, Object obj, e74 e74Var) {
        y45.j(appendable, "<this>");
        if (e74Var != null) {
            appendable.append((CharSequence) e74Var.invoke(obj));
            return;
        }
        if (obj == null ? true : obj instanceof CharSequence) {
            appendable.append((CharSequence) obj);
        } else if (obj instanceof Character) {
            appendable.append(((Character) obj).charValue());
        } else {
            appendable.append(obj.toString());
        }
    }
}
