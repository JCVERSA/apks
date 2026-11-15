package ab;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import cb.i;
import cb.n;
import cb.q;

public class a extends Drawable implements q {

    private b f263a;

    @Override
    public a mutate() {
        this.f263a = new b(this.f263a);
        return this;
    }

    @Override
    public void draw(Canvas canvas) {
        b bVar = this.f263a;
        if (bVar.f265b) {
            bVar.f264a.draw(canvas);
        }
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.f263a;
    }

    @Override
    public int getOpacity() {
        return this.f263a.f264a.getOpacity();
    }

    @Override
    public boolean isStateful() {
        return true;
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f263a.f264a.setBounds(rect);
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f263a.f264a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zE = ab.b.e(iArr);
        b bVar = this.f263a;
        if (bVar.f265b == zE) {
            return zOnStateChange;
        }
        bVar.f265b = zE;
        return true;
    }

    @Override
    public void setAlpha(int i10) {
        this.f263a.f264a.setAlpha(i10);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f263a.f264a.setColorFilter(colorFilter);
    }

    @Override
    public void setShapeAppearanceModel(n nVar) {
        this.f263a.f264a.setShapeAppearanceModel(nVar);
    }

    @Override
    public void setTint(int i10) {
        this.f263a.f264a.setTint(i10);
    }

    @Override
    public void setTintList(ColorStateList colorStateList) {
        this.f263a.f264a.setTintList(colorStateList);
    }

    @Override
    public void setTintMode(PorterDuff.Mode mode) {
        this.f263a.f264a.setTintMode(mode);
    }

    public a(n nVar) {
        this(new b(new i(nVar)));
    }

    static final class b extends Drawable.ConstantState {

        i f264a;

        boolean f265b;

        public b(i iVar) {
            this.f264a = iVar;
            this.f265b = false;
        }

        @Override
        public a newDrawable() {
            return new a(new b(this));
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        public b(b bVar) {
            this.f264a = (i) bVar.f264a.getConstantState().newDrawable();
            this.f265b = bVar.f265b;
        }
    }

    private a(b bVar) {
        this.f263a = bVar;
    }
}
