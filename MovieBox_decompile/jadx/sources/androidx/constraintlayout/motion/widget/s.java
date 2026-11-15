package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.Log;
import android.util.Xml;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$id;
import androidx.constraintlayout.widget.R$styleable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class s {

    private static String f7185w = "ViewTransition";

    private int f7186a;

    int f7190e;

    g f7191f;

    androidx.constraintlayout.widget.b.a f7192g;

    private int f7195j;

    private String f7196k;

    Context f7200o;

    private int f7187b = -1;

    private boolean f7188c = false;

    private int f7189d = 0;

    private int f7193h = -1;

    private int f7194i = -1;

    private int f7197l = 0;

    private String f7198m = null;

    private int f7199n = -1;

    private int f7201p = -1;

    private int f7202q = -1;

    private int f7203r = -1;

    private int f7204s = -1;

    private int f7205t = -1;

    private int f7206u = -1;

    private int f7207v = -1;

    class a implements Interpolator {

        final androidx.constraintlayout.core.motion.utils.c f7208a;

        a(s sVar, androidx.constraintlayout.core.motion.utils.c cVar) {
            this.f7208a = cVar;
        }

        @Override
        public float getInterpolation(float f10) {
            return (float) this.f7208a.a(f10);
        }
    }

    static class b {

        private final int f7209a;

        private final int f7210b;

        long f7211c;

        m f7212d;

        int f7213e;

        int f7214f;

        t f7216h;

        Interpolator f7217i;

        float f7219k;

        float f7220l;

        long f7221m;

        boolean f7223o;

        androidx.constraintlayout.core.motion.utils.d f7215g = new androidx.constraintlayout.core.motion.utils.d();

        boolean f7218j = false;

        Rect f7222n = new Rect();

        b(t tVar, m mVar, int i10, int i11, int i12, Interpolator interpolator, int i13, int i14) {
            this.f7223o = false;
            this.f7216h = tVar;
            this.f7212d = mVar;
            this.f7213e = i10;
            this.f7214f = i11;
            long jNanoTime = System.nanoTime();
            this.f7211c = jNanoTime;
            this.f7221m = jNanoTime;
            this.f7216h.b(this);
            this.f7217i = interpolator;
            this.f7209a = i13;
            this.f7210b = i14;
            if (i12 == 3) {
                this.f7223o = true;
            }
            this.f7220l = i10 == 0 ? Float.MAX_VALUE : 1.0f / i10;
            a();
        }

        void a() {
            if (this.f7218j) {
                c();
            } else {
                b();
            }
        }

        void b() {
            long jNanoTime = System.nanoTime();
            long j10 = jNanoTime - this.f7221m;
            this.f7221m = jNanoTime;
            float f10 = this.f7219k + (((float) (j10 * 1.0E-6d)) * this.f7220l);
            this.f7219k = f10;
            if (f10 >= 1.0f) {
                this.f7219k = 1.0f;
            }
            Interpolator interpolator = this.f7217i;
            float interpolation = interpolator == null ? this.f7219k : interpolator.getInterpolation(this.f7219k);
            m mVar = this.f7212d;
            boolean zX = mVar.x(mVar.f7068b, interpolation, jNanoTime, this.f7215g);
            if (this.f7219k >= 1.0f) {
                if (this.f7209a != -1) {
                    this.f7212d.v().setTag(this.f7209a, Long.valueOf(System.nanoTime()));
                }
                if (this.f7210b != -1) {
                    this.f7212d.v().setTag(this.f7210b, null);
                }
                if (!this.f7223o) {
                    this.f7216h.i(this);
                }
            }
            if (this.f7219k < 1.0f || zX) {
                this.f7216h.f();
            }
        }

        void c() {
            long jNanoTime = System.nanoTime();
            long j10 = jNanoTime - this.f7221m;
            this.f7221m = jNanoTime;
            float f10 = this.f7219k - (((float) (j10 * 1.0E-6d)) * this.f7220l);
            this.f7219k = f10;
            if (f10 < 0.0f) {
                this.f7219k = 0.0f;
            }
            Interpolator interpolator = this.f7217i;
            float interpolation = interpolator == null ? this.f7219k : interpolator.getInterpolation(this.f7219k);
            m mVar = this.f7212d;
            boolean zX = mVar.x(mVar.f7068b, interpolation, jNanoTime, this.f7215g);
            if (this.f7219k <= 0.0f) {
                if (this.f7209a != -1) {
                    this.f7212d.v().setTag(this.f7209a, Long.valueOf(System.nanoTime()));
                }
                if (this.f7210b != -1) {
                    this.f7212d.v().setTag(this.f7210b, null);
                }
                this.f7216h.i(this);
            }
            if (this.f7219k > 0.0f || zX) {
                this.f7216h.f();
            }
        }

        public void d(int i10, float f10, float f11) {
            if (i10 == 1) {
                if (this.f7218j) {
                    return;
                }
                e(true);
            } else {
                if (i10 != 2) {
                    return;
                }
                this.f7212d.v().getHitRect(this.f7222n);
                if (this.f7222n.contains((int) f10, (int) f11) || this.f7218j) {
                    return;
                }
                e(true);
            }
        }

        void e(boolean z10) {
            int i10;
            this.f7218j = z10;
            if (z10 && (i10 = this.f7214f) != -1) {
                this.f7220l = i10 == 0 ? Float.MAX_VALUE : 1.0f / i10;
            }
            this.f7216h.f();
            this.f7221m = System.nanoTime();
        }
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    s(Context context, XmlPullParser xmlPullParser) {
        byte b10;
        this.f7200o = context;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case -1962203927:
                            if (!name.equals("ConstraintOverride")) {
                                b10 = -1;
                            } else {
                                b10 = 2;
                            }
                            break;
                        case -1239391468:
                            if (!name.equals("KeyFrameSet")) {
                                b10 = -1;
                            } else {
                                b10 = 1;
                            }
                            break;
                        case 61998586:
                            if (!name.equals("ViewTransition")) {
                                b10 = -1;
                            } else {
                                b10 = 0;
                            }
                            break;
                        case 366511058:
                            if (!name.equals("CustomMethod")) {
                                b10 = -1;
                            } else {
                                b10 = 4;
                            }
                            break;
                        case 1791837707:
                            if (!name.equals("CustomAttribute")) {
                                b10 = -1;
                            } else {
                                b10 = 3;
                            }
                            break;
                        default:
                            b10 = -1;
                            break;
                    }
                    if (b10 == 0) {
                        m(context, xmlPullParser);
                    } else if (b10 == 1) {
                        this.f7191f = new g(context, xmlPullParser);
                    } else if (b10 == 2) {
                        this.f7192g = androidx.constraintlayout.widget.b.m(context, xmlPullParser);
                    } else if (b10 == 3 || b10 == 4) {
                        ConstraintAttribute.i(context, xmlPullParser, this.f7192g.f7460g);
                    } else {
                        Log.e(f7185w, androidx.constraintlayout.motion.widget.a.a() + " unknown tag " + name);
                        Log.e(f7185w, ".xml:" + xmlPullParser.getLineNumber());
                    }
                } else if (eventType == 3 && "ViewTransition".equals(xmlPullParser.getName())) {
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

    public void k(View[] viewArr) {
        if (this.f7201p != -1) {
            for (View view : viewArr) {
                view.setTag(this.f7201p, Long.valueOf(System.nanoTime()));
            }
        }
        if (this.f7202q != -1) {
            for (View view2 : viewArr) {
                view2.setTag(this.f7202q, null);
            }
        }
    }

    private void m(Context context, XmlPullParser xmlPullParser) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R$styleable.ViewTransition);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R$styleable.ViewTransition_android_id) {
                this.f7186a = typedArrayObtainStyledAttributes.getResourceId(index, this.f7186a);
            } else if (index == R$styleable.ViewTransition_motionTarget) {
                if (MotionLayout.IS_IN_EDIT_MODE) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f7195j);
                    this.f7195j = resourceId;
                    if (resourceId == -1) {
                        this.f7196k = typedArrayObtainStyledAttributes.getString(index);
                    }
                } else if (typedArrayObtainStyledAttributes.peekValue(index).type == 3) {
                    this.f7196k = typedArrayObtainStyledAttributes.getString(index);
                } else {
                    this.f7195j = typedArrayObtainStyledAttributes.getResourceId(index, this.f7195j);
                }
            } else if (index == R$styleable.ViewTransition_onStateTransition) {
                this.f7187b = typedArrayObtainStyledAttributes.getInt(index, this.f7187b);
            } else if (index == R$styleable.ViewTransition_transitionDisable) {
                this.f7188c = typedArrayObtainStyledAttributes.getBoolean(index, this.f7188c);
            } else if (index == R$styleable.ViewTransition_pathMotionArc) {
                this.f7189d = typedArrayObtainStyledAttributes.getInt(index, this.f7189d);
            } else if (index == R$styleable.ViewTransition_duration) {
                this.f7193h = typedArrayObtainStyledAttributes.getInt(index, this.f7193h);
            } else if (index == R$styleable.ViewTransition_upDuration) {
                this.f7194i = typedArrayObtainStyledAttributes.getInt(index, this.f7194i);
            } else if (index == R$styleable.ViewTransition_viewTransitionMode) {
                this.f7190e = typedArrayObtainStyledAttributes.getInt(index, this.f7190e);
            } else if (index == R$styleable.ViewTransition_motionInterpolator) {
                int i11 = typedArrayObtainStyledAttributes.peekValue(index).type;
                if (i11 == 1) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                    this.f7199n = resourceId2;
                    if (resourceId2 != -1) {
                        this.f7197l = -2;
                    }
                } else if (i11 == 3) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f7198m = string;
                    if (string == null || string.indexOf("/") <= 0) {
                        this.f7197l = -1;
                    } else {
                        this.f7199n = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                        this.f7197l = -2;
                    }
                } else {
                    this.f7197l = typedArrayObtainStyledAttributes.getInteger(index, this.f7197l);
                }
            } else if (index == R$styleable.ViewTransition_setsTag) {
                this.f7201p = typedArrayObtainStyledAttributes.getResourceId(index, this.f7201p);
            } else if (index == R$styleable.ViewTransition_clearsTag) {
                this.f7202q = typedArrayObtainStyledAttributes.getResourceId(index, this.f7202q);
            } else if (index == R$styleable.ViewTransition_ifTagSet) {
                this.f7203r = typedArrayObtainStyledAttributes.getResourceId(index, this.f7203r);
            } else if (index == R$styleable.ViewTransition_ifTagNotSet) {
                this.f7204s = typedArrayObtainStyledAttributes.getResourceId(index, this.f7204s);
            } else if (index == R$styleable.ViewTransition_SharedValueId) {
                this.f7206u = typedArrayObtainStyledAttributes.getResourceId(index, this.f7206u);
            } else if (index == R$styleable.ViewTransition_SharedValue) {
                this.f7205t = typedArrayObtainStyledAttributes.getInteger(index, this.f7205t);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void p(p.b bVar, View view) {
        int i10 = this.f7193h;
        if (i10 != -1) {
            bVar.E(i10);
        }
        bVar.I(this.f7189d);
        bVar.G(this.f7197l, this.f7198m, this.f7199n);
        int id2 = view.getId();
        g gVar = this.f7191f;
        if (gVar != null) {
            ArrayList arrayListD = gVar.d(-1);
            g gVar2 = new g();
            Iterator it = arrayListD.iterator();
            while (it.hasNext()) {
                gVar2.c(((d) it.next()).clone().i(id2));
            }
            bVar.t(gVar2);
        }
    }

    void b(t tVar, MotionLayout motionLayout, View view) {
        m mVar = new m(view);
        mVar.B(view);
        this.f7191f.a(mVar);
        mVar.I(motionLayout.getWidth(), motionLayout.getHeight(), this.f7193h, System.nanoTime());
        new b(tVar, mVar, this.f7193h, this.f7194i, this.f7187b, f(motionLayout.getContext()), this.f7201p, this.f7202q);
    }

    void c(t tVar, MotionLayout motionLayout, int i10, androidx.constraintlayout.widget.b bVar, final View... viewArr) {
        if (this.f7188c) {
            return;
        }
        int i11 = this.f7190e;
        if (i11 == 2) {
            b(tVar, motionLayout, viewArr[0]);
            return;
        }
        if (i11 == 1) {
            for (int i12 : motionLayout.getConstraintSetIds()) {
                if (i12 != i10) {
                    androidx.constraintlayout.widget.b constraintSet = motionLayout.getConstraintSet(i12);
                    for (View view : viewArr) {
                        androidx.constraintlayout.widget.b.a aVarX = constraintSet.x(view.getId());
                        androidx.constraintlayout.widget.b.a aVar = this.f7192g;
                        if (aVar != null) {
                            aVar.d(aVarX);
                            aVarX.f7460g.putAll(this.f7192g.f7460g);
                        }
                    }
                }
            }
        }
        androidx.constraintlayout.widget.b bVar2 = new androidx.constraintlayout.widget.b();
        bVar2.q(bVar);
        for (View view2 : viewArr) {
            androidx.constraintlayout.widget.b.a aVarX2 = bVar2.x(view2.getId());
            androidx.constraintlayout.widget.b.a aVar2 = this.f7192g;
            if (aVar2 != null) {
                aVar2.d(aVarX2);
                aVarX2.f7460g.putAll(this.f7192g.f7460g);
            }
        }
        motionLayout.updateState(i10, bVar2);
        motionLayout.updateState(R$id.view_transition, bVar);
        motionLayout.setState(R$id.view_transition, -1, -1);
        p.b bVar3 = new p.b(-1, motionLayout.f6837a, R$id.view_transition, i10);
        for (View view3 : viewArr) {
            p(bVar3, view3);
        }
        motionLayout.setTransition(bVar3);
        motionLayout.transitionToEnd(new Runnable() {
            @Override
            public final void run() {
                this.f7183a.k(viewArr);
            }
        });
    }

    boolean d(View view) {
        int i10 = this.f7203r;
        boolean z10 = i10 == -1 || view.getTag(i10) != null;
        int i11 = this.f7204s;
        return z10 && (i11 == -1 || view.getTag(i11) == null);
    }

    int e() {
        return this.f7186a;
    }

    Interpolator f(Context context) {
        int i10 = this.f7197l;
        if (i10 == -2) {
            return AnimationUtils.loadInterpolator(context, this.f7199n);
        }
        if (i10 == -1) {
            return new a(this, androidx.constraintlayout.core.motion.utils.c.c(this.f7198m));
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

    public int g() {
        return this.f7205t;
    }

    public int h() {
        return this.f7206u;
    }

    public int i() {
        return this.f7187b;
    }

    boolean j() {
        return !this.f7188c;
    }

    boolean l(View view) {
        String str;
        if (view == null) {
            return false;
        }
        if ((this.f7195j == -1 && this.f7196k == null) || !d(view)) {
            return false;
        }
        if (view.getId() == this.f7195j) {
            return true;
        }
        return this.f7196k != null && (view.getLayoutParams() instanceof ConstraintLayout.b) && (str = ((ConstraintLayout.b) view.getLayoutParams()).f7358c0) != null && str.matches(this.f7196k);
    }

    void n(boolean z10) {
        this.f7188c = !z10;
    }

    boolean o(int i10) {
        int i11 = this.f7187b;
        if (i11 == 1) {
            return i10 == 0;
        }
        if (i11 == 2) {
            return i10 == 1;
        }
        return i11 == 3 && i10 == 0;
    }

    public String toString() {
        return "ViewTransition(" + androidx.constraintlayout.motion.widget.a.c(this.f7200o, this.f7186a) + ")";
    }
}
