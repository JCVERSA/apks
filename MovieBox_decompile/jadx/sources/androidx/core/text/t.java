package androidx.core.text;

import java.util.Locale;

public abstract class t {

    public static final s f7944a = new e(null, false);

    public static final s f7945b = new e(null, true);

    public static final s f7946c;

    public static final s f7947d;

    public static final s f7948e;

    public static final s f7949f;

    private static class a implements c {

        static final a f7950b = new a(true);

        private final boolean f7951a;

        private a(boolean z10) {
            this.f7951a = z10;
        }

        @Override
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            boolean z10 = false;
            while (i10 < i12) {
                int iA = t.a(Character.getDirectionality(charSequence.charAt(i10)));
                if (iA != 0) {
                    if (iA != 1) {
                        continue;
                    } else if (!this.f7951a) {
                        return 1;
                    }
                    i10++;
                    z10 = z10;
                } else if (this.f7951a) {
                    return 0;
                }
                z10 = true;
                i10++;
                z10 = z10;
            }
            if (z10) {
                return this.f7951a ? 1 : 0;
            }
            return 2;
        }
    }

    private static class b implements c {

        static final b f7952a = new b();

        private b() {
        }

        @Override
        public int a(CharSequence charSequence, int i10, int i11) {
            int i12 = i11 + i10;
            int iB = 2;
            while (i10 < i12 && iB == 2) {
                iB = t.b(Character.getDirectionality(charSequence.charAt(i10)));
                i10++;
            }
            return iB;
        }
    }

    private interface c {
        int a(CharSequence charSequence, int i10, int i11);
    }

    private static abstract class d implements s {

        private final c f7953a;

        d(c cVar) {
            this.f7953a = cVar;
        }

        private boolean c(CharSequence charSequence, int i10, int i11) {
            int iA = this.f7953a.a(charSequence, i10, i11);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        @Override
        public boolean a(CharSequence charSequence, int i10, int i11) {
            if (charSequence == null || i10 < 0 || i11 < 0 || charSequence.length() - i11 < i10) {
                throw new IllegalArgumentException();
            }
            return this.f7953a == null ? b() : c(charSequence, i10, i11);
        }

        protected abstract boolean b();
    }

    private static class e extends d {

        private final boolean f7954b;

        e(c cVar, boolean z10) {
            super(cVar);
            this.f7954b = z10;
        }

        @Override
        protected boolean b() {
            return this.f7954b;
        }
    }

    private static class f extends d {

        static final f f7955b = new f();

        f() {
            super(null);
        }

        @Override
        protected boolean b() {
            return u.a(Locale.getDefault()) == 1;
        }
    }

    static {
        b bVar = b.f7952a;
        f7946c = new e(bVar, false);
        f7947d = new e(bVar, true);
        f7948e = new e(a.f7950b, false);
        f7949f = f.f7955b;
    }

    static int a(int i10) {
        if (i10 != 0) {
            return (i10 == 1 || i10 == 2) ? 0 : 2;
        }
        return 1;
    }

    static int b(int i10) {
        if (i10 != 0) {
            if (i10 == 1 || i10 == 2) {
                return 0;
            }
            switch (i10) {
                case 14:
                case 15:
                    break;
                case 16:
                case 17:
                    return 0;
                default:
                    return 2;
            }
        }
        return 1;
    }
}
