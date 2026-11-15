package com.yandex.div.internal.drawable;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import defpackage.c74;
import defpackage.hi;
import defpackage.y45;
import defpackage.yi5;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class RadialGradientDrawable extends Drawable {
    public static final Companion g = new Companion(null);
    public Radius a;
    public a b;
    public a c;
    public int[] d;
    public final Paint e;
    public RectF f;

    public static final class Companion {

        public class a {
            public static final int[] a;

            static {
                int[] iArr = new int[Radius.Relative.Type.values().length];
                try {
                    iArr[Radius.Relative.Type.NEAREST_CORNER.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Radius.Relative.Type.FARTHEST_CORNER.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Radius.Relative.Type.NEAREST_SIDE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Radius.Relative.Type.FARTHEST_SIDE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final float e(float f, float f2, float f3, float f4) {
            double d = 2;
            return (float) Math.sqrt(((float) Math.pow(f - f3, d)) + ((float) Math.pow(f2 - f4, d)));
        }

        public static final float f(float f, float f2) {
            return Math.abs(f - f2);
        }

        public static final float g(float f, float f2) {
            return Math.abs(f - f2);
        }

        public static final Float[] h(yi5 yi5Var) {
            return (Float[]) yi5Var.getValue();
        }

        public static final Float[] i(yi5 yi5Var) {
            return (Float[]) yi5Var.getValue();
        }

        public static final float j(a aVar, int i) {
            if (aVar instanceof a.C0298a) {
                return ((a.C0298a) aVar).a();
            }
            if (aVar instanceof a.b) {
                return ((a.b) aVar).a() * i;
            }
            throw new NoWhenBranchMatchedException();
        }

        public final RadialGradient d(Radius radius, a aVar, a aVar2, int[] iArr, int i, int i2) {
            float fFloatValue;
            y45.j(radius, "radius");
            y45.j(aVar, "centerX");
            y45.j(aVar2, "centerY");
            y45.j(iArr, "colors");
            final float fJ = j(aVar, i);
            final float fJ2 = j(aVar2, i2);
            final float f = i;
            final float f2 = i2;
            final float f3 = 0.0f;
            final float f4 = 0.0f;
            yi5 yi5VarA = b.a(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Float[] invoke() {
                    return new Float[]{Float.valueOf(RadialGradientDrawable.Companion.e(fJ, fJ2, f3, f4)), Float.valueOf(RadialGradientDrawable.Companion.e(fJ, fJ2, f, f4)), Float.valueOf(RadialGradientDrawable.Companion.e(fJ, fJ2, f, f2)), Float.valueOf(RadialGradientDrawable.Companion.e(fJ, fJ2, f3, f2))};
                }
            });
            yi5 yi5VarA2 = b.a(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Float[] invoke() {
                    return new Float[]{Float.valueOf(RadialGradientDrawable.Companion.g(fJ, f3)), Float.valueOf(RadialGradientDrawable.Companion.g(fJ, f)), Float.valueOf(RadialGradientDrawable.Companion.f(fJ2, f2)), Float.valueOf(RadialGradientDrawable.Companion.f(fJ2, f4))};
                }
            });
            if (radius instanceof Radius.a) {
                fFloatValue = ((Radius.a) radius).a();
            } else {
                if (!(radius instanceof Radius.Relative)) {
                    throw new NoWhenBranchMatchedException();
                }
                int i3 = a.a[((Radius.Relative) radius).a().ordinal()];
                if (i3 == 1) {
                    Float fZ0 = hi.z0(h(yi5VarA));
                    y45.g(fZ0);
                    fFloatValue = fZ0.floatValue();
                } else if (i3 == 2) {
                    Float fX0 = hi.x0(h(yi5VarA));
                    y45.g(fX0);
                    fFloatValue = fX0.floatValue();
                } else if (i3 == 3) {
                    Float fZ1 = hi.z0(i(yi5VarA2));
                    y45.g(fZ1);
                    fFloatValue = fZ1.floatValue();
                } else {
                    if (i3 != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    Float fX1 = hi.x0(i(yi5VarA2));
                    y45.g(fX1);
                    fFloatValue = fX1.floatValue();
                }
            }
            if (fFloatValue <= 0.0f) {
                fFloatValue = 0.01f;
            }
            return new RadialGradient(fJ, fJ2, fFloatValue, iArr, (float[]) null, Shader.TileMode.CLAMP);
        }

        public Companion() {
        }
    }

    public static abstract class Radius {

        public static final class Relative extends Radius {
            public final Type a;

            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/yandex/div/internal/drawable/RadialGradientDrawable$Radius$Relative$Type;", "", "(Ljava/lang/String;I)V", "NEAREST_CORNER", "FARTHEST_CORNER", "NEAREST_SIDE", "FARTHEST_SIDE", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            public enum Type {
                NEAREST_CORNER,
                FARTHEST_CORNER,
                NEAREST_SIDE,
                FARTHEST_SIDE
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Relative(Type type) {
                super(null);
                y45.j(type, "type");
                this.a = type;
            }

            public final Type a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Relative) && this.a == ((Relative) obj).a;
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return "Relative(type=" + this.a + ')';
            }
        }

        public static final class a extends Radius {
            public final float a;

            public a(float f) {
                super(null);
                this.a = f;
            }

            public final float a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof a) && Float.compare(this.a, ((a) obj).a) == 0;
            }

            public int hashCode() {
                return Float.hashCode(this.a);
            }

            public String toString() {
                return "Fixed(value=" + this.a + ')';
            }
        }

        public Radius(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Radius() {
        }
    }

    public static abstract class a {

        public static final class C0298a extends a {
            public final float a;

            public C0298a(float f) {
                super(null);
                this.a = f;
            }

            public final float a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0298a) && Float.compare(this.a, ((C0298a) obj).a) == 0;
            }

            public int hashCode() {
                return Float.hashCode(this.a);
            }

            public String toString() {
                return "Fixed(value=" + this.a + ')';
            }
        }

        public static final class b extends a {
            public final float a;

            public b(float f) {
                super(null);
                this.a = f;
            }

            public final float a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && Float.compare(this.a, ((b) obj).a) == 0;
            }

            public int hashCode() {
                return Float.hashCode(this.a);
            }

            public String toString() {
                return "Relative(value=" + this.a + ')';
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public RadialGradientDrawable(Radius radius, a aVar, a aVar2, int[] iArr) {
        y45.j(radius, "radius");
        y45.j(aVar, "centerX");
        y45.j(aVar2, "centerY");
        y45.j(iArr, "colors");
        this.a = radius;
        this.b = aVar;
        this.c = aVar2;
        this.d = iArr;
        this.e = new Paint();
        this.f = new RectF();
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        canvas.drawRect(this.f, this.e);
    }

    @Override
    public int getOpacity() {
        return this.e.getAlpha();
    }

    @Override
    public void onBoundsChange(Rect rect) {
        y45.j(rect, "bounds");
        super.onBoundsChange(rect);
        this.e.setShader(g.d(this.a, this.b, this.c, this.d, rect.width(), rect.height()));
        this.f.set(rect);
    }

    @Override
    public void setAlpha(int i) {
        this.e.setAlpha(i);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
