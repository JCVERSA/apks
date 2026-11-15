package androidx.appcompat.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.appcompat.resources.R$styleable;
import androidx.appcompat.widget.b0;
import androidx.collection.x;
import androidx.collection.y0;
import androidx.vectordrawable.graphics.drawable.h;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.web.api.WebConstants;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import y0.k;

public class a extends androidx.appcompat.graphics.drawable.d {

    private c f921o;

    private g f922p;

    private int f923q;

    private int f924r;

    private boolean f925s;

    private static class b extends g {

        private final Animatable f926a;

        b(Animatable animatable) {
            super();
            this.f926a = animatable;
        }

        @Override
        public void c() {
            this.f926a.start();
        }

        @Override
        public void d() {
            this.f926a.stop();
        }
    }

    static class c extends androidx.appcompat.graphics.drawable.d.a {
        x K;
        y0 L;

        c(c cVar, a aVar, Resources resources) {
            super(cVar, aVar, resources);
            if (cVar != null) {
                this.K = cVar.K;
                this.L = cVar.L;
            } else {
                this.K = new x();
                this.L = new y0();
            }
        }

        private static long E(int i10, int i11) {
            return ((long) i11) | (((long) i10) << 32);
        }

        int C(int[] iArr, Drawable drawable, int i10) {
            int iA = super.A(iArr, drawable);
            this.L.l(iA, Integer.valueOf(i10));
            return iA;
        }

        int D(int i10, int i11, Drawable drawable, boolean z10) {
            int iA = super.a(drawable);
            long jE = E(i10, i11);
            long j10 = z10 ? 8589934592L : 0L;
            long j11 = iA;
            this.K.a(jE, Long.valueOf(j11 | j10));
            if (z10) {
                this.K.a(E(i11, i10), Long.valueOf(TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE | j11 | j10));
            }
            return iA;
        }

        int F(int i10) {
            if (i10 < 0) {
                return 0;
            }
            return ((Integer) this.L.h(i10, 0)).intValue();
        }

        int G(int[] iArr) {
            int iB = super.B(iArr);
            return iB >= 0 ? iB : super.B(StateSet.WILD_CARD);
        }

        int H(int i10, int i11) {
            return (int) ((Long) this.K.g(E(i10, i11), -1L)).longValue();
        }

        boolean I(int i10, int i11) {
            return (((Long) this.K.g(E(i10, i11), -1L)).longValue() & TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE) != 0;
        }

        boolean J(int i10, int i11) {
            return (((Long) this.K.g(E(i10, i11), -1L)).longValue() & 8589934592L) != 0;
        }

        @Override
        public Drawable newDrawable() {
            return new a(this, null);
        }

        @Override
        void s() {
            this.K = this.K.clone();
            this.L = this.L.clone();
        }

        @Override
        public Drawable newDrawable(Resources resources) {
            return new a(this, resources);
        }
    }

    private static class d extends g {

        private final androidx.vectordrawable.graphics.drawable.c f927a;

        d(androidx.vectordrawable.graphics.drawable.c cVar) {
            super();
            this.f927a = cVar;
        }

        @Override
        public void c() {
            this.f927a.start();
        }

        @Override
        public void d() {
            this.f927a.stop();
        }
    }

    private static class e extends g {

        private final ObjectAnimator f928a;

        private final boolean f929b;

        e(AnimationDrawable animationDrawable, boolean z10, boolean z11) {
            super();
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            int i10 = z10 ? numberOfFrames - 1 : 0;
            int i11 = z10 ? 0 : numberOfFrames - 1;
            f fVar = new f(animationDrawable, z10);
            ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i10, i11);
            objectAnimatorOfInt.setAutoCancel(true);
            objectAnimatorOfInt.setDuration(fVar.a());
            objectAnimatorOfInt.setInterpolator(fVar);
            this.f929b = z11;
            this.f928a = objectAnimatorOfInt;
        }

        @Override
        public boolean a() {
            return this.f929b;
        }

