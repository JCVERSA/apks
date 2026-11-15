package defpackage;

import java.util.LinkedHashMap;
import java.util.Map;

public final class r6a {
    public final a a = new a();

    public static final class a {
        public final a[] a = new a[128];
        public Map b;
        public boolean c;
        public int d;

        public final a a(char c) {
            if (c < 128) {
                return this.a[c];
            }
            Map map = this.b;
            if (map != null) {
                return (a) map.get(Character.valueOf(c));
            }
            return null;
        }

        public final int b() {
            return this.d;
        }

        public final boolean c(char c) {
            if (c >= 128) {
                Map map = this.b;
                if (map == null || !map.containsKey(Character.valueOf(c))) {
                    return false;
                }
            } else if (this.a[c] == null) {
                return false;
            }
            return true;
        }

        public final boolean d() {
            return this.c;
        }

        public final void e(char c, a aVar) {
            y45.j(aVar, "node");
            if (c < 128) {
                this.a[c] = aVar;
                return;
            }
            if (this.b == null) {
                this.b = new LinkedHashMap();
            }
            Character chValueOf = Character.valueOf(c);
            Map map = this.b;
            y45.g(map);
            map.put(chValueOf, aVar);
        }

        public final void f(boolean z) {
            this.c = z;
        }

        public final void g(int i) {
            this.d = i;
        }
    }

    public r6a(String[] strArr) {
        if (strArr != null) {
            for (String str : strArr) {
                if (str.length() > 0) {
                    b(str);
                }
            }
        }
    }

    public final int a(String str, int i) {
        int iB = 0;
        if (str != null && i > 0 && i <= str.length()) {
            a aVarA = this.a;
            while (true) {
                i--;
                if (-1 >= i) {
                    break;
                }
                char cCharAt = str.charAt(i);
                if (!aVarA.c(cCharAt)) {
                    break;
                }
                aVarA = aVarA.a(cCharAt);
                y45.g(aVarA);
                if (aVarA.d()) {
                    iB = aVarA.b();
                }
            }
        }
        return iB;
    }

    public final void b(String str) {
        a aVar = this.a;
        for (int length = str.length() - 1; -1 < length; length--) {
            char cCharAt = str.charAt(length);
            a aVarA = aVar.a(cCharAt);
            if (aVarA == null) {
                aVarA = new a();
                aVar.e(cCharAt, aVarA);
            }
            aVar = aVarA;
        }
        aVar.f(true);
        aVar.g(str.length());
    }
}
