package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class a {

    public static final d f4030b = new d(null);

    private static final a f4031c = new C0038a(new float[]{0.8951f, -0.7502f, 0.0389f, 0.2664f, 1.7135f, -0.0685f, -0.1614f, 0.0367f, 1.0296f});

    private static final a f4032d = new c(new float[]{0.40024f, -0.2263f, 0.0f, 0.7076f, 1.16532f, 0.0f, -0.08081f, 0.0457f, 0.91822f});

    private static final a f4033e = new b(new float[]{0.7328f, -0.7036f, 0.003f, 0.4296f, 1.6975f, 0.0136f, -0.1624f, 0.0061f, 0.9834f});

    private final float[] f4034a;

    public static final class C0038a extends a {
        C0038a(float[] fArr) {
            super(fArr, null);
        }

        public String toString() {
            return "Bradford";
        }
    }

    public static final class b extends a {
        b(float[] fArr) {
            super(fArr, null);
        }

        public String toString() {
            return "Ciecat02";
        }
    }

    public static final class c extends a {
        c(float[] fArr) {
            super(fArr, null);
        }

        public String toString() {
            return "VonKries";
        }
    }

    public static final class d {
        public d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a() {
            return a.f4031c;
        }

        private d() {
        }
    }

    public a(float[] fArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(fArr);
    }

    public final float[] b() {
        return this.f4034a;
    }

    private a(float[] fArr) {
        this.f4034a = fArr;
    }
}
