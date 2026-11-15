package androidx.vectordrawable.graphics.drawable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import y0.k;

public class c extends g implements Animatable {

    private C0122c f14804b;

    private Context f14805c;

    private ArgbEvaluator f14806d;

    d f14807e;

    private Animator.AnimatorListener f14808f;

    ArrayList f14809g;

    final Drawable.Callback f14810h;

    class a implements Drawable.Callback {
        a() {
        }

        @Override
        public void invalidateDrawable(Drawable drawable) {
            c.this.invalidateSelf();
        }

        @Override
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
            c.this.scheduleSelf(runnable, j10);
        }

        @Override
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            c.this.unscheduleSelf(runnable);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            ArrayList arrayList = new ArrayList(c.this.f14809g);
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((androidx.vectordrawable.graphics.drawable.b) arrayList.get(i10)).onAnimationEnd(c.this);
            }
        }

        @Override
        public void onAnimationStart(Animator animator) {
            ArrayList arrayList = new ArrayList(c.this.f14809g);
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((androidx.vectordrawable.graphics.drawable.b) arrayList.get(i10)).onAnimationStart(c.this);
            }
        }
    }

    private static class C0122c extends Drawable.ConstantState {

        int f14813a;

        h f14814b;

        AnimatorSet f14815c;

        ArrayList f14816d;

        androidx.collection.a f14817e;

        public C0122c(Context context, C0122c c0122c, Drawable.Callback callback, Resources resources) {
            if (c0122c != null) {
                this.f14813a = c0122c.f14813a;
                h hVar = c0122c.f14814b;
                if (hVar != null) {
                    Drawable.ConstantState constantState = hVar.getConstantState();
                    if (resources != null) {
                        this.f14814b = (h) constantState.newDrawable(resources);
                    } else {
                        this.f14814b = (h) constantState.newDrawable();
                    }
                    h hVar2 = (h) this.f14814b.mutate();
                    this.f14814b = hVar2;
                    hVar2.setCallback(callback);
                    this.f14814b.setBounds(c0122c.f14814b.getBounds());
                    this.f14814b.h(false);
                }
                ArrayList arrayList = c0122c.f14816d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    this.f14816d = new ArrayList(size);
                    this.f14817e = new androidx.collection.a(size);
                    for (int i10 = 0; i10 < size; i10++) {
                        Animator animator = (Animator) c0122c.f14816d.get(i10);
                        Animator animatorClone = animator.clone();
                        String str = (String) c0122c.f14817e.get(animator);
                        animatorClone.setTarget(this.f14814b.d(str));
                        this.f14816d.add(animatorClone);
                        this.f14817e.put(animatorClone, str);
                    }
                    a();
                }
            }
        }

        public void a() {
            if (this.f14815c == null) {
                this.f14815c = new AnimatorSet();
            }
            this.f14815c.playTogether(this.f14816d);
        }

        @Override
        public int getChangingConfigurations() {
            return this.f14813a;
        }

        @Override
        public Drawable newDrawable() {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }

        @Override
        public Drawable newDrawable(Resources resources) {
            throw new IllegalStateException("No constant state support for SDK < 24.");
        }
    }

    c() {
        this(null, null, null);
    }

    public static c a(Context context, int i10) {
        int next;
        if (Build.VERSION.SDK_INT >= 24) {
            c cVar = new c(context);
            Drawable drawableE = y0.h.e(context.getResources(), i10, context.getTheme());
            cVar.f14821a = drawableE;
            drawableE.setCallback(cVar.f14810h);
            cVar.f14807e = new d(cVar.f14821a.getConstantState());
            return cVar;
        }
        try {
            XmlResourceParser xml = context.getResources().getXml(i10);
            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                return b(context, context.getResources(), xml, attributeSetAsAttributeSet, context.getTheme());
            }
            throw new XmlPullParserException("No start tag found");
        } catch (IOException e10) {
            Log.e("AnimatedVDCompat", "parser error", e10);
            return null;
        } catch (XmlPullParserException e11) {
            Log.e("AnimatedVDCompat", "parser error", e11);
            return null;
        }
    }

    public static c b(Context context, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        c cVar = new c(context);
        cVar.inflate(resources, xmlPullParser, attributeSet, theme);
        return cVar;
    }

    private static void d(AnimatedVectorDrawable animatedVectorDrawable, androidx.vectordrawable.graphics.drawable.b bVar) {
        animatedVectorDrawable.registerAnimationCallback(bVar.getPlatformCallback());
    }

    private void e() {
        Animator.AnimatorListener animatorListener = this.f14808f;
        if (animatorListener != null) {
            this.f14804b.f14815c.removeListener(animatorListener);
            this.f14808f = null;
        }
    }

    private void f(String str, Animator animator) {
        animator.setTarget(this.f14804b.f14814b.d(str));
        C0122c c0122c = this.f14804b;
        if (c0122c.f14816d == null) {
            c0122c.f14816d = new ArrayList();
            this.f14804b.f14817e = new androidx.collection.a();
        }
        this.f14804b.f14816d.add(animator);
        this.f14804b.f14817e.put(animator, str);
    }

    private static boolean h(AnimatedVectorDrawable animatedVectorDrawable, androidx.vectordrawable.graphics.drawable.b bVar) {
        return animatedVectorDrawable.unregisterAnimationCallback(bVar.getPlatformCallback());
    }

    @Override
    public void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.a(drawable, theme);
        }
    }

    public void c(androidx.vectordrawable.graphics.drawable.b bVar) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            d((AnimatedVectorDrawable) drawable, bVar);
            return;
        }
        if (bVar == null) {
            return;
        }
        if (this.f14809g == null) {
            this.f14809g = new ArrayList();
        }
        if (this.f14809g.contains(bVar)) {
            return;
        }
        this.f14809g.add(bVar);
        if (this.f14808f == null) {
            this.f14808f = new b();
        }
        this.f14804b.f14815c.addListener(this.f14808f);
    }

    @Override
    public boolean canApplyTheme() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            return a1.a.b(drawable);
        }
        return false;
    }

    @Override
    public void clearColorFilter() {
        super.clearColorFilter();
    }

    @Override
    public void draw(Canvas canvas) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        this.f14804b.f14814b.draw(canvas);
        if (this.f14804b.f14815c.isStarted()) {
            invalidateSelf();
        }
    }

    public boolean g(androidx.vectordrawable.graphics.drawable.b bVar) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            h((AnimatedVectorDrawable) drawable, bVar);
        }
        ArrayList arrayList = this.f14809g;
        if (arrayList == null || bVar == null) {
            return false;
        }
        boolean zRemove = arrayList.remove(bVar);
        if (this.f14809g.size() == 0) {
            e();
        }
        return zRemove;
    }

    @Override
    public int getAlpha() {
        Drawable drawable = this.f14821a;
        return drawable != null ? a1.a.d(drawable) : this.f14804b.f14814b.getAlpha();
    }

    @Override
    public int getChangingConfigurations() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f14804b.f14813a;
    }

    @Override
    public ColorFilter getColorFilter() {
        Drawable drawable = this.f14821a;
        return drawable != null ? a1.a.e(drawable) : this.f14804b.f14814b.getColorFilter();
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        if (this.f14821a == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new d(this.f14821a.getConstantState());
    }

    @Override
    public Drawable getCurrent() {
        return super.getCurrent();
    }

    @Override
    public int getIntrinsicHeight() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f14804b.f14814b.getIntrinsicHeight();
    }

    @Override
    public int getIntrinsicWidth() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f14804b.f14814b.getIntrinsicWidth();
    }

    @Override
    public int getMinimumHeight() {
        return super.getMinimumHeight();
    }

    @Override
    public int getMinimumWidth() {
        return super.getMinimumWidth();
    }

    @Override
    public int getOpacity() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.getOpacity() : this.f14804b.f14814b.getOpacity();
    }

    @Override
    public boolean getPadding(Rect rect) {
        return super.getPadding(rect);
    }

    @Override
    public int[] getState() {
        return super.getState();
    }

    @Override
    public Region getTransparentRegion() {
        return super.getTransparentRegion();
    }

    @Override
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.g(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (eventType != 1 && (xmlPullParser.getDepth() >= depth || eventType != 3)) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayK = k.k(resources, theme, attributeSet, androidx.vectordrawable.graphics.drawable.a.f14795e);
                    int resourceId = typedArrayK.getResourceId(0, 0);
                    if (resourceId != 0) {
                        h hVarB = h.b(resources, resourceId, theme);
                        hVarB.h(false);
                        hVarB.setCallback(this.f14810h);
                        h hVar = this.f14804b.f14814b;
                        if (hVar != null) {
                            hVar.setCallback(null);
                        }
                        this.f14804b.f14814b = hVarB;
                    }
                    typedArrayK.recycle();
                } else if ("target".equals(name)) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, androidx.vectordrawable.graphics.drawable.a.f14796f);
                    String string = typedArrayObtainAttributes.getString(0);
                    int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                    if (resourceId2 != 0) {
                        Context context = this.f14805c;
                        if (context == null) {
                            typedArrayObtainAttributes.recycle();
                            throw new IllegalStateException("Context can't be null when inflating animators");
                        }
                        f(string, e.i(context, resourceId2));
                    }
                    typedArrayObtainAttributes.recycle();
                } else {
                    continue;
                }
            }
            eventType = xmlPullParser.next();
        }
        this.f14804b.a();
    }

    @Override
    public boolean isAutoMirrored() {
        Drawable drawable = this.f14821a;
        return drawable != null ? a1.a.h(drawable) : this.f14804b.f14814b.isAutoMirrored();
    }

    @Override
    public boolean isRunning() {
        Drawable drawable = this.f14821a;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f14804b.f14815c.isRunning();
    }

    @Override
    public boolean isStateful() {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.isStateful() : this.f14804b.f14814b.isStateful();
    }

    @Override
    public void jumpToCurrentState() {
        super.jumpToCurrentState();
    }

    @Override
    public Drawable mutate() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f14804b.f14814b.setBounds(rect);
        }
    }

    @Override
    protected boolean onLevelChange(int i10) {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.setLevel(i10) : this.f14804b.f14814b.setLevel(i10);
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f14821a;
        return drawable != null ? drawable.setState(iArr) : this.f14804b.f14814b.setState(iArr);
    }

    @Override
    public void setAlpha(int i10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setAlpha(i10);
        } else {
            this.f14804b.f14814b.setAlpha(i10);
        }
    }

    @Override
    public void setAutoMirrored(boolean z10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.j(drawable, z10);
        } else {
            this.f14804b.f14814b.setAutoMirrored(z10);
        }
    }

    @Override
    public void setChangingConfigurations(int i10) {
        super.setChangingConfigurations(i10);
    }

    @Override
    public void setColorFilter(int i10, PorterDuff.Mode mode) {
        super.setColorFilter(i10, mode);
    }

    @Override
    public void setFilterBitmap(boolean z10) {
        super.setFilterBitmap(z10);
    }

    @Override
    public void setHotspot(float f10, float f11) {
        super.setHotspot(f10, f11);
    }

    @Override
    public void setHotspotBounds(int i10, int i11, int i12, int i13) {
        super.setHotspotBounds(i10, i11, i12, i13);
    }

    @Override
    public boolean setState(int[] iArr) {
        return super.setState(iArr);
    }

    @Override
    public void setTint(int i10) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.n(drawable, i10);
        } else {
            this.f14804b.f14814b.setTint(i10);
        }
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.o(drawable, colorStateList);
        } else {
            this.f14804b.f14814b.setTintList(colorStateList);
        }
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            a1.a.p(drawable, mode);
        } else {
            this.f14804b.f14814b.setTintMode(mode);
        }
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            return drawable.setVisible(z10, z11);
        }
        this.f14804b.f14814b.setVisible(z10, z11);
        return super.setVisible(z10, z11);
    }

    @Override
    public void start() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
        } else {
            if (this.f14804b.f14815c.isStarted()) {
                return;
            }
            this.f14804b.f14815c.start();
            invalidateSelf();
        }
    }

    @Override
    public void stop() {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f14804b.f14815c.end();
        }
    }

    private c(Context context) {
        this(context, null, null);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f14821a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f14804b.f14814b.setColorFilter(colorFilter);
        }
    }

    private static class d extends Drawable.ConstantState {

        private final Drawable.ConstantState f14818a;

        public d(Drawable.ConstantState constantState) {
            this.f14818a = constantState;
        }

        @Override
        public boolean canApplyTheme() {
            return this.f14818a.canApplyTheme();
        }

        @Override
        public int getChangingConfigurations() {
            return this.f14818a.getChangingConfigurations();
        }

        @Override
        public Drawable newDrawable() {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f14818a.newDrawable();
            cVar.f14821a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f14810h);
            return cVar;
        }

        @Override
        public Drawable newDrawable(Resources resources) {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f14818a.newDrawable(resources);
            cVar.f14821a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f14810h);
            return cVar;
        }

        @Override
        public Drawable newDrawable(Resources resources, Resources.Theme theme) {
            c cVar = new c();
            Drawable drawableNewDrawable = this.f14818a.newDrawable(resources, theme);
            cVar.f14821a = drawableNewDrawable;
            drawableNewDrawable.setCallback(cVar.f14810h);
            return cVar;
        }
    }

    private c(Context context, C0122c c0122c, Resources resources) {
        this.f14806d = null;
        this.f14808f = null;
        this.f14809g = null;
        a aVar = new a();
        this.f14810h = aVar;
        this.f14805c = context;
        if (c0122c != null) {
            this.f14804b = c0122c;
        } else {
            this.f14804b = new C0122c(context, c0122c, aVar, resources);
        }
    }

    @Override
    public void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }
}
