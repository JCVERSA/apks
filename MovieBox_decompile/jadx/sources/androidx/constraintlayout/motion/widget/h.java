package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;

public class h extends i {

    String f6987h = null;

    int f6988i = d.f6940f;

    int f6989j = 0;

    float f6990k = Float.NaN;

    float f6991l = Float.NaN;

    float f6992m = Float.NaN;

    float f6993n = Float.NaN;

    float f6994o = Float.NaN;

    float f6995p = Float.NaN;

    int f6996q = 0;

    private float f6997r = Float.NaN;

    private float f6998s = Float.NaN;

    private static class a {

        private static SparseIntArray f6999a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f6999a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyPosition_motionTarget, 1);
            f6999a.append(R$styleable.KeyPosition_framePosition, 2);
            f6999a.append(R$styleable.KeyPosition_transitionEasing, 3);
            f6999a.append(R$styleable.KeyPosition_curveFit, 4);
            f6999a.append(R$styleable.KeyPosition_drawPath, 5);
            f6999a.append(R$styleable.KeyPosition_percentX, 6);
            f6999a.append(R$styleable.KeyPosition_percentY, 7);
            f6999a.append(R$styleable.KeyPosition_keyPositionType, 9);
            f6999a.append(R$styleable.KeyPosition_sizePercent, 8);
            f6999a.append(R$styleable.KeyPosition_percentWidth, 11);
            f6999a.append(R$styleable.KeyPosition_percentHeight, 12);
            f6999a.append(R$styleable.KeyPosition_pathMotionArc, 10);
        }

        public static void b(h hVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f6999a.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, hVar.f6942b);
                            hVar.f6942b = resourceId;
                            if (resourceId == -1) {
                                hVar.f6943c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            hVar.f6943c = typedArray.getString(index);
                        } else {
                            hVar.f6942b = typedArray.getResourceId(index, hVar.f6942b);
                        }
                        break;
                    case 2:
                        hVar.f6941a = typedArray.getInt(index, hVar.f6941a);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            hVar.f6987h = typedArray.getString(index);
                        } else {
                            hVar.f6987h = androidx.constraintlayout.core.motion.utils.c.f6459c[typedArray.getInteger(index, 0)];
                        }
                        break;
                    case 4:
                        hVar.f7000g = typedArray.getInteger(index, hVar.f7000g);
                        break;
                    case 5:
                        hVar.f6989j = typedArray.getInt(index, hVar.f6989j);
                        break;
                    case 6:
                        hVar.f6992m = typedArray.getFloat(index, hVar.f6992m);
                        break;
                    case 7:
                        hVar.f6993n = typedArray.getFloat(index, hVar.f6993n);
                        break;
                    case 8:
                        float f10 = typedArray.getFloat(index, hVar.f6991l);
                        hVar.f6990k = f10;
                        hVar.f6991l = f10;
                        break;
                    case 9:
                        hVar.f6996q = typedArray.getInt(index, hVar.f6996q);
                        break;
                    case 10:
                        hVar.f6988i = typedArray.getInt(index, hVar.f6988i);
                        break;
                    case 11:
                        hVar.f6990k = typedArray.getFloat(index, hVar.f6990k);
                        break;
                    case 12:
                        hVar.f6991l = typedArray.getFloat(index, hVar.f6991l);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f6999a.get(index));
                        break;
                }
            }
            if (hVar.f6941a == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public h() {
        this.f6944d = 2;
    }

    @Override
    public d clone() {
        return new h().c(this);
    }

    @Override
    public d c(d dVar) {
        super.c(dVar);
        h hVar = (h) dVar;
        this.f6987h = hVar.f6987h;
        this.f6988i = hVar.f6988i;
        this.f6989j = hVar.f6989j;
        this.f6990k = hVar.f6990k;
        this.f6991l = Float.NaN;
        this.f6992m = hVar.f6992m;
        this.f6993n = hVar.f6993n;
        this.f6994o = hVar.f6994o;
        this.f6995p = hVar.f6995p;
        this.f6997r = hVar.f6997r;
        this.f6998s = hVar.f6998s;
        return this;
    }

    @Override
    public void e(Context context, AttributeSet attributeSet) {
        a.b(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyPosition));
    }

    public void m(int i10) {
        this.f6996q = i10;
    }

    public void n(String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "transitionEasing":
                this.f6987h = obj.toString();
                break;
            case "percentWidth":
                this.f6990k = k(obj);
                break;
            case "percentHeight":
                this.f6991l = k(obj);
                break;
            case "drawPath":
                this.f6989j = l(obj);
                break;
            case "sizePercent":
                float fK = k(obj);
                this.f6990k = fK;
                this.f6991l = fK;
                break;
            case "percentX":
                this.f6992m = k(obj);
                break;
            case "percentY":
                this.f6993n = k(obj);
                break;
        }
    }

    @Override
    public void a(HashMap map) {
    }
}
