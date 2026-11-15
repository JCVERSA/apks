package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.cloud.tmc.miniapp.R;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class SwitchButton extends View {
    public final float OooO;
    public final AccelerateInterpolator OooO00o;
    public final Paint OooO0O0;
    public final Path OooO0OO;
    public final Path OooO0Oo;
    public float OooO0o;
    public final RectF OooO0o0;
    public float OooO0oO;
    public RadialGradient OooO0oo;
    public final float OooOO0;
    public int OooOO0O;
    public int OooOO0o;
    public boolean OooOOO;
    public boolean OooOOO0;
    public boolean OooOOOO;
    public int OooOOOo;
    public int OooOOo;
    public int OooOOo0;
    public int OooOOoo;
    public float OooOo;
    public OooO00o OooOo0;
    public int OooOo00;
    public float OooOo0O;
    public float OooOo0o;
    public float OooOoO;
    public float OooOoO0;
    public float OooOoOO;
    public float OooOoo;
    public float OooOoo0;
    public float OooOooO;
    public float OooOooo;
    public float Oooo0;
    public float Oooo000;
    public float Oooo00O;
    public float Oooo00o;
    public float Oooo0O0;

    public interface OooO00o {
        void OooO00o(SwitchButton switchButton, boolean z10);
    }

    public static final class SavedState extends View.BaseSavedState {

        @JvmField
        public static final Parcelable.Creator<SavedState> CREATOR = new OooO00o();
        public boolean OooO00o;

        public static final class OooO00o implements Parcelable.Creator<SavedState> {
            @Override
            public SavedState createFromParcel(Parcel in2) {
                Intrinsics.h(in2, "in");
                return new SavedState(in2);
            }

            @Override
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override
        public int describeContents() {
            return 0;
        }

        @Override
        public void writeToParcel(Parcel out, int i10) {
            Intrinsics.h(out, "out");
            super.writeToParcel(out, i10);
            out.writeInt(this.OooO00o ? 1 : 0);
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.OooO00o = 1 == parcel.readInt();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    public static void OooO00o(SwitchButton switchButton, boolean z10, boolean z11, boolean z12, int i10) {
        OooO00o oooO00o;
        if ((i10 & 4) != 0) {
            z12 = true;
        }
        int i11 = z10 ? 3 : 1;
        int i12 = switchButton.OooOO0o;
        if (i11 == i12) {
            return;
        }
        if ((i11 == 3 && (i12 == 1 || i12 == 2)) || (i11 == 1 && (i12 == 3 || i12 == 4))) {
            switchButton.OooO0o = z12 ? 1.0f : 0.0f;
        }
        switchButton.OooO0oO = z12 ? 1.0f : 0.0f;
        boolean z13 = switchButton.OooOOOO;
        if (!z13 && i11 == 3) {
            switchButton.OooOOOO = true;
        } else if (z13 && i11 == 1) {
            switchButton.OooOOOO = false;
        }
        switchButton.OooOO0O = i12;
        switchButton.OooOO0o = i11;
        switchButton.postInvalidate();
        if (!z11 || (oooO00o = switchButton.OooOo0) == null) {
            return;
        }
        oooO00o.OooO00o(switchButton, z10);
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0105  */
    /* JADX WARN: Code duplicated, block: B:71:0x011a  */
    /* JADX WARN: Code duplicated, block: B:74:0x015f  */
    /* JADX WARN: Code duplicated, block: B:77:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b6  */
    @Override
    public void onDraw(Canvas canvas) {
        float f10;
        float f11;
        float f12;
        int i10;
        int i11;
        float f13;
        float f14;
        Intrinsics.h(canvas, "canvas");
        if (this.OooOOO0) {
            this.OooO0O0.setAntiAlias(true);
            int i12 = this.OooOO0o;
            boolean z10 = i12 == 3 || i12 == 4;
            Paint paint = this.OooO0O0;
            Paint.Style style = Paint.Style.FILL;
            paint.setStyle(style);
            this.OooO0O0.setColor(z10 ? this.OooOOOo : this.OooOOoo);
            canvas.drawPath(this.OooO0OO, this.OooO0O0);
            float f15 = this.OooO0o;
            float f16 = this.OooOO0;
            float f17 = f15 - f16;
            if (f17 <= 0.0f) {
                f17 = 0.0f;
            }
            this.OooO0o = f17;
            float f18 = this.OooO0oO - f16;
            if (f18 <= 0.0f) {
                f18 = 0.0f;
            }
            this.OooO0oO = f18;
            float interpolation = this.OooO00o.getInterpolation(f17);
            float interpolation2 = this.OooO00o.getInterpolation(this.OooO0oO);
            float f19 = this.OooOoO0 * (z10 ? interpolation : 1 - interpolation);
            float f20 = (this.OooOo0O - this.OooOo0o) - this.OooOoOO;
            if (z10) {
                interpolation = 1 - interpolation;
            }
            canvas.save();
            canvas.scale(f19, f19, this.OooOo0o + (f20 * interpolation), this.OooOo);
            if (isEnabled()) {
                this.OooO0O0.setColor(this.OooOOoo);
            } else {
                this.OooO0O0.setColor(Color.parseColor("#BBBBBB"));
            }
            canvas.drawPath(this.OooO0OO, this.OooO0O0);
            canvas.restore();
            canvas.save();
            int i13 = this.OooOO0o;
            int i14 = i13 - this.OooOO0O;
            if (i14 != -3) {
                if (i14 != -2) {
                    if (i14 != -1) {
                        if (i14 != 1) {
                            if (i14 == 2) {
                                if (i13 == 3) {
                                    f13 = this.Oooo000;
                                    f14 = this.Oooo0;
                                } else if (i13 == 4) {
                                    f13 = this.Oooo00O;
                                    f14 = this.Oooo0;
                                } else {
                                    f12 = 0.0f;
                                }
                                f12 = f13 - ((f13 - f14) * interpolation2);
                            } else if (i14 == 3) {
                                f13 = this.Oooo000;
                                f14 = this.Oooo0;
                                f12 = f13 - ((f13 - f14) * interpolation2);
                            } else if (i13 == 1) {
                                f12 = this.Oooo0;
                            } else if (i13 == 3) {
                                f12 = this.Oooo000;
                            } else {
                                f12 = 0.0f;
                            }
                        } else if (i13 == 2) {
                            f12 = this.Oooo0;
                        } else if (i13 == 3) {
                            f13 = this.Oooo000;
                            f14 = this.Oooo00O;
                            f12 = f13 - ((f13 - f14) * interpolation2);
                        } else {
                            f12 = 0.0f;
                        }
                    } else if (i13 == 4) {
                        f10 = this.Oooo00O;
                        f11 = this.Oooo000;
                    } else if (i13 == 1) {
                        f12 = this.Oooo0;
                    } else {
                        f12 = 0.0f;
                    }
                } else if (i13 == 1) {
                    f10 = this.Oooo0;
                    f11 = this.Oooo00O;
                } else if (i13 == 2) {
                    f10 = this.Oooo00o;
                    f11 = this.Oooo000;
                } else {
                    f12 = 0.0f;
                }
                canvas.translate(f12 - this.Oooo0, this.Oooo0O0);
                i10 = this.OooOO0o;
                if (i10 != 4 || i10 == 2) {
                    interpolation2 = 1 - interpolation2;
                }
                this.OooO0Oo.reset();
                RectF rectF = this.OooO0o0;
                float f21 = this.OooOooO;
                float f22 = 2;
                float f23 = this.OooOoo0 / f22;
                rectF.left = f21 + f23;
                rectF.right = this.OooOooo - f23;
                this.OooO0Oo.arcTo(rectF, 90.0f, 180.0f);
                RectF rectF2 = this.OooO0o0;
                float f24 = this.OooOooO;
                float f25 = interpolation2 * this.OooOoO;
                float f26 = this.OooOoo0 / f22;
                rectF2.left = f24 + f25 + f26;
                rectF2.right = (f25 + this.OooOooo) - f26;
                this.OooO0Oo.arcTo(rectF2, 270.0f, 180.0f);
                this.OooO0Oo.close();
                if (this.OooOOO) {
                    this.OooO0O0.setStyle(style);
                    this.OooO0O0.setShader(this.OooO0oo);
                    canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                    this.OooO0O0.setShader(null);
                }
                canvas.translate(0.0f, -this.Oooo0O0);
                float f27 = this.OooOoo / f22;
                canvas.scale(0.98f, 0.98f, f27, f27);
                this.OooO0O0.setStyle(style);
                this.OooO0O0.setColor(Color.parseColor("#FFFFFF"));
                canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                this.OooO0O0.setStyle(Paint.Style.STROKE);
                this.OooO0O0.setStrokeWidth(this.OooOoo0 * 0.5f);
                Paint paint2 = this.OooO0O0;
                if (z10) {
                    i11 = this.OooOOo0;
                } else {
                    i11 = this.OooOOo;
                }
                paint2.setColor(i11);
                canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                canvas.restore();
                this.OooO0O0.reset();
                if (this.OooO0o <= 0.0f || this.OooO0oO > 0.0f) {
                    invalidate();
                }
                return;
            }
            f10 = this.Oooo0;
            f11 = this.Oooo000;
            f12 = f10 + ((f11 - f10) * interpolation2);
            canvas.translate(f12 - this.Oooo0, this.Oooo0O0);
            i10 = this.OooOO0o;
            if (i10 != 4) {
                interpolation2 = 1 - interpolation2;
            } else {
                interpolation2 = 1 - interpolation2;
            }
            this.OooO0Oo.reset();
            RectF rectF3 = this.OooO0o0;
            float f28 = this.OooOooO;
            float f29 = 2;
            float f210 = this.OooOoo0 / f29;
            rectF3.left = f28 + f210;
            rectF3.right = this.OooOooo - f210;
            this.OooO0Oo.arcTo(rectF3, 90.0f, 180.0f);
            RectF rectF4 = this.OooO0o0;
            float f211 = this.OooOooO;
            float f212 = interpolation2 * this.OooOoO;
            float f213 = this.OooOoo0 / f29;
            rectF4.left = f211 + f212 + f213;
            rectF4.right = (f212 + this.OooOooo) - f213;
            this.OooO0Oo.arcTo(rectF4, 270.0f, 180.0f);
            this.OooO0Oo.close();
            if (this.OooOOO) {
                this.OooO0O0.setStyle(style);
                this.OooO0O0.setShader(this.OooO0oo);
                canvas.drawPath(this.OooO0Oo, this.OooO0O0);
                this.OooO0O0.setShader(null);
            }
            canvas.translate(0.0f, -this.Oooo0O0);
            float f214 = this.OooOoo / f29;
            canvas.scale(0.98f, 0.98f, f214, f214);
            this.OooO0O0.setStyle(style);
            this.OooO0O0.setColor(Color.parseColor("#FFFFFF"));
            canvas.drawPath(this.OooO0Oo, this.OooO0O0);
            this.OooO0O0.setStyle(Paint.Style.STROKE);
            this.OooO0O0.setStrokeWidth(this.OooOoo0 * 0.5f);
            Paint paint3 = this.OooO0O0;
            if (z10) {
                i11 = this.OooOOo0;
            } else {
                i11 = this.OooOOo;
            }
            paint3.setColor(i11);
            canvas.drawPath(this.OooO0Oo, this.OooO0O0);
            canvas.restore();
            this.OooO0O0.reset();
            if (this.OooO0o <= 0.0f) {
            }
            invalidate();
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE || mode == 0) {
            i10 = View.MeasureSpec.makeMeasureSpec((int) (getResources().getDimension(R.dimen.mini_dp_56) + getPaddingLeft() + getPaddingRight()), 1073741824);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == Integer.MIN_VALUE || mode2 == 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + ((int) (View.MeasureSpec.getSize(i10) * this.OooO)), 1073741824);
        }
        setMeasuredDimension(i10, i11);
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        Intrinsics.f(parcelable, "null cannot be cast to non-null type com.cloud.tmc.miniapp.widget.SwitchButton.SavedState");
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        boolean z10 = savedState.OooO00o;
        this.OooOOOO = z10;
        this.OooOO0o = z10 ? 3 : 1;
        invalidate();
    }

    @Override
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.OooO00o = this.OooOOOO;
        return savedState;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        boolean z10;
        int paddingLeft;
        int width;
        int paddingTop;
        int height;
        if (i10 > getPaddingRight() + getPaddingLeft()) {
            if (i11 > getPaddingBottom() + getPaddingTop()) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        this.OooOOO0 = z10;
        if (z10) {
            int paddingLeft2 = (i10 - getPaddingLeft()) - getPaddingRight();
            int paddingTop2 = (i11 - getPaddingTop()) - getPaddingBottom();
            float f10 = paddingLeft2;
            float f11 = this.OooO;
            float f12 = paddingTop2;
            if (f10 * f11 < f12) {
                paddingLeft = getPaddingLeft();
                width = i10 - getPaddingRight();
                int i14 = ((int) (f12 - (f10 * this.OooO))) / 2;
                paddingTop = getPaddingTop() + i14;
                height = (getHeight() - getPaddingBottom()) - i14;
            } else {
                int i15 = ((int) (f10 - (f12 / f11))) / 2;
                paddingLeft = getPaddingLeft() + i15;
                width = (getWidth() - getPaddingRight()) - i15;
                paddingTop = getPaddingTop();
                height = getHeight() - getPaddingBottom();
            }
            float f13 = (int) ((height - paddingTop) * 0.07f);
            this.Oooo0O0 = f13;
            float f14 = paddingLeft;
            float f15 = paddingTop + f13;
            float f16 = width;
            this.OooOo0O = f16;
            float f17 = height - f13;
            float f18 = f17 - f15;
            float f19 = 2;
            this.OooOo0o = (f16 + f14) / f19;
            float f20 = (f17 + f15) / f19;
            this.OooOo = f20;
            this.OooOooO = f14;
            this.OooOoo = f18;
            float f21 = f14 + f18;
            this.OooOooo = f21;
            float f22 = f18 / f19;
            float f23 = 0.95f * f22;
            this.OooOoOO = f23;
            float f24 = 0.2f * f23;
            this.OooOoO = f24;
            float f25 = (f22 - f23) * f19;
            this.OooOoo0 = f25;
            float f26 = f16 - f18;
            this.Oooo000 = f26;
            this.Oooo00O = f26 - f24;
            this.Oooo0 = f14;
            this.Oooo00o = f24 + f14;
            this.OooOoO0 = 1 - (f25 / f18);
            this.OooO0OO.reset();
            RectF rectF = new RectF();
            rectF.top = f15;
            rectF.bottom = f17;
            rectF.left = f14;
            rectF.right = f21;
            this.OooO0OO.arcTo(rectF, 90.0f, 180.0f);
            float f27 = this.OooOo0O;
            rectF.left = f27 - f18;
            rectF.right = f27;
            this.OooO0OO.arcTo(rectF, 270.0f, 180.0f);
            this.OooO0OO.close();
            RectF rectF2 = this.OooO0o0;
            float f28 = this.OooOooO;
            rectF2.left = f28;
            float f29 = this.OooOooo;
            rectF2.right = f29;
            float f30 = this.OooOoo0 / f19;
            rectF2.top = f15 + f30;
            rectF2.bottom = f17 - f30;
            float f31 = (f29 + f28) / f19;
            int i16 = this.OooOo00;
            int i17 = (i16 >> 16) & 255;
            int i18 = (i16 >> 8) & 255;
            int i19 = i16 & 255;
            this.OooO0oo = new RadialGradient(f31, f20, this.OooOoOO, Color.argb(200, i17, i18, i19), Color.argb(25, i17, i18, i19), Shader.TileMode.CLAMP);
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        int i10;
        Intrinsics.h(event, "event");
        super.onTouchEvent(event);
        if (isEnabled() && (((i10 = this.OooOO0o) == 3 || i10 == 1) && this.OooO0o * this.OooO0oO == 0.0f && event.getAction() == 1)) {
            int i11 = this.OooOO0o;
            this.OooOO0O = i11;
            this.OooO0oO = 1.0f;
            if (i11 == 1) {
                OooO00o(this, true, false, false, 4);
                OooO00o oooO00o = this.OooOo0;
                if (oooO00o != null) {
                    oooO00o.OooO00o(this, true);
                }
            } else if (i11 == 3) {
                OooO00o(this, false, false, false, 4);
                OooO00o oooO00o2 = this.OooOo0;
                if (oooO00o2 != null) {
                    oooO00o2.OooO00o(this, false);
                }
            }
        }
        return true;
    }

    public final void setChecked(boolean z10) {
        OooO00o(this, z10, true, false, 4);
    }

    public final void setOnCheckedChangeListener(OooO00o oooO00o) {
        this.OooOo0 = oooO00o;
    }

    public final void setShadow(boolean z10) {
        this.OooOOO = z10;
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i10, (i12 & 8) != 0 ? 0 : i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public SwitchButton(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        Intrinsics.h(context, "context");
        this.OooO00o = new AccelerateInterpolator(2.0f);
        this.OooO0O0 = new Paint();
        this.OooO0OO = new Path();
        this.OooO0Oo = new Path();
        this.OooO0o0 = new RectF();
        this.OooO = 0.68f;
        this.OooOO0 = 0.1f;
        this.OooOOOo = Color.parseColor("#0081FF");
        this.OooOOo0 = Color.parseColor("#0081FF");
        Color.parseColor("#C2C6CE");
        this.OooOOo = Color.parseColor("#BFBFBF");
        this.OooOo00 = Color.parseColor("#333333");
        setLayerType(1, null);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchButton);
        Intrinsics.g(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…R.styleable.SwitchButton)");
        this.OooOOOO = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchButton_android_checked, this.OooOOOO);
        setEnabled(typedArrayObtainStyledAttributes.getBoolean(R.styleable.SwitchButton_android_enabled, isEnabled()));
        int i12 = this.OooOOOO ? 3 : 1;
        this.OooOO0o = i12;
        this.OooOO0O = i12;
        this.OooOOoo = androidx.core.content.b.getColor(context, R.color.mini_color_switch_off_bg);
        this.OooOOOo = androidx.core.content.b.getColor(context, R.color.mini_color_primary);
        this.OooOOo0 = androidx.core.content.b.getColor(context, R.color.mini_color_primary);
        typedArrayObtainStyledAttributes.recycle();
    }
}
