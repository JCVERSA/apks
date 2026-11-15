package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import com.airbnb.lottie.LottieDrawable;
import defpackage.ah1;
import defpackage.bg1;
import defpackage.cc;
import defpackage.dc;
import defpackage.fc;
import defpackage.m1a;
import defpackage.ur5;
import java.util.List;

public class ShapeStroke implements ah1 {
    public final String a;
    public final dc b;
    public final List c;
    public final cc d;
    public final fc e;
    public final dc f;
    public final LineCapType g;
    public final LineJoinType h;
    public final float i;
    public final boolean j;

    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i = a.a[ordinal()];
            if (i != 1) {
                return i != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i = a.b[ordinal()];
            if (i == 1) {
                return Paint.Join.BEVEL;
            }
            if (i == 2) {
                return Paint.Join.MITER;
            }
            if (i != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public static class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, dc dcVar, List list, cc ccVar, fc fcVar, dc dcVar2, LineCapType lineCapType, LineJoinType lineJoinType, float f, boolean z) {
        this.a = str;
        this.b = dcVar;
        this.c = list;
        this.d = ccVar;
        this.e = fcVar;
        this.f = dcVar2;
        this.g = lineCapType;
        this.h = lineJoinType;
        this.i = f;
        this.j = z;
    }

    @Override
    public bg1 a(LottieDrawable lottieDrawable, ur5 ur5Var, com.airbnb.lottie.model.layer.a aVar) {
        return new m1a(lottieDrawable, aVar, this);
    }

    public LineCapType b() {
        return this.g;
    }

    public cc c() {
        return this.d;
    }

    public dc d() {
        return this.b;
    }

    public LineJoinType e() {
        return this.h;
    }

    public List f() {
        return this.c;
    }

    public float g() {
        return this.i;
    }

    public String h() {
        return this.a;
    }

    public fc i() {
        return this.e;
    }

    public dc j() {
        return this.f;
    }

    public boolean k() {
        return this.j;
    }
}
