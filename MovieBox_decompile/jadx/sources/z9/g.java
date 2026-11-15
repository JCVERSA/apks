package z9;

import java.util.Collections;
import java.util.List;

public class g {

    public final String f76674a;

    public final long f76675b;

    public final List f76676c;

    public final List f76677d;

    public final e f76678e;

    public g(String str, long j10, List list, List list2) {
        this(str, j10, list, list2, null);
    }

    public int a(int i10) {
        int size = this.f76676c.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((a) this.f76676c.get(i11)).f76630b == i10) {
                return i11;
            }
        }
        return -1;
    }

    public g(String str, long j10, List list, List list2, e eVar) {
        this.f76674a = str;
        this.f76675b = j10;
        this.f76676c = Collections.unmodifiableList(list);
        this.f76677d = Collections.unmodifiableList(list2);
        this.f76678e = eVar;
    }
}
