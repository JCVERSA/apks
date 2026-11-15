package v0;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class a {

    static class C0905a {

        static final int[] f73415a;

        static {
            int[] iArr = new int[ConstraintAttribute.AttributeType.values().length];
            f73415a = iArr;
            try {
                iArr[ConstraintAttribute.AttributeType.INT_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73415a[ConstraintAttribute.AttributeType.FLOAT_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73415a[ConstraintAttribute.AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f73415a[ConstraintAttribute.AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f73415a[ConstraintAttribute.AttributeType.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f73415a[ConstraintAttribute.AttributeType.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f73415a[ConstraintAttribute.AttributeType.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static int a(int i10) {
        int i11 = (i10 & (~(i10 >> 31))) - 255;
        return (i11 & (i11 >> 31)) + 255;
    }

    public static void b(ConstraintAttribute constraintAttribute, View view, float[] fArr) {
        Class<?> cls = view.getClass();
        String str = "set" + constraintAttribute.c();
        try {
            try {
                try {
                    switch (C0905a.f73415a[constraintAttribute.d().ordinal()]) {
                        case 1:
                            cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf((int) fArr[0]));
                            return;
                        case 2:
                            cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                            return;
                        case 3:
                            Method method = cls.getMethod(str, Drawable.class);
                            int iA = (a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
                            ColorDrawable colorDrawable = new ColorDrawable();
                            colorDrawable.setColor(iA);
                            method.invoke(view, colorDrawable);
                            return;
                        case 4:
                            try {
                                cls.getMethod(str, Integer.TYPE).invoke(view, Integer.valueOf(a((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)) | (a((int) (fArr[3] * 255.0f)) << 24) | (a((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (a((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8)));
                                return;
                            } catch (IllegalAccessException e10) {
                                e = e10;
                                Log.e("CustomSupport", "cannot access method " + str + " on View \"" + androidx.constraintlayout.motion.widget.a.d(view) + "\"");
                                e.printStackTrace();
                                return;
                            } catch (NoSuchMethodException e11) {
                                e = e11;
                                Log.e("CustomSupport", "no method " + str + " on View \"" + androidx.constraintlayout.motion.widget.a.d(view) + "\"");
                                e.printStackTrace();
                                return;
                            }
                        case 5:
                            throw new RuntimeException("unable to interpolate strings " + constraintAttribute.c());
                        case 6:
                            cls.getMethod(str, Boolean.TYPE).invoke(view, Boolean.valueOf(fArr[0] > 0.5f));
                            return;
                        case 7:
                            cls.getMethod(str, Float.TYPE).invoke(view, Float.valueOf(fArr[0]));
                            return;
                        default:
                            return;
                    }
                } catch (IllegalAccessException e12) {
                    e = e12;
                } catch (NoSuchMethodException e13) {
                    e = e13;
                }
            } catch (InvocationTargetException e14) {
                e14.printStackTrace();
            }
        } catch (IllegalAccessException e15) {
            e = e15;
        } catch (NoSuchMethodException e16) {
            e = e16;
        }
    }
}
