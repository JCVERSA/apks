package com.android.volley.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.android.volley.VolleyError;

public class NetworkImageView extends ImageView {

    private String f18657a;

    private int f18658b;

    private Drawable f18659c;

    private Bitmap f18660d;

    private int f18661e;

    private Drawable f18662f;

    private Bitmap f18663g;

    class AnonymousClass1 implements h.c {

        final boolean f18664a;

        AnonymousClass1(boolean z10) {
            this.f18664a = z10;
        }

        public void a(h.b bVar, boolean z10) {
            if (!z10 || !this.f18664a) {
                throw null;
            }
            NetworkImageView.this.post(new Runnable(bVar) {
                final h.b val$response;

                @Override
                public void run() {
                    AnonymousClass1.this.a(null, false);
                }
            });
        }

        @Override
        public void onErrorResponse(VolleyError volleyError) {
            if (NetworkImageView.this.f18661e != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.f18661e);
            } else if (NetworkImageView.this.f18662f != null) {
                NetworkImageView networkImageView2 = NetworkImageView.this;
                networkImageView2.setImageDrawable(networkImageView2.f18662f);
            } else if (NetworkImageView.this.f18663g != null) {
                NetworkImageView networkImageView3 = NetworkImageView.this;
                networkImageView3.setImageBitmap(networkImageView3.f18663g);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    private void e() {
        int i10 = this.f18658b;
        if (i10 != 0) {
            setImageResource(i10);
            return;
        }
        Drawable drawable = this.f18659c;
        if (drawable != null) {
            setImageDrawable(drawable);
            return;
        }
        Bitmap bitmap = this.f18660d;
        if (bitmap != null) {
            setImageBitmap(bitmap);
        } else {
            setImageBitmap(null);
        }
    }

    void d(boolean z10) {
        boolean z11;
        boolean z12;
        int width = getWidth();
        int height = getHeight();
        getScaleType();
        if (getLayoutParams() != null) {
            z11 = getLayoutParams().width == -2;
            z12 = getLayoutParams().height == -2;
        } else {
            z11 = false;
            z12 = false;
        }
        boolean z13 = z11 && z12;
        if (width == 0 && height == 0 && !z13) {
            return;
        }
        if (TextUtils.isEmpty(this.f18657a)) {
            e();
        } else {
            new AnonymousClass1(z10);
            throw null;
        }
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        d(true);
    }

    public void setDefaultImageBitmap(Bitmap bitmap) {
        this.f18658b = 0;
        this.f18659c = null;
        this.f18660d = bitmap;
    }

    public void setDefaultImageDrawable(@Nullable Drawable drawable) {
        this.f18658b = 0;
        this.f18660d = null;
        this.f18659c = drawable;
    }

    public void setDefaultImageResId(int i10) {
        this.f18660d = null;
        this.f18659c = null;
        this.f18658b = i10;
    }

    public void setErrorImageBitmap(Bitmap bitmap) {
        this.f18661e = 0;
        this.f18662f = null;
        this.f18663g = bitmap;
    }

    public void setErrorImageDrawable(@Nullable Drawable drawable) {
        this.f18661e = 0;
        this.f18663g = null;
        this.f18662f = drawable;
    }

    public void setErrorImageResId(int i10) {
        this.f18663g = null;
        this.f18662f = null;
        this.f18661e = i10;
    }

    public void setImageUrl(String str, h hVar) {
        n.a();
        this.f18657a = str;
        d(false);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
