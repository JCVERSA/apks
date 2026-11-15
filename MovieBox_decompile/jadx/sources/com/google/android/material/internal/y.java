package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

public class y {

    private float f28455c;

    private float f28456d;

    private za.d f28459g;

    private final TextPaint f28453a = new TextPaint(1);

    private final za.f f28454b = new a();

    private boolean f28457e = true;

    private WeakReference f28458f = new WeakReference(null);

    class a extends za.f {
        a() {
        }

        @Override
        public void a(int i10) {
            y.this.f28457e = true;
            b bVar = (b) y.this.f28458f.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override
        public void b(Typeface typeface, boolean z10) {
            if (z10) {
                return;
            }
            y.this.f28457e = true;
            b bVar = (b) y.this.f28458f.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    public interface b {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public y(b bVar) {
        j(bVar);
    }

    private float c(String str) {
        if (str == null) {
            return 0.0f;
        }
        return Math.abs(this.f28453a.getFontMetrics().ascent);
    }

    private float d(CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f28453a.measureText(charSequence, 0, charSequence.length());
    }

    private void i(String str) {
        this.f28455c = d(str);
        this.f28456d = c(str);
        this.f28457e = false;
    }

    public za.d e() {
        return this.f28459g;
    }

    public float f(String str) {
        if (!this.f28457e) {
            return this.f28456d;
        }
        i(str);
        return this.f28456d;
    }

    public TextPaint g() {
        return this.f28453a;
    }

    public float h(String str) {
        if (!this.f28457e) {
            return this.f28455c;
        }
        i(str);
        return this.f28455c;
    }

    public void j(b bVar) {
        this.f28458f = new WeakReference(bVar);
    }

    public void k(za.d dVar, Context context) {
        if (this.f28459g != dVar) {
            this.f28459g = dVar;
            if (dVar != null) {
                dVar.o(context, this.f28453a, this.f28454b);
                b bVar = (b) this.f28458f.get();
                if (bVar != null) {
                    this.f28453a.drawableState = bVar.getState();
                }
                dVar.n(context, this.f28453a, this.f28454b);
                this.f28457e = true;
            }
            b bVar2 = (b) this.f28458f.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }

    public void l(boolean z10) {
        this.f28457e = z10;
    }

    public void m(boolean z10) {
        this.f28457e = z10;
    }

    public void n(Context context) {
        this.f28459g.n(context, this.f28453a, this.f28454b);
    }
}
