package defpackage;

import android.content.res.Resources;
import android.util.TypedValue;
import java.util.concurrent.ConcurrentHashMap;

public final class ff8 extends eu8 {
    public final ConcurrentHashMap b;
    public final ConcurrentHashMap c;
    public final ConcurrentHashMap d;
    public final ConcurrentHashMap e;
    public final ConcurrentHashMap f;
    public TypedValue g;
    public final Object h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ff8(Resources resources) {
        super(resources);
        y45.j(resources, "baseResources");
        this.b = new ConcurrentHashMap();
        this.c = new ConcurrentHashMap();
        this.d = new ConcurrentHashMap();
        this.e = new ConcurrentHashMap();
        this.f = new ConcurrentHashMap();
        this.g = new TypedValue();
        this.h = new Object();
    }

    public final TypedValue a() {
        TypedValue typedValue;
        synchronized (this.h) {
            try {
                typedValue = this.g;
                if (typedValue != null) {
                    this.g = null;
                } else {
                    typedValue = null;
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return typedValue == null ? new TypedValue() : typedValue;
    }

    public final void b(TypedValue typedValue) {
        synchronized (this.h) {
            try {
                if (this.g == null) {
                    this.g = typedValue;
                }
                zfb zfbVar = zfb.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public boolean getBoolean(int i) {
        ConcurrentHashMap concurrentHashMap = this.b;
        Object obj = concurrentHashMap.get(Integer.valueOf(i));
        if (obj != null) {
            y45.i(obj, "it");
        } else {
            TypedValue typedValueA = a();
            boolean z = true;
            try {
                super.getValue(i, typedValueA, true);
                int i2 = typedValueA.type;
                if (i2 < 16 || i2 > 31) {
                    throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValueA.type) + " is not valid");
                }
                if (typedValueA.data == 0) {
                    z = false;
                }
                Boolean boolValueOf = Boolean.valueOf(z);
                if (typedValueA.changingConfigurations == 0) {
                    concurrentHashMap.putIfAbsent(Integer.valueOf(i), boolValueOf);
                }
                b(typedValueA);
                obj = boolValueOf;
            } catch (Throwable th) {
                b(typedValueA);
                throw th;
            }
        }
        return ((Boolean) obj).booleanValue();
    }

    @Override
    public float getDimension(int i) {
        ConcurrentHashMap concurrentHashMap = this.c;
        Object obj = concurrentHashMap.get(Integer.valueOf(i));
        if (obj != null) {
            y45.i(obj, "it");
        } else {
            TypedValue typedValueA = a();
            try {
                super.getValue(i, typedValueA, true);
                if (typedValueA.type != 5) {
                    throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValueA.type) + " is not valid");
                }
                Float fValueOf = Float.valueOf(TypedValue.complexToDimension(typedValueA.data, getDisplayMetrics()));
                if (typedValueA.changingConfigurations == 0) {
                    concurrentHashMap.putIfAbsent(Integer.valueOf(i), fValueOf);
                }
                b(typedValueA);
                obj = fValueOf;
            } catch (Throwable th) {
                b(typedValueA);
                throw th;
            }
        }
        return ((Number) obj).floatValue();
    }

    @Override
    public int getDimensionPixelOffset(int i) {
        ConcurrentHashMap concurrentHashMap = this.d;
        Object obj = concurrentHashMap.get(Integer.valueOf(i));
        if (obj != null) {
            y45.i(obj, "it");
        } else {
            TypedValue typedValueA = a();
            try {
                super.getValue(i, typedValueA, true);
                if (typedValueA.type != 5) {
                    throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValueA.type) + " is not valid");
                }
                Integer numValueOf = Integer.valueOf(TypedValue.complexToDimensionPixelOffset(typedValueA.data, getDisplayMetrics()));
                if (typedValueA.changingConfigurations == 0) {
                    concurrentHashMap.putIfAbsent(Integer.valueOf(i), numValueOf);
                }
                b(typedValueA);
                obj = numValueOf;
            } catch (Throwable th) {
                b(typedValueA);
                throw th;
            }
        }
        return ((Number) obj).intValue();
    }

    @Override
    public int getDimensionPixelSize(int i) {
        ConcurrentHashMap concurrentHashMap = this.e;
        Object obj = concurrentHashMap.get(Integer.valueOf(i));
        if (obj != null) {
            y45.i(obj, "it");
        } else {
            TypedValue typedValueA = a();
            try {
                super.getValue(i, typedValueA, true);
                if (typedValueA.type != 5) {
                    throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValueA.type) + " is not valid");
                }
                Integer numValueOf = Integer.valueOf(TypedValue.complexToDimensionPixelSize(typedValueA.data, getDisplayMetrics()));
                if (typedValueA.changingConfigurations == 0) {
                    concurrentHashMap.putIfAbsent(Integer.valueOf(i), numValueOf);
                }
                b(typedValueA);
                obj = numValueOf;
            } catch (Throwable th) {
                b(typedValueA);
                throw th;
            }
        }
        return ((Number) obj).intValue();
    }

    @Override
    public int getInteger(int i) {
        ConcurrentHashMap concurrentHashMap = this.f;
        Object obj = concurrentHashMap.get(Integer.valueOf(i));
        if (obj != null) {
            y45.i(obj, "it");
        } else {
            TypedValue typedValueA = a();
            try {
                super.getValue(i, typedValueA, true);
                int i2 = typedValueA.type;
                if (i2 < 16 || i2 > 31) {
                    throw new Resources.NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValueA.type) + " is not valid");
                }
                Integer numValueOf = Integer.valueOf(typedValueA.data);
                if (typedValueA.changingConfigurations == 0) {
                    concurrentHashMap.putIfAbsent(Integer.valueOf(i), numValueOf);
                }
                b(typedValueA);
                obj = numValueOf;
            } catch (Throwable th) {
                b(typedValueA);
                throw th;
            }
        }
        return ((Number) obj).intValue();
    }
}