        @Override
        public void b() {
            this.f928a.reverse();
        }

        @Override
        public void c() {
            this.f928a.start();
        }

        @Override
        public void d() {
            this.f928a.cancel();
        }
    }

    private static class f implements TimeInterpolator {

        private int[] f930a;

        private int f931b;

        private int f932c;

        f(AnimationDrawable animationDrawable, boolean z10) {
            b(animationDrawable, z10);
        }

        int a() {
            return this.f932c;
        }

        int b(AnimationDrawable animationDrawable, boolean z10) {
            int numberOfFrames = animationDrawable.getNumberOfFrames();
            this.f931b = numberOfFrames;
            int[] iArr = this.f930a;
            if (iArr == null || iArr.length < numberOfFrames) {
                this.f930a = new int[numberOfFrames];
            }
            int[] iArr2 = this.f930a;
            int i10 = 0;
            for (int i11 = 0; i11 < numberOfFrames; i11++) {
                int duration = animationDrawable.getDuration(z10 ? (numberOfFrames - i11) - 1 : i11);
                iArr2[i11] = duration;
                i10 += duration;
            }
            this.f932c = i10;
            return i10;
        }

        @Override
        public float getInterpolation(float f10) {
            int i10 = (int) ((f10 * this.f932c) + 0.5f);
            int i11 = this.f931b;
            int[] iArr = this.f930a;
            int i12 = 0;
            while (i12 < i11) {
                int i13 = iArr[i12];
                if (i10 < i13) {
                    break;
                }
                i10 -= i13;
                i12++;
            }
            return (i12 / i11) + (i12 < i11 ? i10 / this.f932c : 0.0f);
        }
    }

    public a() {
        this(null, null);
    }

    public static a m(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("animated-selector")) {
            a aVar = new a();
            aVar.n(context, resources, xmlPullParser, attributeSet, theme);
            return aVar;
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid animated-selector tag " + name);
    }

    private void o(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                return;
            }
            if (next == 2 && depth2 <= depth) {
                if (xmlPullParser.getName().equals(WebConstants.FIELD_ITEM)) {
                    q(context, resources, xmlPullParser, attributeSet, theme);
                } else if (xmlPullParser.getName().equals("transition")) {
                    r(context, resources, xmlPullParser, attributeSet, theme);
                }
            }
        }
    }

    private void p() {
        onStateChange(getState());
    }

    private int q(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.AnimatedStateListDrawableItem);
        int resourceId = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableItem_android_id, 0);
        int resourceId2 = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableItem_android_drawable, -1);
        Drawable drawableJ = resourceId2 > 0 ? b0.h().j(context, resourceId2) : null;
        typedArrayK.recycle();
        int[] iArrK = k(attributeSet);
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableJ = xmlPullParser.getName().equals("vector") ? h.c(resources, xmlPullParser, attributeSet, theme) : h.a.a(resources, xmlPullParser, attributeSet, theme);
        }
        if (drawableJ != null) {
            return this.f921o.C(iArrK, drawableJ, resourceId);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
    }

    private int r(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.AnimatedStateListDrawableTransition);
        int resourceId = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
        int resourceId2 = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableTransition_android_toId, -1);
        int resourceId3 = typedArrayK.getResourceId(R$styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
        Drawable drawableJ = resourceId3 > 0 ? b0.h().j(context, resourceId3) : null;
        boolean z10 = typedArrayK.getBoolean(R$styleable.AnimatedStateListDrawableTransition_android_reversible, false);
        typedArrayK.recycle();
        if (drawableJ == null) {
            do {
                next = xmlPullParser.next();
            } while (next == 4);
            if (next != 2) {
                throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
            }
            drawableJ = xmlPullParser.getName().equals("animated-vector") ? androidx.vectordrawable.graphics.drawable.c.b(context, resources, xmlPullParser, attributeSet, theme) : h.a.a(resources, xmlPullParser, attributeSet, theme);
        }
        if (drawableJ == null) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
        }
        if (resourceId != -1 && resourceId2 != -1) {
            return this.f921o.D(resourceId, resourceId2, drawableJ, z10);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
    }

    private boolean s(int i10) {
        int iC;
        int iH;
        g bVar;
        g gVar = this.f922p;
        if (gVar == null) {
            iC = c();
        } else {
            if (i10 == this.f923q) {
                return true;
            }
            if (i10 == this.f924r && gVar.a()) {
                gVar.b();
                this.f923q = this.f924r;
                this.f924r = i10;
                return true;
            }
            iC = this.f923q;
            gVar.d();
        }
        this.f922p = null;
        this.f924r = -1;
        this.f923q = -1;
        c cVar = this.f921o;
        int iF = cVar.F(iC);
        int iF2 = cVar.F(i10);
        if (iF2 == 0 || iF == 0 || (iH = cVar.H(iF, iF2)) < 0) {
            return false;
        }
        boolean zJ = cVar.J(iF, iF2);
        g(iH);
        Object current = getCurrent();
        if (current instanceof AnimationDrawable) {
            bVar = new e((AnimationDrawable) current, cVar.I(iF, iF2), zJ);
        } else {
            if (!(current instanceof androidx.vectordrawable.graphics.drawable.c)) {
                if (current instanceof Animatable) {
                    bVar = new b((Animatable) current);
                }
                return false;
            }
            bVar = new d((androidx.vectordrawable.graphics.drawable.c) current);
        }
        bVar.c();
        this.f922p = bVar;
        this.f924r = iC;
        this.f923q = i10;
        return true;
    }

    private void t(TypedArray typedArray) {
        c cVar = this.f921o;
        cVar.f898d |= h.a.b(typedArray);
        cVar.y(typedArray.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_variablePadding, cVar.f903i));
        cVar.u(typedArray.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_constantSize, cVar.f906l));
        cVar.v(typedArray.getInt(R$styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, cVar.A));
        cVar.w(typedArray.getInt(R$styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, cVar.B));
        setDither(typedArray.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_dither, cVar.f918x));
    }

    @Override
    void h(DrawableContainerCompat.c cVar) {
        super.h(cVar);
        if (cVar instanceof c) {
            this.f921o = (c) cVar;
        }
    }

    @Override
    public boolean isStateful() {
        return true;
    }

    @Override
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
        g gVar = this.f922p;
        if (gVar != null) {
            gVar.d();
            this.f922p = null;
            g(this.f923q);
            this.f923q = -1;
            this.f924r = -1;
        }
    }

    @Override
    public c b() {
        return new c(this.f921o, this, null);
    }

    @Override
    public Drawable mutate() {
        if (!this.f925s && super.mutate() == this) {
            this.f921o.s();
            this.f925s = true;
        }
        return this;
    }

    public void n(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        TypedArray typedArrayK = k.k(resources, theme, attributeSet, R$styleable.AnimatedStateListDrawableCompat);
        setVisible(typedArrayK.getBoolean(R$styleable.AnimatedStateListDrawableCompat_android_visible, true), true);
        t(typedArrayK);
        i(resources);
        typedArrayK.recycle();
        o(context, resources, xmlPullParser, attributeSet, theme);
        p();
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        int iG = this.f921o.G(iArr);
        boolean z10 = iG != c() && (s(iG) || g(iG));
        Drawable current = getCurrent();
        return current != null ? z10 | current.setState(iArr) : z10;
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        boolean visible = super.setVisible(z10, z11);
        g gVar = this.f922p;
        if (gVar != null && (visible || z11)) {
            if (z10) {
                gVar.c();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }

    a(c cVar, Resources resources) {
        super(null);
        this.f923q = -1;
        this.f924r = -1;
        h(new c(cVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    private static abstract class g {
        private g() {
        }

        public boolean a() {
            return false;
        }

        public abstract void c();

        public abstract void d();

        public void b() {
        }
    }
}
