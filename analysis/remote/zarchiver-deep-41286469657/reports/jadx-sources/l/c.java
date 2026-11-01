package l;

import android.content.res.Resources;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.TypedValue;
import e.e;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import q.f;
import q.g;
import q.j;
import q.l;

public final class c implements e.d {

    public final g f1173a;

    public static class a extends p.b {
        public a(int i2) {
            super(i2);
        }

        @Override
        public final float a() {
            return 0.0f;
        }

        @Override
        public final int b() {
            TypedValue typedValue = new TypedValue();
            Resources system = Resources.getSystem();
            int i2 = this.f1313a;
            system.getValue(i2, typedValue, true);
            int i3 = typedValue.type;
            return (i3 < 16 || i3 > 31) ? Resources.getSystem().getColor(i2) : typedValue.data;
        }

        @Override
        public final String c(g gVar, Locale locale) {
            return "";
        }
    }

    public static class b extends p.b {

        public static final String[] f1174c = {"dip", "px", "dp", "mm", "sp", "pt", "in"};

        public static final int[] f1175d = {1, 0, 1, 5, 2, 3, 4};

        public final String f1176b;

        public b(String str) {
            super(0);
            this.f1176b = str;
        }

        @Override
        public final float a() {
            int i2 = 0;
            while (true) {
                String str = this.f1176b;
                if (i2 >= 7) {
                    return Float.parseFloat(str);
                }
                String[] strArr = f1174c;
                if (str.endsWith(strArr[i2])) {
                    return TypedValue.applyDimension(f1175d[i2], Float.parseFloat(str.replace(strArr[i2], "")), Resources.getSystem().getDisplayMetrics());
                }
                i2++;
            }
        }

        @Override
        public final int b() {
            String str = this.f1176b;
            return str.startsWith("#") ? Color.parseColor(str) : Integer.parseInt(str);
        }

        @Override
        public final String c(g gVar, Locale locale) {
            return this.f1176b;
        }
    }

    public c(g gVar) {
        this.f1173a = gVar;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00f7  */
    @Override
    public final e a(AttributeSet attributeSet, int[] iArr, String[] strArr) {
        HashMap map;
        String str;
        p.b bVar;
        p.b[] bVarArr = new p.b[iArr.length];
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        int attributeCount = xmlPullParser.getAttributeCount();
        if (attributeCount != -1) {
            map = new HashMap(attributeCount);
            for (int i2 = 0; i2 < attributeCount; i2++) {
                map.put(xmlPullParser.getAttributeName(i2), xmlPullParser.getAttributeValue(i2));
            }
        } else {
            map = null;
        }
        Iterator it = map.keySet().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            g gVar = this.f1173a;
            if (!zHasNext) {
                return new d(gVar, bVarArr);
            }
            String str2 = (String) it.next();
            int i3 = 0;
            while (true) {
                if (i3 >= strArr.length) {
                    i3 = -1;
                    break;
                }
                if (str2.equals(strArr[i3])) {
                    break;
                }
                i3++;
            }
            if (i3 >= 0 && (str = (String) map.get(str2)) != null) {
                if (str.startsWith("@")) {
                    long jI0 = a0.c.i0(-1, str.substring(1));
                    if (jI0 != -1) {
                        short s2 = (short) ((jI0 >> 16) & 255);
                        int i4 = (int) (jI0 & 65535);
                        f fVar = (f) gVar.f1352a.get(Short.valueOf((short) ((jI0 >> 24) & 255)));
                        if (fVar == null) {
                            bVar = null;
                            break;
                        }
                        l lVar = (l) fVar.f1350d.get(Short.valueOf(s2));
                        List list = (List) fVar.f1351e.get(Short.valueOf(s2));
                        if (lVar != null && list != null) {
                            if (!(i4 < lVar.f1368a.length)) {
                                bVar = null;
                                break;
                            }
                            Iterator it2 = list.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    bVar = null;
                                    break;
                                }
                                q.d dVarA = ((j) it2.next()).a(i4);
                                if (dVarA != null && (bVar = dVarA.f1343d) != null && (!(bVar instanceof p.b.i) || jI0 != (((long) ((p.b.i) bVar).f1313a) & 4294967295L))) {
                                    break;
                                }
                            }
                        } else {
                            bVar = null;
                            break;
                        }
                        bVarArr[i3] = bVar;
                        if (bVar == null) {
                            bVarArr[i3] = new a((int) jI0);
                        }
                    }
                } else {
                    bVarArr[i3] = new b(str);
                }
            }
        }
    }
}
