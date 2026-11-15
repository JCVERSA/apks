package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class p {

    private final MotionLayout f7114a;

    private MotionEvent f7127n;

    private MotionLayout.e f7130q;

    private boolean f7131r;

    final t f7132s;

    float f7133t;

    float f7134u;

    androidx.constraintlayout.widget.e f7115b = null;

    b f7116c = null;

    private boolean f7117d = false;

    private ArrayList f7118e = new ArrayList();

    private b f7119f = null;

    private ArrayList f7120g = new ArrayList();

    private SparseArray f7121h = new SparseArray();

    private HashMap f7122i = new HashMap();

    private SparseIntArray f7123j = new SparseIntArray();

    private boolean f7124k = false;

    private int f7125l = 400;

    private int f7126m = 0;

    private boolean f7128o = false;

    private boolean f7129p = false;

    class a implements Interpolator {

        final androidx.constraintlayout.core.motion.utils.c f7135a;

        a(p pVar, androidx.constraintlayout.core.motion.utils.c cVar) {
            this.f7135a = cVar;
        }

        @Override
        public float getInterpolation(float f10) {
            return (float) this.f7135a.a(f10);
        }
    }

    p(Context context, MotionLayout motionLayout, int i10) {
        this.f7114a = motionLayout;
        this.f7132s = new t(motionLayout);
        M(context, i10);
        this.f7121h.put(R$id.motion_base, new androidx.constraintlayout.widget.b());
        this.f7122i.put("motion_base", Integer.valueOf(R$id.motion_base));
    }

    private boolean J(int i10) {
        int i11 = this.f7123j.get(i10);
        int size = this.f7123j.size();
        while (i11 > 0) {
            if (i11 == i10) {
                return true;
            }
            int i12 = size - 1;
            if (size < 0) {
                return true;
            }
            i11 = this.f7123j.get(i11);
            size = i12;
        }
        return false;
    }

    private boolean K() {
        return this.f7130q != null;
    }

    private void M(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            int eventType = xml.getEventType();
            b bVar = null;
            while (true) {
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    if (this.f7124k) {
                        System.out.println("parsing = " + name);
                    }
                    switch (name) {
                        case "MotionScene":
                            Q(context, xml);
                            break;
                        case "Transition":
                            ArrayList arrayList = this.f7118e;
                            bVar = new b(this, context, xml);
                            arrayList.add(bVar);
                            if (this.f7116c == null && !bVar.f7137b) {
                                this.f7116c = bVar;
                                if (bVar.f7147l != null) {
                                    this.f7116c.f7147l.x(this.f7131r);
                                }
                            }
                            if (!bVar.f7137b) {
                                break;
                            } else {
                                if (bVar.f7138c == -1) {
                                    this.f7119f = bVar;
                                } else {
                                    this.f7120g.add(bVar);
                                }
                                this.f7118e.remove(bVar);
                                break;
                            }
                            break;
                        case "OnSwipe":
                            if (bVar == null) {
                                Log.v("MotionScene", " OnSwipe (" + context.getResources().getResourceEntryName(i10) + ".xml:" + xml.getLineNumber() + ")");
                            }
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.f7147l = new q(context, this.f7114a, xml);
                                break;
                            }
                            break;
                        case "OnClick":
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.u(context, xml);
                                break;
                            }
                            break;
                        case "StateSet":
                            this.f7115b = new androidx.constraintlayout.widget.e(context, xml);
                            break;
                        case "ConstraintSet":
                            N(context, xml);
                            break;
                        case "include":
                        case "Include":
                            P(context, xml);
                            break;
                        case "KeyFrameSet":
                            g gVar = new g(context, xml);
                            if (bVar == null) {
                                break;
                            } else {
                                bVar.f7146k.add(gVar);
                                break;
                            }
                            break;
                        case "ViewTransition":
                            this.f7132s.a(new s(context, xml));
                            break;
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

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:31:0x0098  */
    /* JADX WARN: Code duplicated, block: B:9:0x0046  */
    private int N(Context context, XmlPullParser xmlPullParser) {
        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
        bVar.S(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int iS = -1;
        int iS2 = -1;
        for (int i10 = 0; i10 < attributeCount; i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (this.f7124k) {
                System.out.println("id string = " + attributeValue);
            }
            attributeName.hashCode();
            switch (attributeName) {
                case "deriveConstraintsFrom":
                    iS2 = s(context, attributeValue);
                    break;
                case "constraintRotate":
                    try {
                        bVar.f7450d = Integer.parseInt(attributeValue);
                        break;
                    } catch (NumberFormatException unused) {
                        attributeValue.hashCode();
                        switch (attributeValue) {
                            case "x_left":
                                bVar.f7450d = 4;
                                break;
                            case "left":
                                bVar.f7450d = 2;
                                break;
                            case "none":
                                bVar.f7450d = 0;
                                break;
                            case "right":
                                bVar.f7450d = 1;
                                break;
                            case "x_right":
                                bVar.f7450d = 3;
                                break;
                        }
                        break;
                    }
                    break;
                case "id":
                    iS = s(context, attributeValue);
                    this.f7122i.put(c0(attributeValue), Integer.valueOf(iS));
                    bVar.f7448b = androidx.constraintlayout.motion.widget.a.c(context, iS);
                    break;
                default:
                    break;
            }
        }
        if (iS != -1) {
            if (this.f7114a.f6883x != 0) {
                bVar.V(true);
            }
            bVar.F(context, xmlPullParser);
            if (iS2 != -1) {
                this.f7123j.put(iS, iS2);
            }
            this.f7121h.put(iS, bVar);
        }
        return iS;
    }

    public int O(Context context, int i10) {
        XmlResourceParser xml = context.getResources().getXml(i10);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                String name = xml.getName();
                if (2 == eventType && "ConstraintSet".equals(name)) {
                    return N(context, xml);
                }
            }
            return -1;
        } catch (IOException e10) {
            e10.printStackTrace();
            return -1;
        } catch (XmlPullParserException e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    private void P(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.include);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.include_constraintSet) {
                O(context, typedArrayObtainStyledAttributes.getResourceId(index, -1));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void Q(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.MotionScene);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.MotionScene_defaultDuration) {
                int i11 = typedArrayObtainStyledAttributes.getInt(index, this.f7125l);
                this.f7125l = i11;
                if (i11 < 8) {
                    this.f7125l = 8;
                }
            } else if (index == R$styleable.MotionScene_layoutDuringTransition) {
                this.f7126m = typedArrayObtainStyledAttributes.getInteger(index, 0);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void U(int i10, MotionLayout motionLayout) {
        androidx.constraintlayout.widget.b bVar = (androidx.constraintlayout.widget.b) this.f7121h.get(i10);
        bVar.f7449c = bVar.f7448b;
        int i11 = this.f7123j.get(i10);
        if (i11 > 0) {
            U(i11, motionLayout);
            androidx.constraintlayout.widget.b bVar2 = (androidx.constraintlayout.widget.b) this.f7121h.get(i11);
            if (bVar2 == null) {
                Log.e("MotionScene", "ERROR! invalid deriveConstraintsFrom: @id/" + androidx.constraintlayout.motion.widget.a.c(this.f7114a.getContext(), i11));
                return;
            }
            bVar.f7449c += "/" + bVar2.f7449c;
            bVar.N(bVar2);
        } else {
            bVar.f7449c += "  layout";
            bVar.M(motionLayout);
        }
        bVar.h(bVar);
    }

    public static String c0(String str) {
        if (str == null) {
            return "";
        }
        int iIndexOf = str.indexOf(47);
        return iIndexOf < 0 ? str : str.substring(iIndexOf + 1);
    }

    private int s(Context context, String str) {
        int identifier;
        if (str.contains("/")) {
            identifier = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            if (this.f7124k) {
                System.out.println("id getMap res = " + identifier);
            }
        } else {
            identifier = -1;
        }
        if (identifier != -1) {
            return identifier;
        }
        if (str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e("MotionScene", "error in parsing id");
        return identifier;
    }

    private int z(int i10) {
        int iC;
        androidx.constraintlayout.widget.e eVar = this.f7115b;
        return (eVar == null || (iC = eVar.c(i10, -1, -1)) == -1) ? i10 : iC;
    }

    int A() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0;
        }
        return this.f7116c.f7147l.k();
    }

    float B() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0.0f;
        }
        return this.f7116c.f7147l.l();
    }

    float C() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0.0f;
        }
        return this.f7116c.f7147l.m();
    }

    float D() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0.0f;
        }
        return this.f7116c.f7147l.n();
    }

    float E() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0.0f;
        }
        return this.f7116c.f7147l.o();
    }

    public float F() {
        b bVar = this.f7116c;
        if (bVar != null) {
            return bVar.f7144i;
        }
        return 0.0f;
    }

    int G() {
        b bVar = this.f7116c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f7139d;
    }

    public b H(int i10) {
        for (b bVar : this.f7118e) {
            if (bVar.f7136a == i10) {
                return bVar;
            }
        }
        return null;
    }

    public List I(int i10) {
        int iZ = z(i10);
        ArrayList arrayList = new ArrayList();
        for (b bVar : this.f7118e) {
            if (bVar.f7139d == iZ || bVar.f7138c == iZ) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public boolean L(int i10) {
        return this.f7132s.g(i10);
    }

    void R(float f10, float f11) {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return;
        }
        this.f7116c.f7147l.u(f10, f11);
    }

    void S(float f10, float f11) {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return;
        }
        this.f7116c.f7147l.v(f10, f11);
    }

    void T(MotionEvent motionEvent, int i10, MotionLayout motionLayout) {
        MotionLayout.e eVar;
        MotionEvent motionEvent2;
        RectF rectF = new RectF();
        if (this.f7130q == null) {
            this.f7130q = this.f7114a.U();
        }
        this.f7130q.a(motionEvent);
        if (i10 != -1) {
            int action = motionEvent.getAction();
            boolean z10 = false;
            if (action == 0) {
                this.f7133t = motionEvent.getRawX();
                this.f7134u = motionEvent.getRawY();
                this.f7127n = motionEvent;
                this.f7128o = false;
                if (this.f7116c.f7147l != null) {
                    RectF rectFF = this.f7116c.f7147l.f(this.f7114a, rectF);
                    if (rectFF != null && !rectFF.contains(this.f7127n.getX(), this.f7127n.getY())) {
                        this.f7127n = null;
                        this.f7128o = true;
                        return;
                    }
                    RectF rectFP = this.f7116c.f7147l.p(this.f7114a, rectF);
                    if (rectFP == null || rectFP.contains(this.f7127n.getX(), this.f7127n.getY())) {
                        this.f7129p = false;
                    } else {
                        this.f7129p = true;
                    }
                    this.f7116c.f7147l.w(this.f7133t, this.f7134u);
                    return;
                }
                return;
            }
            if (action == 2 && !this.f7128o) {
                float rawY = motionEvent.getRawY() - this.f7134u;
                float rawX = motionEvent.getRawX() - this.f7133t;
                if ((rawX == 0.0d && rawY == 0.0d) || (motionEvent2 = this.f7127n) == null) {
                    return;
                }
                b bVarI = i(i10, rawX, rawY, motionEvent2);
                if (bVarI != null) {
                    motionLayout.setTransition(bVarI);
                    RectF rectFP2 = this.f7116c.f7147l.p(this.f7114a, rectF);
                    if (rectFP2 != null && !rectFP2.contains(this.f7127n.getX(), this.f7127n.getY())) {
                        z10 = true;
                    }
                    this.f7129p = z10;
                    this.f7116c.f7147l.z(this.f7133t, this.f7134u);
                }
            }
        }
        if (this.f7128o) {
            return;
        }
        b bVar = this.f7116c;
        if (bVar != null && bVar.f7147l != null && !this.f7129p) {
            this.f7116c.f7147l.s(motionEvent, this.f7130q, i10, this);
        }
        this.f7133t = motionEvent.getRawX();
        this.f7134u = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || (eVar = this.f7130q) == null) {
            return;
        }
        eVar.recycle();
        this.f7130q = null;
        int i11 = motionLayout.f6847f;
        if (i11 != -1) {
            h(motionLayout, i11);
        }
    }

    void V(MotionLayout motionLayout) {
        for (int i10 = 0; i10 < this.f7121h.size(); i10++) {
            int iKeyAt = this.f7121h.keyAt(i10);
            if (J(iKeyAt)) {
                Log.e("MotionScene", "Cannot be derived from yourself");
                return;
            }
            U(iKeyAt, motionLayout);
        }
    }

    public void W(int i10, androidx.constraintlayout.widget.b bVar) {
        this.f7121h.put(i10, bVar);
    }

    public void X(int i10) {
        b bVar = this.f7116c;
        if (bVar != null) {
            bVar.E(i10);
        } else {
            this.f7125l = i10;
        }
    }

    public void Y(boolean z10) {
        this.f7131r = z10;
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return;
        }
        this.f7116c.f7147l.x(this.f7131r);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x0039  */
    /* JADX WARN: Code duplicated, block: B:40:0x007b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0096  */
    /* JADX WARN: Code duplicated, block: B:48:0x006d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0087 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0075 A[SYNTHETIC] */
    void Z(int i10, int i11) {
        int iC;
        int iC2;
        b bVar;
        Iterator it;
        b bVar2;
        b bVar3;
        b bVar4;
        androidx.constraintlayout.widget.e eVar = this.f7115b;
        if (eVar != null) {
            iC = eVar.c(i10, -1, -1);
            if (iC == -1) {
                iC = i10;
            }
            iC2 = this.f7115b.c(i11, -1, -1);
            if (iC2 == -1) {
            }
            bVar = this.f7116c;
            if (bVar == null && bVar.f7138c == i11 && this.f7116c.f7139d == i10) {
                return;
            }
            it = this.f7118e.iterator();
            while (true) {
                if (it.hasNext()) {
                    bVar2 = this.f7119f;
                    for (b bVar5 : this.f7120g) {
                        if (bVar5.f7138c == i11) {
                            bVar2 = bVar5;
                        }
                    }
                    bVar3 = new b(this, bVar2);
                    bVar3.f7139d = iC;
                    bVar3.f7138c = iC2;
                    if (iC != -1) {
                        this.f7118e.add(bVar3);
                    }
                    this.f7116c = bVar3;
                    return;
                }
                bVar4 = (b) it.next();
                if ((bVar4.f7138c != iC2 && bVar4.f7139d == iC) || (bVar4.f7138c == i11 && bVar4.f7139d == i10)) {
                    break;
                }
            }
            this.f7116c = bVar4;
            if (bVar4 != null || bVar4.f7147l == null) {
            }
            this.f7116c.f7147l.x(this.f7131r);
            return;
        }
        iC = i10;
        iC2 = i11;
        bVar = this.f7116c;
        if (bVar == null) {
        }
        it = this.f7118e.iterator();
        while (true) {
            if (it.hasNext()) {
                bVar2 = this.f7119f;
                while (r3.hasNext()) {
                    if (bVar5.f7138c == i11) {
                        bVar2 = bVar5;
                    }
                }
                bVar3 = new b(this, bVar2);
                bVar3.f7139d = iC;
                bVar3.f7138c = iC2;
                if (iC != -1) {
                    this.f7118e.add(bVar3);
                }
                this.f7116c = bVar3;
                return;
            }
            bVar4 = (b) it.next();
            if (bVar4.f7138c != iC2) {
            }
        }
        this.f7116c = bVar4;
        if (bVar4 != null) {
        }
    }

    public void a0(b bVar) {
        this.f7116c = bVar;
        if (bVar == null || bVar.f7147l == null) {
            return;
        }
        this.f7116c.f7147l.x(this.f7131r);
    }

    void b0() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return;
        }
        this.f7116c.f7147l.A();
    }

    boolean d0() {
        Iterator it = this.f7118e.iterator();
        while (it.hasNext()) {
            if (((b) it.next()).f7147l != null) {
                return true;
            }
        }
        b bVar = this.f7116c;
        return (bVar == null || bVar.f7147l == null) ? false : true;
    }

    public void e0(int i10, View... viewArr) {
        this.f7132s.k(i10, viewArr);
    }

    public void f(MotionLayout motionLayout, int i10) {
        for (b bVar : this.f7118e) {
            if (bVar.f7148m.size() > 0) {
                Iterator it = bVar.f7148m.iterator();
                while (it.hasNext()) {
                    ((b.a) it.next()).c(motionLayout);
                }
            }
        }
        for (b bVar2 : this.f7120g) {
            if (bVar2.f7148m.size() > 0) {
                Iterator it2 = bVar2.f7148m.iterator();
                while (it2.hasNext()) {
                    ((b.a) it2.next()).c(motionLayout);
                }
            }
        }
        for (b bVar3 : this.f7118e) {
            if (bVar3.f7148m.size() > 0) {
                Iterator it3 = bVar3.f7148m.iterator();
                while (it3.hasNext()) {
                    ((b.a) it3.next()).a(motionLayout, i10, bVar3);
                }
            }
        }
        for (b bVar4 : this.f7120g) {
            if (bVar4.f7148m.size() > 0) {
                Iterator it4 = bVar4.f7148m.iterator();
                while (it4.hasNext()) {
                    ((b.a) it4.next()).a(motionLayout, i10, bVar4);
                }
            }
        }
    }

    public boolean g(int i10, m mVar) {
        return this.f7132s.d(i10, mVar);
    }

    boolean h(MotionLayout motionLayout, int i10) {
        b bVar;
        if (K() || this.f7117d) {
            return false;
        }
        for (b bVar2 : this.f7118e) {
            if (bVar2.f7149n != 0 && ((bVar = this.f7116c) != bVar2 || !bVar.D(2))) {
                if (i10 == bVar2.f7139d && (bVar2.f7149n == 4 || bVar2.f7149n == 2)) {
                    MotionLayout.TransitionState transitionState = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.f7149n == 4) {
                        motionLayout.transitionToEnd();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(1.0f);
                        motionLayout.M(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState);
                        motionLayout.V();
                    }
                    return true;
                }
                if (i10 == bVar2.f7138c && (bVar2.f7149n == 3 || bVar2.f7149n == 1)) {
                    MotionLayout.TransitionState transitionState2 = MotionLayout.TransitionState.FINISHED;
                    motionLayout.setState(transitionState2);
                    motionLayout.setTransition(bVar2);
                    if (bVar2.f7149n == 3) {
                        motionLayout.transitionToStart();
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                    } else {
                        motionLayout.setProgress(0.0f);
                        motionLayout.M(true);
                        motionLayout.setState(MotionLayout.TransitionState.SETUP);
                        motionLayout.setState(MotionLayout.TransitionState.MOVING);
                        motionLayout.setState(transitionState2);
                        motionLayout.V();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public b i(int i10, float f10, float f11, MotionEvent motionEvent) {
        if (i10 == -1) {
            return this.f7116c;
        }
        List<b> listI = I(i10);
        RectF rectF = new RectF();
        float f12 = 0.0f;
        b bVar = null;
        for (b bVar2 : listI) {
            if (!bVar2.f7150o && bVar2.f7147l != null) {
                bVar2.f7147l.x(this.f7131r);
                RectF rectFP = bVar2.f7147l.p(this.f7114a, rectF);
                if (rectFP == null || motionEvent == null || rectFP.contains(motionEvent.getX(), motionEvent.getY())) {
                    RectF rectFF = bVar2.f7147l.f(this.f7114a, rectF);
                    if (rectFF == null || motionEvent == null || rectFF.contains(motionEvent.getX(), motionEvent.getY())) {
                        float fA = bVar2.f7147l.a(f10, f11);
                        if (bVar2.f7147l.f7168l && motionEvent != null) {
                            float x10 = motionEvent.getX() - bVar2.f7147l.f7165i;
                            float y10 = motionEvent.getY() - bVar2.f7147l.f7166j;
                            fA = ((float) (Math.atan2(f11 + y10, f10 + x10) - Math.atan2(x10, y10))) * 10.0f;
                        }
                        float f13 = fA * (bVar2.f7138c == i10 ? -1.0f : 1.1f);
                        if (f13 > f12) {
                            bVar = bVar2;
                            f12 = f13;
                        }
                    }
                }
            }
        }
        return bVar;
    }

    public void j(int i10, boolean z10) {
        this.f7132s.e(i10, z10);
    }

    public int k() {
        b bVar = this.f7116c;
        if (bVar != null) {
            return bVar.f7151p;
        }
        return -1;
    }

    int l() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0;
        }
        return this.f7116c.f7147l.d();
    }

    androidx.constraintlayout.widget.b m(int i10) {
        return n(i10, -1, -1);
    }

    androidx.constraintlayout.widget.b n(int i10, int i11, int i12) {
        int iC;
        if (this.f7124k) {
            PrintStream printStream = System.out;
            printStream.println("id " + i10);
            printStream.println("size " + this.f7121h.size());
        }
        androidx.constraintlayout.widget.e eVar = this.f7115b;
        if (eVar != null && (iC = eVar.c(i10, i11, i12)) != -1) {
            i10 = iC;
        }
        if (this.f7121h.get(i10) != null) {
            return (androidx.constraintlayout.widget.b) this.f7121h.get(i10);
        }
        Log.e("MotionScene", "Warning could not find ConstraintSet id/" + androidx.constraintlayout.motion.widget.a.c(this.f7114a.getContext(), i10) + " In MotionScene");
        SparseArray sparseArray = this.f7121h;
        return (androidx.constraintlayout.widget.b) sparseArray.get(sparseArray.keyAt(0));
    }

    public int[] o() {
        int size = this.f7121h.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = this.f7121h.keyAt(i10);
        }
        return iArr;
    }

    public ArrayList p() {
        return this.f7118e;
    }

    public int q() {
        b bVar = this.f7116c;
        return bVar != null ? bVar.f7143h : this.f7125l;
    }

    int r() {
        b bVar = this.f7116c;
        if (bVar == null) {
            return -1;
        }
        return bVar.f7138c;
    }

    public Interpolator t() {
        int i10 = this.f7116c.f7140e;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(this.f7114a.getContext(), this.f7116c.f7142g);
        }
        if (i10 == -1) {
            return new a(this, androidx.constraintlayout.core.motion.utils.c.c(this.f7116c.f7141f));
        }
        if (i10 == 0) {
            return new AccelerateDecelerateInterpolator();
        }
        if (i10 == 1) {
            return new AccelerateInterpolator();
        }
        if (i10 == 2) {
            return new DecelerateInterpolator();
        }
        if (i10 == 4) {
            return new BounceInterpolator();
        }
        if (i10 == 5) {
            return new OvershootInterpolator();
        }
        if (i10 != 6) {
            return null;
        }
        return new AnticipateInterpolator();
    }

    public void u(m mVar) {
        b bVar = this.f7116c;
        if (bVar != null) {
            Iterator it = bVar.f7146k.iterator();
            while (it.hasNext()) {
                ((g) it.next()).b(mVar);
            }
        } else {
            b bVar2 = this.f7119f;
            if (bVar2 != null) {
                Iterator it2 = bVar2.f7146k.iterator();
                while (it2.hasNext()) {
                    ((g) it2.next()).b(mVar);
                }
            }
        }
    }

    float v() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0.0f;
        }
        return this.f7116c.f7147l.g();
    }

    float w() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0.0f;
        }
        return this.f7116c.f7147l.h();
    }

    boolean x() {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return false;
        }
        return this.f7116c.f7147l.i();
    }

    float y(float f10, float f11) {
        b bVar = this.f7116c;
        if (bVar == null || bVar.f7147l == null) {
            return 0.0f;
        }
        return this.f7116c.f7147l.j(f10, f11);
    }

    public static class b {

        private int f7136a;

        private boolean f7137b;

        private int f7138c;

        private int f7139d;

        private int f7140e;

        private String f7141f;

        private int f7142g;

        private int f7143h;

        private float f7144i;

        private final p f7145j;

        private ArrayList f7146k;

        private q f7147l;

        private ArrayList f7148m;

        private int f7149n;

        private boolean f7150o;

        private int f7151p;

        private int f7152q;

        private int f7153r;

        public static class a implements View.OnClickListener {

            private final b f7154a;

            int f7155b;

            int f7156c;

            public a(Context context, b bVar, XmlPullParser xmlPullParser) {
                this.f7155b = -1;
                this.f7156c = 17;
                this.f7154a = bVar;
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.OnClick);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i10 = 0; i10 < indexCount; i10++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i10);
                    if (index == R$styleable.OnClick_targetId) {
                        this.f7155b = typedArrayObtainStyledAttributes.getResourceId(index, this.f7155b);
                    } else if (index == R$styleable.OnClick_clickAction) {
                        this.f7156c = typedArrayObtainStyledAttributes.getInt(index, this.f7156c);
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }

            public void a(MotionLayout motionLayout, int i10, b bVar) {
                boolean z10;
                View viewFindViewById;
                int i11 = this.f7155b;
                View view = motionLayout;
                if (i11 != -1) {
                    viewFindViewById = motionLayout.findViewById(i11);
                }
                if (view == null) {
                    view = viewFindViewById;
                    Log.e("MotionScene", "OnClick could not find id " + this.f7155b);
                    return;
                }
                int i12 = bVar.f7139d;
                int i13 = bVar.f7138c;
                if (i12 == -1) {
                    view = viewFindViewById;
                    view.setOnClickListener(this);
                    return;
                }
                int i14 = this.f7156c;
                boolean z11 = false;
                if ((i14 & 1) == 0 || i10 != i12) {
                    view = viewFindViewById;
                    z10 = false;
                } else {
                    z10 = true;
                }
                boolean z12 = ((i14 & 1) != 0 && i10 == i12) | z10 | ((i14 & 256) != 0 && i10 == i12) | ((i14 & 16) != 0 && i10 == i13);
                if ((i14 & 4096) != 0 && i10 == i13) {
                    z11 = true;
                }
                if (z12 || z11) {
                    view.setOnClickListener(this);
                }
            }

            boolean b(b bVar, MotionLayout motionLayout) {
                b bVar2 = this.f7154a;
                if (bVar2 == bVar) {
                    return true;
                }
                int i10 = bVar2.f7138c;
                int i11 = this.f7154a.f7139d;
                if (i11 == -1) {
                    return motionLayout.f6847f != i10;
                }
                int i12 = motionLayout.f6847f;
                return i12 == i11 || i12 == i10;
            }

            public void c(MotionLayout motionLayout) {
                int i10 = this.f7155b;
                if (i10 == -1) {
                    return;
                }
                View viewFindViewById = motionLayout.findViewById(i10);
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(null);
                    return;
                }
                Log.e("MotionScene", " (*)  could not find id " + this.f7155b);
            }

            @Override
            public void onClick(View view) {
                MotionLayout motionLayout = this.f7154a.f7145j.f7114a;
                if (motionLayout.isInteractionEnabled()) {
                    if (this.f7154a.f7139d == -1) {
                        int currentState = motionLayout.getCurrentState();
                        if (currentState == -1) {
                            motionLayout.transitionToState(this.f7154a.f7138c);
                            return;
                        }
                        b bVar = new b(this.f7154a.f7145j, this.f7154a);
                        bVar.f7139d = currentState;
                        bVar.f7138c = this.f7154a.f7138c;
                        motionLayout.setTransition(bVar);
                        motionLayout.transitionToEnd();
                        return;
                    }
                    b bVar2 = this.f7154a.f7145j.f7116c;
                    int i10 = this.f7156c;
                    boolean z10 = false;
                    boolean z11 = ((i10 & 1) == 0 && (i10 & 256) == 0) ? false : true;
                    boolean z12 = ((i10 & 16) == 0 && (i10 & 4096) == 0) ? false : true;
                    if (z11 && z12) {
                        b bVar3 = this.f7154a.f7145j.f7116c;
                        b bVar4 = this.f7154a;
                        if (bVar3 != bVar4) {
                            motionLayout.setTransition(bVar4);
                        }
                        if (motionLayout.getCurrentState() != motionLayout.getEndState() && motionLayout.getProgress() <= 0.5f) {
                            z12 = false;
                            z10 = z11;
                        }
                    } else {
                        z10 = z11;
                    }
                    if (b(bVar2, motionLayout)) {
                        if (z10 && (this.f7156c & 1) != 0) {
                            motionLayout.setTransition(this.f7154a);
                            motionLayout.transitionToEnd();
                            return;
                        }
                        if (z12 && (this.f7156c & 16) != 0) {
                            motionLayout.setTransition(this.f7154a);
                            motionLayout.transitionToStart();
                        } else if (z10 && (this.f7156c & 256) != 0) {
                            motionLayout.setTransition(this.f7154a);
                            motionLayout.setProgress(1.0f);
                        } else {
                            if (!z12 || (this.f7156c & 4096) == 0) {
                                return;
                            }
                            motionLayout.setTransition(this.f7154a);
                            motionLayout.setProgress(0.0f);
                        }
                    }
                }
            }
        }

        b(p pVar, b bVar) {
            this.f7136a = -1;
            this.f7137b = false;
            this.f7138c = -1;
            this.f7139d = -1;
            this.f7140e = 0;
            this.f7141f = null;
            this.f7142g = -1;
            this.f7143h = 400;
            this.f7144i = 0.0f;
            this.f7146k = new ArrayList();
            this.f7147l = null;
            this.f7148m = new ArrayList();
            this.f7149n = 0;
            this.f7150o = false;
            this.f7151p = -1;
            this.f7152q = 0;
            this.f7153r = 0;
            this.f7145j = pVar;
            this.f7143h = pVar.f7125l;
            if (bVar != null) {
                this.f7151p = bVar.f7151p;
                this.f7140e = bVar.f7140e;
                this.f7141f = bVar.f7141f;
                this.f7142g = bVar.f7142g;
                this.f7143h = bVar.f7143h;
                this.f7146k = bVar.f7146k;
                this.f7144i = bVar.f7144i;
                this.f7152q = bVar.f7152q;
            }
        }

        private void v(p pVar, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                if (index == R$styleable.Transition_constraintSetEnd) {
                    this.f7138c = typedArray.getResourceId(index, -1);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f7138c);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName)) {
                        androidx.constraintlayout.widget.b bVar = new androidx.constraintlayout.widget.b();
                        bVar.E(context, this.f7138c);
                        pVar.f7121h.append(this.f7138c, bVar);
                    } else if ("xml".equals(resourceTypeName)) {
                        this.f7138c = pVar.O(context, this.f7138c);
                    }
                } else if (index == R$styleable.Transition_constraintSetStart) {
                    this.f7139d = typedArray.getResourceId(index, this.f7139d);
                    String resourceTypeName2 = context.getResources().getResourceTypeName(this.f7139d);
                    if (TtmlNode.TAG_LAYOUT.equals(resourceTypeName2)) {
                        androidx.constraintlayout.widget.b bVar2 = new androidx.constraintlayout.widget.b();
                        bVar2.E(context, this.f7139d);
                        pVar.f7121h.append(this.f7139d, bVar2);
                    } else if ("xml".equals(resourceTypeName2)) {
                        this.f7139d = pVar.O(context, this.f7139d);
                    }
                } else if (index == R$styleable.Transition_motionInterpolator) {
                    int i11 = typedArray.peekValue(index).type;
                    if (i11 == 1) {
                        int resourceId = typedArray.getResourceId(index, -1);
                        this.f7142g = resourceId;
                        if (resourceId != -1) {
                            this.f7140e = -2;
                        }
                    } else if (i11 == 3) {
                        String string = typedArray.getString(index);
                        this.f7141f = string;
                        if (string != null) {
                            if (string.indexOf("/") > 0) {
                                this.f7142g = typedArray.getResourceId(index, -1);
                                this.f7140e = -2;
                            } else {
                                this.f7140e = -1;
                            }
                        }
                    } else {
                        this.f7140e = typedArray.getInteger(index, this.f7140e);
                    }
                } else if (index == R$styleable.Transition_duration) {
                    int i12 = typedArray.getInt(index, this.f7143h);
                    this.f7143h = i12;
                    if (i12 < 8) {
                        this.f7143h = 8;
                    }
                } else if (index == R$styleable.Transition_staggered) {
                    this.f7144i = typedArray.getFloat(index, this.f7144i);
                } else if (index == R$styleable.Transition_autoTransition) {
                    this.f7149n = typedArray.getInteger(index, this.f7149n);
                } else if (index == R$styleable.Transition_android_id) {
                    this.f7136a = typedArray.getResourceId(index, this.f7136a);
                } else if (index == R$styleable.Transition_transitionDisable) {
                    this.f7150o = typedArray.getBoolean(index, this.f7150o);
                } else if (index == R$styleable.Transition_pathMotionArc) {
                    this.f7151p = typedArray.getInteger(index, -1);
                } else if (index == R$styleable.Transition_layoutDuringTransition) {
                    this.f7152q = typedArray.getInteger(index, 0);
                } else if (index == R$styleable.Transition_transitionFlags) {
                    this.f7153r = typedArray.getInteger(index, 0);
                }
            }
            if (this.f7139d == -1) {
                this.f7137b = true;
            }
        }

        private void w(p pVar, Context context, AttributeSet attributeSet) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.Transition);
            v(pVar, context, typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        }

        public int A() {
            return this.f7139d;
        }

        public q B() {
            return this.f7147l;
        }

        public boolean C() {
            return !this.f7150o;
        }

        public boolean D(int i10) {
            return (i10 & this.f7153r) != 0;
        }

        public void E(int i10) {
            this.f7143h = Math.max(i10, 8);
        }

        public void F(boolean z10) {
            this.f7150o = !z10;
        }

        public void G(int i10, String str, int i11) {
            this.f7140e = i10;
            this.f7141f = str;
            this.f7142g = i11;
        }

        public void H(int i10) {
            q qVarB = B();
            if (qVarB != null) {
                qVarB.y(i10);
            }
        }

        public void I(int i10) {
            this.f7151p = i10;
        }

        public void t(g gVar) {
            this.f7146k.add(gVar);
        }

        public void u(Context context, XmlPullParser xmlPullParser) {
            this.f7148m.add(new a(context, this, xmlPullParser));
        }

        public int x() {
            return this.f7149n;
        }

        public int y() {
            return this.f7138c;
        }

        public int z() {
            return this.f7152q;
        }

        public b(int i10, p pVar, int i11, int i12) {
            this.f7136a = -1;
            this.f7137b = false;
            this.f7138c = -1;
            this.f7139d = -1;
            this.f7140e = 0;
            this.f7141f = null;
            this.f7142g = -1;
            this.f7143h = 400;
            this.f7144i = 0.0f;
            this.f7146k = new ArrayList();
            this.f7147l = null;
            this.f7148m = new ArrayList();
            this.f7149n = 0;
            this.f7150o = false;
            this.f7151p = -1;
            this.f7152q = 0;
            this.f7153r = 0;
            this.f7136a = i10;
            this.f7145j = pVar;
            this.f7139d = i11;
            this.f7138c = i12;
            this.f7143h = pVar.f7125l;
            this.f7152q = pVar.f7126m;
        }

        b(p pVar, Context context, XmlPullParser xmlPullParser) {
            this.f7136a = -1;
            this.f7137b = false;
            this.f7138c = -1;
            this.f7139d = -1;
            this.f7140e = 0;
            this.f7141f = null;
            this.f7142g = -1;
            this.f7143h = 400;
            this.f7144i = 0.0f;
            this.f7146k = new ArrayList();
            this.f7147l = null;
            this.f7148m = new ArrayList();
            this.f7149n = 0;
            this.f7150o = false;
            this.f7151p = -1;
            this.f7152q = 0;
            this.f7153r = 0;
            this.f7143h = pVar.f7125l;
            this.f7152q = pVar.f7126m;
            this.f7145j = pVar;
            w(pVar, context, Xml.asAttributeSet(xmlPullParser));
        }
    }
}
