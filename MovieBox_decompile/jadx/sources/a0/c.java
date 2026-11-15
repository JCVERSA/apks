package a0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.k1;
import androidx.compose.ui.graphics.q4;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.vector.g;
import androidx.compose.ui.graphics.vector.k;
import androidx.compose.ui.graphics.w1;
import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import o0.i;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import y0.d;

public abstract class c {

    private static final int f83a = 0;

    public static final androidx.compose.ui.graphics.vector.c.a a(a aVar, Resources resources, Resources.Theme theme, AttributeSet attributeSet) throws XmlPullParserException {
        long jE;
        int iZ;
        ColorStateList colorStateListE;
        b bVar = b.f57a;
        TypedArray typedArrayK = aVar.k(resources, theme, attributeSet, bVar.F());
        boolean zD = aVar.d(typedArrayK, "autoMirrored", bVar.a(), false);
        float fG = aVar.g(typedArrayK, "viewportWidth", bVar.H(), 0.0f);
        float fG2 = aVar.g(typedArrayK, "viewportHeight", bVar.G(), 0.0f);
        if (fG <= 0.0f) {
            throw new XmlPullParserException(typedArrayK.getPositionDescription() + "<VectorGraphic> tag requires viewportWidth > 0");
        }
        if (fG2 <= 0.0f) {
            throw new XmlPullParserException(typedArrayK.getPositionDescription() + "<VectorGraphic> tag requires viewportHeight > 0");
        }
        float fA = aVar.a(typedArrayK, bVar.I(), 0.0f);
        float fA2 = aVar.a(typedArrayK, bVar.n(), 0.0f);
        if (typedArrayK.hasValue(bVar.D())) {
            TypedValue typedValue = new TypedValue();
            typedArrayK.getValue(bVar.D(), typedValue);
            jE = (typedValue.type == 2 || (colorStateListE = aVar.e(typedArrayK, theme, "tint", bVar.D())) == null) ? u1.f4349b.e() : w1.b(colorStateListE.getDefaultColor());
        } else {
            jE = u1.f4349b.e();
        }
        long j10 = jE;
        int iC = aVar.c(typedArrayK, bVar.E(), -1);
        if (iC == -1) {
            iZ = c1.f3983a.z();
        } else if (iC == 3) {
            iZ = c1.f3983a.B();
        } else if (iC == 5) {
            iZ = c1.f3983a.z();
        } else if (iC != 9) {
            switch (iC) {
                case 14:
                    iZ = c1.f3983a.q();
                    break;
                case 15:
                    iZ = c1.f3983a.v();
                    break;
                case 16:
                    iZ = c1.f3983a.t();
                    break;
                default:
                    iZ = c1.f3983a.z();
                    break;
            }
        } else {
            iZ = c1.f3983a.y();
        }
        int i10 = iZ;
        float fG3 = i.g(fA / resources.getDisplayMetrics().density);
        float fG4 = i.g(fA2 / resources.getDisplayMetrics().density);
        typedArrayK.recycle();
        return new androidx.compose.ui.graphics.vector.c.a(null, fG3, fG4, fG, fG2, j10, i10, zD, 1, null);
    }

    private static final int b(int i10, int i11) {
        if (i10 == 0) {
            return c5.f4009a.a();
        }
        if (i10 != 1) {
            return i10 != 2 ? i11 : c5.f4009a.c();
        }
        return c5.f4009a.b();
    }

    private static final int c(int i10, int i11) {
        if (i10 == 0) {
            return d5.f4121a.b();
        }
        if (i10 != 1) {
            return i10 != 2 ? i11 : d5.f4121a.a();
        }
        return d5.f4121a.c();
    }

