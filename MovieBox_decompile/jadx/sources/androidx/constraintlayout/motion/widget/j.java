package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.app.NotificationCompat;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class j extends d {

    private String f7001g;

    private int f7002h = -1;

    private float f7003i = Float.NaN;

    private float f7004j = Float.NaN;

    private float f7005k = Float.NaN;

    private float f7006l = Float.NaN;

    private float f7007m = Float.NaN;

    private float f7008n = Float.NaN;

    private float f7009o = Float.NaN;

    private float f7010p = Float.NaN;

    private float f7011q = Float.NaN;

    private float f7012r = Float.NaN;

    private float f7013s = Float.NaN;

    private float f7014t = Float.NaN;

    private int f7015u = 0;

    private String f7016v = null;

    private float f7017w = Float.NaN;

    private float f7018x = 0.0f;

    private static class a {

        private static SparseIntArray f7019a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f7019a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyTimeCycle_android_alpha, 1);
            f7019a.append(R$styleable.KeyTimeCycle_android_elevation, 2);
            f7019a.append(R$styleable.KeyTimeCycle_android_rotation, 4);
            f7019a.append(R$styleable.KeyTimeCycle_android_rotationX, 5);
            f7019a.append(R$styleable.KeyTimeCycle_android_rotationY, 6);
            f7019a.append(R$styleable.KeyTimeCycle_android_scaleX, 7);
            f7019a.append(R$styleable.KeyTimeCycle_transitionPathRotate, 8);
            f7019a.append(R$styleable.KeyTimeCycle_transitionEasing, 9);
            f7019a.append(R$styleable.KeyTimeCycle_motionTarget, 10);
            f7019a.append(R$styleable.KeyTimeCycle_framePosition, 12);
            f7019a.append(R$styleable.KeyTimeCycle_curveFit, 13);
            f7019a.append(R$styleable.KeyTimeCycle_android_scaleY, 14);
            f7019a.append(R$styleable.KeyTimeCycle_android_translationX, 15);
            f7019a.append(R$styleable.KeyTimeCycle_android_translationY, 16);
            f7019a.append(R$styleable.KeyTimeCycle_android_translationZ, 17);
            f7019a.append(R$styleable.KeyTimeCycle_motionProgress, 18);
            f7019a.append(R$styleable.KeyTimeCycle_wavePeriod, 20);
            f7019a.append(R$styleable.KeyTimeCycle_waveOffset, 21);
            f7019a.append(R$styleable.KeyTimeCycle_waveShape, 19);
        }

        public static void a(j jVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f7019a.get(index)) {
                    case 1:
                        jVar.f7003i = typedArray.getFloat(index, jVar.f7003i);
                        break;
                    case 2:
                        jVar.f7004j = typedArray.getDimension(index, jVar.f7004j);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f7019a.get(index));
                        break;
                    case 4:
                        jVar.f7005k = typedArray.getFloat(index, jVar.f7005k);
                        break;
                    case 5:
                        jVar.f7006l = typedArray.getFloat(index, jVar.f7006l);
                        break;
                    case 6:
                        jVar.f7007m = typedArray.getFloat(index, jVar.f7007m);
                        break;
                    case 7:
                        jVar.f7009o = typedArray.getFloat(index, jVar.f7009o);
                        break;
                    case 8:
                        jVar.f7008n = typedArray.getFloat(index, jVar.f7008n);
                        break;
                    case 9:
                        jVar.f7001g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, jVar.f6942b);
                            jVar.f6942b = resourceId;
                            if (resourceId == -1) {
                                jVar.f6943c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            jVar.f6943c = typedArray.getString(index);
                        } else {
                            jVar.f6942b = typedArray.getResourceId(index, jVar.f6942b);
                        }
                        break;
                    case 12:
                        jVar.f6941a = typedArray.getInt(index, jVar.f6941a);
                        break;
                    case 13:
                        jVar.f7002h = typedArray.getInteger(index, jVar.f7002h);
                        break;
                    case 14:
                        jVar.f7010p = typedArray.getFloat(index, jVar.f7010p);
                        break;
                    case 15:
                        jVar.f7011q = typedArray.getDimension(index, jVar.f7011q);
                        break;
                    case 16:
                        jVar.f7012r = typedArray.getDimension(index, jVar.f7012r);
                        break;
                    case 17:
                        jVar.f7013s = typedArray.getDimension(index, jVar.f7013s);
                        break;
                    case 18:
                        jVar.f7014t = typedArray.getFloat(index, jVar.f7014t);
                        break;
                    case 19:
                        if (typedArray.peekValue(index).type == 3) {
                            jVar.f7016v = typedArray.getString(index);
                            jVar.f7015u = 7;
                        } else {
                            jVar.f7015u = typedArray.getInt(index, jVar.f7015u);
                        }
                        break;
                    case 20:
                        jVar.f7017w = typedArray.getFloat(index, jVar.f7017w);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            jVar.f7018x = typedArray.getDimension(index, jVar.f7018x);
                        } else {
                            jVar.f7018x = typedArray.getFloat(index, jVar.f7018x);
                        }
                        break;
                }
            }
        }
    }

    public j() {
        this.f6944d = 3;
        this.f6945e = new HashMap();
    }

    public void U(HashMap map) {
        for (String str : map.keySet()) {
            v0.f fVar = (v0.f) map.get(str);
            if (fVar != null) {
                if (!str.startsWith("CUSTOM")) {
                    switch (str) {
                        case "rotationX":
                            if (Float.isNaN(this.f7006l)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7006l, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "rotationY":
                            if (Float.isNaN(this.f7007m)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7007m, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "translationX":
                            if (Float.isNaN(this.f7011q)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7011q, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "translationY":
                            if (Float.isNaN(this.f7012r)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7012r, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "translationZ":
                            if (Float.isNaN(this.f7013s)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7013s, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "progress":
                            if (Float.isNaN(this.f7014t)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7014t, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "scaleX":
                            if (Float.isNaN(this.f7009o)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7009o, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "scaleY":
                            if (Float.isNaN(this.f7010p)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7010p, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "rotation":
                            if (Float.isNaN(this.f7005k)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7005k, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "elevation":
                            if (Float.isNaN(this.f7004j)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7004j, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "transitionPathRotate":
                            if (Float.isNaN(this.f7008n)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7008n, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        case "alpha":
                            if (Float.isNaN(this.f7003i)) {
                                break;
                            } else {
                                fVar.b(this.f6941a, this.f7003i, this.f7017w, this.f7015u, this.f7018x);
                                break;
                            }
                            break;
                        default:
                            Log.e("KeyTimeCycles", "UNKNOWN addValues \"" + str + "\"");
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f6945e.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((v0.f.b) fVar).j(this.f6941a, constraintAttribute, this.f7017w, this.f7015u, this.f7018x);
                    }
                }
            }
        }
    }

    @Override
    public void a(HashMap map) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override
    public d clone() {
        return new j().c(this);
    }

    @Override
    public d c(d dVar) {
        super.c(dVar);
        j jVar = (j) dVar;
        this.f7001g = jVar.f7001g;
        this.f7002h = jVar.f7002h;
        this.f7015u = jVar.f7015u;
        this.f7017w = jVar.f7017w;
        this.f7018x = jVar.f7018x;
        this.f7014t = jVar.f7014t;
        this.f7003i = jVar.f7003i;
        this.f7004j = jVar.f7004j;
        this.f7005k = jVar.f7005k;
        this.f7008n = jVar.f7008n;
        this.f7006l = jVar.f7006l;
        this.f7007m = jVar.f7007m;
        this.f7009o = jVar.f7009o;
        this.f7010p = jVar.f7010p;
        this.f7011q = jVar.f7011q;
        this.f7012r = jVar.f7012r;
        this.f7013s = jVar.f7013s;
        return this;
    }

    @Override
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f7003i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f7004j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f7005k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f7006l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f7007m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f7011q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f7012r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f7013s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f7008n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f7009o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f7010p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f7014t)) {
            hashSet.add(NotificationCompat.CATEGORY_PROGRESS);
        }
        if (this.f6945e.size() > 0) {
            Iterator it = this.f6945e.keySet().iterator();
            while (it.hasNext()) {
                hashSet.add("CUSTOM," + ((String) it.next()));
            }
        }
    }

    @Override
    public void e(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyTimeCycle));
    }

    @Override
    public void h(HashMap map) {
        if (this.f7002h == -1) {
            return;
        }
        if (!Float.isNaN(this.f7003i)) {
            map.put("alpha", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7004j)) {
            map.put("elevation", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7005k)) {
            map.put("rotation", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7006l)) {
            map.put("rotationX", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7007m)) {
            map.put("rotationY", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7011q)) {
            map.put("translationX", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7012r)) {
            map.put("translationY", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7013s)) {
            map.put("translationZ", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7008n)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7009o)) {
            map.put("scaleX", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7009o)) {
            map.put("scaleY", Integer.valueOf(this.f7002h));
        }
        if (!Float.isNaN(this.f7014t)) {
            map.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(this.f7002h));
        }
        if (this.f6945e.size() > 0) {
            Iterator it = this.f6945e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + ((String) it.next()), Integer.valueOf(this.f7002h));
            }
        }
    }
}
