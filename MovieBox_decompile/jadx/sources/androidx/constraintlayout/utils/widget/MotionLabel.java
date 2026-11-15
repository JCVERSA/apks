package androidx.constraintlayout.utils.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.constraintlayout.motion.widget.c;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.view.GravityCompat;
import com.google.android.material.card.MaterialCardView;
import okhttp3.internal.http2.Settings;

public class MotionLabel extends View implements c {
    static String V = "MotionLabel";
    private float A;
    private float B;
    private float C;
    private Drawable D;
    Matrix E;
    private Bitmap F;
    private BitmapShader G;
    private Matrix H;
    private float I;
    private float J;
    private float K;
    private float L;
    Paint M;
    private int N;
    Rect O;
    Paint P;
    float Q;
    float R;
    float S;
    float T;
    float U;

    TextPaint f7296a;

    Path f7297b;

    private int f7298c;

    private int f7299d;

    private boolean f7300e;

    private float f7301f;

    private float f7302g;

    ViewOutlineProvider f7303h;

    RectF f7304i;

    private float f7305j;

    private float f7306k;

    private int f7307l;

    private int f7308m;

    private float f7309n;

    private String f7310o;

    boolean f7311p;

    private Rect f7312q;

    private int f7313r;

    private int f7314s;

    private int f7315t;

    private int f7316u;

    private String f7317v;

    private Layout f7318w;

    private int f7319x;

    private int f7320y;

