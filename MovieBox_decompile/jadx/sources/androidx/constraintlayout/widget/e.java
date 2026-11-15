package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class e {

    int f7555a = -1;

    int f7556b = -1;

    int f7557c = -1;

    private SparseArray f7558d = new SparseArray();

    private SparseArray f7559e = new SparseArray();

    private c f7560f = null;

    static class a {

        int f7561a;

        ArrayList f7562b = new ArrayList();

        int f7563c;

        boolean f7564d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f7563c = -1;
            this.f7564d = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.State_android_id) {
                    this.f7561a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7561a);
                } else if (index == R$styleable.State_constraints) {
                    this.f7563c = typedArrayObtainStyledAttributes.getResourceId(index, this.f7563c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7563c);
                    context.getResources().getResourceName(this.f7563c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        this.f7564d = true;
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.f7562b.add(bVar);
        }

        public int b(float f10, float f11) {
            for (int i10 = 0; i10 < this.f7562b.size(); i10++) {
                if (((b) this.f7562b.get(i10)).a(f10, f11)) {
                    return i10;
                }
            }
            return -1;
        }
    }

    static class b {

        float f7565a;

        float f7566b;

        float f7567c;

        float f7568d;

        int f7569e;

        boolean f7570f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f7565a = Float.NaN;
            this.f7566b = Float.NaN;
            this.f7567c = Float.NaN;
            this.f7568d = Float.NaN;
            this.f7569e = -1;
            this.f7570f = false;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.Variant_constraints) {
                    this.f7569e = typedArrayObtainStyledAttributes.getResourceId(index, this.f7569e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7569e);
                    context.getResources().getResourceName(this.f7569e);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        this.f7570f = true;
                    }
                } else if (index == R$styleable.Variant_region_heightLessThan) {
                    this.f7568d = typedArrayObtainStyledAttributes.getDimension(index, this.f7568d);
                } else if (index == R$styleable.Variant_region_heightMoreThan) {
                    this.f7566b = typedArrayObtainStyledAttributes.getDimension(index, this.f7566b);
                } else if (index == R$styleable.Variant_region_widthLessThan) {
                    this.f7567c = typedArrayObtainStyledAttributes.getDimension(index, this.f7567c);
                } else if (index == R$styleable.Variant_region_widthMoreThan) {
                    this.f7565a = typedArrayObtainStyledAttributes.getDimension(index, this.f7565a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        boolean a(float f10, float f11) {
            if (!Float.isNaN(this.f7565a) && f10 < this.f7565a) {
                return false;
            }
            if (!Float.isNaN(this.f7566b) && f11 < this.f7566b) {
                return false;
            }
            if (Float.isNaN(this.f7567c) || f10 <= this.f7567c) {
                return Float.isNaN(this.f7568d) || f11 <= this.f7568d;
            }
            return false;
        }
    }

    public e(Context context, XmlPullParser xmlPullParser) {
        b(context, xmlPullParser);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x007c  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void b(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.StateSet);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.StateSet_defaultState) {
                this.f7555a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7555a);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        try {
            int eventType = xmlPullParser.getEventType();
            a aVar = null;
            while (true) {
                byte b10 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case 80204913:
                            if (name.equals("State")) {
                                b10 = 2;
                            } else {
                                b10 = -1;
                            }
                            break;
                        case 1301459538:
                            if (name.equals("LayoutDescription")) {
                                b10 = 0;
                            } else {
                                b10 = -1;
                            }
                            break;
                        case 1382829617:
                            if (!name.equals("StateSet")) {
                                b10 = -1;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                b10 = 3;
                            } else {
                                b10 = -1;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 == 2) {
                        aVar = new a(context, xmlPullParser);
                        this.f7558d.put(aVar.f7561a, aVar);
                    } else if (b10 == 3) {
                        b bVar = new b(context, xmlPullParser);
                        if (aVar != null) {
                            aVar.a(bVar);
                        }
                    }
                } else if (eventType == 3 && "StateSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
        }
    }

    public int a(int i10, int i11, float f10, float f11) {
        a aVar = (a) this.f7558d.get(i11);
        if (aVar == null) {
            return i11;
        }
        if (f10 == -1.0f || f11 == -1.0f) {
            if (aVar.f7563c == i10) {
                return i10;
            }
            Iterator it = aVar.f7562b.iterator();
            while (it.hasNext()) {
                if (i10 == ((b) it.next()).f7569e) {
                    return i10;
                }
            }
            return aVar.f7563c;
        }
        b bVar = null;
        for (b bVar2 : aVar.f7562b) {
            if (bVar2.a(f10, f11)) {
                if (i10 == bVar2.f7569e) {
                    return i10;
                }
                bVar = bVar2;
            }
        }
        return bVar != null ? bVar.f7569e : aVar.f7563c;
    }

    public int c(int i10, int i11, int i12) {
        return d(-1, i10, i11, i12);
    }

    public int d(int i10, int i11, float f10, float f11) {
        int iB;
        if (i10 != i11) {
            a aVar = (a) this.f7558d.get(i11);
            if (aVar == null) {
                return -1;
            }
            int iB2 = aVar.b(f10, f11);
            return iB2 == -1 ? aVar.f7563c : ((b) aVar.f7562b.get(iB2)).f7569e;
        }
        a aVar2 = i11 == -1 ? (a) this.f7558d.valueAt(0) : (a) this.f7558d.get(this.f7556b);
        if (aVar2 == null) {
            return -1;
        }
        if ((this.f7557c == -1 || !((b) aVar2.f7562b.get(i10)).a(f10, f11)) && i10 != (iB = aVar2.b(f10, f11))) {
            return iB == -1 ? aVar2.f7563c : ((b) aVar2.f7562b.get(iB)).f7569e;
        }
        return i10;
    }
}
