package z0;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Xml;
import org.xmlpull.v1.XmlPullParserException;
import ru.zdevs.zarchiver.ZApp;

public final class c {
    public static int a(int i2) {
        try {
            return Math.round(i2 * ZApp.e().getResources().getDisplayMetrics().density);
        } catch (Exception unused) {
            return i2 * 2;
        }
    }

    public static boolean b(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
            boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
            return z2;
        } catch (Exception unused) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return false;
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static int c(Context context, int i2) {
        TypedArray typedArrayObtainStyledAttributes = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
            int color = typedArrayObtainStyledAttributes.getColor(0, 0);
            typedArrayObtainStyledAttributes.recycle();
            return color;
        } catch (Exception unused) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            return 0;
        } catch (Throwable th) {
            if (typedArrayObtainStyledAttributes != null) {
                typedArrayObtainStyledAttributes.recycle();
            }
            throw th;
        }
    }

    public static int d(Context context) {
        int iC = Build.VERSION.SDK_INT < 21 ? c(context, R.attr.colorFocusedHighlight) : c(context, R.attr.colorControlActivated);
        return iC == 0 ? c(context, ru.zdevs.zarchiver.R.attr.colorPrimary) : iC;
    }

    public static int e(int i2) {
        int i3 = i2 & 255;
        int i4 = (i2 >> 8) & 255;
        int i5 = (i2 >> 16) & 255;
        return (((i3 + i4) + i5) - Math.min(i3, Math.min(i4, i5))) / 2 > 193 ? -16777216 : -1;
    }

    public static Drawable f(Context context, int i2) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        TypedArray typedArray = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(new int[]{i2});
            try {
                Drawable drawableI = i(context.getResources(), context.getTheme(), typedArrayObtainStyledAttributes.getResourceId(0, 0));
                typedArrayObtainStyledAttributes.recycle();
                return drawableI;
            } catch (Exception unused) {
                if (typedArrayObtainStyledAttributes != null) {
                    typedArrayObtainStyledAttributes.recycle();
                }
                return null;
            } catch (Throwable th) {
                th = th;
                typedArray = typedArrayObtainStyledAttributes;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        } catch (Exception unused2) {
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Drawable g(Context context, int i2) {
        try {
            return Build.VERSION.SDK_INT < 21 ? context.getResources().getDrawable(i2) : context.getDrawable(i2);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Drawable h(Context context, int i2) {
        return i(context.getResources(), context.getTheme(), i2);
    }

    public static Drawable i(Resources resources, Resources.Theme theme, int i2) {
        e.f fVarA;
        int next;
        try {
            if (Build.VERSION.SDK_INT >= 21) {
                return resources.getDrawable(i2, theme);
            }
            int i3 = e.f.f589f;
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                fVarA = e.f.a(new e.b(resources, theme), xml, attributeSetAsAttributeSet);
                return fVarA == null ? resources.getDrawable(i2) : fVarA;
            } catch (Resources.NotFoundException unused) {
                fVarA = null;
            } catch (Exception e2) {
                e2.printStackTrace();
                fVarA = null;
            }
        } catch (Exception unused2) {
            return null;
        }
    }
}
