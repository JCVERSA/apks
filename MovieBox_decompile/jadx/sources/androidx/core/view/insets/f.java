package androidx.core.view.insets;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

class f {

    private final View f8107a;

    private final ArrayList f8108b = new ArrayList();

    private z0.c f8109c;

    private z0.c f8110d;

    private int f8111e;

    class a extends View {

        final ViewGroup f8112a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Context context, ViewGroup viewGroup) {
            super(context);
            this.f8112a = viewGroup;
        }

        @Override
        protected void onConfigurationChanged(Configuration configuration) {
            Drawable background = this.f8112a.getBackground();
            int color = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
            if (f.this.f8111e != color) {
                f.this.f8111e = color;
                for (int size = f.this.f8108b.size() - 1; size >= 0; size--) {
                    ((c) f.this.f8108b.get(size)).e(color);
                }
            }
        }
    }

    class b extends WindowInsetsAnimationCompat.Callback {

        private final HashMap f8114a;

        b(int i10) {
            super(i10);
            this.f8114a = new HashMap();
        }

        private boolean a(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            return (windowInsetsAnimationCompat.getTypeMask() & WindowInsetsCompat.Type.systemBars()) != 0;
        }

        @Override
        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            if (a(windowInsetsAnimationCompat)) {
                this.f8114a.remove(windowInsetsAnimationCompat);
                for (int size = f.this.f8108b.size() - 1; size >= 0; size--) {
                    ((c) f.this.f8108b.get(size)).a();
                }
            }
        }

        @Override
        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            if (a(windowInsetsAnimationCompat)) {
                for (int size = f.this.f8108b.size() - 1; size >= 0; size--) {
                    ((c) f.this.f8108b.get(size)).d();
                }
            }
        }

        @Override
        public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
            RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
            int i10 = 0;
            for (int size = list.size() - 1; size >= 0; size--) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) list.get(size);
                Integer num = (Integer) this.f8114a.get(windowInsetsAnimationCompat);
                if (num != null) {
                    int iIntValue = num.intValue();
                    float alpha = windowInsetsAnimationCompat.getAlpha();
                    if ((iIntValue & 1) != 0) {
                        rectF.left = alpha;
                    }
                    if ((iIntValue & 2) != 0) {
                        rectF.top = alpha;
                    }
                    if ((iIntValue & 4) != 0) {
                        rectF.right = alpha;
                    }
                    if ((iIntValue & 8) != 0) {
                        rectF.bottom = alpha;
                    }
                    i10 |= iIntValue;
                }
            }
            z0.c cVarI = f.this.i(windowInsetsCompat);
            for (int size2 = f.this.f8108b.size() - 1; size2 >= 0; size2--) {
                ((c) f.this.f8108b.get(size2)).b(i10, cVarI, rectF);
            }
            return windowInsetsCompat;
        }

        @Override
        public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
            if (!a(windowInsetsAnimationCompat)) {
                return boundsCompat;
            }
            z0.c upperBound = boundsCompat.getUpperBound();
            z0.c lowerBound = boundsCompat.getLowerBound();
            int i10 = upperBound.f76465a != lowerBound.f76465a ? 1 : 0;
            if (upperBound.f76466b != lowerBound.f76466b) {
                i10 |= 2;
            }
            if (upperBound.f76467c != lowerBound.f76467c) {
                i10 |= 4;
            }
            if (upperBound.f76468d != lowerBound.f76468d) {
                i10 |= 8;
            }
            this.f8114a.put(windowInsetsAnimationCompat, Integer.valueOf(i10));
            return boundsCompat;
        }
    }

    interface c {
        void a();

        void b(int i10, z0.c cVar, RectF rectF);

        void c(z0.c cVar, z0.c cVar2);

        void d();

        void e(int i10);
    }

    f(ViewGroup viewGroup) {
        z0.c cVar = z0.c.f76464e;
        this.f8109c = cVar;
        this.f8110d = cVar;
        Drawable background = viewGroup.getBackground();
        this.f8111e = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        a aVar = new a(viewGroup.getContext(), viewGroup);
        this.f8107a = aVar;
        aVar.setWillNotDraw(true);
        ViewCompat.setOnApplyWindowInsetsListener(aVar, new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f8105a.m(view, windowInsetsCompat);
            }
        });
        ViewCompat.setWindowInsetsAnimationCallback(aVar, new b(0));
        viewGroup.addView(aVar, 0);
    }

    public z0.c i(WindowInsetsCompat windowInsetsCompat) {
        return z0.c.b(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.tappableElement()));
    }

    private z0.c j(WindowInsetsCompat windowInsetsCompat) {
        return z0.c.b(windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.systemBars()), windowInsetsCompat.getInsetsIgnoringVisibility(WindowInsetsCompat.Type.tappableElement()));
    }

    public void l() {
        ViewParent parent = this.f8107a.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.f8107a);
        }
    }

    public WindowInsetsCompat m(View view, WindowInsetsCompat windowInsetsCompat) {
        z0.c cVarI = i(windowInsetsCompat);
        z0.c cVarJ = j(windowInsetsCompat);
        if (!cVarI.equals(this.f8109c) || !cVarJ.equals(this.f8110d)) {
            this.f8109c = cVarI;
            this.f8110d = cVarJ;
            for (int size = this.f8108b.size() - 1; size >= 0; size--) {
                ((c) this.f8108b.get(size)).c(cVarI, cVarJ);
            }
        }
        return windowInsetsCompat;
    }

    void g(c cVar) {
        if (this.f8108b.contains(cVar)) {
            return;
        }
        this.f8108b.add(cVar);
        cVar.c(this.f8109c, this.f8110d);
        cVar.e(this.f8111e);
    }

    void h() {
        this.f8107a.post(new Runnable() {
            @Override
            public final void run() {
                this.f8106a.l();
            }
        });
    }

    boolean k() {
        return !this.f8108b.isEmpty();
    }

    void n(c cVar) {
        this.f8108b.remove(cVar);
    }
}
