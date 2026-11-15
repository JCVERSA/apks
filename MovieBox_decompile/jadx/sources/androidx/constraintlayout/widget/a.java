package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class a {

    private final ConstraintLayout f7427a;

    androidx.constraintlayout.widget.b f7428b;

    int f7429c = -1;

    int f7430d = -1;

    private SparseArray f7431e = new SparseArray();

    private SparseArray f7432f = new SparseArray();

    private c f7433g = null;

    static class C0054a {

        int f7434a;

        ArrayList f7435b = new ArrayList();

        int f7436c;

        androidx.constraintlayout.widget.b f7437d;

        public C0054a(Context context, XmlPullParser xmlPullParser) {
            this.f7436c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.State_android_id) {
                    this.f7434a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7434a);
                } else if (index == R$styleable.State_constraints) {
                    this.f7436c = typedArrayObtainStyledAttributes.getResourceId(index, this.f7436c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7436c);
                    context.getResources().getResourceName(this.f7436c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        this.f7437d = bVar;
                        bVar.o(context, this.f7436c);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.f7435b.add(bVar);
        }

        public int b(float f10, float f11) {
            for (int i10 = 0; i10 < this.f7435b.size(); i10++) {
                if (((b) this.f7435b.get(i10)).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    static class b {

        float f7438a;

        float f7439b;

        float f7440c;

        float f7441d;

        int f7442e;

        androidx.constraintlayout.widget.b f7443f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f7438a = Float.NaN;
            this.f7439b = Float.NaN;
            this.f7440c = Float.NaN;
            this.f7441d = Float.NaN;
            this.f7442e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.Variant_constraints) {
                    this.f7442e = typedArrayObtainStyledAttributes.getResourceId(index, this.f7442e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7442e);
                    context.getResources().getResourceName(this.f7442e);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        this.f7443f = bVar;
                        bVar.o(context, this.f7442e);
                    }
                } else if (index == R$styleable.Variant_region_heightLessThan) {
                    this.f7441d = typedArrayObtainStyledAttributes.getDimension(index, this.f7441d);
                } else if (index == R$styleable.Variant_region_heightMoreThan) {
                    this.f7439b = typedArrayObtainStyledAttributes.getDimension(index, this.f7439b);
                } else if (index == R$styleable.Variant_region_widthLessThan) {
                    this.f7440c = typedArrayObtainStyledAttributes.getDimension(index, this.f7440c);
                } else if (index == R$styleable.Variant_region_widthMoreThan) {
                    this.f7438a = typedArrayObtainStyledAttributes.getDimension(index, this.f7438a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f7438a) && f10 < this.f7438a) {
                return false;
            }
            if (!Float.isNaN(this.f7439b) && f11 < this.f7439b) {
                return false;
            }
            if (Float.isNaN(this.f7440c) || f10 <= this.f7440c) {
                return Float.isNaN(this.f7441d) || f11 <= this.f7441d;
            }
            return false;
        }
    }

    a(Context context, ConstraintLayout constraintLayout, int i10) {
        this.f7427a = constraintLayout;
        a(context, i10);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            int eventType = xml.getEventType();
            C0054a c0054a = null;
            while (true) {
                byte b10 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (!name.equals("ConstraintSet")) {
                                b10 = -1;
                            } else {
                                b10 = 4;
                            }
                            break;
                        case 80204913:
                            if (!name.equals("State")) {
                                b10 = -1;
                            } else {
                                b10 = 2;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b10 = -1;
                            }
                            break;
                        case 1657696882:
                            if (!name.equals("layoutDescription")) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 1901439077:
                            if (!name.equals("Variant")) {
                                b10 = -1;
                            } else {
                                b10 = 3;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 == 2) {
                        c0054a = new C0054a(context, xml);
                        this.f7431e.put(c0054a.f7434a, c0054a);
                    } else if (b10 == 3) {
                        b bVar = new b(context, xml);
                        if (c0054a != null) {
                            c0054a.a(bVar);
                        }
                    } else if (b10 == 4) {
                        b(context, xml);
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    private void b(Context context, XmlPullParser xmlPullParser) {
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (attributeName != null && attributeValue != null && "id".equals(attributeName)) {
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1) {
                    if (attributeValue.length() > 1) {
                        identifier = Integer.parseInt(attributeValue.substring(1));
                    } else {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                    }
                }
                bVar.F(context, xmlPullParser);
                this.f7432f.put(identifier, bVar);
                return;
            }
        }
    }

    public void c(c cVar) {
        this.f7433g = cVar;
    }

    public void d(int i10, float f10, float f11) {
        int iB;
        int i11 = this.f7429c;
        if (i11 == i10) {
            C0054a c0054a = i10 == -1 ? (C0054a) this.f7431e.valueAt(0) : (C0054a) this.f7431e.get(i11);
            int i12 = this.f7430d;
            if ((i12 == -1 || !((b) c0054a.f7435b.get(i12)).a(f10, f11)) && this.f7430d != (iB = c0054a.b(f10, f11))) {
                androidx.constraintlayout.widget.b bVar = iB == -1 ? this.f7428b : ((b) c0054a.f7435b.get(iB)).f7443f;
                int i13 = iB == -1 ? c0054a.f7436c : ((b) c0054a.f7435b.get(iB)).f7442e;
                if (bVar == null) {
                    return;
                }
                this.f7430d = iB;
                c cVar = this.f7433g;
                if (cVar != null) {
                    cVar.b(-1, i13);
                }
                bVar.i(this.f7427a);
                c cVar2 = this.f7433g;
                if (cVar2 != null) {
                    cVar2.a(-1, i13);
                    return;
                }
                return;
            }
            return;
        }
        this.f7429c = i10;
        C0054a c0054a2 = (C0054a) this.f7431e.get(i10);
        int iB2 = c0054a2.b(f10, f11);
        androidx.constraintlayout.widget.b bVar2 = iB2 == -1 ? c0054a2.f7437d : ((b) c0054a2.f7435b.get(iB2)).f7443f;
        int i14 = iB2 == -1 ? c0054a2.f7436c : ((b) c0054a2.f7435b.get(iB2)).f7442e;
        if (bVar2 == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i10 + ", dim =" + f10 + ", " + f11);
            return;
        }
        this.f7430d = iB2;
        c cVar3 = this.f7433g;
        if (cVar3 != null) {
            cVar3.b(i10, i14);
        }
        bVar2.i(this.f7427a);
        c cVar4 = this.f7433g;
        if (cVar4 != null) {
            cVar4.a(i10, i14);
        }
    }
}