    private boolean f7321z;

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            int width = MotionLabel.this.getWidth();
            int height = MotionLabel.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * MotionLabel.this.f7301f) / 2.0f);
        }
    }

    class b extends ViewOutlineProvider {
        b() {
        }

        @Override
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, MotionLabel.this.getWidth(), MotionLabel.this.getHeight(), MotionLabel.this.f7302g);
        }
    }

    public MotionLabel(Context context) {
        super(context);
        this.f7296a = new TextPaint();
        this.f7297b = new Path();
        this.f7298c = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7299d = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7300e = false;
        this.f7301f = 0.0f;
        this.f7302g = Float.NaN;
        this.f7305j = 48.0f;
        this.f7306k = Float.NaN;
        this.f7309n = 0.0f;
        this.f7310o = "Hello World";
        this.f7311p = true;
        this.f7312q = new Rect();
        this.f7313r = 1;
        this.f7314s = 1;
        this.f7315t = 1;
        this.f7316u = 1;
        this.f7319x = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        this.f7320y = 0;
        this.f7321z = false;
        this.I = Float.NaN;
        this.J = Float.NaN;
        this.K = 0.0f;
        this.L = 0.0f;
        this.M = new Paint();
        this.N = 0;
        this.R = Float.NaN;
        this.S = Float.NaN;
        this.T = Float.NaN;
        this.U = Float.NaN;
        f(context, null);
    }

    private void c(float f10, float f11, float f12, float f13) {
        if (this.H == null) {
            return;
        }
        this.B = f12 - f10;
        this.C = f13 - f11;
        k();
    }

    private void f(Context context, AttributeSet attributeSet) {
        h(context, attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.MotionLabel);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionLabel_android_text) {
                    setText(typedArrayObtainStyledAttributes.getText(index));
                } else if (index == R$styleable.MotionLabel_android_fontFamily) {
                    this.f7317v = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.MotionLabel_scaleFromTextSize) {
                    this.f7306k = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.f7306k);
                } else if (index == R$styleable.MotionLabel_android_textSize) {
                    this.f7305j = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, (int) this.f7305j);
                } else if (index == R$styleable.MotionLabel_android_textStyle) {
                    this.f7307l = typedArrayObtainStyledAttributes.getInt(index, this.f7307l);
                } else if (index == R$styleable.MotionLabel_android_typeface) {
                    this.f7308m = typedArrayObtainStyledAttributes.getInt(index, this.f7308m);
                } else if (index == R$styleable.MotionLabel_android_textColor) {
                    this.f7298c = typedArrayObtainStyledAttributes.getColor(index, this.f7298c);
                } else if (index == R$styleable.MotionLabel_borderRound) {
                    float dimension = typedArrayObtainStyledAttributes.getDimension(index, this.f7302g);
                    this.f7302g = dimension;
                    setRound(dimension);
                } else if (index == R$styleable.MotionLabel_borderRoundPercent) {
                    float f10 = typedArrayObtainStyledAttributes.getFloat(index, this.f7301f);
                    this.f7301f = f10;
                    setRoundPercent(f10);
                } else if (index == R$styleable.MotionLabel_android_gravity) {
                    setGravity(typedArrayObtainStyledAttributes.getInt(index, -1));
                } else if (index == R$styleable.MotionLabel_android_autoSizeTextType) {
                    this.f7320y = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == R$styleable.MotionLabel_textOutlineColor) {
                    this.f7299d = typedArrayObtainStyledAttributes.getInt(index, this.f7299d);
                    this.f7300e = true;
                } else if (index == R$styleable.MotionLabel_textOutlineThickness) {
                    this.f7309n = typedArrayObtainStyledAttributes.getDimension(index, this.f7309n);
                    this.f7300e = true;
                } else if (index == R$styleable.MotionLabel_textBackground) {
                    this.D = typedArrayObtainStyledAttributes.getDrawable(index);
                    this.f7300e = true;
                } else if (index == R$styleable.MotionLabel_textBackgroundPanX) {
                    this.R = typedArrayObtainStyledAttributes.getFloat(index, this.R);
                } else if (index == R$styleable.MotionLabel_textBackgroundPanY) {
                    this.S = typedArrayObtainStyledAttributes.getFloat(index, this.S);
                } else if (index == R$styleable.MotionLabel_textPanX) {
                    this.K = typedArrayObtainStyledAttributes.getFloat(index, this.K);
                } else if (index == R$styleable.MotionLabel_textPanY) {
                    this.L = typedArrayObtainStyledAttributes.getFloat(index, this.L);
                } else if (index == R$styleable.MotionLabel_textBackgroundRotate) {
                    this.U = typedArrayObtainStyledAttributes.getFloat(index, this.U);
                } else if (index == R$styleable.MotionLabel_textBackgroundZoom) {
                    this.T = typedArrayObtainStyledAttributes.getFloat(index, this.T);
                } else if (index == R$styleable.MotionLabel_textureHeight) {
                    this.I = typedArrayObtainStyledAttributes.getDimension(index, this.I);
                } else if (index == R$styleable.MotionLabel_textureWidth) {
                    this.J = typedArrayObtainStyledAttributes.getDimension(index, this.J);
                } else if (index == R$styleable.MotionLabel_textureEffect) {
                    this.N = typedArrayObtainStyledAttributes.getInt(index, this.N);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        j();
        i();
    }

    private void g(String str, int i10, int i11) {
        Typeface typefaceCreate;
        if (str != null) {
            typefaceCreate = Typeface.create(str, i11);
            if (typefaceCreate != null) {
                setTypeface(typefaceCreate);
                return;
            }
        } else {
            typefaceCreate = null;
        }
        if (i10 == 1) {
            typefaceCreate = Typeface.SANS_SERIF;
        } else if (i10 == 2) {
            typefaceCreate = Typeface.SERIF;
        } else if (i10 == 3) {
            typefaceCreate = Typeface.MONOSPACE;
        }
        if (i11 <= 0) {
            this.f7296a.setFakeBoldText(false);
            this.f7296a.setTextSkewX(0.0f);
            setTypeface(typefaceCreate);
        } else {
            Typeface typefaceDefaultFromStyle = typefaceCreate == null ? Typeface.defaultFromStyle(i11) : Typeface.create(typefaceCreate, i11);
            setTypeface(typefaceDefaultFromStyle);
            int i12 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i11;
            this.f7296a.setFakeBoldText((i12 & 1) != 0);
            this.f7296a.setTextSkewX((i12 & 2) != 0 ? -0.25f : 0.0f);
        }
    }

    private float getHorizontalOffset() {
        float f10 = Float.isNaN(this.f7306k) ? 1.0f : this.f7305j / this.f7306k;
        TextPaint textPaint = this.f7296a;
        String str = this.f7310o;
        return (((((Float.isNaN(this.B) ? getMeasuredWidth() : this.B) - getPaddingLeft()) - getPaddingRight()) - (f10 * textPaint.measureText(str, 0, str.length()))) * (this.K + 1.0f)) / 2.0f;
    }

    private float getVerticalOffset() {
        float f10 = Float.isNaN(this.f7306k) ? 1.0f : this.f7305j / this.f7306k;
        Paint.FontMetrics fontMetrics = this.f7296a.getFontMetrics();
        float measuredHeight = ((Float.isNaN(this.C) ? getMeasuredHeight() : this.C) - getPaddingTop()) - getPaddingBottom();
        float f11 = fontMetrics.descent;
        float f12 = fontMetrics.ascent;
        return (((measuredHeight - ((f11 - f12) * f10)) * (1.0f - this.L)) / 2.0f) - (f10 * f12);
    }

    private void h(Context context, AttributeSet attributeSet) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.colorPrimary, typedValue, true);
        TextPaint textPaint = this.f7296a;
        int i10 = typedValue.data;
        this.f7298c = i10;
        textPaint.setColor(i10);
    }

    private void j() {
        if (this.D != null) {
            this.H = new Matrix();
            int intrinsicWidth = this.D.getIntrinsicWidth();
            int intrinsicHeight = this.D.getIntrinsicHeight();
            if (intrinsicWidth <= 0 && (intrinsicWidth = getWidth()) == 0) {
                intrinsicWidth = Float.isNaN(this.J) ? 128 : (int) this.J;
            }
            if (intrinsicHeight <= 0 && (intrinsicHeight = getHeight()) == 0) {
                intrinsicHeight = Float.isNaN(this.I) ? 128 : (int) this.I;
            }
            if (this.N != 0) {
                intrinsicWidth /= 2;
                intrinsicHeight /= 2;
            }
            this.F = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(this.F);
            this.D.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            this.D.setFilterBitmap(true);
            this.D.draw(canvas);
            if (this.N != 0) {
                this.F = d(this.F, 4);
            }
            Bitmap bitmap = this.F;
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            this.G = new BitmapShader(bitmap, tileMode, tileMode);
        }
    }

    private void k() {
        float f10 = Float.isNaN(this.R) ? 0.0f : this.R;
        float f11 = Float.isNaN(this.S) ? 0.0f : this.S;
        float f12 = Float.isNaN(this.T) ? 1.0f : this.T;
        float f13 = Float.isNaN(this.U) ? 0.0f : this.U;
        this.H.reset();
        float width = this.F.getWidth();
        float height = this.F.getHeight();
        float f14 = Float.isNaN(this.J) ? this.B : this.J;
        float f15 = Float.isNaN(this.I) ? this.C : this.I;
        float f16 = f12 * (width * f15 < height * f14 ? f14 / width : f15 / height);
        this.H.postScale(f16, f16);
        float f17 = width * f16;
        float f18 = f14 - f17;
        float f19 = f16 * height;
        float f20 = f15 - f19;
        if (!Float.isNaN(this.I)) {
            f20 = this.I / 2.0f;
        }
        if (!Float.isNaN(this.J)) {
            f18 = this.J / 2.0f;
        }
        this.H.postTranslate((((f10 * f18) + f14) - f17) * 0.5f, (((f11 * f20) + f15) - f19) * 0.5f);
        this.H.postRotate(f13, f14 / 2.0f, f15 / 2.0f);
        this.G.setLocalMatrix(this.H);
    }

    Bitmap d(Bitmap bitmap, int i10) {
        System.nanoTime();
        int width = bitmap.getWidth() / 2;
        int height = bitmap.getHeight() / 2;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, width, height, true);
        for (int i11 = 0; i11 < i10 && width >= 32 && height >= 32; i11++) {
            width /= 2;
            height /= 2;
            bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapCreateScaledBitmap, width, height, true);
        }
        return bitmapCreateScaledBitmap;
    }

    void e(float f10) {
        if (this.f7300e || f10 != 1.0f) {
            this.f7297b.reset();
            String str = this.f7310o;
            int length = str.length();
            this.f7296a.getTextBounds(str, 0, length, this.f7312q);
            this.f7296a.getTextPath(str, 0, length, 0.0f, 0.0f, this.f7297b);
            if (f10 != 1.0f) {
                Log.v(V, androidx.constraintlayout.motion.widget.a.a() + " scale " + f10);
                Matrix matrix = new Matrix();
                matrix.postScale(f10, f10);
                this.f7297b.transform(matrix);
            }
            Rect rect = this.f7312q;
            rect.right--;
            rect.left++;
            rect.bottom++;
            rect.top--;
            RectF rectF = new RectF();
            rectF.bottom = getHeight();
            rectF.right = getWidth();
            this.f7311p = false;
        }
    }

    public float getRound() {
        return this.f7302g;
    }

    public float getRoundPercent() {
        return this.f7301f;
    }

    public float getScaleFromTextSize() {
        return this.f7306k;
    }

    public float getTextBackgroundPanX() {
        return this.R;
    }

    public float getTextBackgroundPanY() {
        return this.S;
    }

    public float getTextBackgroundRotate() {
        return this.U;
    }

    public float getTextBackgroundZoom() {
        return this.T;
    }

    public int getTextOutlineColor() {
        return this.f7299d;
    }

    public float getTextPanX() {
        return this.K;
    }

    public float getTextPanY() {
        return this.L;
    }

    public float getTextureHeight() {
        return this.I;
    }

    public float getTextureWidth() {
        return this.J;
    }

    public Typeface getTypeface() {
        return this.f7296a.getTypeface();
    }

    void i() {
        this.f7313r = getPaddingLeft();
        this.f7314s = getPaddingRight();
        this.f7315t = getPaddingTop();
        this.f7316u = getPaddingBottom();
        g(this.f7317v, this.f7308m, this.f7307l);
        this.f7296a.setColor(this.f7298c);
        this.f7296a.setStrokeWidth(this.f7309n);
        this.f7296a.setStyle(Paint.Style.FILL_AND_STROKE);
        this.f7296a.setFlags(128);
        setTextSize(this.f7305j);
        this.f7296a.setAntiAlias(true);
    }

    @Override
    public void layout(int i10, int i11, int i12, int i13) {
        super.layout(i10, i11, i12, i13);
        boolean zIsNaN = Float.isNaN(this.f7306k);
        float f10 = zIsNaN ? 1.0f : this.f7305j / this.f7306k;
        this.B = i12 - i10;
        this.C = i13 - i11;
        if (this.f7321z) {
            if (this.O == null) {
                this.P = new Paint();
                this.O = new Rect();
                this.P.set(this.f7296a);
                this.Q = this.P.getTextSize();
            }
            Paint paint = this.P;
            String str = this.f7310o;
            paint.getTextBounds(str, 0, str.length(), this.O);
            int iWidth = this.O.width();
            int iHeight = (int) (this.O.height() * 1.3f);
            float f11 = (this.B - this.f7314s) - this.f7313r;
            float f12 = (this.C - this.f7316u) - this.f7315t;
            if (zIsNaN) {
                float f13 = iWidth;
                float f14 = iHeight;
                if (f13 * f12 > f14 * f11) {
                    this.f7296a.setTextSize((this.Q * f11) / f13);
                } else {
                    this.f7296a.setTextSize((this.Q * f12) / f14);
                }
            } else {
                float f15 = iWidth;
                float f16 = iHeight;
                f10 = f15 * f12 > f16 * f11 ? f11 / f15 : f12 / f16;
            }
        }
        if (this.f7300e || !zIsNaN) {
            c(i10, i11, i12, i13);
            e(f10);
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        float f10 = Float.isNaN(this.f7306k) ? 1.0f : this.f7305j / this.f7306k;
        super.onDraw(canvas);
        if (!this.f7300e && f10 == 1.0f) {
            canvas.drawText(this.f7310o, this.A + this.f7313r + getHorizontalOffset(), this.f7315t + getVerticalOffset(), this.f7296a);
            return;
        }
        if (this.f7311p) {
            e(f10);
        }
        if (this.E == null) {
            this.E = new Matrix();
        }
        if (!this.f7300e) {
            float horizontalOffset = this.f7313r + getHorizontalOffset();
            float verticalOffset = this.f7315t + getVerticalOffset();
            this.E.reset();
            this.E.preTranslate(horizontalOffset, verticalOffset);
            this.f7297b.transform(this.E);
            this.f7296a.setColor(this.f7298c);
            this.f7296a.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f7296a.setStrokeWidth(this.f7309n);
            canvas.drawPath(this.f7297b, this.f7296a);
            this.E.reset();
            this.E.preTranslate(-horizontalOffset, -verticalOffset);
            this.f7297b.transform(this.E);
            return;
        }
        this.M.set(this.f7296a);
        this.E.reset();
        float horizontalOffset2 = this.f7313r + getHorizontalOffset();
        float verticalOffset2 = this.f7315t + getVerticalOffset();
        this.E.postTranslate(horizontalOffset2, verticalOffset2);
        this.E.preScale(f10, f10);
        this.f7297b.transform(this.E);
        if (this.G != null) {
            this.f7296a.setFilterBitmap(true);
            this.f7296a.setShader(this.G);
        } else {
            this.f7296a.setColor(this.f7298c);
        }
        this.f7296a.setStyle(Paint.Style.FILL);
        this.f7296a.setStrokeWidth(this.f7309n);
        canvas.drawPath(this.f7297b, this.f7296a);
        if (this.G != null) {
            this.f7296a.setShader(null);
        }
        this.f7296a.setColor(this.f7299d);
        this.f7296a.setStyle(Paint.Style.STROKE);
        this.f7296a.setStrokeWidth(this.f7309n);
        canvas.drawPath(this.f7297b, this.f7296a);
        this.E.reset();
        this.E.postTranslate(-horizontalOffset2, -verticalOffset2);
        this.f7297b.transform(this.E);
        this.f7296a.set(this.M);
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        this.f7321z = false;
        this.f7313r = getPaddingLeft();
        this.f7314s = getPaddingRight();
        this.f7315t = getPaddingTop();
        this.f7316u = getPaddingBottom();
        if (mode != 1073741824 || mode2 != 1073741824) {
            TextPaint textPaint = this.f7296a;
            String str = this.f7310o;
            textPaint.getTextBounds(str, 0, str.length(), this.f7312q);
            if (mode != 1073741824) {
                size = (int) (this.f7312q.width() + 0.99999f);
            }
            size += this.f7313r + this.f7314s;
            if (mode2 != 1073741824) {
                int fontMetricsInt = (int) (this.f7296a.getFontMetricsInt(null) + 0.99999f);
                if (mode2 == Integer.MIN_VALUE) {
                    fontMetricsInt = Math.min(size2, fontMetricsInt);
                }
                size2 = this.f7315t + this.f7316u + fontMetricsInt;
            }
        } else if (this.f7320y != 0) {
            this.f7321z = true;
        }
        setMeasuredDimension(size, size2);
    }

    @SuppressLint({"RtlHardcoded"})
    public void setGravity(int i10) {
        if ((i10 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK) == 0) {
            i10 |= GravityCompat.START;
        }
        if ((i10 & 112) == 0) {
            i10 |= 48;
        }
        if (i10 != this.f7319x) {
            invalidate();
        }
        this.f7319x = i10;
        int i11 = i10 & 112;
        if (i11 == 48) {
            this.L = -1.0f;
        } else if (i11 != 80) {
            this.L = 0.0f;
        } else {
            this.L = 1.0f;
        }
        int i12 = i10 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i12 != 3) {
            if (i12 != 5) {
                if (i12 != 8388611) {
                    if (i12 != 8388613) {
                        this.K = 0.0f;
                        return;
                    }
                }
            }
            this.K = 1.0f;
            return;
        }
        this.K = -1.0f;
    }

    public void setRound(float f10) {
        if (Float.isNaN(f10)) {
            this.f7302g = f10;
            float f11 = this.f7301f;
            this.f7301f = -1.0f;
            setRoundPercent(f11);
            return;
        }
        boolean z10 = this.f7302g != f10;
        this.f7302g = f10;
        if (f10 != 0.0f) {
            if (this.f7297b == null) {
                this.f7297b = new Path();
            }
            if (this.f7304i == null) {
                this.f7304i = new RectF();
            }
            if (this.f7303h == null) {
                b bVar = new b();
                this.f7303h = bVar;
                setOutlineProvider(bVar);
            }
            setClipToOutline(true);
            this.f7304i.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f7297b.reset();
            Path path = this.f7297b;
            RectF rectF = this.f7304i;
            float f12 = this.f7302g;
            path.addRoundRect(rectF, f12, f12, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f10) {
        boolean z10 = this.f7301f != f10;
        this.f7301f = f10;
        if (f10 != 0.0f) {
            if (this.f7297b == null) {
                this.f7297b = new Path();
            }
            if (this.f7304i == null) {
                this.f7304i = new RectF();
            }
            if (this.f7303h == null) {
                a aVar = new a();
                this.f7303h = aVar;
                setOutlineProvider(aVar);
            }
            setClipToOutline(true);
            int width = getWidth();
            int height = getHeight();
            float fMin = (Math.min(width, height) * this.f7301f) / 2.0f;
            this.f7304i.set(0.0f, 0.0f, width, height);
            this.f7297b.reset();
            this.f7297b.addRoundRect(this.f7304i, fMin, fMin, Path.Direction.CW);
        } else {
            setClipToOutline(false);
        }
        if (z10) {
            invalidateOutline();
        }
    }

    public void setScaleFromTextSize(float f10) {
        this.f7306k = f10;
    }

    public void setText(CharSequence charSequence) {
        this.f7310o = charSequence.toString();
        invalidate();
    }

    public void setTextBackgroundPanX(float f10) {
        this.R = f10;
        k();
        invalidate();
    }

    public void setTextBackgroundPanY(float f10) {
        this.S = f10;
        k();
        invalidate();
    }

    public void setTextBackgroundRotate(float f10) {
        this.U = f10;
        k();
        invalidate();
    }

    public void setTextBackgroundZoom(float f10) {
        this.T = f10;
        k();
        invalidate();
    }

    public void setTextFillColor(int i10) {
        this.f7298c = i10;
        invalidate();
    }

    public void setTextOutlineColor(int i10) {
        this.f7299d = i10;
        this.f7300e = true;
        invalidate();
    }

    public void setTextOutlineThickness(float f10) {
        this.f7309n = f10;
        this.f7300e = true;
        if (Float.isNaN(f10)) {
            this.f7309n = 1.0f;
            this.f7300e = false;
        }
        invalidate();
    }

    public void setTextPanX(float f10) {
        this.K = f10;
        invalidate();
    }

    public void setTextPanY(float f10) {
        this.L = f10;
        invalidate();
    }

    public void setTextSize(float f10) {
        this.f7305j = f10;
        Log.v(V, androidx.constraintlayout.motion.widget.a.a() + "  " + f10 + " / " + this.f7306k);
        TextPaint textPaint = this.f7296a;
        if (!Float.isNaN(this.f7306k)) {
            f10 = this.f7306k;
        }
        textPaint.setTextSize(f10);
        e(Float.isNaN(this.f7306k) ? 1.0f : this.f7305j / this.f7306k);
        requestLayout();
        invalidate();
    }

    public void setTextureHeight(float f10) {
        this.I = f10;
        k();
        invalidate();
    }

    public void setTextureWidth(float f10) {
        this.J = f10;
        k();
        invalidate();
    }

    public void setTypeface(Typeface typeface) {
        if (this.f7296a.getTypeface() != typeface) {
            this.f7296a.setTypeface(typeface);
            if (this.f7318w != null) {
                this.f7318w = null;
                requestLayout();
                invalidate();
            }
        }
    }

    @Override
    public void layout(float f10, float f11, float f12, float f13) {
        int i10 = (int) (f10 + 0.5f);
        this.A = f10 - i10;
        int i11 = (int) (f12 + 0.5f);
        int i12 = i11 - i10;
        int i13 = (int) (f13 + 0.5f);
        int i14 = (int) (0.5f + f11);
        int i15 = i13 - i14;
        float f14 = f12 - f10;
        this.B = f14;
        float f15 = f13 - f11;
        this.C = f15;
        c(f10, f11, f12, f13);
        if (getMeasuredHeight() == i15 && getMeasuredWidth() == i12) {
            super.layout(i10, i14, i11, i13);
        } else {
            measure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), View.MeasureSpec.makeMeasureSpec(i15, 1073741824));
            super.layout(i10, i14, i11, i13);
        }
        if (this.f7321z) {
            if (this.O == null) {
                this.P = new Paint();
                this.O = new Rect();
                this.P.set(this.f7296a);
                this.Q = this.P.getTextSize();
            }
            this.B = f14;
            this.C = f15;
            Paint paint = this.P;
            String str = this.f7310o;
            paint.getTextBounds(str, 0, str.length(), this.O);
            int iWidth = this.O.width();
            float fHeight = this.O.height() * 1.3f;
            float f16 = (f14 - this.f7314s) - this.f7313r;
            float f17 = (f15 - this.f7316u) - this.f7315t;
            float f18 = iWidth;
            if (f18 * f17 > fHeight * f16) {
                this.f7296a.setTextSize((this.Q * f16) / f18);
            } else {
                this.f7296a.setTextSize((this.Q * f17) / fHeight);
            }
            if (this.f7300e || !Float.isNaN(this.f7306k)) {
                e(Float.isNaN(this.f7306k) ? 1.0f : this.f7305j / this.f7306k);
            }
        }
    }

    public MotionLabel(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7296a = new TextPaint();
        this.f7297b = new Path();
        this.f7298c = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7299d = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7300e = false;
        this.f7301f = 0.0f;
        this.f7302g = Float.NaN;
        this.f7305j = 48.0f;
        this.f7306k = Float.NaN;
        this.f7309n = 0.0f;
        this.f7310o = "Hello World";
        this.f7311p = true;
        this.f7312q = new Rect();
        this.f7313r = 1;
        this.f7314s = 1;
        this.f7315t = 1;
        this.f7316u = 1;
        this.f7319x = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        this.f7320y = 0;
        this.f7321z = false;
        this.I = Float.NaN;
        this.J = Float.NaN;
        this.K = 0.0f;
        this.L = 0.0f;
        this.M = new Paint();
        this.N = 0;
        this.R = Float.NaN;
        this.S = Float.NaN;
        this.T = Float.NaN;
        this.U = Float.NaN;
        f(context, attributeSet);
    }

    public MotionLabel(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7296a = new TextPaint();
        this.f7297b = new Path();
        this.f7298c = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7299d = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        this.f7300e = false;
        this.f7301f = 0.0f;
        this.f7302g = Float.NaN;
        this.f7305j = 48.0f;
        this.f7306k = Float.NaN;
        this.f7309n = 0.0f;
        this.f7310o = "Hello World";
        this.f7311p = true;
        this.f7312q = new Rect();
        this.f7313r = 1;
        this.f7314s = 1;
        this.f7315t = 1;
        this.f7316u = 1;
        this.f7319x = MaterialCardView.CHECKED_ICON_GRAVITY_TOP_START;
        this.f7320y = 0;
        this.f7321z = false;
        this.I = Float.NaN;
        this.J = Float.NaN;
        this.K = 0.0f;
        this.L = 0.0f;
        this.M = new Paint();
        this.N = 0;
        this.R = Float.NaN;
        this.S = Float.NaN;
        this.T = Float.NaN;
        this.U = Float.NaN;
        f(context, attributeSet);
    }
}
