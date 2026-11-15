package com.app.hubert.guide.core;

import android.content.Context;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.app.hubert.guide.model.HighLight;
import defpackage.ad;
import defpackage.df7;
import defpackage.sr8;
import defpackage.te7;
import java.util.Iterator;
import java.util.List;

public class GuideLayout extends FrameLayout {
    public static final int DEFAULT_BACKGROUND_COLOR = -1308622848;
    public Controller b;
    public Paint c;
    public e d;
    public float e;
    public float f;
    public int g;
    public com.app.hubert.guide.model.a guidePage;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (GuideLayout.this.guidePage.k()) {
                GuideLayout.this.remove();
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            GuideLayout.this.remove();
        }
    }

    public class c extends ad {
        public c() {
        }

        @Override
        public void onAnimationEnd(Animation animation) {
            GuideLayout.this.c();
        }
    }

    public static class d {
        public static final int[] a;

        static {
            int[] iArr = new int[HighLight.Shape.values().length];
            a = iArr;
            try {
                iArr[HighLight.Shape.CIRCLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[HighLight.Shape.OVAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[HighLight.Shape.ROUND_RECTANGLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[HighLight.Shape.RECTANGLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public interface e {
        void a(GuideLayout guideLayout);
    }

    public GuideLayout(Context context, com.app.hubert.guide.model.a aVar, Controller controller) {
        super(context);
        e();
        setGuidePage(aVar);
        this.b = controller;
    }

    private void setGuidePage(com.app.hubert.guide.model.a aVar) {
        this.guidePage = aVar;
        setOnClickListener(new a());
    }

    public final void b(com.app.hubert.guide.model.a aVar) {
        removeAllViews();
        int iH = aVar.h();
        if (iH != 0) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(iH, (ViewGroup) this, false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            int[] iArrD = aVar.d();
            if (iArrD != null && iArrD.length > 0) {
                for (int i : iArrD) {
                    View viewFindViewById = viewInflate.findViewById(i);
                    if (viewFindViewById != null) {
                        viewFindViewById.setOnClickListener(new b());
                    } else {
                        Log.w("NewbieGuide", "can't find the view by id : " + i + " which used to remove guide page");
                    }
                }
            }
            df7 df7VarI = aVar.i();
            if (df7VarI != null) {
                df7VarI.a(viewInflate, this.b);
            }
            addView(viewInflate, layoutParams);
        }
        List listJ = aVar.j();
        if (listJ.size() > 0) {
            Iterator it = listJ.iterator();
            while (it.hasNext()) {
                addView(((sr8) it.next()).getGuideLayout((ViewGroup) getParent(), this.b));
            }
        }
    }

    public final void c() {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
            e eVar = this.d;
            if (eVar != null) {
                eVar.a(this);
            }
        }
    }

    public final void d(Canvas canvas) {
        List<HighLight> listG = this.guidePage.g();
        if (listG != null) {
            for (HighLight highLight : listG) {
                RectF rectFB = highLight.b((ViewGroup) getParent());
                int i = d.a[highLight.a().ordinal()];
                if (i == 1) {
                    canvas.drawCircle(rectFB.centerX(), rectFB.centerY(), highLight.getRadius(), this.c);
                } else if (i == 2) {
                    canvas.drawOval(rectFB, this.c);
                } else if (i != 3) {
                    canvas.drawRect(rectFB, this.c);
                } else {
                    canvas.drawRoundRect(rectFB, highLight.c(), highLight.c(), this.c);
                }
                g(canvas, highLight, rectFB);
            }
        }
    }

    public final void e() {
        Paint paint = new Paint();
        this.c = paint;
        paint.setAntiAlias(true);
        this.c.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.c.setMaskFilter(new BlurMaskFilter(1.0f, BlurMaskFilter.Blur.INNER));
        setLayerType(1, null);
        setWillNotDraw(false);
        this.g = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public final void f(HighLight highLight) {
        View.OnClickListener onClickListener;
        com.app.hubert.guide.model.b options = highLight.getOptions();
        if (options == null || (onClickListener = options.a) == null) {
            return;
        }
        onClickListener.onClick(this);
    }

    public final void g(Canvas canvas, HighLight highLight, RectF rectF) {
        te7 te7Var;
        com.app.hubert.guide.model.b options = highLight.getOptions();
        if (options == null || (te7Var = options.c) == null) {
            return;
        }
        te7Var.a(canvas, rectF);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        b(this.guidePage);
        Animation animationE = this.guidePage.e();
        if (animationE != null) {
            startAnimation(animationE);
        }
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iC = this.guidePage.c();
        if (iC == 0) {
            iC = DEFAULT_BACKGROUND_COLOR;
        }
        canvas.drawColor(iC);
        d(canvas);
    }

    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.e = motionEvent.getX();
            this.f = motionEvent.getY();
        } else if (action == 1 || action == 3) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            if (Math.abs(x - this.e) < this.g && Math.abs(y - this.f) < this.g) {
                for (HighLight highLight : this.guidePage.g()) {
                    if (highLight.b((ViewGroup) getParent()).contains(x, y)) {
                        f(highLight);
                        return true;
                    }
                }
                performClick();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public boolean performClick() {
        return super.performClick();
    }

    public void remove() {
        Animation animationF = this.guidePage.f();
        if (animationF == null) {
            c();
        } else {
            animationF.setAnimationListener(new c());
            startAnimation(animationF);
        }
    }

    public void setOnGuideLayoutDismissListener(e eVar) {
        this.d = eVar;
    }
}