    public static final boolean d(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() != 1) {
            return xmlPullParser.getDepth() < 1 && xmlPullParser.getEventType() == 3;
        }
        return true;
    }

    private static final j1 e(d dVar) {
        if (!dVar.l()) {
            return null;
        }
        Shader shaderF = dVar.f();
        return shaderF != null ? k1.a(shaderF) : new b5(w1.b(dVar.e()), null);
    }

    public static final void f(a aVar, Resources resources, Resources.Theme theme, AttributeSet attributeSet, androidx.compose.ui.graphics.vector.c.a aVar2) {
        b bVar = b.f57a;
        TypedArray typedArrayK = aVar.k(resources, theme, attributeSet, bVar.b());
        String strI = aVar.i(typedArrayK, bVar.c());
        if (strI == null) {
            strI = "";
        }
        String str = strI;
        String strI2 = aVar.i(typedArrayK, bVar.d());
        List listD = strI2 == null ? k.d() : g.b(aVar.f56c, strI2, null, 2, null);
        typedArrayK.recycle();
        aVar2.a((254 & 1) != 0 ? "" : str, (254 & 2) != 0 ? 0.0f : 0.0f, (254 & 4) != 0 ? 0.0f : 0.0f, (254 & 8) != 0 ? 0.0f : 0.0f, (254 & 16) != 0 ? 1.0f : 0.0f, (254 & 32) == 0 ? 0.0f : 1.0f, (254 & 64) != 0 ? 0.0f : 0.0f, (254 & 128) == 0 ? 0.0f : 0.0f, (254 & 256) != 0 ? k.d() : listD);
    }

    public static final int g(a aVar, Resources resources, AttributeSet attributeSet, Resources.Theme theme, androidx.compose.ui.graphics.vector.c.a aVar2, int i10) throws XmlPullParserException {
        int eventType = aVar.j().getEventType();
        if (eventType != 2) {
            if (eventType != 3 || !Intrinsics.c("group", aVar.j().getName())) {
                return i10;
            }
            int i11 = i10 + 1;
            for (int i12 = 0; i12 < i11; i12++) {
                aVar2.f();
            }
            return 0;
        }
        String name = aVar.j().getName();
        if (name == null) {
            return i10;
        }
        int iHashCode = name.hashCode();
        if (iHashCode == -1649314686) {
            if (!name.equals("clip-path")) {
                return i10;
            }
            f(aVar, resources, theme, attributeSet, aVar2);
            return i10 + 1;
        }
        if (iHashCode == 3433509) {
            if (!name.equals("path")) {
                return i10;
            }
            i(aVar, resources, theme, attributeSet, aVar2);
            return i10;
        }
        if (iHashCode != 98629247 || !name.equals("group")) {
            return i10;
        }
        h(aVar, resources, theme, attributeSet, aVar2);
        return i10;
    }

    public static final void h(a aVar, Resources resources, Resources.Theme theme, AttributeSet attributeSet, androidx.compose.ui.graphics.vector.c.a aVar2) {
        b bVar = b.f57a;
        TypedArray typedArrayK = aVar.k(resources, theme, attributeSet, bVar.e());
        float fG = aVar.g(typedArrayK, "rotation", bVar.i(), 0.0f);
        float fB = aVar.b(typedArrayK, bVar.g(), 0.0f);
        float fB2 = aVar.b(typedArrayK, bVar.h(), 0.0f);
        float fG2 = aVar.g(typedArrayK, "scaleX", bVar.j(), 1.0f);
        float fG3 = aVar.g(typedArrayK, "scaleY", bVar.k(), 1.0f);
        float fG4 = aVar.g(typedArrayK, "translateX", bVar.l(), 0.0f);
        float fG5 = aVar.g(typedArrayK, "translateY", bVar.m(), 0.0f);
        String strI = aVar.i(typedArrayK, bVar.f());
        if (strI == null) {
            strI = "";
        }
        typedArrayK.recycle();
        aVar2.a(strI, fG, fB, fB2, fG2, fG3, fG4, fG5, k.d());
    }

    public static final void i(a aVar, Resources resources, Resources.Theme theme, AttributeSet attributeSet, androidx.compose.ui.graphics.vector.c.a aVar2) {
        b bVar = b.f57a;
        TypedArray typedArrayK = aVar.k(resources, theme, attributeSet, bVar.o());
        if (!y0.k.j(aVar.j(), "pathData")) {
            throw new IllegalArgumentException("No path data available");
        }
        String strI = aVar.i(typedArrayK, bVar.r());
        if (strI == null) {
            strI = "";
        }
        String str = strI;
        String strI2 = aVar.i(typedArrayK, bVar.s());
        List listD = strI2 == null ? k.d() : g.b(aVar.f56c, strI2, null, 2, null);
        d dVarF = aVar.f(typedArrayK, theme, "fillColor", bVar.q(), 0);
        float fG = aVar.g(typedArrayK, "fillAlpha", bVar.p(), 1.0f);
        int iB = b(aVar.h(typedArrayK, "strokeLineCap", bVar.v(), -1), c5.f4009a.a());
        int iC = c(aVar.h(typedArrayK, "strokeLineJoin", bVar.w(), -1), d5.f4121a.a());
        float fG2 = aVar.g(typedArrayK, "strokeMiterLimit", bVar.x(), 1.0f);
        d dVarF2 = aVar.f(typedArrayK, theme, "strokeColor", bVar.u(), 0);
        float fG3 = aVar.g(typedArrayK, "strokeAlpha", bVar.t(), 1.0f);
        float fG4 = aVar.g(typedArrayK, "strokeWidth", bVar.y(), 1.0f);
        float fG5 = aVar.g(typedArrayK, "trimPathEnd", bVar.z(), 1.0f);
        float fG6 = aVar.g(typedArrayK, "trimPathOffset", bVar.B(), 0.0f);
        float fG7 = aVar.g(typedArrayK, "trimPathStart", bVar.C(), 0.0f);
        int iH = aVar.h(typedArrayK, "fillType", bVar.A(), f83a);
        typedArrayK.recycle();
        j1 j1VarE = e(dVarF);
        j1 j1VarE2 = e(dVarF2);
        q4.a aVar3 = q4.f4319a;
        aVar2.c(listD, iH == 0 ? aVar3.b() : aVar3.a(), str, j1VarE, fG, j1VarE2, fG3, fG4, iB, iC, fG2, fG7, fG5, fG6);
    }

    public static final XmlPullParser j(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int next = xmlPullParser.next();
        while (next != 2 && next != 1) {
            next = xmlPullParser.next();
        }
        if (next == 2) {
            return xmlPullParser;
        }
        throw new XmlPullParserException("No start tag found");
    }
}
