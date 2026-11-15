package y0;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import androidx.core.R$styleable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public abstract class e {

    static class a {
        static int a(TypedArray typedArray, int i10) {
            return typedArray.getType(i10);
        }
    }

    public interface b {
    }

    public static final class c implements b {

        private final d[] f76041a;

        public c(d[] dVarArr) {
            this.f76041a = dVarArr;
        }

        public d[] a() {
            return this.f76041a;
        }
    }

    public static final class d {

        private final String f76042a;

        private final int f76043b;

        private final boolean f76044c;

        private final String f76045d;

        private final int f76046e;

        private final int f76047f;

        public d(String str, int i10, boolean z10, String str2, int i11, int i12) {
            this.f76042a = str;
            this.f76043b = i10;
            this.f76044c = z10;
            this.f76045d = str2;
            this.f76046e = i11;
            this.f76047f = i12;
        }

        public String a() {
            return this.f76042a;
        }

        public int b() {
            return this.f76047f;
        }

        public int c() {
            return this.f76046e;
        }

        public String d() {
            return this.f76045d;
        }

        public int e() {
            return this.f76043b;
        }

        public boolean f() {
            return this.f76044c;
        }
    }

    public static final class C0945e implements b {

        private final androidx.core.provider.e f76048a;

        private final androidx.core.provider.e f76049b;

        private final int f76050c;

        private final int f76051d;

        private final String f76052e;

        public C0945e(androidx.core.provider.e eVar, androidx.core.provider.e eVar2, int i10, int i11, String str) {
            this.f76048a = eVar;
            this.f76049b = eVar2;
            this.f76051d = i10;
            this.f76050c = i11;
            this.f76052e = str;
        }

        public androidx.core.provider.e a() {
            return this.f76049b;
        }

        public int b() {
            return this.f76051d;
        }

        public androidx.core.provider.e c() {
            return this.f76048a;
        }

        public String d() {
            return this.f76052e;
        }

        public int e() {
            return this.f76050c;
        }
    }

    private static int a(TypedArray typedArray, int i10) {
        return a.a(typedArray, i10);
    }

    public static b b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List c(Resources resources, int i10) {
        if (i10 == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i10);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i11 = 0; i11 < typedArrayObtainTypedArray.length(); i11++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i11, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i10)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static b d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    private static b e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamily);
        String string = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderQuery);
        String string4 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderFallbackQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(R$styleable.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(R$styleable.FontFamily_fontProviderFetchTimeout, 500);
        String string5 = typedArrayObtainAttributes.getString(R$styleable.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            List listC = c(resources, resourceId);
            return new C0945e(new androidx.core.provider.e(string, string2, string3, listC), string4 != null ? new androidx.core.provider.e(string, string2, string4, listC) : null, integer, integer2, string5);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new c((d[]) arrayList.toArray(new d[0]));
    }

    private static d f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.FontFamilyFont);
        int i10 = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontWeight) ? R$styleable.FontFamilyFont_fontWeight : R$styleable.FontFamilyFont_android_fontWeight, 400);
        boolean z10 = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontStyle) ? R$styleable.FontFamilyFont_fontStyle : R$styleable.FontFamilyFont_android_fontStyle, 0);
        int i11 = typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_ttcIndex) ? R$styleable.FontFamilyFont_ttcIndex : R$styleable.FontFamilyFont_android_ttcIndex;
        String string = typedArrayObtainAttributes.getString(typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_fontVariationSettings) ? R$styleable.FontFamilyFont_fontVariationSettings : R$styleable.FontFamilyFont_android_fontVariationSettings);
        int i12 = typedArrayObtainAttributes.getInt(i11, 0);
        int i13 = typedArrayObtainAttributes.hasValue(R$styleable.FontFamilyFont_font) ? R$styleable.FontFamilyFont_font : R$styleable.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i13, 0);
        String string2 = typedArrayObtainAttributes.getString(i13);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new d(string2, i10, z10, string, i12, resourceId);
    }

    private static void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i10 = 1;
        while (i10 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i10++;
            } else if (next == 3) {
                i10--;
            }
        }
    }

    private static List h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
