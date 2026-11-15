package defpackage;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.method.ScrollingMovementMethod;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.util.DisplayMetrics;
import android.util.Property;
import android.util.TypedValue;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.transsion.widgetslib.R;

public abstract class ea7 {
    public static final String a = "ea7";

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public final PopupWindow b;
        public final TextView c;
        public final View d;
        public final int e;

        public a(PopupWindow popupWindow, TextView textView, View view, int i) {
            this.b = popupWindow;
            this.c = textView;
            this.d = view;
            this.e = i;
        }

        @Override
        public void onGlobalLayout() {
            this.b.getContentView().getViewTreeObserver().removeOnGlobalLayoutListener(this);
            if (this.b.getContentView().getHeight() <= 0 || ea7.m(this.c) + this.d.getHeight() <= this.e) {
                return;
            }
            TextView textView = this.c;
            textView.setTextSize(0, textView.getTextSize() - 2.0f);
        }
    }

    public class b extends Visibility {
        public final View b;
        public final Context c;

        public b(View view, Context context) {
            this.b = view;
            this.c = context;
        }

        @Override
        public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.b, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, 0.9f, 1.0f), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, 0.9f, 1.0f));
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
            objectAnimatorOfPropertyValuesHolder.setDuration(200L);
            objectAnimatorOfFloat.setDuration(200L);
            Context context = this.c;
            int i = R.interpolator.os_motion_l1_easing_easeout;
            objectAnimatorOfPropertyValuesHolder.setInterpolator(AnimationUtils.loadInterpolator(context, i));
            objectAnimatorOfFloat.setInterpolator(AnimationUtils.loadInterpolator(this.c, i));
            animatorSet.playTogether(objectAnimatorOfPropertyValuesHolder, objectAnimatorOfFloat);
            return animatorSet;
        }

        @Override
        public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.b, PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_X, 1.0f, 0.9f), PropertyValuesHolder.ofFloat((Property<?, Float>) View.SCALE_Y, 1.0f, 0.9f));
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.b, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f);
            objectAnimatorOfPropertyValuesHolder.setDuration(150L);
            objectAnimatorOfFloat.setDuration(150L);
            Context context = this.c;
            int i = R.interpolator.os_motion_l1_easing_easein;
            objectAnimatorOfPropertyValuesHolder.setInterpolator(AnimationUtils.loadInterpolator(context, i));
            objectAnimatorOfFloat.setInterpolator(AnimationUtils.loadInterpolator(this.c, i));
            animatorSet.playTogether(objectAnimatorOfPropertyValuesHolder, objectAnimatorOfFloat);
            return animatorSet;
        }
    }

    public class c extends ViewOutlineProvider {
        public final int a;
        public final View b;
        public final TextView c;
        public final View d;
        public final int e;
        public final int f;
        public final View g;
        public final int h;
        public final PopupWindow i;
        public final int j;
        public final int k;
        public final int l;
        public final int m;
        public final boolean n;
        public final int o;
        public final Context p;
        public final int q;

        public c(int i, View view, TextView textView, View view2, int i2, int i3, View view3, int i4, PopupWindow popupWindow, int i5, int i6, int i7, int i8, boolean z, int i9, Context context, int i10) {
            this.a = i;
            this.b = view;
            this.c = textView;
            this.d = view2;
            this.e = i2;
            this.f = i3;
            this.g = view3;
            this.h = i4;
            this.i = popupWindow;
            this.j = i5;
            this.k = i6;
            this.l = i7;
            this.m = i8;
            this.n = z;
            this.o = i9;
            this.p = context;
            this.q = i10;
        }

        /* JADX WARN: Code duplicated, block: B:111:0x0333 A[PHI: r3
          0x0333: PHI (r3v41 int) = (r3v34 int), (r3v42 int) binds: [B:109:0x0330, B:104:0x031c] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:66:0x01f3 A[PHI: r3
          0x01f3: PHI (r3v66 int) = (r3v61 int), (r3v67 int) binds: [B:64:0x01f0, B:59:0x01dc] A[DONT_GENERATE, DONT_INLINE]] */
        @Override
        public void getOutline(View view, Outline outline) {
            int width;
            int width2;
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.a);
            int[] iArr = new int[2];
            int iM = this.b.getHeight() > 0 ? ea7.m(this.c) + this.d.getHeight() : 1;
            int i = this.e;
            if (iM > i) {
                iM = i;
            }
            if (this.f == 80) {
                this.g.getLocationInWindow(iArr);
                int i2 = iArr[0];
                int i3 = this.h;
                int i4 = i2 < i3 ? i3 - i2 : 0;
                PopupWindow popupWindow = this.i;
                View view2 = this.g;
                popupWindow.update(view2, this.j + i4, view2.getHeight() + this.k + this.l, this.m, iM);
                int width3 = ((this.g.getWidth() - this.d.getWidth()) / 2) - i4;
                int i5 = this.a;
                if (width3 < i5) {
                    width3 = i5;
                }
                if (this.n) {
                    width3 = -width3;
                }
                this.d.setTranslationX(width3);
                this.b.setPivotX(ea7.g(this.d));
                this.b.setPivotY(0.0f);
            }
            if (this.f == 81) {
                int width4 = (this.g.getWidth() - this.m) / 2;
                if (this.n) {
                    width4 = -width4;
                }
                PopupWindow popupWindow2 = this.i;
                View view3 = this.g;
                popupWindow2.update(view3, this.j + width4, this.l + view3.getHeight() + this.k, this.m, iM);
                this.b.setPivotX(ea7.g(this.d));
                this.b.setPivotY(ea7.h(this.d));
            }
            if (this.f == 8388693) {
                this.g.getLocationInWindow(iArr);
                this.g.getWidth();
                int width5 = this.m - this.g.getWidth();
                if (this.n) {
                    PopupWindow popupWindow3 = this.i;
                    View view4 = this.g;
                    popupWindow3.update(view4, this.j + width5, this.l + view4.getHeight() + this.k, this.m, iM);
                } else {
                    PopupWindow popupWindow4 = this.i;
                    View view5 = this.g;
                    popupWindow4.update(view5, this.j - width5, this.l + view5.getHeight() + this.k, this.m, iM);
                }
                int iMin = Math.min((this.m - this.d.getWidth()) - ((this.g.getWidth() - this.d.getWidth()) / 2), (this.b.getWidth() - this.d.getWidth()) - this.a);
                if (this.n) {
                    iMin = -iMin;
                }
                this.d.setTranslationX(iMin);
                this.b.setPivotX(ea7.g(this.d));
                this.b.setPivotY(0.0f);
            }
            if (this.f == 48) {
                this.g.getLocationInWindow(iArr);
                int i6 = iArr[0];
                int i7 = iArr[1];
                int width6 = this.n ? ((this.g.getWidth() + i6) - this.m) + this.j : this.j + i6;
                int i8 = this.h;
                if (width6 < i8) {
                    width6 = i8;
                }
                int i9 = this.m;
                int i10 = width6 + i9;
                int i11 = this.o;
                if (i10 > i11 - i8) {
                    width6 = (i11 - i8) - i9;
                }
                this.i.update(width6, (i7 - (this.k + iM)) + this.l, i9, iM);
                int width7 = (this.g.getWidth() - this.d.getWidth()) / 2;
                int width8 = this.n ? ((i6 - width6) + width7) - (this.m - this.d.getWidth()) : (i6 - width6) + width7;
                if (this.n) {
                    int width9 = this.m - this.d.getWidth();
                    int i12 = this.a;
                    int i13 = -(width9 - i12);
                    width2 = -i12;
                    if (width8 < i13) {
                        width8 = i13;
                    }
                    if (width8 <= width2) {
                        width2 = width8;
                    }
                } else {
                    int i14 = this.a;
                    width2 = (this.m - this.d.getWidth()) - this.a;
                    if (width8 < i14) {
                        width8 = i14;
                    }
                    if (width8 <= width2) {
                        width2 = width8;
                    }
                }
                this.d.setTranslationX(width2);
                this.b.setPivotX(ea7.g(this.d));
                View view6 = this.b;
                view6.setPivotY(view6.getHeight());
            }
            if (this.f == 49) {
                this.g.getLocationInWindow(iArr);
                int i15 = iArr[0];
                int i16 = iArr[1];
                int width10 = this.g.getWidth();
                int i17 = this.m;
                int i18 = this.j + i15 + ((width10 - i17) / 2);
                int i19 = this.h;
                if (i18 < i19) {
                    i18 = i19;
                }
                int i20 = i18 + i17;
                int i21 = this.o;
                if (i20 > i21 - i19) {
                    i18 = (i21 - i19) - i17;
                }
                this.i.update(i18, (i16 - (this.k + iM)) + this.l, i17, iM);
                int width11 = i15 + (this.g.getWidth() / 2);
                int i22 = this.m;
                int i23 = width11 - (i18 + (i22 / 2));
                int width12 = ((i22 / 2) - (this.d.getWidth() / 2)) - this.a;
                this.d.setTranslationX(Math.max(-width12, Math.min(width12, i23)));
                this.b.setPivotX(ea7.g(this.d));
                this.b.setPivotY(ea7.h(this.d));
            }
            if (this.f == 8388661) {
                this.g.getLocationInWindow(iArr);
                int i24 = iArr[0];
                int i25 = iArr[1];
                int width13 = this.g.getWidth() + i24 + this.h;
                int width14 = this.n ? this.j + i24 : (this.j + i24) - ((this.m - this.g.getWidth()) + ((width13 <= this.o || olb.Q(this.p)) ? 0 : width13 - this.o));
                int i26 = this.h;
                if (width14 < i26) {
                    width14 = i26;
                }
                int i27 = this.m;
                int i28 = width14 + i27;
                int i29 = this.o;
                if (i28 > i29 - i26) {
                    width14 = (i29 - i26) - i27;
                }
                this.i.update(width14, (i25 - (this.k + iM)) + this.l, i27, iM);
                int width15 = (this.g.getWidth() - this.d.getWidth()) / 2;
                int width16 = this.n ? ((i24 - width14) + width15) - (this.m - this.d.getWidth()) : (i24 - width14) + width15;
                if (this.n) {
                    int width17 = this.m - this.d.getWidth();
                    int i30 = this.a;
                    int i31 = -(width17 - i30);
                    width = -i30;
                    if (width16 < i31) {
                        width16 = i31;
                    }
                    if (width16 <= width) {
                        width = width16;
                    }
                } else {
                    int i32 = this.a;
                    width = (this.m - this.d.getWidth()) - this.a;
                    if (width16 < i32) {
                        width16 = i32;
                    }
                    if (width16 <= width) {
                        width = width16;
                    }
                }
                this.d.setTranslationX(width);
                this.b.setPivotX(ea7.g(this.d));
                View view7 = this.b;
                view7.setPivotY(view7.getHeight());
            }
            if (this.f == 8388627) {
                this.g.getLocationInWindow(iArr);
                int iMin2 = Math.min((int) (Math.min((iArr[0] - (this.h * 2)) - ea7.k(view), this.q) + (this.h * 0.5f)), this.m + this.d.getWidth());
                PopupWindow popupWindow5 = this.i;
                View view8 = this.g;
                popupWindow5.update(view8, (-(this.k + iMin2)) + this.j, ((view8.getHeight() - iM) / 2) + this.l, iMin2, iM);
                this.b.setPivotX(ea7.g(this.d));
                this.b.setPivotY(ea7.h(this.d));
            }
            if (this.f == 8388629) {
                this.g.getLocationInWindow(iArr);
                int iMin3 = Math.min((int) (Math.min(((this.o - (iArr[0] + this.g.getWidth())) - (this.h * 2)) + ea7.k(view) + ea7.l(view), this.q) + (this.h * 0.5f)), this.m + this.d.getWidth());
                PopupWindow popupWindow6 = this.i;
                View view9 = this.g;
                popupWindow6.update(view9, view9.getWidth() + this.k + this.j, ((this.g.getHeight() - iM) / 2) + this.l, iMin3, iM);
                this.b.setPivotX(ea7.g(this.d));
                this.b.setPivotY(ea7.h(this.d));
            }
        }
    }

    public class d implements View.OnClickListener {
        public final PopupWindow b;

        public d(PopupWindow popupWindow) {
            this.b = popupWindow;
        }

        @Override
        public void onClick(View view) {
            this.b.dismiss();
        }
    }

    public static Bitmap f(Drawable drawable, float f) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, intrinsicWidth, intrinsicHeight);
        RectF rectF2 = new RectF();
        boolean z = f % 360.0f != 0.0f;
        if (z) {
            Matrix matrix = new Matrix();
            matrix.setRotate(f);
            matrix.mapRect(rectF2, rectF);
        } else {
            rectF2.set(rectF);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap((int) rectF2.width(), (int) rectF2.height(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        if (z) {
            canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
            if (f % 180.0f != 0.0f) {
                canvas.translate((rectF2.width() - rectF.width()) / 2.0f, (rectF2.height() - rectF.height()) / 2.0f);
            }
            canvas.rotate(f, rectF.centerX(), rectF.centerY());
        }
        drawable.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static float g(View view) {
        return view.getX() + (view.getWidth() / 2.0f);
    }

    public static float h(View view) {
        return view.getY() + view.getTranslationY() + (view.getHeight() / 2.0f);
    }

    public static DisplayCutout i(View view) {
        Display display = view.getDisplay();
        if (display != null) {
            return display.getCutout();
        }
        return null;
    }

    public static int j(Context context, int[] iArr, int i) {
        return Math.max(0, (olb.L(context) + i) - iArr[1]);
    }

    public static int k(View view) {
        DisplayCutout displayCutoutI = i(view);
        if (displayCutoutI == null) {
            return 0;
        }
        return displayCutoutI.getSafeInsetLeft();
    }

    public static int l(View view) {
        DisplayCutout displayCutoutI = i(view);
        if (displayCutoutI == null) {
            return 0;
        }
        return displayCutoutI.getSafeInsetRight();
    }

    public static int m(TextView textView) {
        int paddingTop = textView.getPaddingTop() + textView.getPaddingBottom();
        int lineCount = textView.getLineCount();
        Rect rect = new Rect();
        for (int i = 0; i < lineCount; i++) {
            rect.setEmpty();
            textView.getLineBounds(i, rect);
            paddingTop += rect.height();
        }
        return paddingTop;
    }

    public static int n(Context context, int[] iArr, int i) {
        return (olb.G(context) - i) - iArr[1];
    }

    public static void o(PopupWindow popupWindow, TextView textView, int i, View view) {
        popupWindow.getContentView().getViewTreeObserver().addOnGlobalLayoutListener(new a(popupWindow, textView, view, i));
    }

    public static PopupWindow p(View view, String str, int i) {
        return q(view, str, i, 0, 0);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0326  */
    /* JADX WARN: Code duplicated, block: B:106:0x035b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:110:0x0362  */
    /* JADX WARN: Code duplicated, block: B:112:0x0366  */
    /* JADX WARN: Code duplicated, block: B:113:0x0369  */
    /* JADX WARN: Code duplicated, block: B:117:0x0379  */
    /* JADX WARN: Code duplicated, block: B:119:0x0381  */
    /* JADX WARN: Code duplicated, block: B:121:0x038e  */
    /* JADX WARN: Code duplicated, block: B:125:0x0398  */
    /* JADX WARN: Code duplicated, block: B:127:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:130:0x03a8  */
    /* JADX WARN: Code duplicated, block: B:133:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:134:0x03b7  */
    /* JADX WARN: Code duplicated, block: B:136:0x03bb  */
    /* JADX WARN: Code duplicated, block: B:139:0x03c4 A[PHI: r0 r3 r24
      0x03c4: PHI (r0v37 int) = (r0v36 int), (r0v36 int), (r0v40 int) binds: [B:138:0x03c2, B:123:0x0395, B:115:0x0376] A[DONT_GENERATE, DONT_INLINE]
      0x03c4: PHI (r3v28 int) = (r3v20 int), (r3v26 int), (r3v34 int) binds: [B:138:0x03c2, B:123:0x0395, B:115:0x0376] A[DONT_GENERATE, DONT_INLINE]
      0x03c4: PHI (r24v6 android.view.View) = (r24v5 android.view.View), (r24v5 android.view.View), (r24v9 android.view.View) binds: [B:138:0x03c2, B:123:0x0395, B:115:0x0376] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:140:0x03c6 A[PHI: r0 r24 r34
      0x03c6: PHI (r0v39 int) = (r0v36 int), (r0v36 int), (r0v40 int) binds: [B:138:0x03c2, B:123:0x0395, B:115:0x0376] A[DONT_GENERATE, DONT_INLINE]
      0x03c6: PHI (r24v8 android.view.View) = (r24v5 android.view.View), (r24v5 android.view.View), (r24v9 android.view.View) binds: [B:138:0x03c2, B:123:0x0395, B:115:0x0376] A[DONT_GENERATE, DONT_INLINE]
      0x03c6: PHI (r34v3 int) = (r34v1 int), (r34v2 int), (r34v4 int) binds: [B:138:0x03c2, B:123:0x0395, B:115:0x0376] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:144:0x0417  */
    /* JADX WARN: Code duplicated, block: B:145:0x0422  */
    /* JADX WARN: Code duplicated, block: B:34:0x0100  */
    /* JADX WARN: Code duplicated, block: B:38:0x0109  */
    /* JADX WARN: Code duplicated, block: B:40:0x011d  */
    /* JADX WARN: Code duplicated, block: B:41:0x012c  */
    /* JADX WARN: Code duplicated, block: B:61:0x0194  */
    /* JADX WARN: Code duplicated, block: B:63:0x019c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:65:0x019e  */
    /* JADX WARN: Code duplicated, block: B:67:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:68:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:71:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:73:0x0200 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:75:0x0202  */
    /* JADX WARN: Code duplicated, block: B:77:0x024a  */
    /* JADX WARN: Code duplicated, block: B:78:0x0259  */
    /* JADX WARN: Code duplicated, block: B:80:0x025d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:82:0x025f  */
    /* JADX WARN: Code duplicated, block: B:89:0x0290  */
    /* JADX WARN: Code duplicated, block: B:94:0x02a7 A[PHI: r20
      0x02a7: PHI (r20v11 int) = (r20v10 int), (r20v12 int), (r20v12 int) binds: [B:88:0x028e, B:90:0x029a, B:92:0x02a2] A[DONT_GENERATE, DONT_INLINE]] */
    public static PopupWindow q(View view, String str, int i, int i2, int i3) {
        int i4;
        RelativeLayout.LayoutParams layoutParams;
        int i5;
        int i6;
        int iMin;
        PopupWindow popupWindow;
        View view2;
        int iMin2;
        int i7;
        int i8;
        View view3;
        int i9;
        int width;
        int i10;
        int width2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int width3;
        int i16;
        int i17;
        int i18;
        int i19;
        int paddingTop;
        Drawable drawable;
        Drawable drawable2;
        if (view == null) {
            return null;
        }
        boolean z = view.getLayoutDirection() == 1;
        Context context = view.getContext();
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        float fT = olb.t(context, R.dimen.os_pop_tip_slide_width_weight);
        float fT2 = olb.t(context, R.dimen.os_pop_tip_center_width_weight);
        int iH = olb.H(context);
        int iApplyDimension = (int) TypedValue.applyDimension(1, 6.0f, displayMetrics);
        int iApplyDimension2 = (int) TypedValue.applyDimension(1, 12.0f, displayMetrics);
        int iApplyDimension3 = (int) TypedValue.applyDimension(1, 8.0f, displayMetrics);
        float f = iH;
        int i20 = (int) (fT2 * f);
        int iT = olb.Z(context) ? (int) (displayMetrics.widthPixels * olb.t(context, R.dimen.os_ultra_small_pop_tip_slide_width_weight)) : (int) (f * fT);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        view.getRootView().getLocationOnScreen(iArr2);
        int iJ = j(context, iArr2, iApplyDimension);
        int iN = n(context, iArr2, iApplyDimension);
        boolean z2 = z;
        int iMax = Math.max(iN - iJ, 0);
        if (i == 80 || i == 81 || i == 8388693) {
            iMax = Math.max(iN - (((iArr[1] + view.getHeight()) + iApplyDimension) + i3), 0);
        } else if (i == 48 || i == 49 || i == 8388661) {
            iMax = Math.max(((iArr[1] + i3) - iApplyDimension) - iJ, 0);
        }
        View viewInflate = View.inflate(context, R.layout.os_popup_tip_layout, null);
        int i21 = R.id.os_popup_tip_arrow;
        View viewFindViewById = viewInflate.findViewById(i21);
        TextView textView = (TextView) viewInflate.findViewById(R.id.os_popup_tip_text);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.os_popup_tip_close);
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.os_popup_tip_text_father);
        if (i != 80) {
            i4 = 81;
            if (i == 81) {
                if (i == i4) {
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                    layoutParams2.addRule(14);
                    viewFindViewById.setLayoutParams(layoutParams2);
                    if (olb.Z(context)) {
                        iT = (int) (displayMetrics.widthPixels - olb.h(context, 32));
                    } else {
                        iT = i20;
                    }
                }
                layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.addRule(3, i21);
            } else if (i == 8388693) {
                i4 = 81;
                if (i == i4) {
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                    layoutParams3.addRule(14);
                    viewFindViewById.setLayoutParams(layoutParams3);
                    if (olb.Z(context)) {
                        iT = (int) (displayMetrics.widthPixels - olb.h(context, 32));
                    } else {
                        iT = i20;
                    }
                }
                layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.addRule(3, i21);
            } else {
                layoutParams = null;
            }
        } else {
            i4 = 81;
            if (i == i4) {
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                layoutParams4.addRule(14);
                viewFindViewById.setLayoutParams(layoutParams4);
                if (olb.Z(context)) {
                    iT = (int) (displayMetrics.widthPixels - olb.h(context, 32));
                } else {
                    iT = i20;
                }
            }
            layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.addRule(3, i21);
        }
        if (i != 48) {
            i5 = 49;
            if (i != 49 && i != 8388661) {
                viewInflate = viewInflate;
            }
            if (i == 8388627) {
                drawable2 = ContextCompat.getDrawable(context, R.drawable.os_popup_tip_arrow);
                if (drawable2 == null) {
                    return null;
                }
                RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                layoutParams5.addRule(21);
                layoutParams5.addRule(15);
                layoutParams5.width = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_height);
                layoutParams5.height = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_width);
                viewFindViewById.setLayoutParams(layoutParams5);
                viewFindViewById.setBackground(new BitmapDrawable(resources, f(drawable2, 90.0f)));
                layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.addRule(16, i21);
                layoutParams.addRule(15);
                if (olb.Z(context)) {
                    iT = (int) (displayMetrics.widthPixels - olb.h(context, 32));
                } else {
                    iT = i20;
                }
            }
            if (i == 8388629) {
                drawable = ContextCompat.getDrawable(context, R.drawable.os_popup_tip_arrow);
                if (drawable == null) {
                    return null;
                }
                RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                layoutParams6.addRule(20);
                layoutParams6.addRule(15);
                layoutParams6.width = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_height);
                layoutParams6.height = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_width);
                viewFindViewById.setLayoutParams(layoutParams6);
                viewFindViewById.setBackground(new BitmapDrawable(resources, f(drawable, -90.0f)));
                layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.addRule(17, i21);
                layoutParams.addRule(15);
                if (olb.Z(context)) {
                    iT = (int) (displayMetrics.widthPixels - olb.h(context, 32));
                } else {
                    iT = i20;
                }
            }
            if (layoutParams == null) {
                return null;
            }
            relativeLayout.setLayoutParams(layoutParams);
            textView.setText(olb.H0(str));
            textView.setMovementMethod(ScrollingMovementMethod.getInstance());
            if (iMax > 0 && (paddingTop = (iMax - textView.getPaddingTop()) - textView.getPaddingBottom()) > 0) {
                textView.setMaxHeight(paddingTop);
            }
            int paddingStart = textView.getPaddingStart();
            int paddingEnd = textView.getPaddingEnd();
            if (olb.g0(context)) {
                iT = resources.getDimensionPixelSize(R.dimen.os_popup_tip_pad_max_width);
                if (olb.Q(context) || iH >= resources.getDimensionPixelSize(R.dimen.os_small_popup_tip_pad_width)) {
                    i6 = iT;
                } else {
                    i6 = (int) (f * fT);
                }
            } else {
                i6 = iT;
            }
            int i22 = (i6 - paddingStart) - paddingEnd;
            int iMeasureText = (int) (textView.getPaint().measureText(str) + paddingStart + paddingEnd);
            iMin = Math.min(iMeasureText, i6);
            bq5.p(a, "showPopupTip, textRemainSpace: " + i22 + ", popupWidthTmp: " + iMeasureText + ", popupWidthMax: " + i6 + ", popupWidth: " + iMin);
            view2 = viewInflate;
            popupWindow = new PopupWindow(view2, iMin, -2);
            popupWindow.setBackgroundDrawable(new ColorDrawable());
            popupWindow.setContentView(view2);
            popupWindow.setOverlapAnchor(true);
            popupWindow.setOutsideTouchable(true);
            o(popupWindow, textView, iMax, viewFindViewById);
            b bVar = new b(view2, context);
            popupWindow.setEnterTransition(bVar);
            popupWindow.setExitTransition(bVar);
            popupWindow.setClippingEnabled(false);
            if (i != 48 || i == 49 || i == 8388661) {
                view2.measure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
                iMin2 = Math.min(view2.getMeasuredHeight(), iMax);
                i7 = iArr[0];
                int i23 = iArr[1];
                i8 = i23 - iJ;
                if (i8 > 0 && iMin2 > i8) {
                    iMin2 = i8;
                }
                if (i == 48) {
                    if (i7 < i9) {
                        i9 = iApplyDimension3;
                        i18 = i9 - i7;
                    } else {
                        i9 = iApplyDimension3;
                        i18 = 0;
                    }
                    int i24 = i7 + i2 + i18;
                    view3 = view2;
                    i19 = i24 + iMin;
                    i14 = i24;
                    i15 = iH - i9;
                    if (i19 > i15) {
                        i17 = i15 - iMin;
                    } else {
                        i17 = i14;
                    }
                } else {
                    view3 = view2;
                    if (i == 49) {
                        width3 = i7 + i2 + ((view.getWidth() - iMin) / 2);
                        if (width3 < i9) {
                            i9 = iApplyDimension3;
                            width3 = i9;
                        }
                        i9 = iApplyDimension3;
                        i16 = width3 + iMin;
                        i14 = width3;
                        i15 = iH - i9;
                        if (i16 > i15) {
                            i17 = i15 - iMin;
                        } else {
                            i17 = i14;
                        }
                    } else {
                        width = view.getWidth() + i7 + i9;
                        if (width > iH || olb.Q(context)) {
                            i9 = iApplyDimension3;
                            i9 = iApplyDimension3;
                            i10 = 0;
                        } else {
                            i9 = iApplyDimension3;
                            i10 = width - iH;
                        }
                        width2 = (iMin - view.getWidth()) + i10;
                        i11 = i7 + i2;
                        if (z2) {
                            i12 = i11 + width2;
                        } else {
                            i12 = i11 - width2;
                        }
                        if (i12 < i9) {
                            i12 = i9;
                        }
                        i13 = i12 + iMin;
                        i14 = i12;
                        i15 = iH - i9;
                        if (i13 > i15) {
                            i17 = i15 - iMin;
                        } else {
                            i17 = i14;
                        }
                    }
                }
                popupWindow.setOverlapAnchor(false);
                popupWindow.showAtLocation(view, 0, i17, (i23 - (iMin2 + iApplyDimension)) + i3);
            } else {
                popupWindow.showAsDropDown(view, i2, i3);
                view3 = view2;
                i9 = iApplyDimension3;
            }
            textView.setClipToOutline(true);
            textView.setOutlineProvider(new c(iApplyDimension2, view3, textView, viewFindViewById, iMax, i, view, i9, popupWindow, i2, iApplyDimension, i3, iMin, z2, iH, context, i20));
            if (imageView != null) {
                return popupWindow;
            }
            imageView.setOnClickListener(new d(popupWindow));
            return popupWindow;
        }
        i5 = 49;
        RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
        layoutParams7.addRule(12);
        if (i == i5) {
            layoutParams7.addRule(14);
            iT = olb.Z(context) ? (int) (displayMetrics.widthPixels - olb.h(context, 32)) : i20;
        }
        viewFindViewById.setLayoutParams(layoutParams7);
        viewFindViewById.setRotation(180.0f);
        layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        layoutParams.addRule(2, i21);
        if (i == 8388627) {
            drawable2 = ContextCompat.getDrawable(context, R.drawable.os_popup_tip_arrow);
            if (drawable2 == null) {
                return null;
            }
            RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams8.addRule(21);
            layoutParams8.addRule(15);
            layoutParams8.width = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_height);
            layoutParams8.height = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_width);
            viewFindViewById.setLayoutParams(layoutParams8);
            viewFindViewById.setBackground(new BitmapDrawable(resources, f(drawable2, 90.0f)));
            layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.addRule(16, i21);
            layoutParams.addRule(15);
            if (olb.Z(context)) {
                iT = (int) (displayMetrics.widthPixels - olb.h(context, 32));
            } else {
                iT = i20;
            }
        }
        if (i == 8388629) {
            drawable = ContextCompat.getDrawable(context, R.drawable.os_popup_tip_arrow);
            if (drawable == null) {
                return null;
            }
            RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams9.addRule(20);
            layoutParams9.addRule(15);
            layoutParams9.width = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_height);
            layoutParams9.height = resources.getDimensionPixelOffset(R.dimen.os_popup_tip_arrow_width);
            viewFindViewById.setLayoutParams(layoutParams9);
            viewFindViewById.setBackground(new BitmapDrawable(resources, f(drawable, -90.0f)));
            layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.addRule(17, i21);
            layoutParams.addRule(15);
            if (olb.Z(context)) {
                iT = (int) (displayMetrics.widthPixels - olb.h(context, 32));
            } else {
                iT = i20;
            }
        }
        if (layoutParams == null) {
            return null;
        }
        relativeLayout.setLayoutParams(layoutParams);
        textView.setText(olb.H0(str));
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        if (iMax > 0) {
            textView.setMaxHeight(paddingTop);
        }
        int paddingStart2 = textView.getPaddingStart();
        int paddingEnd2 = textView.getPaddingEnd();
        if (olb.g0(context)) {
            iT = resources.getDimensionPixelSize(R.dimen.os_popup_tip_pad_max_width);
            if (olb.Q(context)) {
                i6 = iT;
            } else {
                i6 = iT;
            }
        } else {
            i6 = iT;
        }
        int i25 = (i6 - paddingStart2) - paddingEnd2;
        int iMeasureText2 = (int) (textView.getPaint().measureText(str) + paddingStart2 + paddingEnd2);
        iMin = Math.min(iMeasureText2, i6);
        bq5.p(a, "showPopupTip, textRemainSpace: " + i25 + ", popupWidthTmp: " + iMeasureText2 + ", popupWidthMax: " + i6 + ", popupWidth: " + iMin);
        view2 = viewInflate;
        popupWindow = new PopupWindow(view2, iMin, -2);
        popupWindow.setBackgroundDrawable(new ColorDrawable());
        popupWindow.setContentView(view2);
        popupWindow.setOverlapAnchor(true);
        popupWindow.setOutsideTouchable(true);
        o(popupWindow, textView, iMax, viewFindViewById);
        b bVar2 = new b(view2, context);
        popupWindow.setEnterTransition(bVar2);
        popupWindow.setExitTransition(bVar2);
        popupWindow.setClippingEnabled(false);
        if (i != 48) {
            view2.measure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            iMin2 = Math.min(view2.getMeasuredHeight(), iMax);
            i7 = iArr[0];
            int i26 = iArr[1];
            i8 = i26 - iJ;
            if (i8 > 0) {
                iMin2 = i8;
            }
            if (i == 48) {
                if (i7 < i9) {
                    i9 = iApplyDimension3;
                    i18 = i9 - i7;
                } else {
                    i9 = iApplyDimension3;
                    i18 = 0;
                }
                int i27 = i7 + i2 + i18;
                view3 = view2;
                i19 = i27 + iMin;
                i14 = i27;
                i15 = iH - i9;
                if (i19 > i15) {
                    i17 = i15 - iMin;
                } else {
                    i17 = i14;
                }
            } else {
                view3 = view2;
                if (i == 49) {
                    width3 = i7 + i2 + ((view.getWidth() - iMin) / 2);
                    if (width3 < i9) {
                        i9 = iApplyDimension3;
                        width3 = i9;
                    }
                    i9 = iApplyDimension3;
                    i16 = width3 + iMin;
                    i14 = width3;
                    i15 = iH - i9;
                    if (i16 > i15) {
                        i17 = i15 - iMin;
                    } else {
                        i17 = i14;
                    }
                } else {
                    width = view.getWidth() + i7 + i9;
                    if (width > iH) {
                        i9 = iApplyDimension3;
                        i9 = iApplyDimension3;
                        i10 = 0;
                    } else {
                        i9 = iApplyDimension3;
                        i9 = iApplyDimension3;
                        i10 = 0;
                    }
                    width2 = (iMin - view.getWidth()) + i10;
                    i11 = i7 + i2;
                    if (z2) {
                        i12 = i11 + width2;
                    } else {
                        i12 = i11 - width2;
                    }
                    if (i12 < i9) {
                        i12 = i9;
                    }
                    i13 = i12 + iMin;
                    i14 = i12;
                    i15 = iH - i9;
                    if (i13 > i15) {
                        i17 = i15 - iMin;
                    } else {
                        i17 = i14;
                    }
                }
            }
            popupWindow.setOverlapAnchor(false);
            popupWindow.showAtLocation(view, 0, i17, (i26 - (iMin2 + iApplyDimension)) + i3);
        } else {
            view2.measure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
            iMin2 = Math.min(view2.getMeasuredHeight(), iMax);
            i7 = iArr[0];
            int i28 = iArr[1];
            i8 = i28 - iJ;
            if (i8 > 0) {
                iMin2 = i8;
            }
            if (i == 48) {
                if (i7 < i9) {
                    i9 = iApplyDimension3;
                    i18 = i9 - i7;
                } else {
                    i9 = iApplyDimension3;
                    i18 = 0;
                }
                int i29 = i7 + i2 + i18;
                view3 = view2;
                i19 = i29 + iMin;
                i14 = i29;
                i15 = iH - i9;
                if (i19 > i15) {
                    i17 = i15 - iMin;
                } else {
                    i17 = i14;
                }
            } else {
                view3 = view2;
                if (i == 49) {
                    width3 = i7 + i2 + ((view.getWidth() - iMin) / 2);
                    if (width3 < i9) {
                        i9 = iApplyDimension3;
                        width3 = i9;
                    }
                    i9 = iApplyDimension3;
                    i16 = width3 + iMin;
                    i14 = width3;
                    i15 = iH - i9;
                    if (i16 > i15) {
                        i17 = i15 - iMin;
                    } else {
                        i17 = i14;
                    }
                } else {
                    width = view.getWidth() + i7 + i9;
                    if (width > iH) {
                        i9 = iApplyDimension3;
                        i9 = iApplyDimension3;
                        i10 = 0;
                    } else {
                        i9 = iApplyDimension3;
                        i9 = iApplyDimension3;
                        i10 = 0;
                    }
                    width2 = (iMin - view.getWidth()) + i10;
                    i11 = i7 + i2;
                    if (z2) {
                        i12 = i11 + width2;
                    } else {
                        i12 = i11 - width2;
                    }
                    if (i12 < i9) {
                        i12 = i9;
                    }
                    i13 = i12 + iMin;
                    i14 = i12;
                    i15 = iH - i9;
                    if (i13 > i15) {
                        i17 = i15 - iMin;
                    } else {
                        i17 = i14;
                    }
                }
            }
            popupWindow.setOverlapAnchor(false);
            popupWindow.showAtLocation(view, 0, i17, (i28 - (iMin2 + iApplyDimension)) + i3);
        }
        textView.setClipToOutline(true);
        textView.setOutlineProvider(new c(iApplyDimension2, view3, textView, viewFindViewById, iMax, i, view, i9, popupWindow, i2, iApplyDimension, i3, iMin, z2, iH, context, i20));
        if (imageView != null) {
            return popupWindow;
        }
        imageView.setOnClickListener(new d(popupWindow));
        return popupWindow;
    }
}
