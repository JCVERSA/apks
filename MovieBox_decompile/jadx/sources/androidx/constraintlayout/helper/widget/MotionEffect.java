package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionHelper;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.motion.widget.a;
import androidx.constraintlayout.motion.widget.e;
import androidx.constraintlayout.motion.widget.h;
import androidx.constraintlayout.motion.widget.m;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

public class MotionEffect extends MotionHelper {
    public static final int AUTO = -1;
    public static final int EAST = 2;
    public static final int NORTH = 0;
    public static final int SOUTH = 1;
    public static final String TAG = "FadeMove";
    public static final int WEST = 3;

    private float f6824n;

    private int f6825o;

    private int f6826p;

    private int f6827q;

    private int f6828r;

    private boolean f6829s;

    private int f6830t;

    private int f6831u;

    public MotionEffect(Context context) {
        super(context);
        this.f6824n = 0.1f;
        this.f6825o = 49;
        this.f6826p = 50;
        this.f6827q = 0;
        this.f6828r = 0;
        this.f6829s = true;
        this.f6830t = -1;
        this.f6831u = -1;
    }

    private void l(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MotionEffect);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MotionEffect_motionEffect_start) {
                    int i11 = typedArrayObtainStyledAttributes.getInt(index, this.f6825o);
                    this.f6825o = i11;
                    this.f6825o = Math.max(Math.min(i11, 99), 0);
                } else if (index == R$styleable.MotionEffect_motionEffect_end) {
                    int i12 = typedArrayObtainStyledAttributes.getInt(index, this.f6826p);
                    this.f6826p = i12;
                    this.f6826p = Math.max(Math.min(i12, 99), 0);
                } else if (index == R$styleable.MotionEffect_motionEffect_translationX) {
                    this.f6827q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f6827q);
                } else if (index == R$styleable.MotionEffect_motionEffect_translationY) {
                    this.f6828r = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f6828r);
                } else if (index == R$styleable.MotionEffect_motionEffect_alpha) {
                    this.f6824n = typedArrayObtainStyledAttributes.getFloat(index, this.f6824n);
                } else if (index == R$styleable.MotionEffect_motionEffect_move) {
                    this.f6831u = typedArrayObtainStyledAttributes.getInt(index, this.f6831u);
                } else if (index == R$styleable.MotionEffect_motionEffect_strict) {
                    this.f6829s = typedArrayObtainStyledAttributes.getBoolean(index, this.f6829s);
                } else if (index == R$styleable.MotionEffect_motionEffect_viewTransition) {
                    this.f6830t = typedArrayObtainStyledAttributes.getResourceId(index, this.f6830t);
                }
            }
            int i13 = this.f6825o;
            int i14 = this.f6826p;
            if (i13 == i14) {
                if (i13 > 0) {
                    this.f6825o = i13 - 1;
                } else {
                    this.f6826p = i14 + 1;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override
    public boolean isDecorator() {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0161  */
    /* JADX WARN: Code duplicated, block: B:88:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:90:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01db  */
    /* JADX WARN: Code duplicated, block: B:95:0x01e4  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0185, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0199, code lost:
    
        if (r14 == 0.0f) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a9, code lost:
    
        if (r15 == 0.0f) goto L58;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onPreSetup(MotionLayout motionLayout, HashMap<View, m> map) {
        e eVar;
        e eVar2;
        e eVar3;
        int i10;
        HashMap<View, m> map2 = map;
        View[] viewArrJ = j((ConstraintLayout) getParent());
        if (viewArrJ == null) {
            Log.v(TAG, a.a() + " views = null");
            return;
        }
        e eVar4 = new e();
        e eVar5 = new e();
        eVar4.R("alpha", Float.valueOf(this.f6824n));
        eVar5.R("alpha", Float.valueOf(this.f6824n));
        eVar4.g(this.f6825o);
        eVar5.g(this.f6826p);
        h hVar = new h();
        hVar.g(this.f6825o);
        hVar.m(0);
        hVar.n("percentX", 0);
        hVar.n("percentY", 0);
        h hVar2 = new h();
        hVar2.g(this.f6826p);
        hVar2.m(0);
        hVar2.n("percentX", 1);
        hVar2.n("percentY", 1);
        e eVar6 = null;
        if (this.f6827q > 0) {
            eVar = new e();
            eVar2 = new e();
            eVar.R("translationX", Integer.valueOf(this.f6827q));
            eVar.g(this.f6826p);
            eVar2.R("translationX", 0);
            eVar2.g(this.f6826p - 1);
        } else {
            eVar = null;
            eVar2 = null;
        }
        if (this.f6828r > 0) {
            eVar6 = new e();
            eVar3 = new e();
            eVar6.R("translationY", Integer.valueOf(this.f6828r));
            eVar6.g(this.f6826p);
            eVar3.R("translationY", 0);
            eVar3.g(this.f6826p - 1);
        } else {
            eVar3 = null;
        }
        int i11 = this.f6831u;
        if (i11 == -1) {
            int[] iArr = new int[4];
            for (View view : viewArrJ) {
                m mVar = map2.get(view);
                if (mVar != null) {
                    float fN = mVar.n() - mVar.t();
                    float fO = mVar.o() - mVar.u();
                    if (fO < 0.0f) {
                        iArr[1] = iArr[1] + 1;
                    }
                    if (fO > 0.0f) {
                        iArr[0] = iArr[0] + 1;
                    }
                    if (fN > 0.0f) {
                        iArr[3] = iArr[3] + 1;
                    }
                    if (fN < 0.0f) {
                        iArr[2] = iArr[2] + 1;
                    }
                }
            }
            int i12 = iArr[0];
            i11 = 0;
            for (int i13 = 1; i13 < 4; i13++) {
                int i14 = iArr[i13];
                if (i12 < i14) {
                    i12 = i14;
                    i11 = i13;
                }
            }
        }
        int i15 = 0;
        while (i15 < viewArrJ.length) {
            m mVar2 = map2.get(viewArrJ[i15]);
            if (mVar2 != null) {
                float fN2 = mVar2.n() - mVar2.t();
                float fO2 = mVar2.o() - mVar2.u();
                if (i11 == 0) {
                    if (fO2 > 0.0f) {
                        if (this.f6829s) {
                        }
                    }
                    i10 = this.f6830t;
                    if (i10 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f6827q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f6828r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i10, mVar2);
                    }
                } else if (i11 == 1) {
                    if (fO2 < 0.0f) {
                        if (this.f6829s) {
                        }
                    }
                    i10 = this.f6830t;
                    if (i10 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f6827q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f6828r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i10, mVar2);
                    }
                } else if (i11 == 2) {
                    if (fN2 < 0.0f) {
                        if (this.f6829s) {
                        }
                    }
                    i10 = this.f6830t;
                    if (i10 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f6827q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f6828r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i10, mVar2);
                    }
                } else if (i11 != 3 || fN2 <= 0.0f || (this.f6829s && fO2 != 0.0f)) {
                    i10 = this.f6830t;
                    if (i10 == -1) {
                        mVar2.a(eVar4);
                        mVar2.a(eVar5);
                        mVar2.a(hVar);
                        mVar2.a(hVar2);
                        if (this.f6827q > 0) {
                            mVar2.a(eVar);
                            mVar2.a(eVar2);
                        }
                        if (this.f6828r > 0) {
                            mVar2.a(eVar6);
                            mVar2.a(eVar3);
                        }
                    } else {
                        motionLayout.applyViewTransition(i10, mVar2);
                    }
                }
            }
            i15++;
            map2 = map;
        }
    }

    public MotionEffect(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6824n = 0.1f;
        this.f6825o = 49;
        this.f6826p = 50;
        this.f6827q = 0;
        this.f6828r = 0;
        this.f6829s = true;
        this.f6830t = -1;
        this.f6831u = -1;
        l(context, attributeSet);
    }

    public MotionEffect(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f6824n = 0.1f;
        this.f6825o = 49;
        this.f6826p = 50;
        this.f6827q = 0;
        this.f6828r = 0;
        this.f6829s = true;
        this.f6830t = -1;
        this.f6831u = -1;
        l(context, attributeSet);
    }
}
