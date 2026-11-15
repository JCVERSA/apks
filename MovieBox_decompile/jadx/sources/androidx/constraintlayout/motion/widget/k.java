package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;

public class k extends d {
    HashMap A;

    private int f7020g = -1;

    private String f7021h = null;

    private int f7022i;

    private String f7023j;

    private String f7024k;

    private int f7025l;

    private int f7026m;

    private View f7027n;

    float f7028o;

    private boolean f7029p;

    private boolean f7030q;

    private boolean f7031r;

    private float f7032s;

    private float f7033t;

    private boolean f7034u;

    int f7035v;

    int f7036w;

    int f7037x;

    RectF f7038y;

    RectF f7039z;

    private static class a {

        private static SparseIntArray f7040a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7040a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyTrigger_framePosition, 8);
            f7040a.append(R$styleable.KeyTrigger_onCross, 4);
            f7040a.append(R$styleable.KeyTrigger_onNegativeCross, 1);
            f7040a.append(R$styleable.KeyTrigger_onPositiveCross, 2);
            f7040a.append(R$styleable.KeyTrigger_motionTarget, 7);
            f7040a.append(R$styleable.KeyTrigger_triggerId, 6);
            f7040a.append(R$styleable.KeyTrigger_triggerSlack, 5);
            f7040a.append(R$styleable.KeyTrigger_motion_triggerOnCollision, 9);
            f7040a.append(R$styleable.KeyTrigger_motion_postLayoutCollision, 10);
            f7040a.append(R$styleable.KeyTrigger_triggerReceiver, 11);
            f7040a.append(R$styleable.KeyTrigger_viewTransitionOnCross, 12);
            f7040a.append(R$styleable.KeyTrigger_viewTransitionOnNegativeCross, 13);
            f7040a.append(R$styleable.KeyTrigger_viewTransitionOnPositiveCross, 14);
        }

        public static void a(k kVar, TypedArray typedArray, Context context) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f7040a.get(index)) {
                    case 1:
                        kVar.f7023j = typedArray.getString(index);
                        break;
                    case 2:
                        kVar.f7024k = typedArray.getString(index);
                        break;
                    case 3:
                    default:
                        Log.e("KeyTrigger", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7040a.get(index));
                        break;
                    case 4:
                        kVar.f7021h = typedArray.getString(index);
                        break;
                    case 5:
                        kVar.f7028o = typedArray.getFloat(index, kVar.f7028o);
                        break;
                    case 6:
                        kVar.f7025l = typedArray.getResourceId(index, kVar.f7025l);
                        break;
                    case 7:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, kVar.f6942b);
                            kVar.f6942b = resourceId;
                            if (resourceId == -1) {
                                kVar.f6943c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            kVar.f6943c = typedArray.getString(index);
                        } else {
                            kVar.f6942b = typedArray.getResourceId(index, kVar.f6942b);
                        }
                        break;
                    case 8:
                        int integer = typedArray.getInteger(index, kVar.f6941a);
                        kVar.f6941a = integer;
                        kVar.f7032s = (integer + 0.5f) / 100.0f;
                        break;
                    case 9:
                        kVar.f7026m = typedArray.getResourceId(index, kVar.f7026m);
                        break;
                    case 10:
                        kVar.f7034u = typedArray.getBoolean(index, kVar.f7034u);
                        break;
                    case 11:
                        kVar.f7022i = typedArray.getResourceId(index, kVar.f7022i);
                        break;
                    case 12:
                        kVar.f7037x = typedArray.getResourceId(index, kVar.f7037x);
                        break;
                    case 13:
                        kVar.f7035v = typedArray.getResourceId(index, kVar.f7035v);
                        break;
                    case 14:
                        kVar.f7036w = typedArray.getResourceId(index, kVar.f7036w);
                        break;
                }
            }
        }
    }

    public k() {
        int i10 = d.f6940f;
        this.f7022i = i10;
        this.f7023j = null;
        this.f7024k = null;
        this.f7025l = i10;
        this.f7026m = i10;
        this.f7027n = null;
        this.f7028o = 0.1f;
        this.f7029p = true;
        this.f7030q = true;
        this.f7031r = true;
        this.f7032s = Float.NaN;
        this.f7034u = false;
        this.f7035v = i10;
        this.f7036w = i10;
        this.f7037x = i10;
        this.f7038y = new RectF();
        this.f7039z = new RectF();
        this.A = new HashMap();
        this.f6944d = 5;
        this.f6945e = new HashMap();
    }

    private void A(String str, View view) {
        boolean z10 = str.length() == 1;
        if (!z10) {
            str = str.substring(1).toLowerCase(Locale.ROOT);
        }
        for (String str2 : this.f6945e.keySet()) {
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            if (z10 || lowerCase.matches(str)) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f6945e.get(str2);
                if (constraintAttribute != null) {
                    constraintAttribute.a(view);
                }
            }
        }
    }

    private void B(RectF rectF, View view, boolean z10) {
        rectF.top = view.getTop();
        rectF.bottom = view.getBottom();
        rectF.left = view.getLeft();
        rectF.right = view.getRight();
        if (z10) {
            view.getMatrix().mapRect(rectF);
        }
    }

    private void z(String str, View view) {
        Method method;
        if (str == null) {
            return;
        }
        if (str.startsWith(".")) {
            A(str, view);
            return;
        }
        if (this.A.containsKey(str)) {
            method = (Method) this.A.get(str);
            if (method == null) {
                return;
            }
        } else {
            method = null;
        }
        if (method == null) {
            try {
                method = view.getClass().getMethod(str, null);
                this.A.put(str, method);
            } catch (NoSuchMethodException unused) {
                this.A.put(str, null);
                Log.e("KeyTrigger", "Could not find method \"" + str + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.d(view));
                return;
            }
        }
        try {
            method.invoke(view, null);
        } catch (Exception unused2) {
            Log.e("KeyTrigger", "Exception in call \"" + this.f7021h + "\"on class " + view.getClass().getSimpleName() + " " + androidx.constraintlayout.motion.widget.a.d(view));
        }
    }

    @Override
    public d clone() {
        return new k().c(this);
    }

    @Override
    public d c(d dVar) {
        super.c(dVar);
        k kVar = (k) dVar;
        this.f7020g = kVar.f7020g;
        this.f7021h = kVar.f7021h;
        this.f7022i = kVar.f7022i;
        this.f7023j = kVar.f7023j;
        this.f7024k = kVar.f7024k;
        this.f7025l = kVar.f7025l;
        this.f7026m = kVar.f7026m;
        this.f7027n = kVar.f7027n;
        this.f7028o = kVar.f7028o;
        this.f7029p = kVar.f7029p;
        this.f7030q = kVar.f7030q;
        this.f7031r = kVar.f7031r;
        this.f7032s = kVar.f7032s;
        this.f7033t = kVar.f7033t;
        this.f7034u = kVar.f7034u;
        this.f7038y = kVar.f7038y;
        this.f7039z = kVar.f7039z;
        this.A = kVar.A;
        return this;
    }

    @Override
    public void e(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTrigger), context);
    }

    /* JADX WARN: Code duplicated, block: B:38:0x008c  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:58:0x00dc  */
    public void y(float f10, View view) {
        boolean z10;
        boolean z11;
        boolean z12;
        float f11;
        float f12;
        boolean z13;
        boolean z14;
        float f13;
        float f14;
        boolean z15;
        if (this.f7026m != d.f6940f) {
            if (this.f7027n == null) {
                this.f7027n = ((ViewGroup) view.getParent()).findViewById(this.f7026m);
            }
            B(this.f7038y, this.f7027n, this.f7034u);
            B(this.f7039z, view, this.f7034u);
            if (this.f7038y.intersect(this.f7039z)) {
                if (this.f7029p) {
                    this.f7029p = false;
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (this.f7031r) {
                    this.f7031r = false;
                    z15 = true;
                } else {
                    z15 = false;
                }
                this.f7030q = true;
                z14 = z15;
                z12 = false;
            } else {
                if (this.f7029p) {
                    z10 = false;
                } else {
                    this.f7029p = true;
                    z10 = true;
                }
                if (this.f7030q) {
                    this.f7030q = false;
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.f7031r = true;
                z14 = false;
            }
        } else {
            if (this.f7029p) {
                float f15 = this.f7032s;
                if ((f10 - f15) * (this.f7033t - f15) < 0.0f) {
                    this.f7029p = false;
                    z10 = true;
                }
                if (this.f7030q) {
                    f13 = this.f7032s;
                    f14 = f10 - f13;
                    if ((this.f7033t - f13) * f14 >= 0.0f && f14 < 0.0f) {
                        this.f7030q = false;
                        z11 = true;
                    }
                    if (this.f7031r) {
                        f11 = this.f7032s;
                        f12 = f10 - f11;
                        if ((this.f7033t - f11) * f12 < 0.0f || f12 <= 0.0f) {
                            z13 = false;
                        } else {
                            this.f7031r = false;
                            z13 = true;
                        }
                        boolean z16 = z11;
                        z14 = z13;
                        z12 = z16;
                    } else {
                        if (Math.abs(f10 - this.f7032s) > this.f7028o) {
                            this.f7031r = true;
                        }
                        z12 = z11;
                        z14 = false;
                    }
                } else if (Math.abs(f10 - this.f7032s) > this.f7028o) {
                    this.f7030q = true;
                }
                z11 = false;
                if (this.f7031r) {
                    f11 = this.f7032s;
                    f12 = f10 - f11;
                    if ((this.f7033t - f11) * f12 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    boolean z17 = z11;
                    z14 = z13;
                    z12 = z17;
                } else {
                    if (Math.abs(f10 - this.f7032s) > this.f7028o) {
                        this.f7031r = true;
                    }
                    z12 = z11;
                    z14 = false;
                }
            } else if (Math.abs(f10 - this.f7032s) > this.f7028o) {
                this.f7029p = true;
            }
            z10 = false;
            if (this.f7030q) {
                f13 = this.f7032s;
                f14 = f10 - f13;
                if ((this.f7033t - f13) * f14 >= 0.0f) {
                }
                if (this.f7031r) {
                    f11 = this.f7032s;
                    f12 = f10 - f11;
                    if ((this.f7033t - f11) * f12 < 0.0f) {
                        z13 = false;
                    } else {
                        z13 = false;
                    }
                    boolean z18 = z11;
                    z14 = z13;
                    z12 = z18;
                } else {
                    if (Math.abs(f10 - this.f7032s) > this.f7028o) {
                        this.f7031r = true;
                    }
                    z12 = z11;
                    z14 = false;
                }
            } else if (Math.abs(f10 - this.f7032s) > this.f7028o) {
                this.f7030q = true;
            }
            z11 = false;
            if (this.f7031r) {
                f11 = this.f7032s;
                f12 = f10 - f11;
                if ((this.f7033t - f11) * f12 < 0.0f) {
                    z13 = false;
                } else {
                    z13 = false;
                }
                boolean z19 = z11;
                z14 = z13;
                z12 = z19;
            } else {
                if (Math.abs(f10 - this.f7032s) > this.f7028o) {
                    this.f7031r = true;
                }
                z12 = z11;
                z14 = false;
            }
        }
        this.f7033t = f10;
        if (z12 || z10 || z14) {
            ((MotionLayout) view.getParent()).fireTrigger(this.f7025l, z14, f10);
        }
        View viewFindViewById = this.f7022i == d.f6940f ? view : ((MotionLayout) view.getParent()).findViewById(this.f7022i);
        if (z12) {
            String str = this.f7023j;
            if (str != null) {
                z(str, viewFindViewById);
            }
            if (this.f7035v != d.f6940f) {
                ((MotionLayout) view.getParent()).viewTransition(this.f7035v, viewFindViewById);
            }
        }
        if (z14) {
            String str2 = this.f7024k;
            if (str2 != null) {
                z(str2, viewFindViewById);
            }
            if (this.f7036w != d.f6940f) {
                ((MotionLayout) view.getParent()).viewTransition(this.f7036w, viewFindViewById);
            }
        }
        if (z10) {
            String str3 = this.f7021h;
            if (str3 != null) {
                z(str3, viewFindViewById);
            }
            if (this.f7037x != d.f6940f) {
                ((MotionLayout) view.getParent()).viewTransition(this.f7037x, viewFindViewById);
            }
        }
    }

    @Override
    public void a(HashMap map) {
    }

    @Override
    public void d(HashSet hashSet) {
    }
}
