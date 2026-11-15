package y0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import androidx.core.R$styleable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.web.api.WebConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

abstract class f {
    private static a a(a aVar, int i10, int i11, boolean z10, int i12) {
        if (aVar != null) {
            return aVar;
        }
        return z10 ? new a(i10, i12, i11) : new a(i10, i11);
    }

    static Shader b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.GradientColor);
        float f10 = k.f(typedArrayK, xmlPullParser, "startX", R$styleable.GradientColor_android_startX, 0.0f);
        float f11 = k.f(typedArrayK, xmlPullParser, "startY", R$styleable.GradientColor_android_startY, 0.0f);
        float f12 = k.f(typedArrayK, xmlPullParser, "endX", R$styleable.GradientColor_android_endX, 0.0f);
        float f13 = k.f(typedArrayK, xmlPullParser, "endY", R$styleable.GradientColor_android_endY, 0.0f);
        float f14 = k.f(typedArrayK, xmlPullParser, "centerX", R$styleable.GradientColor_android_centerX, 0.0f);
        float f15 = k.f(typedArrayK, xmlPullParser, "centerY", R$styleable.GradientColor_android_centerY, 0.0f);
        int iG = k.g(typedArrayK, xmlPullParser, NativeComponentConstants.KEY_COMPONENT_TYPE, R$styleable.GradientColor_android_type, 0);
        int iB = k.b(typedArrayK, xmlPullParser, "startColor", R$styleable.GradientColor_android_startColor, 0);
        boolean zJ = k.j(xmlPullParser, "centerColor");
        int iB2 = k.b(typedArrayK, xmlPullParser, "centerColor", R$styleable.GradientColor_android_centerColor, 0);
        int iB3 = k.b(typedArrayK, xmlPullParser, "endColor", R$styleable.GradientColor_android_endColor, 0);
        int iG2 = k.g(typedArrayK, xmlPullParser, "tileMode", R$styleable.GradientColor_android_tileMode, 0);
        float f16 = k.f(typedArrayK, xmlPullParser, "gradientRadius", R$styleable.GradientColor_android_gradientRadius, 0.0f);
        typedArrayK.recycle();
        a aVarA = a(c(resources, xmlPullParser, attributeSet, theme), iB, iB3, zJ, iB2);
        if (iG != 1) {
            return iG != 2 ? new LinearGradient(f10, f11, f12, f13, aVarA.f76053a, aVarA.f76054b, d(iG2)) : new SweepGradient(f14, f15, aVarA.f76053a, aVarA.f76054b);
        }
        if (f16 > 0.0f) {
            return new RadialGradient(f14, f15, f16, aVarA.f76053a, aVarA.f76054b, d(iG2));
        }
        throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }

    private static a c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals(WebConstants.FIELD_ITEM)) {
                TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.GradientColorItem);
                boolean zHasValue = typedArrayK.hasValue(R$styleable.GradientColorItem_android_color);
                boolean zHasValue2 = typedArrayK.hasValue(R$styleable.GradientColorItem_android_offset);
                if (!zHasValue || !zHasValue2) {
                    throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
                }
                int color = typedArrayK.getColor(R$styleable.GradientColorItem_android_color, 0);
                float f10 = typedArrayK.getFloat(R$styleable.GradientColorItem_android_offset, 0.0f);
                typedArrayK.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f10));
            }
        }
        if (arrayList2.size() > 0) {
            return new a(arrayList2, arrayList);
        }
        return null;
    }

    private static Shader.TileMode d(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR;
        }
        return Shader.TileMode.REPEAT;
    }

    static final class a {

        final int[] f76053a;

        final float[] f76054b;

        a(List list, List list2) {
            int size = list.size();
            this.f76053a = new int[size];
            this.f76054b = new float[size];
            for (int i10 = 0; i10 < size; i10++) {
                this.f76053a[i10] = ((Integer) list.get(i10)).intValue();
                this.f76054b[i10] = ((Float) list2.get(i10)).floatValue();
            }
        }

        a(int i10, int i11) {
            this.f76053a = new int[]{i10, i11};
            this.f76054b = new float[]{0.0f, 1.0f};
        }

        a(int i10, int i11, int i12) {
            this.f76053a = new int[]{i10, i11, i12};
            this.f76054b = new float[]{0.0f, 0.5f, 1.0f};
        }
    }
}
