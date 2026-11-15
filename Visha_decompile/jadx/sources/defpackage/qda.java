package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class qda {
    public String a;
    public List b = new ArrayList();

    public qda(String str) {
        this.a = str;
    }

    public qda a(aa1 aa1Var) {
        this.b.add(aa1Var);
        return this;
    }

    public String b() {
        StringBuilder sb = new StringBuilder("CREATE TABLE IF NOT EXISTS ");
        sb.append(this.a);
        sb.append('(');
        for (aa1 aa1Var : this.b) {
            if (aa1Var.c != null) {
                sb.append("PRIMARY KEY (");
                for (String str : aa1Var.c) {
                    sb.append(str);
                    sb.append(StringUtils.COMMA);
                }
                sb.deleteCharAt(sb.length() - 1);
                sb.append(")");
            } else {
                sb.append(aa1Var.a);
                sb.append(" ");
                sb.append(aa1Var.b);
                if (aa1Var.e) {
                    sb.append(" NOT NULL");
                }
                if (aa1Var.d) {
                    sb.append(" PRIMARY KEY");
                }
                if (aa1Var.f) {
                    sb.append(" AUTOINCREMENT");
                }
                sb.append(StringUtils.COMMA);
            }
        }
        if (sb.toString().endsWith(StringUtils.COMMA)) {
            sb.deleteCharAt(sb.length() - 1);
        }
        sb.append(')');
        return sb.toString();
    }

    public int c() {
        return this.b.size();
    }

    public int d(String str) {
        int iC = c();
        for (int i = 0; i < iC; i++) {
            if (((aa1) this.b.get(i)).a.equals(str)) {
                return i;
            }
        }
        return -1;
    }
}
