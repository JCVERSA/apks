package a0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.compose.ui.graphics.vector.g;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.xmlpull.v1.XmlPullParser;
import y0.d;
import y0.k;

public final class a {

    private final XmlPullParser f54a;

    private int f55b;

    public final g f56c;

    public a(XmlPullParser xmlPullParser, int i10) {
        this.f54a = xmlPullParser;
        this.f55b = i10;
        this.f56c = new g();
    }

    private final void l(int i10) {
        this.f55b = i10 | this.f55b;
    }

    public final float a(TypedArray typedArray, int i10, float f10) {
        float dimension = typedArray.getDimension(i10, f10);
        l(typedArray.getChangingConfigurations());
        return dimension;
    }

    public final float b(TypedArray typedArray, int i10, float f10) {
        float f11 = typedArray.getFloat(i10, f10);
        l(typedArray.getChangingConfigurations());
        return f11;
    }

    public final int c(TypedArray typedArray, int i10, int i11) {
        int i12 = typedArray.getInt(i10, i11);
        l(typedArray.getChangingConfigurations());
        return i12;
    }

    public final boolean d(TypedArray typedArray, String str, int i10, boolean z10) {
        boolean zA = k.a(typedArray, this.f54a, str, i10, z10);
        l(typedArray.getChangingConfigurations());
        return zA;
    }

    public final ColorStateList e(TypedArray typedArray, Resources.Theme theme, String str, int i10) {
        ColorStateList colorStateListC = k.c(typedArray, this.f54a, theme, str, i10);
        l(typedArray.getChangingConfigurations());
        return colorStateListC;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f54a, aVar.f54a) && this.f55b == aVar.f55b;
    }

    public final d f(TypedArray typedArray, Resources.Theme theme, String str, int i10, int i11) {
        d dVarE = k.e(typedArray, this.f54a, theme, str, i10, i11);
        l(typedArray.getChangingConfigurations());
        return dVarE;
    }

    public final float g(TypedArray typedArray, String str, int i10, float f10) {
        float f11 = k.f(typedArray, this.f54a, str, i10, f10);
        l(typedArray.getChangingConfigurations());
        return f11;
    }

    public final int h(TypedArray typedArray, String str, int i10, int i11) {
        int iG = k.g(typedArray, this.f54a, str, i10, i11);
        l(typedArray.getChangingConfigurations());
        return iG;
    }

    public int hashCode() {
        return (this.f54a.hashCode() * 31) + this.f55b;
    }

    public final String i(TypedArray typedArray, int i10) {
        String string = typedArray.getString(i10);
        l(typedArray.getChangingConfigurations());
        return string;
    }

    public final XmlPullParser j() {
        return this.f54a;
    }

    public final TypedArray k(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, iArr);
        l(typedArrayK.getChangingConfigurations());
        return typedArrayK;
    }

    public String toString() {
        return "AndroidVectorParser(xmlParser=" + this.f54a + ", config=" + this.f55b + ')';
    }

    public a(XmlPullParser xmlPullParser, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(xmlPullParser, (i11 & 2) != 0 ? 0 : i10);
    }
}
