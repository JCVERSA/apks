package z1;

import java.util.Collections;
import java.util.List;

public class g {

    public final String f76541a;

    public final long f76542b;

    public final List f76543c;

    public final List f76544d;

    public final e f76545e;

    public g(String str, long j10, List list, List list2) {
        this(str, j10, list, list2, null);
    }

    public int a(int i10) {
        int size = this.f76543c.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (((a) this.f76543c.get(i11)).f76496b == i10) {
                return i11;
            }
        }
        return -1;
    }

    public g(String str, long j10, List list, List list2, e eVar) {
        this.f76541a = str;
        this.f76542b = j10;
        this.f76543c = Collections.unmodifiableList(list);
        this.f76544d = Collections.unmodifiableList(list2);
        this.f76545e = eVar;
    }
}
