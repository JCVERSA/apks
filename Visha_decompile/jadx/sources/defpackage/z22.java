package defpackage;

import freemarker.ext.beans.b;
import freemarker.ext.dom.d;
import freemarker.template.DefaultArrayAdapter;
import freemarker.template.DefaultIteratorAdapter;
import freemarker.template.DefaultListAdapter;
import freemarker.template.DefaultMapAdapter;
import freemarker.template.DefaultNonListCollectionAdapter;
import freemarker.template.SimpleCollection;
import freemarker.template.SimpleHash;
import freemarker.template.SimpleNumber;
import freemarker.template.SimpleScalar;
import freemarker.template.SimpleSequence;
import freemarker.template.Version;
import freemarker.template.a;
import java.lang.reflect.Array;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.w3c.dom.Node;

public class z22 extends b {
    public static final z22 h0 = new z22();
    public static final Class i0;
    public static final gc7 j0;
    public boolean f0;
    public boolean g0;

    static {
        gc7 gc7Var;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("org.python.core.PyObject");
            Class cls3 = xd5.g;
            gc7Var = (gc7) xd5.class.getField("INSTANCE").get(null);
            cls = cls2;
        } catch (Throwable th) {
            if (!(th instanceof ClassNotFoundException)) {
                try {
                    pq5.k("freemarker.template.DefaultObjectWrapper").h("Failed to init Jython support, so it was disabled.", th);
                } catch (Throwable unused) {
                }
            }
            gc7Var = null;
        }
        i0 = cls;
        j0 = gc7Var;
    }

    public z22() {
        this(xe1.k0);
    }

    public static Version G(Version version) {
        d1d.a(version);
        Version versionG = b.G(version);
        int iIntValue = version.intValue();
        int i = d1d.e;
        return (iIntValue < i || versionG.intValue() >= i) ? versionG : xe1.i0;
    }

    @Override
    public String K() {
        int iIndexOf;
        String strK = super.K();
        if (strK.startsWith("simpleMapWrapper") && (iIndexOf = strK.indexOf(44)) != -1) {
            strK = strK.substring(iIndexOf + 1).trim();
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("useAdaptersForContainers=");
        stringBuffer.append(this.f0);
        stringBuffer.append(", forceLegacyNonListCollections=");
        stringBuffer.append(this.g0);
        stringBuffer.append(", ");
        stringBuffer.append(strK);
        return stringBuffer.toString();
    }

    public Object Q(Object obj) {
        int length = Array.getLength(obj);
        ArrayList arrayList = new ArrayList(length);
        for (int i = 0; i < length; i++) {
            arrayList.add(Array.get(obj, i));
        }
        return arrayList;
    }

    public boolean R() {
        return this.g0;
    }

    public boolean S() {
        return this.f0;
    }

    public zfa T(Object obj) {
        if (obj instanceof Node) {
            return U(obj);
        }
        gc7 gc7Var = j0;
        return (gc7Var == null || !i0.isInstance(obj)) ? super.c(obj) : gc7Var.c(obj);
    }

    public zfa U(Object obj) {
        return d.q((Node) obj);
    }

    @Override
    public zfa c(Object obj) {
        if (obj == null) {
            return super.c(null);
        }
        if (obj instanceof zfa) {
            return (zfa) obj;
        }
        if (obj instanceof String) {
            return new SimpleScalar((String) obj);
        }
        if (obj instanceof Number) {
            return new SimpleNumber((Number) obj);
        }
        if (obj instanceof Date) {
            if (obj instanceof java.sql.Date) {
                return new am9((java.sql.Date) obj);
            }
            if (obj instanceof Time) {
                return new am9((Time) obj);
            }
            return obj instanceof Timestamp ? new am9((Timestamp) obj) : new am9((Date) obj, r());
        }
        if (obj.getClass().isArray()) {
            if (this.f0) {
                return DefaultArrayAdapter.adapt(obj, this);
            }
            obj = Q(obj);
        }
        if (obj instanceof Collection) {
            if (!this.f0) {
                return new SimpleSequence((Collection) obj, this);
            }
            if (obj instanceof List) {
                return DefaultListAdapter.adapt((List) obj, this);
            }
            return this.g0 ? new SimpleSequence((Collection) obj, this) : DefaultNonListCollectionAdapter.adapt((Collection) obj, this);
        }
        if (obj instanceof Map) {
            return this.f0 ? DefaultMapAdapter.adapt((Map) obj, this) : new SimpleHash((Map) obj, this);
        }
        if (obj instanceof Boolean) {
            return obj.equals(Boolean.TRUE) ? a.z6 : a.y6;
        }
        if (obj instanceof Iterator) {
            return this.f0 ? DefaultIteratorAdapter.adapt((Iterator) obj, this) : new SimpleCollection((Iterator) obj, this);
        }
        return T(obj);
    }

    public z22(Version version) {
        this((b32) new x22(version), false);
    }

    public z22(xd0 xd0Var, boolean z) {
        super(xd0Var, z, false);
        b32 y22Var = xd0Var instanceof b32 ? (b32) xd0Var : new y22(this, xd0Var.d());
        this.f0 = y22Var.l();
        this.g0 = y22Var.k();
        n(z);
    }

    public z22(b32 b32Var, boolean z) {
        this((xd0) b32Var, z);
    }
}
