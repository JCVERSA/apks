package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import java.util.List;
import o4.t;
import s4.b;
import s4.d;
import t4.c;

public class ShapeStroke implements c {

    private final String f17185a;

    private final b f17186b;

    private final List f17187c;

    private final s4.a f17188d;

    private final d f17189e;

    private final b f17190f;

    private final LineCapType f17191g;

    private final LineJoinType f17192h;

    private final float f17193i;

    private final boolean f17194j;

    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i10 = a.f17195a[ordinal()];
            if (i10 != 1) {
                return i10 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i10 = a.f17196b[ordinal()];
            if (i10 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i10 == 2) {
                return Paint.Join.MITER;
            }
            if (i10 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    static class a {

        static final int[] f17195a;

        static final int[] f17196b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f17196b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17196b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17196b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f17195a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17195a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17195a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, b bVar, List list, s4.a aVar, d dVar, b bVar2, LineCapType lineCapType, LineJoinType lineJoinType, float f10, boolean z10) {
        this.f17185a = str;
        this.f17186b = bVar;
        this.f17187c = list;
        this.f17188d = aVar;
        this.f17189e = dVar;
        this.f17190f = bVar2;
        this.f17191g = lineCapType;
        this.f17192h = lineJoinType;
        this.f17193i = f10;
        this.f17194j = z10;
    }

    @Override
    public o4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t(lottieDrawable, aVar, this);
    }

    public LineCapType b() {
        return this.f17191g;
    }

    public s4.a c() {
        return this.f17188d;
    }

    public b d() {
        return this.f17186b;
    }

    public LineJoinType e() {
        return this.f17192h;
    }

    public List f() {
        return this.f17187c;
    }

    public float g() {
        return this.f17193i;
    }

    public String h() {
        return this.f17185a;
    }

    public d i() {
        return this.f17189e;
    }

    public b j() {
        return this.f17190f;
    }

    public boolean k() {
        return this.f17194j;
    }
}
