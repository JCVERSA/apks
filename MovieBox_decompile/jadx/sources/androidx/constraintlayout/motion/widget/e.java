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

public class e extends d {

    private String f6946g;

    private int f6947h = -1;

    private boolean f6948i = false;

    private float f6949j = Float.NaN;

    private float f6950k = Float.NaN;

    private float f6951l = Float.NaN;

    private float f6952m = Float.NaN;

    private float f6953n = Float.NaN;

    private float f6954o = Float.NaN;

    private float f6955p = Float.NaN;

    private float f6956q = Float.NaN;

    private float f6957r = Float.NaN;

    private float f6958s = Float.NaN;

    private float f6959t = Float.NaN;

    private float f6960u = Float.NaN;

    private float f6961v = Float.NaN;

    private float f6962w = Float.NaN;

    private static class a {

        private static SparseIntArray f6963a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f6963a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyAttribute_android_alpha, 1);
            f6963a.append(R$styleable.KeyAttribute_android_elevation, 2);
            f6963a.append(R$styleable.KeyAttribute_android_rotation, 4);
            f6963a.append(R$styleable.KeyAttribute_android_rotationX, 5);
            f6963a.append(R$styleable.KeyAttribute_android_rotationY, 6);
            f6963a.append(R$styleable.KeyAttribute_android_transformPivotX, 19);
            f6963a.append(R$styleable.KeyAttribute_android_transformPivotY, 20);
            f6963a.append(R$styleable.KeyAttribute_android_scaleX, 7);
            f6963a.append(R$styleable.KeyAttribute_transitionPathRotate, 8);
            f6963a.append(R$styleable.KeyAttribute_transitionEasing, 9);
            f6963a.append(R$styleable.KeyAttribute_motionTarget, 10);
            f6963a.append(R$styleable.KeyAttribute_framePosition, 12);
            f6963a.append(R$styleable.KeyAttribute_curveFit, 13);
            f6963a.append(R$styleable.KeyAttribute_android_scaleY, 14);
            f6963a.append(R$styleable.KeyAttribute_android_translationX, 15);
            f6963a.append(R$styleable.KeyAttribute_android_translationY, 16);
            f6963a.append(R$styleable.KeyAttribute_android_translationZ, 17);
            f6963a.append(R$styleable.KeyAttribute_motionProgress, 18);
        }

        public static void a(e eVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f6963a.get(index)) {
                    case 1:
                        eVar.f6949j = typedArray.getFloat(index, eVar.f6949j);
                        break;
                    case 2:
                        eVar.f6950k = typedArray.getDimension(index, eVar.f6950k);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f6963a.get(index));
                        break;
                    case 4:
                        eVar.f6951l = typedArray.getFloat(index, eVar.f6951l);
                        break;
                    case 5:
                        eVar.f6952m = typedArray.getFloat(index, eVar.f6952m);
                        break;
                    case 6:
                        eVar.f6953n = typedArray.getFloat(index, eVar.f6953n);
                        break;
                    case 7:
                        eVar.f6957r = typedArray.getFloat(index, eVar.f6957r);
                        break;
                    case 8:
                        eVar.f6956q = typedArray.getFloat(index, eVar.f6956q);
                        break;
                    case 9:
                        eVar.f6946g = typedArray.getString(index);
                        break;
                    case 10:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, eVar.f6942b);
                            eVar.f6942b = resourceId;
                            if (resourceId == -1) {
                                eVar.f6943c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            eVar.f6943c = typedArray.getString(index);
                        } else {
                            eVar.f6942b = typedArray.getResourceId(index, eVar.f6942b);
                        }
                        break;
                    case 12:
                        eVar.f6941a = typedArray.getInt(index, eVar.f6941a);
                        break;
                    case 13:
                        eVar.f6947h = typedArray.getInteger(index, eVar.f6947h);
                        break;
                    case 14:
                        eVar.f6958s = typedArray.getFloat(index, eVar.f6958s);
                        break;
                    case 15:
                        eVar.f6959t = typedArray.getDimension(index, eVar.f6959t);
                        break;
                    case 16:
                        eVar.f6960u = typedArray.getDimension(index, eVar.f6960u);
                        break;
                    case 17:
                        eVar.f6961v = typedArray.getDimension(index, eVar.f6961v);
                        break;
                    case 18:
                        eVar.f6962w = typedArray.getFloat(index, eVar.f6962w);
                        break;
                    case 19:
                        eVar.f6954o = typedArray.getDimension(index, eVar.f6954o);
                        break;
                    case 20:
                        eVar.f6955p = typedArray.getDimension(index, eVar.f6955p);
                        break;
                }
            }
        }
    }

    public e() {
        this.f6944d = 1;
        this.f6945e = new HashMap();
    }

    public void R(String str, Object obj) {
        str.hashCode();
        switch (str) {
            case "motionProgress":
                this.f6962w = k(obj);
                break;
            case "transitionEasing":
                this.f6946g = obj.toString();
                break;
            case "rotationX":
                this.f6952m = k(obj);
                break;
            case "rotationY":
                this.f6953n = k(obj);
                break;
            case "translationX":
                this.f6959t = k(obj);
                break;
            case "translationY":
                this.f6960u = k(obj);
                break;
            case "translationZ":
                this.f6961v = k(obj);
                break;
            case "scaleX":
                this.f6957r = k(obj);
                break;
            case "scaleY":
                this.f6958s = k(obj);
                break;
            case "transformPivotX":
                this.f6954o = k(obj);
                break;
            case "transformPivotY":
                this.f6955p = k(obj);
                break;
            case "rotation":
                this.f6951l = k(obj);
                break;
            case "elevation":
                this.f6950k = k(obj);
                break;
            case "transitionPathRotate":
                this.f6956q = k(obj);
                break;
            case "alpha":
                this.f6949j = k(obj);
                break;
            case "curveFit":
                this.f6947h = l(obj);
                break;
            case "visibility":
                this.f6948i = j(obj);
                break;
        }
    }

    @Override
    public void a(HashMap map) {
        for (String str : map.keySet()) {
            androidx.constraintlayout.core.motion.utils.i iVar = (androidx.constraintlayout.core.motion.utils.i) map.get(str);
            if (iVar != null) {
                if (!str.startsWith("CUSTOM")) {
                    switch (str) {
                        case "rotationX":
                            if (Float.isNaN(this.f6952m)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6952m);
                                break;
                            }
                            break;
                        case "rotationY":
                            if (Float.isNaN(this.f6953n)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6953n);
                                break;
                            }
                            break;
                        case "translationX":
                            if (Float.isNaN(this.f6959t)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6959t);
                                break;
                            }
                            break;
                        case "translationY":
                            if (Float.isNaN(this.f6960u)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6960u);
                                break;
                            }
                            break;
                        case "translationZ":
                            if (Float.isNaN(this.f6961v)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6961v);
                                break;
                            }
                            break;
                        case "progress":
                            if (Float.isNaN(this.f6962w)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6962w);
                                break;
                            }
                            break;
                        case "scaleX":
                            if (Float.isNaN(this.f6957r)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6957r);
                                break;
                            }
                            break;
                        case "scaleY":
                            if (Float.isNaN(this.f6958s)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6958s);
                                break;
                            }
                            break;
                        case "transformPivotX":
                            if (Float.isNaN(this.f6952m)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6954o);
                                break;
                            }
                            break;
                        case "transformPivotY":
                            if (Float.isNaN(this.f6953n)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6955p);
                                break;
                            }
                            break;
                        case "rotation":
                            if (Float.isNaN(this.f6951l)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6951l);
                                break;
                            }
                            break;
                        case "elevation":
                            if (Float.isNaN(this.f6950k)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6950k);
                                break;
                            }
                            break;
                        case "transitionPathRotate":
                            if (Float.isNaN(this.f6956q)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6956q);
                                break;
                            }
                            break;
                        case "alpha":
                            if (Float.isNaN(this.f6949j)) {
                                break;
                            } else {
                                iVar.c(this.f6941a, this.f6949j);
                                break;
                            }
                            break;
                    }
                } else {
                    ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f6945e.get(str.substring(7));
                    if (constraintAttribute != null) {
                        ((v0.d.b) iVar).i(this.f6941a, constraintAttribute);
                    }
                }
            }
        }
    }

    @Override
    public d clone() {
        return new e().c(this);
    }

    @Override
    public d c(d dVar) {
        super.c(dVar);
        e eVar = (e) dVar;
        this.f6947h = eVar.f6947h;
        this.f6948i = eVar.f6948i;
        this.f6949j = eVar.f6949j;
        this.f6950k = eVar.f6950k;
        this.f6951l = eVar.f6951l;
        this.f6952m = eVar.f6952m;
        this.f6953n = eVar.f6953n;
        this.f6954o = eVar.f6954o;
        this.f6955p = eVar.f6955p;
        this.f6956q = eVar.f6956q;
        this.f6957r = eVar.f6957r;
        this.f6958s = eVar.f6958s;
        this.f6959t = eVar.f6959t;
        this.f6960u = eVar.f6960u;
        this.f6961v = eVar.f6961v;
        this.f6962w = eVar.f6962w;
        return this;
    }

    @Override
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f6949j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f6950k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f6951l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f6952m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f6953n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f6954o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.f6955p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.f6959t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f6960u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f6961v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.f6956q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f6957r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f6958s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f6962w)) {
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
        a.a(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyAttribute));
    }

    @Override
    public void h(HashMap map) {
        if (this.f6947h == -1) {
            return;
        }
        if (!Float.isNaN(this.f6949j)) {
            map.put("alpha", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6950k)) {
            map.put("elevation", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6951l)) {
            map.put("rotation", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6952m)) {
            map.put("rotationX", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6953n)) {
            map.put("rotationY", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6954o)) {
            map.put("transformPivotX", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6955p)) {
            map.put("transformPivotY", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6959t)) {
            map.put("translationX", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6960u)) {
            map.put("translationY", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6961v)) {
            map.put("translationZ", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6956q)) {
            map.put("transitionPathRotate", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6957r)) {
            map.put("scaleX", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6958s)) {
            map.put("scaleY", Integer.valueOf(this.f6947h));
        }
        if (!Float.isNaN(this.f6962w)) {
            map.put(NotificationCompat.CATEGORY_PROGRESS, Integer.valueOf(this.f6947h));
        }
        if (this.f6945e.size() > 0) {
            Iterator it = this.f6945e.keySet().iterator();
            while (it.hasNext()) {
                map.put("CUSTOM," + ((String) it.next()), Integer.valueOf(this.f6947h));
            }
        }
    }
}
