package f0;

import java.util.ArrayList;

public final class b {

    public final String f761a;

    public long f762b = 0;

    public int f763c = 0;

    public final int f764d;

    public final ArrayList<b> f765e;

    public b f766f;

    public b(String str, int i2) {
        this.f761a = str;
        this.f764d = i2;
        if (b()) {
            this.f765e = new ArrayList<>();
        } else {
            this.f765e = null;
        }
        this.f766f = null;
    }

    public final b a(String str) {
        ArrayList<b> arrayList = this.f765e;
        if (arrayList == null) {
            return null;
        }
        for (b bVar : arrayList) {
            if (bVar.f761a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    public final boolean b() {
        return (this.f764d & 1) != 0;
    }
}
