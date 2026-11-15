package m0;

import androidx.compose.ui.text.platform.o;
import androidx.compose.ui.text.platform.p;
import java.util.HashMap;
import java.util.LinkedHashSet;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

public class b {

    private final p f66176a = o.a();

    private final HashMap f66177b;

    private final LinkedHashSet f66178c;

    private int f66179d;

    private int f66180e;

    private int f66181f;

    private int f66182g;

    private int f66183h;

    private int f66184i;

    private int f66185j;

    public b(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f66180e = i10;
        this.f66177b = new HashMap(0, 0.75f);
        this.f66178c = new LinkedHashSet();
    }

    private final int g(Object obj, Object obj2) {
        int i10 = i(obj, obj2);
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalStateException(("Negative size: " + obj + '=' + obj2).toString());
    }

    protected Object b(Object obj) {
        return null;
    }

    public final Object d(Object obj) {
        synchronized (this.f66176a) {
            Object obj2 = this.f66177b.get(obj);
            if (obj2 != null) {
                this.f66178c.remove(obj);
                this.f66178c.add(obj);
                this.f66184i++;
                return obj2;
            }
            this.f66185j++;
            Object objB = b(obj);
            if (objB == null) {
                return null;
            }
            synchronized (this.f66176a) {
                try {
                    this.f66182g++;
                    Object objPut = this.f66177b.put(obj, objB);
                    this.f66178c.remove(obj);
                    this.f66178c.add(obj);
                    if (objPut != null) {
                        this.f66177b.put(obj, objPut);
                        obj2 = objPut;
                    } else {
                        this.f66179d = h() + g(obj, objB);
                    }
                    Unit unit = Unit.f64096a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (obj2 != null) {
                c(false, obj, objB, obj2);
                return obj2;
            }
            j(this.f66180e);
            return objB;
        }
    }

    public final Object e(Object obj, Object obj2) {
        Object objPut;
        if (obj == null || obj2 == null) {
            throw null;
        }
        synchronized (this.f66176a) {
            try {
                this.f66181f++;
                this.f66179d = h() + g(obj, obj2);
                objPut = this.f66177b.put(obj, obj2);
                if (objPut != null) {
                    this.f66179d = h() - g(obj, objPut);
                }
                if (this.f66178c.contains(obj)) {
                    this.f66178c.remove(obj);
                }
                this.f66178c.add(obj);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (objPut != null) {
            c(false, obj, objPut, obj2);
        }
        j(this.f66180e);
        return objPut;
    }

    public final Object f(Object obj) {
        Object objRemove;
        obj.getClass();
        synchronized (this.f66176a) {
            try {
                objRemove = this.f66177b.remove(obj);
                this.f66178c.remove(obj);
                if (objRemove != null) {
                    this.f66179d = h() - g(obj, objRemove);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (objRemove != null) {
            c(false, obj, objRemove, null);
        }
        return objRemove;
    }

    public final int h() {
        int i10;
        synchronized (this.f66176a) {
            i10 = this.f66179d;
        }
        return i10;
    }

    protected int i(Object obj, Object obj2) {
        return 1;
    }

    public void j(int i10) {
        Object objH0;
        Object obj;
        while (true) {
            synchronized (this.f66176a) {
                try {
                    if (h() >= 0 && (!this.f66177b.isEmpty() || h() == 0)) {
                        if (this.f66177b.isEmpty() != this.f66178c.isEmpty()) {
                            break;
                        }
                        if (h() <= i10 || this.f66177b.isEmpty()) {
                            objH0 = null;
                            obj = null;
                        } else {
                            objH0 = CollectionsKt.h0(this.f66178c);
                            obj = this.f66177b.get(objH0);
                            if (obj == null) {
                                throw new IllegalStateException("inconsistent state");
                            }
                            TypeIntrinsics.d(this.f66177b).remove(objH0);
                            TypeIntrinsics.a(this.f66178c).remove(objH0);
                            int iH = h();
                            Intrinsics.e(objH0);
                            Intrinsics.e(obj);
                            this.f66179d = iH - g(objH0, obj);
                            this.f66183h++;
                        }
                        Unit unit = Unit.f64096a;
                    } else {
                        break;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (objH0 == null && obj == null) {
                return;
            }
            Intrinsics.e(objH0);
            Intrinsics.e(obj);
            c(true, objH0, obj, null);
        }
        throw new IllegalStateException("map/keySet size inconsistency");
    }

    public String toString() {
        String str;
        synchronized (this.f66176a) {
            try {
                int i10 = this.f66184i;
                int i11 = this.f66185j + i10;
                str = "LruCache[maxSize=" + this.f66180e + ",hits=" + this.f66184i + ",misses=" + this.f66185j + ",hitRate=" + (i11 != 0 ? (i10 * 100) / i11 : 0) + "%]";
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    protected void c(boolean z10, Object obj, Object obj2, Object obj3) {
    }
}
