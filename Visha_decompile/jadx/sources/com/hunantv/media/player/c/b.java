package com.hunantv.media.player.c;

import com.hunantv.media.player.g;
import org.apache.commons.text.StringSubstitutor;

public class b implements a {
    private int a = 0;
    private g.a b;

    public b(g.a aVar) {
        this.b = aVar;
    }

    public String a() {
        String strB;
        StringBuilder sb = new StringBuilder(128);
        int i = this.a;
        if (i == 1) {
            sb.append("VIDEO");
            sb.append(", ");
            sb.append(this.b.a());
            sb.append(", ");
            sb.append(this.b.c());
            sb.append(", ");
            strB = this.b.b();
        } else if (i == 2) {
            sb.append("AUDIO");
            sb.append(", ");
            sb.append(this.b.a());
            sb.append(", ");
            sb.append(this.b.c());
            sb.append(", ");
            strB = this.b.d();
        } else if (i != 3) {
            strB = i != 4 ? "UNKNOWN" : "SUBTITLE";
        } else {
            sb.append("TIMEDTEXT");
            sb.append(", ");
            strB = this.b.d;
        }
        sb.append(strB);
        return sb.toString();
    }

    public String toString() {
        return getClass().getSimpleName() + '{' + a() + StringSubstitutor.DEFAULT_VAR_END;
    }

    public void a(int i) {
        this.a = i;
    }
}
