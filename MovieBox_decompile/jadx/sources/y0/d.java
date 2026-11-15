package y0;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

public final class d {

    private final Shader f76038a;

    private final ColorStateList f76039b;

    private int f76040c;

    private d(Shader shader, ColorStateList colorStateList, int i10) {
        this.f76038a = shader;
        this.f76039b = colorStateList;
        this.f76040c = i10;
    }

    private static d a(Resources resources, int i10, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        XmlResourceParser xml = resources.getXml(i10);
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
        String name = xml.getName();
        name.hashCode();
        if (name.equals("gradient")) {
            return d(f.b(resources, xml, attributeSetAsAttributeSet, theme));
        }
        if (name.equals("selector")) {
            return c(c.b(resources, xml, attributeSetAsAttributeSet, theme));
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
    }

    static d b(int i10) {
        return new d(null, null, i10);
    }

    static d c(ColorStateList colorStateList) {
        return new d(null, colorStateList, colorStateList.getDefaultColor());
    }

    static d d(Shader shader) {
        return new d(shader, null, 0);
    }

    public static d g(Resources resources, int i10, Resources.Theme theme) {
        try {
            return a(resources, i10, theme);
        } catch (Exception e10) {
            Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e10);
            return null;
        }
    }

    public int e() {
        return this.f76040c;
    }

    public Shader f() {
        return this.f76038a;
    }

    public boolean h() {
        return this.f76038a != null;
    }

    public boolean i() {
        ColorStateList colorStateList;
        return this.f76038a == null && (colorStateList = this.f76039b) != null && colorStateList.isStateful();
    }

    public boolean j(int[] iArr) {
        if (i()) {
            ColorStateList colorStateList = this.f76039b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f76040c) {
                this.f76040c = colorForState;
                return true;
            }
        }
        return false;
    }

    public void k(int i10) {
        this.f76040c = i10;
    }

    public boolean l() {
        return h() || this.f76040c != 0;
    }
}
