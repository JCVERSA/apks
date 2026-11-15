package com.android.net.toolbox;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.net.toolbox.k.a;
import com.android.net.toolbox.k.c;
import com.android.net.u;

public class NetworkImageView extends ImageView {
    private String a;
    private int b;
    private int c;
    private k d;
    private k.c e;

    public class AnonymousClass1 implements k.d {
        final boolean a = true;

        public AnonymousClass1() {
        }

        @Override
        public final void a(final k.c cVar, boolean z) {
            if (z && this.a) {
                NetworkImageView.this.post(new Runnable() {
                    @Override
                    public final void run() {
                        AnonymousClass1.this.a(cVar, false);
                    }
                });
                return;
            }
            Bitmap bitmap = cVar.a;
            if (bitmap != null) {
                NetworkImageView.this.setImageBitmap(bitmap);
            } else if (NetworkImageView.this.b != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.b);
            }
        }

        @Override
        public final void a(u uVar) {
            if (NetworkImageView.this.c != 0) {
                NetworkImageView networkImageView = NetworkImageView.this;
                networkImageView.setImageResource(networkImageView.c);
            }
        }
    }

    public NetworkImageView(Context context) {
        this(context, null);
    }

    @Override
    public void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    @Override
    public void onDetachedFromWindow() {
        k.c cVar = this.e;
        if (cVar != null) {
            cVar.a();
            setImageBitmap(null);
            this.e = null;
        }
        super.onDetachedFromWindow();
    }

    @Override
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        boolean z3;
        k.c cVar;
        k.c cVar2;
        String str;
        super.onLayout(z, i, i2, i3, i4);
        int width = getWidth();
        int height = getHeight();
        ImageView.ScaleType scaleType = getScaleType();
        if (getLayoutParams() != null) {
            z2 = getLayoutParams().width == -2;
            z3 = getLayoutParams().height == -2;
        } else {
            z2 = false;
            z3 = false;
        }
        boolean z4 = z2 && z3;
        if (width == 0 && height == 0 && !z4) {
            return;
        }
        if (TextUtils.isEmpty(this.a)) {
            k.c cVar3 = this.e;
            if (cVar3 != null) {
                cVar3.a();
                this.e = null;
            }
            a();
            return;
        }
        k.c cVar4 = this.e;
        if (cVar4 != null && (str = cVar4.c) != null) {
            if (str.equals(this.a)) {
                return;
            }
            this.e.a();
            a();
        }
        if (z2) {
            width = 0;
        }
        int i5 = z3 ? 0 : height;
        k kVar = this.d;
        String str2 = this.a;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
        StringBuilder sb = new StringBuilder(str2.length() + 12);
        sb.append("#W");
        sb.append(width);
        sb.append("#H");
        sb.append(i5);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        sb.append(str2);
        String string = sb.toString();
        Bitmap bitmapA = kVar.b.a();
        if (bitmapA != null) {
            cVar2 = kVar.new c(bitmapA, str2, null, null);
            anonymousClass1.a(cVar2, true);
        } else {
            k.c cVar5 = kVar.new c(null, str2, string, anonymousClass1);
            anonymousClass1.a(cVar5, true);
            k.a aVar = kVar.c.get(string);
            if (aVar != null) {
                aVar.c.add(cVar5);
                cVar = cVar5;
            } else {
                cVar = cVar5;
                l lVar = new l(str2, new com.android.net.p.b<Bitmap>() {
                    final String a;

                    public AnonymousClass1() {
                        str = string;
                    }

                    @Override
                    public final void a(Bitmap bitmap) {
                        Bitmap bitmap2 = bitmap;
                        k kVar2 = k.this;
                        String str3 = str;
                        a aVarRemove = kVar2.c.remove(str3);
                        if (aVarRemove != null) {
                            aVarRemove.a = bitmap2;
                            kVar2.a(str3, aVarRemove);
                        }
                    }
                }, width, i5, scaleType, Bitmap.Config.RGB_565, new com.android.net.p.a() {
                    final String a;

                    public AnonymousClass2() {
                        str = string;
                    }

                    @Override
                    public final void a(u uVar) {
                        k kVar2 = k.this;
                        String str3 = str;
                        a aVarRemove = kVar2.c.remove(str3);
                        if (aVarRemove != null) {
                            aVarRemove.b = uVar;
                            kVar2.a(str3, aVarRemove);
                        }
                    }
                });
                kVar.a.a(lVar);
                kVar.c.put(string, kVar.new a(lVar, cVar));
            }
            cVar2 = cVar;
        }
        this.e = cVar2;
    }

    public void setDefaultImageResId(int i) {
        this.b = i;
    }

    public void setErrorImageResId(int i) {
        this.c = i;
    }

    public NetworkImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a() {
        int i = this.b;
        if (i != 0) {
            setImageResource(i);
        } else {
            setImageBitmap(null);
        }
    }

    public NetworkImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
