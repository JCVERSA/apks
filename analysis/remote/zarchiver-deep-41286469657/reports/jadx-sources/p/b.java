package p;

import android.content.res.Resources;
import android.util.TypedValue;
import java.util.Locale;
import q.l;

public abstract class b {

    public final int f1313a;

    public static class a extends b {
        public a(int i2) {
            super(i2);
        }

        @Override
        public final float a() {
            return this.f1313a;
        }

        @Override
        public final int b() {
            return this.f1313a;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            return String.valueOf(this.f1313a != 0);
        }
    }

    public static class C0024b extends b {
        public C0024b(int i2) {
            super(i2);
        }

        @Override
        public final float a() {
            return this.f1313a;
        }

        @Override
        public final int b() {
            return this.f1313a;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            return String.valueOf(this.f1313a);
        }
    }

    public static class c extends b {
        public c(int i2) {
            super(i2);
        }

        @Override
        public final float a() {
            int i2 = this.f1313a;
            int i3 = i2 >> 8;
            int i4 = (i2 >> 0) & 15;
            if (i4 == 1) {
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            } else {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                        } else if (i4 == 5) {
                        }
                        TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
                    } else {
                        TypedValue.applyDimension(3, i3, Resources.getSystem().getDisplayMetrics());
                    }
                }
                TypedValue.applyDimension(2, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            }
            return i3;
        }

        @Override
        public final int b() {
            int i2 = this.f1313a;
            int i3 = i2 >> 8;
            int i4 = (i2 >> 0) & 15;
            if (i4 == 1) {
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            } else {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                        } else if (i4 == 5) {
                        }
                        TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
                    } else {
                        TypedValue.applyDimension(3, i3, Resources.getSystem().getDisplayMetrics());
                    }
                }
                TypedValue.applyDimension(2, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(1, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(4, i3, Resources.getSystem().getDisplayMetrics());
                TypedValue.applyDimension(5, i3, Resources.getSystem().getDisplayMetrics());
            }
            return i3;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            String str;
            int i2 = this.f1313a;
            short s2 = (short) (i2 & 255);
            if (s2 == 0) {
                str = "px";
            } else if (s2 == 1) {
                str = "dp";
            } else if (s2 == 2) {
                str = "sp";
            } else if (s2 == 3) {
                str = "pt";
            } else if (s2 == 4) {
                str = "in";
            } else if (s2 != 5) {
                str = "unknown unit:0x" + Integer.toHexString(s2);
            } else {
                str = "mm";
            }
            return (i2 >> 8) + str;
        }
    }

    public static class d extends b {
        public d(int i2) {
            super(i2);
        }

        @Override
        public final float a() {
            return this.f1313a;
        }

        @Override
        public final int b() {
            return this.f1313a;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            String str;
            int i2 = this.f1313a;
            int i3 = (i2 >> 0) & 15;
            if (i3 == 0) {
                str = "%";
            } else if (i3 != 1) {
                str = "unknown type:0x" + Integer.toHexString(i3);
            } else {
                str = "%p";
            }
            return Float.intBitsToFloat(i2 >> 4) + str;
        }
    }

    public static class e extends b {
        public e(int i2) {
            super(i2);
        }

        @Override
        public final float a() {
            return this.f1313a;
        }

        @Override
        public final int b() {
            return this.f1313a;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            return "0x" + Integer.toHexString(this.f1313a);
        }
    }

    public static class f extends b {

        public static final f f1314b = new f();

        public f() {
            super(-1);
        }

        @Override
        public final float a() {
            return 0.0f;
        }

        @Override
        public final int b() {
            return 0;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            return "";
        }
    }

    public static class g extends b {

        public final int f1315b;

        public g(int i2, int i3) {
            super(i2);
            this.f1315b = i3;
        }

        @Override
        public final float a() {
            return this.f1313a;
        }

        @Override
        public final int b() {
            int i2 = this.f1315b;
            int i3 = this.f1313a;
            return i2 == 6 ? (-16777216) | i3 : i3;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = (this.f1315b / 2) - 1; i2 >= 0; i2--) {
                String hexString = Integer.toHexString((this.f1313a >> (i2 * 8)) & 255);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        }
    }

    public static class h extends b {

        public final short f1316b;

        public h(int i2, short s2) {
            super(i2);
            this.f1316b = s2;
        }

        @Override
        public final float a() {
            return this.f1313a;
        }

        @Override
        public final int b() {
            return this.f1313a;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            return "{" + ((int) this.f1316b) + ":" + (((long) this.f1313a) & 4294967295L) + "}";
        }
    }

    public static class i extends b {
        public i(int i2) {
            super(i2);
        }

        @Override
        public final float a() {
            return 0.0f;
        }

        @Override
        public final int b() {
            return 0;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            long j2 = ((long) this.f1313a) & 4294967295L;
            if (j2 > 16973824 && j2 < 16977920) {
                return "@android:style/sys" + ((int) j2);
            }
            String str = "resourceId:0x" + Long.toHexString(j2);
            if (gVar == null) {
                return str;
            }
            q.d dVar = null;
            l lVar = null;
            int i2 = -1;
            for (q.g.a aVar : gVar.a(j2)) {
                int i3 = aVar.f1354b.f1363g;
                if (i3 == 65534 || i3 == 65535) {
                    i3 = -1;
                }
                if (i3 > i2) {
                    dVar = aVar.f1355c;
                    i2 = i3;
                }
                lVar = aVar.f1353a;
            }
            if (dVar == null) {
                return str;
            }
            if (locale != null) {
                return dVar.a(gVar, locale);
            }
            return "@" + lVar.f1369b + "/" + dVar.f1342c;
        }
    }

    public static class j extends b {

        public final e.c f1317b;

        public j(int i2, e.c cVar) {
            super(i2);
            this.f1317b = cVar;
        }

        @Override
        public final float a() {
            return 0.0f;
        }

        @Override
        public final int b() {
            return 0;
        }

        @Override
        public final String c(q.g gVar, Locale locale) {
            int i2 = this.f1313a;
            if (i2 >= 0) {
                return this.f1317b.f(i2);
            }
            return null;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            int i2 = this.f1313a;
            sb.append(i2);
            sb.append(":");
            sb.append(this.f1317b.f(i2));
            return sb.toString();
        }
    }

    public b(int i2) {
        this.f1313a = i2;
    }

    public abstract float a();

    public abstract int b();

    public abstract String c(q.g gVar, Locale locale);
}
