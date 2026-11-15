package com.transsion.photoview;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.graphics.Color;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.transsion.gslb.Utils;
import java.lang.ref.WeakReference;

public class n {

    private final int f46023a;

    private float f46024b;

    private final int f46025c;

    private float f46026d = 1.0f;

    private final WeakReference f46027e;

    private i f46028f;

    private boolean f46029g;

    private int f46030h;

    public n(final ImageView imageView) {
        this.f46027e = new WeakReference(imageView);
        int iC = o.c(imageView.getContext());
        this.f46025c = iC;
        this.f46023a = (int) (((double) iC) * 0.15d);
        imageView.post(new Runnable() {
            @Override
            public final void run() {
                this.f46021a.j(imageView);
            }
        });
    }

    private void c(float f10, float f11) {
        ImageView imageView = (ImageView) this.f46027e.get();
        if (imageView == null) {
            return;
        }
        if (Math.abs(f11) < this.f46025c / 4.0f) {
            float fAbs = 1.0f - (Math.abs(f11) / this.f46025c);
            this.f46026d = 1.0f - (Math.abs(f11) / (this.f46025c / 3.0f));
            imageView.setScaleX(fAbs);
            imageView.setScaleY(fAbs);
            ((ViewGroup) imageView.getParent()).setBackgroundColor(f(this.f46026d));
        }
        imageView.setTranslationY(f11);
    }

    private int f(float f10) {
        int iMin = (int) (Math.min(1.0f, Math.max(0.0f, f10)) * 255.0f);
        if (iMin <= 102) {
            return this.f46030h;
        }
        String lowerCase = Integer.toHexString(iMin).toLowerCase();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Utils.SEPARATOR);
        sb2.append(lowerCase.length() < 2 ? "0" : "");
        sb2.append(lowerCase);
        sb2.append("000000");
        int color = Color.parseColor(sb2.toString());
        this.f46030h = color;
        return color;
    }

    private void g() {
        ImageView imageView = (ImageView) this.f46027e.get();
        if (imageView == null) {
            return;
        }
        i iVar = this.f46028f;
        if (iVar != null) {
            iVar.a();
        }
        try {
            ((Activity) imageView.getContext()).finish();
            ((Activity) imageView.getContext()).overridePendingTransition(0, 0);
        } catch (Exception unused) {
        }
    }

    public void i(ImageView imageView, ValueAnimator valueAnimator) {
        if (this.f46026d < valueAnimator.getAnimatedFraction()) {
            ((ViewGroup) imageView.getParent()).setBackgroundColor(f(valueAnimator.getAnimatedFraction()));
        }
    }

    public void j(ImageView imageView) {
        ((ViewGroup) imageView.getParent()).setBackgroundColor(f(this.f46026d));
    }

    public void d() {
        final ImageView imageView = (ImageView) this.f46027e.get();
        if (imageView != null && this.f46029g) {
            this.f46029g = false;
            if (Math.abs(this.f46024b) <= this.f46023a) {
                imageView.animate().setDuration(200L).scaleX(1.0f).scaleY(1.0f).translationX(0.0f).translationY(0.0f).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        this.f46019a.i(imageView, valueAnimator);
                    }
                }).start();
            } else {
                this.f46024b = 0.0f;
                g();
            }
        }
    }

    public void e(float f10, float f11, float f12) {
        if (Math.abs(f10 - 1.0f) != 0.0f) {
            return;
        }
        this.f46024b = f12;
        if (Math.abs(f12) > 50.0f) {
            this.f46029g = true;
            c(f11, this.f46024b);
        }
    }

    public boolean h() {
        return this.f46029g;
    }

    public void k(i iVar) {
        this.f46028f = iVar;
    }
}
