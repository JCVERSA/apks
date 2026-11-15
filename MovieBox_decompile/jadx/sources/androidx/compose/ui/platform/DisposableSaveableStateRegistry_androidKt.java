package androidx.compose.ui.platform;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import android.view.View;
import androidx.compose.runtime.saveable.SaveableStateRegistryKt;
import androidx.compose.ui.R$id;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

public abstract class DisposableSaveableStateRegistry_androidKt {

    private static final Class[] f5323a = {Serializable.class, Parcelable.class, String.class, SparseArray.class, Binder.class, Size.class, SizeF.class};

    public static final u0 b(View view, androidx.p010savedstate.e eVar) {
        Object parent = view.getParent();
        Intrinsics.f(parent, "null cannot be cast to non-null type android.view.View");
        View view2 = (View) parent;
        Object tag = view2.getTag(R$id.compose_view_saveable_id_tag);
        String strValueOf = tag instanceof String ? (String) tag : null;
        if (strValueOf == null) {
            strValueOf = String.valueOf(view2.getId());
        }
        return c(strValueOf, eVar);
    }

    public static final u0 c(String str, androidx.p010savedstate.e eVar) {
        final boolean z10;
        final String str2 = androidx.compose.runtime.saveable.b.class.getSimpleName() + ':' + str;
        final androidx.p010savedstate.c savedStateRegistry = eVar.getSavedStateRegistry();
        Bundle bundleB = savedStateRegistry.b(str2);
        final androidx.compose.runtime.saveable.b bVarA = SaveableStateRegistryKt.a(bundleB != null ? h(bundleB) : null, new Function1<Object, Boolean>() {
            @Override
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(DisposableSaveableStateRegistry_androidKt.f(obj));
            }
        });
        try {
            savedStateRegistry.h(str2, new androidx.p010savedstate.c.InterfaceC0116c() {
                @Override
                public final Bundle saveState() {
                    return DisposableSaveableStateRegistry_androidKt.d(bVarA);
                }
            });
            z10 = true;
        } catch (IllegalArgumentException unused) {
            z10 = false;
        }
        return new u0(bVarA, new Function0<Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m160invoke();
                return Unit.f64096a;
            }

            public final void m160invoke() {
                if (z10) {
                    savedStateRegistry.j(str2);
                }
            }
        });
    }

    public static final Bundle d(androidx.compose.runtime.saveable.b bVar) {
        return g(bVar.e());
    }

    public static final boolean f(Object obj) {
        if (obj instanceof androidx.compose.runtime.snapshots.r) {
            androidx.compose.runtime.snapshots.r rVar = (androidx.compose.runtime.snapshots.r) obj;
            if (rVar.getPolicy() != androidx.compose.runtime.r2.g() && rVar.getPolicy() != androidx.compose.runtime.r2.j() && rVar.getPolicy() != androidx.compose.runtime.r2.h()) {
                return false;
            }
            Object value = rVar.getValue();
            if (value == null) {
                return true;
            }
            return f(value);
        }
        if ((obj instanceof Function) && (obj instanceof Serializable)) {
            return false;
        }
        for (Class cls : f5323a) {
            if (cls.isInstance(obj)) {
                return true;
            }
        }
        return false;
    }

    private static final Bundle g(Map map) {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            bundle.putParcelableArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
        }
        return bundle;
    }

    private static final Map h(Bundle bundle) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : bundle.keySet()) {
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(str);
            Intrinsics.f(parcelableArrayList, "null cannot be cast to non-null type java.util.ArrayList<kotlin.Any?>{ kotlin.collections.TypeAliasesKt.ArrayList<kotlin.Any?> }");
            linkedHashMap.put(str, parcelableArrayList);
        }
        return linkedHashMap;
    }
}
