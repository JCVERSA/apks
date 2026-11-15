package androidx.p009lifecycle;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import androidx.core.os.d;
import androidx.p010savedstate.c;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.x0;

public final class l0 {

    public static final a f9303f = new a(null);

    private static final Class[] f9304g = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    private final Map f9305a;

    private final Map f9306b;

    private final Map f9307c;

    private final Map f9308d;

    private final c.InterfaceC0116c f9309e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final l0 a(Bundle bundle, Bundle bundle2) {
            if (bundle == null) {
                if (bundle2 == null) {
                    return new l0();
                }
                HashMap map = new HashMap();
                for (String key : bundle2.keySet()) {
                    Intrinsics.g(key, "key");
                    map.put(key, bundle2.get(key));
                }
                return new l0(map);
            }
            ClassLoader classLoader = l0.class.getClassLoader();
            Intrinsics.e(classLoader);
            bundle.setClassLoader(classLoader);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
            if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
                throw new IllegalStateException("Invalid bundle passed as restored state");
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int size = parcelableArrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object obj = parcelableArrayList.get(i10);
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.String");
                linkedHashMap.put((String) obj, parcelableArrayList2.get(i10));
            }
            return new l0(linkedHashMap);
        }

        public final boolean b(Object obj) {
            if (obj == null) {
                return true;
            }
            for (Class cls : l0.f9304g) {
                Intrinsics.e(cls);
                if (cls.isInstance(obj)) {
                    return true;
                }
            }
            return false;
        }

        private a() {
        }
    }

    public l0(Map initialState) {
        Intrinsics.h(initialState, "initialState");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f9305a = linkedHashMap;
        this.f9306b = new LinkedHashMap();
        this.f9307c = new LinkedHashMap();
        this.f9308d = new LinkedHashMap();
        this.f9309e = new c.InterfaceC0116c() {
            @Override
            public final Bundle saveState() {
                return l0.d(this.f9302a);
            }
        };
        linkedHashMap.putAll(initialState);
    }

    public static final Bundle d(l0 this$0) {
        Intrinsics.h(this$0, "this$0");
        for (Map.Entry entry : MapsKt.u(this$0.f9306b).entrySet()) {
            this$0.e((String) entry.getKey(), ((c.InterfaceC0116c) entry.getValue()).saveState());
        }
        Set<String> setKeySet = this$0.f9305a.keySet();
        ArrayList arrayList = new ArrayList(setKeySet.size());
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (String str : setKeySet) {
            arrayList.add(str);
            arrayList2.add(this$0.f9305a.get(str));
        }
        return d.b(TuplesKt.a("keys", arrayList), TuplesKt.a("values", arrayList2));
    }

    public final c.InterfaceC0116c c() {
        return this.f9309e;
    }

    public final void e(String key, Object obj) {
        Intrinsics.h(key, "key");
        if (!f9303f.b(obj)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Can't put value with type ");
            Intrinsics.e(obj);
            sb2.append(obj.getClass());
            sb2.append(" into saved state");
            throw new IllegalArgumentException(sb2.toString());
        }
        Object obj2 = this.f9307c.get(key);
        b0 b0Var = obj2 instanceof b0 ? (b0) obj2 : null;
        if (b0Var != null) {
            b0Var.q(obj);
        } else {
            this.f9305a.put(key, obj);
        }
        x0 x0Var = (x0) this.f9308d.get(key);
        if (x0Var == null) {
            return;
        }
        x0Var.setValue(obj);
    }

    public l0() {
        this.f9305a = new LinkedHashMap();
        this.f9306b = new LinkedHashMap();
        this.f9307c = new LinkedHashMap();
        this.f9308d = new LinkedHashMap();
        this.f9309e = new c.InterfaceC0116c() {
            @Override
            public final Bundle saveState() {
                return l0.d(this.f9302a);
            }
        };
    }
}
