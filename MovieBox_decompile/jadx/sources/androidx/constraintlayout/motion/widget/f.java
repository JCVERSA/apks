package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.R$styleable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public class f extends d {

    private String f6964g = null;

    private int f6965h = 0;

    private int f6966i = -1;

    private String f6967j = null;

    private float f6968k = Float.NaN;

    private float f6969l = 0.0f;

    private float f6970m = 0.0f;

    private float f6971n = Float.NaN;

    private int f6972o = -1;

    private float f6973p = Float.NaN;

    private float f6974q = Float.NaN;

    private float f6975r = Float.NaN;

    private float f6976s = Float.NaN;

    private float f6977t = Float.NaN;

    private float f6978u = Float.NaN;

    private float f6979v = Float.NaN;

    private float f6980w = Float.NaN;

    private float f6981x = Float.NaN;

    private float f6982y = Float.NaN;

    private float f6983z = Float.NaN;

    private static class a {

        private static SparseIntArray f6984a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f6984a = sparseIntArray;
            sparseIntArray.append(R$styleable.KeyCycle_motionTarget, 1);
            f6984a.append(R$styleable.KeyCycle_framePosition, 2);
            f6984a.append(R$styleable.KeyCycle_transitionEasing, 3);
            f6984a.append(R$styleable.KeyCycle_curveFit, 4);
            f6984a.append(R$styleable.KeyCycle_waveShape, 5);
            f6984a.append(R$styleable.KeyCycle_wavePeriod, 6);
            f6984a.append(R$styleable.KeyCycle_waveOffset, 7);
            f6984a.append(R$styleable.KeyCycle_waveVariesBy, 8);
            f6984a.append(R$styleable.KeyCycle_android_alpha, 9);
            f6984a.append(R$styleable.KeyCycle_android_elevation, 10);
            f6984a.append(R$styleable.KeyCycle_android_rotation, 11);
            f6984a.append(R$styleable.KeyCycle_android_rotationX, 12);
            f6984a.append(R$styleable.KeyCycle_android_rotationY, 13);
            f6984a.append(R$styleable.KeyCycle_transitionPathRotate, 14);
            f6984a.append(R$styleable.KeyCycle_android_scaleX, 15);
            f6984a.append(R$styleable.KeyCycle_android_scaleY, 16);
            f6984a.append(R$styleable.KeyCycle_android_translationX, 17);
            f6984a.append(R$styleable.KeyCycle_android_translationY, 18);
            f6984a.append(R$styleable.KeyCycle_android_translationZ, 19);
            f6984a.append(R$styleable.KeyCycle_motionProgress, 20);
            f6984a.append(R$styleable.KeyCycle_wavePhase, 21);
        }

        public static void b(f fVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArray.getIndex(i10);
                switch (f6984a.get(index)) {
                    case 1:
                        if (MotionLayout.IS_IN_EDIT_MODE) {
                            int resourceId = typedArray.getResourceId(index, fVar.f6942b);
                            fVar.f6942b = resourceId;
                            if (resourceId == -1) {
                                fVar.f6943c = typedArray.getString(index);
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            fVar.f6943c = typedArray.getString(index);
                        } else {
                            fVar.f6942b = typedArray.getResourceId(index, fVar.f6942b);
                        }
                        break;
                    case 2:
                        fVar.f6941a = typedArray.getInt(index, fVar.f6941a);
                        break;
                    case 3:
                        fVar.f6964g = typedArray.getString(index);
                        break;
                    case 4:
                        fVar.f6965h = typedArray.getInteger(index, fVar.f6965h);
                        break;
                    case 5:
                        if (typedArray.peekValue(index).type == 3) {
                            fVar.f6967j = typedArray.getString(index);
                            fVar.f6966i = 7;
                        } else {
                            fVar.f6966i = typedArray.getInt(index, fVar.f6966i);
                        }
                        break;
                    case 6:
                        fVar.f6968k = typedArray.getFloat(index, fVar.f6968k);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            fVar.f6969l = typedArray.getDimension(index, fVar.f6969l);
                        } else {
                            fVar.f6969l = typedArray.getFloat(index, fVar.f6969l);
                        }
                        break;
                    case 8:
                        fVar.f6972o = typedArray.getInt(index, fVar.f6972o);
                        break;
                    case 9:
                        fVar.f6973p = typedArray.getFloat(index, fVar.f6973p);
                        break;
                    case 10:
                        fVar.f6974q = typedArray.getDimension(index, fVar.f6974q);
                        break;
                    case 11:
                        fVar.f6975r = typedArray.getFloat(index, fVar.f6975r);
                        break;
                    case 12:
                        fVar.f6977t = typedArray.getFloat(index, fVar.f6977t);
                        break;
                    case 13:
                        fVar.f6978u = typedArray.getFloat(index, fVar.f6978u);
                        break;
                    case 14:
                        fVar.f6976s = typedArray.getFloat(index, fVar.f6976s);
                        break;
                    case 15:
                        fVar.f6979v = typedArray.getFloat(index, fVar.f6979v);
                        break;
                    case 16:
                        fVar.f6980w = typedArray.getFloat(index, fVar.f6980w);
                        break;
                    case 17:
                        fVar.f6981x = typedArray.getDimension(index, fVar.f6981x);
                        break;
                    case 18:
                        fVar.f6982y = typedArray.getDimension(index, fVar.f6982y);
                        break;
                    case 19:
                        fVar.f6983z = typedArray.getDimension(index, fVar.f6983z);
                        break;
                    case 20:
                        fVar.f6971n = typedArray.getFloat(index, fVar.f6971n);
                        break;
                    case 21:
                        fVar.f6970m = typedArray.getFloat(index, fVar.f6970m) / 360.0f;
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f6984a.get(index));
                        break;
                }
            }
        }
    }

    public f() {
        this.f6944d = 4;
        this.f6945e = new HashMap();
    }

    public void Y(HashMap map) {
        v0.c cVar;
        v0.c cVar2;
        for (String str : map.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = (ConstraintAttribute) this.f6945e.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.d() == ConstraintAttribute.AttributeType.FLOAT_TYPE && (cVar = (v0.c) map.get(str)) != null) {
                    cVar.e(this.f6941a, this.f6966i, this.f6967j, this.f6972o, this.f6968k, this.f6969l, this.f6970m, constraintAttribute.e(), constraintAttribute);
                }
            } else {
                float fZ = Z(str);
                if (!Float.isNaN(fZ) && (cVar2 = (v0.c) map.get(str)) != null) {
                    cVar2.d(this.f6941a, this.f6966i, this.f6967j, this.f6972o, this.f6968k, this.f6969l, this.f6970m, fZ);
                }
            }
        }
    }

    public float Z(String str) {
        str.hashCode();
        switch (str) {
            case "rotationX":
                return this.f6977t;
            case "rotationY":
                return this.f6978u;
            case "translationX":
                return this.f6981x;
            case "translationY":
                return this.f6982y;
            case "translationZ":
                return this.f6983z;
            case "progress":
                return this.f6971n;
            case "scaleX":
                return this.f6979v;
            case "scaleY":
                return this.f6980w;
            case "rotation":
                return this.f6975r;
            case "elevation":
                return this.f6974q;
            case "transitionPathRotate":
                return this.f6976s;
            case "alpha":
                return this.f6973p;
            case "waveOffset":
                return this.f6969l;
            case "wavePhase":
                return this.f6970m;
            default:
                if (str.startsWith("CUSTOM")) {
                    return Float.NaN;
                }
                Log.v("WARNING! KeyCycle", "  UNKNOWN  " + str);
                return Float.NaN;
        }
    }

    @Override
    public void a(HashMap map) {
        androidx.constraintlayout.motion.widget.a.g("KeyCycle", "add " + map.size() + " values", 2);
        for (String str : map.keySet()) {
            androidx.constraintlayout.core.motion.utils.i iVar = (androidx.constraintlayout.core.motion.utils.i) map.get(str);
            if (iVar != null) {
                str.hashCode();
                switch (str) {
                    case "rotationX":
                        iVar.c(this.f6941a, this.f6977t);
                        break;
                    case "rotationY":
                        iVar.c(this.f6941a, this.f6978u);
                        break;
                    case "translationX":
                        iVar.c(this.f6941a, this.f6981x);
                        break;
                    case "translationY":
                        iVar.c(this.f6941a, this.f6982y);
                        break;
                    case "translationZ":
                        iVar.c(this.f6941a, this.f6983z);
                        break;
                    case "progress":
                        iVar.c(this.f6941a, this.f6971n);
                        break;
                    case "scaleX":
                        iVar.c(this.f6941a, this.f6979v);
                        break;
                    case "scaleY":
                        iVar.c(this.f6941a, this.f6980w);
                        break;
                    case "rotation":
                        iVar.c(this.f6941a, this.f6975r);
                        break;
                    case "elevation":
                        iVar.c(this.f6941a, this.f6974q);
                        break;
                    case "transitionPathRotate":
                        iVar.c(this.f6941a, this.f6976s);
                        break;
                    case "alpha":
                        iVar.c(this.f6941a, this.f6973p);
                        break;
                    case "waveOffset":
                        iVar.c(this.f6941a, this.f6969l);
                        break;
                    case "wavePhase":
                        iVar.c(this.f6941a, this.f6970m);
                        break;
                    default:
                        if (str.startsWith("CUSTOM")) {
                            break;
                        } else {
                            Log.v("WARNING KeyCycle", "  UNKNOWN  " + str);
                            break;
                        }
                        break;
                }
            }
        }
    }

    @Override
    public d clone() {
        return new f().c(this);
    }

    @Override
    public d c(d dVar) {
        super.c(dVar);
        f fVar = (f) dVar;
        this.f6964g = fVar.f6964g;
        this.f6965h = fVar.f6965h;
        this.f6966i = fVar.f6966i;
        this.f6967j = fVar.f6967j;
        this.f6968k = fVar.f6968k;
        this.f6969l = fVar.f6969l;
        this.f6970m = fVar.f6970m;
        this.f6971n = fVar.f6971n;
        this.f6972o = fVar.f6972o;
        this.f6973p = fVar.f6973p;
        this.f6974q = fVar.f6974q;
        this.f6975r = fVar.f6975r;
        this.f6976s = fVar.f6976s;
        this.f6977t = fVar.f6977t;
        this.f6978u = fVar.f6978u;
        this.f6979v = fVar.f6979v;
        this.f6980w = fVar.f6980w;
        this.f6981x = fVar.f6981x;
        this.f6982y = fVar.f6982y;
        this.f6983z = fVar.f6983z;
        return this;
    }

    @Override
    public void d(HashSet hashSet) {
        if (!Float.isNaN(this.f6973p)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f6974q)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f6975r)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f6977t)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f6978u)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f6979v)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f6980w)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f6976s)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f6981x)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f6982y)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f6983z)) {
            hashSet.add("translationZ");
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
        a.b(this, context.obtainStyledAttributes(attributeSet, R$styleable.KeyCycle));
    }
}
