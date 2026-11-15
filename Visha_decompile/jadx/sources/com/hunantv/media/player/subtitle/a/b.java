package com.hunantv.media.player.subtitle.a;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.Arrays;
import org.apache.commons.text.StringSubstitutor;

public class b extends com.hunantv.media.player.subtitle.d.a {
    boolean l;
    public String[] p;
    String f = "";
    boolean g = false;
    int h = 100;
    String i = "";
    boolean j = true;
    Integer k = null;
    int m = 50;
    int n = 100;
    int o = 200;
    c[][] q = null;
    d r = null;

    public StringBuilder a(StringBuilder sb) {
        if (this.p == null) {
            sb.append("null");
        } else {
            sb.append("[");
            String[] strArr = this.p;
            int length = strArr.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                if (!z) {
                    sb.append(", ");
                }
                if (str == null) {
                    sb.append("null");
                } else {
                    sb.append("\"");
                    sb.append(str);
                    sb.append("\"");
                }
                i++;
                z = false;
            }
            sb.append("]");
        }
        return sb;
    }

    public StringBuilder b(StringBuilder sb) {
        if (this.q == null) {
            sb.append("null");
        } else {
            sb.append("[");
            c[][] cVarArr = this.q;
            int length = cVarArr.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                c[] cVarArr2 = cVarArr[i];
                if (!z) {
                    sb.append(", ");
                }
                if (cVarArr2 == null) {
                    sb.append("null");
                } else {
                    sb.append("\"");
                    int length2 = cVarArr2.length;
                    long j = -1;
                    int i2 = 0;
                    boolean z2 = true;
                    while (i2 < length2) {
                        c cVar = cVarArr2[i2];
                        if (!z2) {
                            sb.append(" ");
                        }
                        if (cVar.a != j) {
                            sb.append("<");
                            sb.append(h.a(cVar.a));
                            sb.append(">");
                            j = cVar.a;
                        }
                        sb.append(cVar.c);
                        i2++;
                        z2 = false;
                    }
                    sb.append("\"");
                }
                i++;
                z = false;
            }
            sb.append("]");
        }
        return sb;
    }

    public boolean equals(Object obj) {
        boolean z;
        Integer num;
        if (!(obj instanceof b)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        try {
            b bVar = (b) obj;
            boolean z2 = this.f.equals(bVar.f) && this.g == bVar.g && this.h == bVar.h && this.i.equals(bVar.i) && this.j == bVar.j && (z = this.l) == bVar.l && (z || (((num = this.k) != null && num.equals(bVar.k)) || (this.k == null && bVar.k == null))) && this.m == bVar.m && this.n == bVar.n && this.o == bVar.o && this.q.length == bVar.q.length;
            if (z2) {
                int i = 0;
                while (true) {
                    c[][] cVarArr = this.q;
                    if (i >= cVarArr.length) {
                        break;
                    }
                    if (!Arrays.equals(cVarArr[i], bVar.q[i])) {
                        return false;
                    }
                    i++;
                }
            }
            return z2;
        } catch (IncompatibleClassChangeError unused) {
            return false;
        }
    }

    public int hashCode() {
        return toString().hashCode();
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(h.a(this.a));
        sb.append(" --> ");
        sb.append(h.a(this.b));
        sb.append(" {id:\"");
        sb.append(this.f);
        sb.append("\", pauseOnExit:");
        sb.append(this.g);
        sb.append(", direction:");
        int i = this.h;
        String str2 = "INVALID";
        if (i == 100) {
            str = "horizontal";
        } else if (i == 102) {
            str = "vertical_lr";
        } else {
            str = i == 101 ? "vertical_rl" : "INVALID";
        }
        sb.append(str);
        sb.append(", regionId:\"");
        sb.append(this.i);
        sb.append("\", snapToLines:");
        sb.append(this.j);
        sb.append(", linePosition:");
        sb.append(this.l ? TtmlNode.TEXT_EMPHASIS_AUTO : this.k);
        sb.append(", textPosition:");
        sb.append(this.m);
        sb.append(", size:");
        sb.append(this.n);
        sb.append(", alignment:");
        int i2 = this.o;
        if (i2 == 202) {
            str2 = TtmlNode.END;
        } else if (i2 == 203) {
            str2 = TtmlNode.LEFT;
        } else if (i2 == 200) {
            str2 = "middle";
        } else if (i2 == 204) {
            str2 = TtmlNode.RIGHT;
        } else if (i2 == 201) {
            str2 = TtmlNode.START;
        }
        sb.append(str2);
        sb.append(", text:");
        a(sb).append(StringSubstitutor.DEFAULT_VAR_END);
        return sb.toString();
    }

    @Override
    public void a(long j) {
        for (c[] cVarArr : this.q) {
            for (c cVar : cVarArr) {
                cVar.b = j >= cVar.a;
            }
        }
    }
}
