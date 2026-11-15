package defpackage;

import java.util.HashSet;
import java.util.Iterator;

public class cu7 extends f0d {
    public final fu7 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cu7(fu7 fu7Var, Object obj) {
        super(obj);
        this.d = fu7Var;
    }

    @Override
    public String a(Object obj) {
        Iterator itH = this.d.a.h();
        Iterator itH2 = this.d.b != null ? this.d.b.h() : null;
        if (!itH.hasNext() && (itH2 == null || !itH2.hasNext())) {
            return "No members";
        }
        StringBuffer stringBuffer = new StringBuffer();
        HashSet hashSet = new HashSet();
        while (itH.hasNext()) {
            if (stringBuffer.length() != 0) {
                stringBuffer.append(",\n");
            }
            stringBuffer.append("    ");
            qq0 qq0Var = (qq0) itH.next();
            hashSet.add(qq0Var);
            stringBuffer.append(qq0Var.a());
        }
        if (itH2 != null) {
            while (itH2.hasNext()) {
                qq0 qq0Var2 = (qq0) itH2.next();
                if (!hashSet.contains(qq0Var2)) {
                    if (stringBuffer.length() != 0) {
                        stringBuffer.append(",\n");
                    }
                    stringBuffer.append("    ");
                    stringBuffer.append(qq0Var2.a());
                }
            }
        }
        return stringBuffer.toString();
    }
}
