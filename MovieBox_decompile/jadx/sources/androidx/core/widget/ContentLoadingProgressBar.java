package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class ContentLoadingProgressBar extends ProgressBar {

    long f8163a;

    boolean f8164b;

    boolean f8165c;

    boolean f8166d;

    private final Runnable f8167e;

    private final Runnable f8168f;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public void e() {
        this.f8166d = true;
        removeCallbacks(this.f8168f);
        this.f8165c = false;
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j10 = this.f8163a;
        long j11 = jCurrentTimeMillis - j10;
        if (j11 >= 500 || j10 == -1) {
            setVisibility(8);
        } else {
            if (this.f8164b) {
                return;
            }
            postDelayed(this.f8167e, 500 - j11);
            this.f8164b = true;
        }
    }

    public void f() {
        this.f8164b = false;
        this.f8163a = -1L;
        setVisibility(8);
    }

    public void g() {
        this.f8165c = false;
        if (this.f8166d) {
            return;
        }
        this.f8163a = System.currentTimeMillis();
        setVisibility(0);
    }

    private void h() {
        removeCallbacks(this.f8167e);
        removeCallbacks(this.f8168f);
    }

    public void i() {
        this.f8163a = -1L;
        this.f8166d = false;
        removeCallbacks(this.f8167e);
        this.f8164b = false;
        if (this.f8165c) {
            return;
        }
        postDelayed(this.f8168f, 500L);
        this.f8165c = true;
    }

    public void hide() {
        post(new Runnable() {
            @Override
            public final void run() {
                this.f8199a.e();
            }
        });
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        h();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    public void show() {
        post(new Runnable() {
            @Override
            public final void run() {
                this.f8198a.i();
            }
        });
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8163a = -1L;
        this.f8164b = false;
        this.f8165c = false;
        this.f8166d = false;
        this.f8167e = new Runnable() {
            @Override
            public final void run() {
                this.f8196a.f();
            }
        };
        this.f8168f = new Runnable() {
            @Override
            public final void run() {
                this.f8197a.g();
            }
        };
    }
}
