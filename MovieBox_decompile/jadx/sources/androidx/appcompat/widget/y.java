package androidx.appcompat.widget;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class y {

    private static final int[] f1815a = {R.attr.state_checked};

    private static final int[] f1816b = new int[0];

    public static final Rect f1817c = new Rect();

    static class a {

        private static final boolean f1818a;

        private static final Method f1819b;

        private static final Field f1820c;

        private static final Field f1821d;

        private static final Field f1822e;

        private static final Field f1823f;

        /* JADX WARN: Code duplicated, block: B:25:0x004a  */
        /* JADX WARN: Code duplicated, block: B:26:0x0057  */
        static {
            Method method;
            Field field;
            Field field2;
            Field field3;
            Field field4;
            boolean z10;
            try {
                Class<?> cls = Class.forName("android.graphics.Insets");
                method = Drawable.class.getMethod("getOpticalInsets", null);
                try {
                    field = cls.getField(TtmlNode.LEFT);
                    try {
                        field2 = cls.getField(IntegrationConstants.TAB_BAR_POSITION_TOP);
                        try {
                            field3 = cls.getField(TtmlNode.RIGHT);
                            try {
                                field4 = cls.getField(IntegrationConstants.TAB_BAR_POSITION_DEFAULT);
                                z10 = true;
                            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused) {
                                field4 = null;
                                z10 = false;
                            }
                        } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                            field3 = null;
                        }
                    } catch (ClassNotFoundException unused3) {
                        field2 = null;
                        field3 = field2;
                        field4 = null;
                        z10 = false;
                        if (z10) {
                            f1819b = method;
                            f1820c = field;
                            f1821d = field2;
                            f1822e = field3;
                            f1823f = field4;
                            f1818a = true;
                            return;
                        }
                        f1819b = null;
                        f1820c = null;
                        f1821d = null;
                        f1822e = null;
                        f1823f = null;
                        f1818a = false;
                    } catch (NoSuchFieldException unused4) {
                        field2 = null;
                        field3 = field2;
                        field4 = null;
                        z10 = false;
                        if (z10) {
                            f1819b = method;
                            f1820c = field;
                            f1821d = field2;
                            f1822e = field3;
                            f1823f = field4;
                            f1818a = true;
                            return;
                        }
                        f1819b = null;
                        f1820c = null;
                        f1821d = null;
                        f1822e = null;
                        f1823f = null;
                        f1818a = false;
                    } catch (NoSuchMethodException unused5) {
                        field2 = null;
                        field3 = field2;
                        field4 = null;
                        z10 = false;
                        if (z10) {
                            f1819b = method;
                            f1820c = field;
                            f1821d = field2;
                            f1822e = field3;
                            f1823f = field4;
                            f1818a = true;
                            return;
                        }
                        f1819b = null;
                        f1820c = null;
                        f1821d = null;
                        f1822e = null;
                        f1823f = null;
                        f1818a = false;
                    }
                } catch (ClassNotFoundException unused6) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    field4 = null;
                    z10 = false;
                    if (z10) {
                        f1819b = method;
                        f1820c = field;
                        f1821d = field2;
                        f1822e = field3;
                        f1823f = field4;
                        f1818a = true;
                        return;
                    }
                    f1819b = null;
                    f1820c = null;
                    f1821d = null;
                    f1822e = null;
                    f1823f = null;
                    f1818a = false;
                } catch (NoSuchFieldException unused7) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    field4 = null;
                    z10 = false;
                    if (z10) {
                        f1819b = method;
                        f1820c = field;
                        f1821d = field2;
                        f1822e = field3;
                        f1823f = field4;
                        f1818a = true;
                        return;
                    }
                    f1819b = null;
                    f1820c = null;
                    f1821d = null;
                    f1822e = null;
                    f1823f = null;
                    f1818a = false;
                } catch (NoSuchMethodException unused8) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    field4 = null;
                    z10 = false;
                    if (z10) {
                        f1819b = method;
                        f1820c = field;
                        f1821d = field2;
                        f1822e = field3;
                        f1823f = field4;
                        f1818a = true;
                        return;
                    }
                    f1819b = null;
                    f1820c = null;
                    f1821d = null;
                    f1822e = null;
                    f1823f = null;
                    f1818a = false;
                }
            } catch (ClassNotFoundException unused9) {
                method = null;
                field = null;
            } catch (NoSuchFieldException unused10) {
                method = null;
                field = null;
            } catch (NoSuchMethodException unused11) {
                method = null;
                field = null;
            }
            if (z10) {
                f1819b = method;
                f1820c = field;
                f1821d = field2;
                f1822e = field3;
                f1823f = field4;
                f1818a = true;
                return;
            }
            f1819b = null;
            f1820c = null;
            f1821d = null;
            f1822e = null;
            f1823f = null;
            f1818a = false;
        }

        static Rect a(Drawable drawable) {
            if (Build.VERSION.SDK_INT < 29 && f1818a) {
                try {
                    Object objInvoke = f1819b.invoke(drawable, null);
                    if (objInvoke != null) {
                        return new Rect(f1820c.getInt(objInvoke), f1821d.getInt(objInvoke), f1822e.getInt(objInvoke), f1823f.getInt(objInvoke));
                    }
                } catch (IllegalAccessException | InvocationTargetException unused) {
                }
            }
            return y.f1817c;
        }
    }

    static class b {
        static Insets a(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }

    public static boolean a(Drawable drawable) {
        return true;
    }

    static void b(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 29 || i10 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        c(drawable);
    }

    private static void c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1815a);
        } else {
            drawable.setState(f1816b);
        }
        drawable.setState(state);
    }

    public static Rect d(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 29) {
            return a.a(a1.a.q(drawable));
        }
        Insets insetsA = b.a(drawable);
        return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
    }

    public static PorterDuff.Mode e(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
